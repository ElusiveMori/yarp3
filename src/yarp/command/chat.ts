import { registerDefaultMacro, registerSimpleCommand } from "./command"
import { Unit } from "cerrie/core/types/unit"
import { oocMessage, icMessage, sysMessage } from "../log"
import { defaultChatBox } from "../ui/mainlog"
import { clearMessages } from "../chatbuf"

registerDefaultMacro(".", "ooc")

registerSimpleCommand("ooc", (executor, lexer) => {
    oocMessage(executor, lexer.remaining())
})

registerSimpleCommand("ic", (executor, lexer) => {
    const icName = lexer.lex()
    const text = lexer.remaining()

    icMessage(executor, icName, text)
})

registerSimpleCommand("say", (executor, lexer) => {
    const selected = Unit.getSelectionOf(executor)

    if (selected.length > 1) {
        sysMessage("IC Speaking requires you only have one unit selected.")
    } else if (selected.length == 0) {
        sysMessage("IC Speaking requires you have one unit selected.")
    } else {
        const icName = selected[0].name
        icMessage(executor, icName, lexer.remaining())
    }
})

registerSimpleCommand("chat", (_, lexer) => {
    const args = lexer.collect()

    if (args[0] == "clear") {
        clearMessages()
    } else if (args[0] == "font") {
        defaultChatBox.config.fontSizeMul = tonumber(args[1]) || 1

        defaultChatBox.recalculateSizes()
        defaultChatBox.updateLayout()
        defaultChatBox.resetContent()
    } else if (args[0] == "threshold") {
        defaultChatBox.config.thresholdMul = tonumber(args[1]) || 1

        defaultChatBox.recalculateSizes()
        defaultChatBox.updateLayout()
        defaultChatBox.resetContent()
    } else if (args[0] == "shadow") {
        defaultChatBox.config.shadow = tonumber(args[1]) == 1

        defaultChatBox.recalculateSizes()
        defaultChatBox.updateLayout()
        defaultChatBox.resetContent()
    }
})
