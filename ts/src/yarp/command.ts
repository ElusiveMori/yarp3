import { registerChatEvent } from "../tsstd/core/war3event"
import Player from "../tsstd/core/types/player"
import Unit from "../tsstd/core/types/unit"
import { parseWord, parseCommand, parseArgument } from "./parsers"

interface SimpleCommand {
    trigger: string
    callback: (this: void, executor: Player, argument: string) => void
}

interface ChainableCommand {
    trigger: string
    callback: (this: void, executor: Player, argument: string) => void
}

let macros = new Map<Player, Map<string, string>>()
let aliases = new Map<Player, Map<string, string>>()
let simpleCommands = new Map<string, SimpleCommand>()
let chainableCommands = new Map<string, ChainableCommand>()

for (let player of Player.all) {
    macros.set(player, new Map())
    aliases.set(player, new Map())
}

class CommandThread {
    private static threadMap = new Map<LuaThread, CommandThread>()

    private thread: LuaThread
    private commandQueue: string[] = []
    private started: boolean
    executor: Player
    selection: Unit[]

    constructor(executor: Player) {
        this.executor = executor
        this.started = false
        this.thread = coroutine.create(() => this.run())

        this.selection = Unit.getSelectionOf(executor)
    }

    start(): void {
        if (this.started) {
            error("cannot double-start a command thread")
        }

        this.started = true
        coroutine.resume(this.thread)
    }

    addRawInput(input: string): void {
        let commandString: string
        let rest: string = input

        do {
            ;[commandString, rest] = parseCommand(rest)
            table.insert(this.commandQueue, 1, commandString)
        } while (rest != "")
    }

    executeCommand(command: string): void {
        let [commandId, args] = parseArgument(command)
        if (chainableCommands.has(commandId)) {
            let command = chainableCommands.get(commandId)!
            command.callback(this.executor, args)
        }
    }

    private run(): void {
        while (this.commandQueue.length > 0) {
            let command = table.remove(this.commandQueue)!
            print(`retrieved cmd: "${command}"`)
            this.executeCommand(command)
        }
    }

    static get(): CommandThread {
        let [coro, _] = coroutine.running()
        let thread = this.threadMap.get(coro)
        if (thread != undefined) {
            return thread
        } else {
            error("Tried to get CommandThread inside non-command coroutine")
        }
    }
}

function expandMacros(executor: Player, input: string): string {
    input = input.trim()

    for (let [k, v] of macros.get(executor)!) {
        if (input.startsWith(k)) {
            input = `${v} ${input.substring(k.length)}`
            break
        }
    }

    return input
}

function executeChainableCommands(player: Player, input: string): void {
    let [commandString, rest] = parseCommand(input)

    let [commandId, argumentsRest] = parseArgument(commandString)
    if (chainableCommands.has(commandId)) {
        let command = chainableCommands.get(commandId)!
        command.callback(player, argumentsRest)
    }

    if (rest != undefined && rest != "") {
        // tail call
        return executeChainableCommands(player, expandMacros(player, rest))
    }
}

function startCommandExecution(player: Player, input: string) {
    input = expandMacros(player, input)

    let [commandId, rest] = parseWord(input)

    if (simpleCommands.has(commandId)) {
        let command = simpleCommands.get(commandId)!

        command.callback(player, rest)
    } else {
        let commandThread = new CommandThread(player)
        commandThread.addRawInput(input)
        commandThread.start()
    }
}

registerChatEvent("", false, (player, message) => {
    startCommandExecution(player, message)
})

export function registerSimpleCommand(id: string, action: (executor: Player, arg: string) => void) {
    simpleCommands.set(id, { trigger: id, callback: action })
}

export function registerChainableCommand(
    id: string,
    action: (executor: Player, arg: string) => void
) {
    chainableCommands.set(id, { trigger: id, callback: action })
}

export function registerDefaultMacro(macro: string, expansion: string) {
    for (let player of Player.all) {
        macros.get(player)!.set(macro, expansion)
    }
}
