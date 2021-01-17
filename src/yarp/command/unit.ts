import { registerUnitCommand, registerSimpleCommand, CmdThread } from "./command"
import { sysMessage } from "../log"
import { collectDataFromUnit, createUnitFromData } from "../unitdata"
import { Lexer } from "./lexers"
import { Player } from "cerrie/core/types/player"

function noarg(): void {
    //
}

function str1(_: Player, a: Lexer): string {
    return a.lex()
}

function num1(_: Player, a: Lexer): number {
    return tonumber(a.lex()) || 0
}

registerUnitCommand("aa", str1, (u, id) => {
    u.addAbility(id)
})

registerUnitCommand("ar", str1, (u, id) => {
    u.removeAbility(id)
})

registerUnitCommand("runspeed", num1, (u, speed) => {
    BlzSetUnitRealField(u.handle, UNIT_RF_ANIMATION_RUN_SPEED, speed)
    sysMessage("Hi")
})

registerUnitCommand("info", noarg, u => {
    sysMessage(`id: ${util.id2s(u.id)}, uid: ${u.uid || "(none)"}`)
})

registerSimpleCommand("clone", (e, a) => {
    const count = tonumber(a.lex()) || 1
    const selection = CmdThread.get().selection

    let centerX = 0
    let centerY = 0
    for (const u of selection) {
        centerX += u.x
        centerY += u.y
    }
    centerX /= selection.length
    centerY /= selection.length

    const spawner = e.spawner.unit
    for (const u of selection) {
        const data = collectDataFromUnit(u)
        for (let i = 0; i < count; i++) {
            const clone = createUnitFromData(e, data)
            clone.x = spawner.x + (u.x - centerX)
            clone.y = spawner.y + (u.y - centerY)
        }
    }
})

registerSimpleCommand("stack", (e, a) => {
    const count = tonumber(a.lex()) || 1
    const selection = CmdThread.get().selection

    for (const u of selection) {
        const data = collectDataFromUnit(u)
        for (let i = 0; i < count; i++) {
            const clone = createUnitFromData(e, data)
            clone.x = u.x
            clone.y = u.y
        }
    }
})

function parseTint(_: Player, lexer: Lexer): [number, number, number, number] {
    const r = math.floor(((tonumber(lexer.lex()) || 0) / 100) * 255)
    const g = math.floor(((tonumber(lexer.lex()) || 0) / 100) * 255)
    const b = math.floor(((tonumber(lexer.lex()) || 0) / 100) * 255)
    const a = math.floor(((tonumber(lexer.lex()) || 100) / 100) * 255)

    return [r, g, b, a]
}

registerUnitCommand("tint", parseTint, (u, [r, g, b, a]) => {
    u.setVertexColor(r, g, b, a)
})
