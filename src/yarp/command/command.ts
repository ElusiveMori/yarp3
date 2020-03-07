import { registerChatEvent } from "cerrie/core/war3event"
import { Player } from "cerrie/core/types/player"
import { Unit } from "cerrie/core/types/unit"
import { lexArgumentString, CommandLexer, ArgumentLexer, Lexer } from "./lexers"

const QUOTA_PER_THREAD = 1024

interface CommandHandler {
    isSimple: boolean
    callback: (this: void, executor: Player, lexer: ArgumentLexer) => void
}

interface SimpleCommand {
    trigger: string
    callback: (this: void, executor: Player, arg: string) => void
}

const macros = new Map<Player, Map<string, string>>()
const aliases = new Map<Player, Map<string, string>>()
const commandHandlers = new Map<string, CommandHandler>()

for (const player of Player.all) {
    macros.set(player, new Map())
    aliases.set(player, new Map())
}

class CmdThread {
    private static threadMap = new Map<LuaThread, CmdThread>()

    private thread: LuaThread
    private executionDepth = 0
    private quota = 0
    private isFirstCommand = true

    executor: Player
    selection: Unit[]

    private constructor(executor: Player, input: string, selection: Unit[]) {
        this.executor = executor
        this.thread = coroutine.create(() => this.executeCommands(input))
        this.selection = selection
        CmdThread.threadMap.set(this.thread, this)
    }

    executeCommands(input: string): void {
        this.executionDepth++

        if (this.executionDepth > 32) {
            error("command execution depth limit exceeded")
        }

        if (this.quota > QUOTA_PER_THREAD) {
            error("command execution quota exceeded")
        }

        // if this command is a simple command, then we should return early since there's nothing else to do
        if (this.tryRunSimpleCommand(input)) {
            return
        }

        const commands = new CommandLexer(input).collect()

        for (let i = 0; i < commands.length; i++) {
            if (i == commands.length - 1) {
                // tail call optimization
                // if this is the last command in this chain,
                // then immediately return to conserve stack space
                // this allows infinitely chained alias commands that won't overflow the stack
                this.executionDepth--
                return this.executeCommand(commands[i])
            } else {
                this.executeCommand(commands[i])
            }
        }

        this.executionDepth--
    }

    private tryRunSimpleCommand(command: string): boolean {
        if (!this.isFirstCommand) {
            return false
        }

        const [expandedCommand] = expandCommand(this.executor, command)
        const lexer = new ArgumentLexer(expandedCommand)
        const commandId = lexer.lex()

        const handler = commandHandlers.get(commandId)
        if (handler != undefined && handler.isSimple) {
            handler.callback(this.executor, lexer)
            return true
        }

        return false
    }

    private executeCommand(command: string): void {
        this.quota++
        const [expandedCommand, hasExpanded] = expandCommand(this.executor, command)

        if (hasExpanded) {
            // tail call optimization
            return this.executeCommands(expandedCommand)
        } else {
            const lexer = new ArgumentLexer(command)
            const commandId = lexer.lex()
            const handler = commandHandlers.get(commandId)
            if (handler != undefined) {
                this.isFirstCommand = false
                // tail call optimization
                return handler.callback(this.executor, lexer)
            }
        }
    }

    static runNew(executor: Player, input: string, selection: Unit[]): void {
        const cmdThread = new CmdThread(executor, input, selection)
        const [success, err] = coroutine.resume(cmdThread.thread)
        if (!success) {
            print(`error running cmd: ${err}`)
        }
        this.threadMap.delete(cmdThread.thread)
    }

    static get(): CmdThread {
        const [thread] = coroutine.running()
        const cmdThread = this.threadMap.get(thread)
        if (cmdThread != undefined) {
            return cmdThread
        } else {
            error("Tried to get CmdThread inside non-command coroutine")
        }
    }
}

function expandMacro(executor: Player, input: string): string {
    input = input.trim()

    for (const [k, v] of macros.get(executor)!) {
        if (input.startsWith(k)) {
            input = `${v} ${input.substring(k.length)}`
            break
        }
    }

    return input
}

/** @tuplereturn */
function expandAlias(executor: Player, input: string): [string, boolean] {
    input = input.trim()

    const [commandId, rest] = lexArgumentString(input)
    const alias = aliases.get(executor)!.get(commandId)
    if (alias != undefined) {
        return [`${alias} ${rest}`, true]
    } else {
        return [input, false]
    }
}

