import { registerChatEvent } from "../tsstd/core/war3event"
import Player from "../tsstd/core/types/player"
import Unit from "../tsstd/core/types/unit"
import { parseWord, parseCommand, parseArgument } from "./parsers"

interface Macro {
    trigger: string
    expansion: string
}

interface SimpleCommand {
    trigger: string
    callback: (this: void, executor: Player, argument: string) => void
}

interface ChainableCommand {
    trigger: string
    callback: (this: void, executor: Player, argument: string) => void
}

class CommandExecutionContext {
    executor: Player
    remaining: string
    selection: Unit[]

    constructor(executor: Player, command: string) {
        this.executor = executor
        this.remaining = command

        this.selection = Unit.getSelectionOf(executor)
    }
}

let macros = new Map<string, Macro>()
let simpleCommands = new Map<string, SimpleCommand>()
let chainableCommands = new Map<string, ChainableCommand>()
let executionContexts = new Map<LuaThread, []>()

function expandMacros(input: string): string {
    input = input.trim()

    for (let [k, v] of macros) {
        if (input.startsWith(k)) {
            input = `${v.expansion} ${input.substring(k.length)}`
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
        return executeChainableCommands(player, expandMacros(rest))
    }
}

function startCommandExecution(player: Player, input: string) {
    input = expandMacros(input)

    let [commandId, rest] = parseWord(input)

    if (simpleCommands.has(commandId)) {
        let command = simpleCommands.get(commandId)!

        command.callback(player, rest)
    } else {
        executeChainableCommands(player, input)
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

export function registerMacro(macro: string, expansion: string) {
    macros.set(macro, { trigger: macro, expansion: expansion })
}
