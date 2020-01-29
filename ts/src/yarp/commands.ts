import * as preload from "../tsstd/preloader"
import { registerSimpleCommand, registerDefaultMacro, registerChainableCommand } from "./command"
import { parseArgument } from "./parsers"

registerDefaultMacro(".", "ooc")

registerSimpleCommand("ooc", (executor, arg) => {
    print(`>> OOC[${executor.name}]: ${arg}`)
})

registerChainableCommand("hello", (executor, arg) => {
    print(`hello [${arg}]`)
    return true
})

registerChainableCommand("bye", (executor, arg) => {
    print(`bye! ${arg}`)
})

registerSimpleCommand("clear", (executor, arg) => {
    ClearTextMessages()
})

registerSimpleCommand("exec", (executor, arg) => {
    let [func, err] = load(arg)
    if (func != undefined) {
        func()
    } else {
        print(`error in exec: ${err}`)
    }
})

registerSimpleCommand("test", (e, a) => {
    let fn: string
    let len: string
    ;[fn, a] = parseArgument(a)
    ;[len, a] = parseArgument(a)
    preload.write(`${fn}.pld`, "a".repeat(tonumber(len)!))
    print(preload.read(`${fn}.pld`)!.length)
})