/** @tuplereturn */
function expandCommand(executor: Player, command: string): [string, boolean] {
    command = expandMacro(executor, command)
    const [expandedCommand, hasExpanded] = expandAlias(executor, command)
    return [expandedCommand, hasExpanded]
}

function startCommandExecution(player: Player, input: string): void {
    CmdThread.runNew(player, input, Unit.getSelectionOf(player))
}

registerChatEvent("", false, (player, message) => {
    startCommandExecution(player, message)
})

export function registerSimpleCommand(
    id: string,
    action: (executor: Player, args: ArgumentLexer) => void
): void {
    commandHandlers.set(id, { isSimple: true, callback: action })
}

export function registerChainableCommand(
    id: string,
    action: (executor: Player, args: ArgumentLexer) => void
): void {
    commandHandlers.set(id, { isSimple: false, callback: action })
}

export function registerUnitCommand<V>(
    id: string,
    collector: (executor: Player, args: ArgumentLexer) => V,
    callback: (unit: Unit, args: V) => void
): void {
    registerChainableCommand(id, (executor, args) => {
        const callbackArgs = collector(executor, args)
        const thread = CmdThread.get()
        for (const unit of thread.selection) {
            callback(unit, callbackArgs)
        }
    })
}

type CollisionKind = "macro" | "alias" | "command"

/** @tuplereturn */
function doesMacroCollide(player: Player, macro: string): [false] | [CollisionKind, string] {
    for (const [otherMacro] of macros.get(player)!) {
        if (macro.startsWith(otherMacro) || otherMacro.startsWith(macro)) {
            return ["macro", otherMacro]
        }
    }

    for (const [alias] of aliases.get(player)!) {
        if (alias.startsWith(macro)) {
            return ["alias", alias]
        }
    }

    for (const [commandId] of commandHandlers) {
        if (commandId.startsWith(macro)) {
            return ["command", commandId]
        }
    }

    return [false]
}

/** @tuplereturn */
function doesAliasCollide(player: Player, alias: string): [false] | [CollisionKind, string] {
    for (const [macro] of macros.get(player)!) {
        if (alias.startsWith(macro)) {
            return ["macro", macro]
        }
    }

    for (const [otherAlias] of aliases.get(player)!) {
        if (otherAlias == alias) {
            return ["alias", alias]
        }
    }

    for (const [commandId] of commandHandlers) {
        if (commandId == alias) {
            return ["command", commandId]
        }
    }

    return [false]
}

registerSimpleCommand("alias", (executor: Player, lexer: ArgumentLexer) => {
    const playerAliases = aliases.get(executor)!
    const aliasName = lexer.lex()
    const aliasContent = lexer.remaining()
    const [collisionKind, colliderName] = doesAliasCollide(executor, aliasName)
    if (collisionKind) {
        print(
            `Cannot create alias {${aliasName}}: collision with ${collisionKind} {${colliderName}}`
        )
        return
    }
    playerAliases.set(aliasName, aliasContent)
})

registerSimpleCommand("unalias", (executor: Player, lexer: ArgumentLexer) => {
    const playerAliases = aliases.get(executor)!
    const aliasName = lexer.lex()
    playerAliases.delete(aliasName)
})

registerSimpleCommand("macro", (executor: Player, lexer: ArgumentLexer) => {
    const playerMacros = macros.get(executor)!
    const macroName = lexer.lex()
    const macroContent = lexer.remaining()
    const [collisionKind, colliderName] = doesMacroCollide(executor, macroName)
    if (collisionKind) {
        print(
            `Cannot create macro {${macroName}}: collision with ${collisionKind} {${colliderName}}`
        )
        return
    }
    playerMacros.set(macroName, macroContent)
})

registerSimpleCommand("unmacro", (executor: Player, lexer: ArgumentLexer) => {
    const playerMacros = macros.get(executor)!
    const macroName = lexer.lex()
    playerMacros.delete(macroName)
})

registerSimpleCommand("global", (executor: Player, arg: ArgumentLexer) => {
    const cmdThread = CmdThread.get()
    cmdThread.selection = Unit.getOwnedBy(executor)
    cmdThread.executeCommands(arg.remaining())
})

export function registerDefaultMacro(macro: string, expansion: string): void {
    for (const player of Player.all) {
        macros.get(player)!.set(macro, expansion)
    }
}

export function registerDefaultAlias(alias: string, expansion: string): void {
    for (const player of Player.all) {
        aliases.get(player)?.set(alias, expansion)
    }
}
