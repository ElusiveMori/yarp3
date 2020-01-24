import { registerSimpleCommand, registerMacro, registerChainableCommand } from "./command"

registerMacro(".", "ooc")

registerSimpleCommand("ooc", (executor, arg) => {
    print(`>> OOC[${executor.name}]: ${arg}`)
})

registerChainableCommand("pomf", (executor, arg) => {
    print("pomf!")
    return true
})

registerChainableCommand("pimf", (executor, arg) => {
    print(`pimf! ${arg}`)
})

registerSimpleCommand("clear", (executor, arg) => {
    ClearTextMessages()
})
