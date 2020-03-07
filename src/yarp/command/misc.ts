import Vector2 from "cerrie/core/vecmath/vec2"
import {
    registerChainableCommand,
    registerSimpleCommand,
    registerUnitCommand,
    registerDefaultAlias
} from "./command"
import * as network from "cerrie/network"
import { Frame } from "cerrie/core/types/frame"
import { Player } from "cerrie/core/types/player"
import { triggerLiveReload } from "cerrie/livereload"
import { stringToPlayerColor } from "../playercolor"
import { sysMessage } from "../log"
import "cerrie/core/util"

registerDefaultAlias("gl", "global")

registerChainableCommand("hello", (_, lexer) => {
    sysMessage(`hello [${lexer.remaining()}]`)
    return true
})

registerChainableCommand("bye", (_, lexer) => {
    sysMessage(`bye [${lexer.remaining()}]`)
})

registerSimpleCommand("clear", () => {
    ClearTextMessages()
})

registerSimpleCommand("exec", (_, lexer) => {
    const [func, err] = load(lexer.remaining())
    if (func != undefined) {
        func()
    } else {
        sysMessage(`error in exec: ${err}`)
    }
})

registerSimpleCommand("mycolor", (e, lexer) => {
    const color = stringToPlayerColor(lexer.remaining())
    if (color != undefined) {
        e.color = color
    }
})

const randomChars = "abcdefghijklmnopqrstuvwxyz"
function randomString(): string {
    let s = ""
    for (let i = 0; i < 255; i++) {
        const random = GetRandomInt(0, randomChars.length - 1)
        s += randomChars.charAt(random)
    }
    return s
}

let receivedStr = ""
let sentStr = ""
network.receive("hah", (sender, payload) => {
    receivedStr += payload
})

registerSimpleCommand("test", () => {
    receivedStr = ""
    for (let i = 0; i < 3000; i++) {
        const r = randomString()
        sentStr += r
        network.send("hah", r)
    }
})

registerSimpleCommand("show", () => {
    sysMessage(`isEqual: ${receivedStr == sentStr}`)
})

const blankArgs = function(): void {
    // do nothing
}

registerUnitCommand("id", blankArgs, unit => {
    sysMessage(`${GetUnitName(unit.handle)}: ${util.id2s(unit.id)}`)
})

registerUnitCommand("revive", blankArgs, unit => {
    if (unit.isHero) {
        unit.revive(Vector2.zero, false)
    }
})

registerUnitCommand("kill", blankArgs, unit => {
    unit.kill()
})

registerUnitCommand(
    "glow",
    (p, a) => {
        return a.lex() == "on"
    },
    (u, e) => BlzShowUnitTeamGlow(u.handle, e)
)

registerSimpleCommand("spawn", (p, a) => {
    const count = a.lex()
    const name = a.lex()

    for (let i = 0; i < tonumber(count)!; i++) {
        CreateUnitByName(p.handle, name, 0, 0, 0)
    }
})

registerUnitCommand("restore", blankArgs, u => {
    u.mana = u.maxMana
    u.health = u.maxHealth
})

registerUnitCommand(
    "skin",
    (p, args) => {
        const arg = args.lex()
        return util.s2id(arg)
    },
    (u, id) => {
        BlzSetUnitSkin(u.handle, id)
    }
)

registerSimpleCommand("frametest", () => {
    for (let i = 0; i < 12; i++) {
        const btn = Frame.byOrigin(ORIGIN_FRAME_COMMAND_BUTTON, i)
        // let btn = Frame.byName(`CommandButton_${i}`, 0)
        sysMessage(`btn${i}: ${btn.visible}`)
    }
})

registerSimpleCommand("r", (player: Player) => {
    triggerLiveReload(player)
})

registerSimpleCommand("time", (_, lexer) => {
    const time = lexer.lex()
    if (time == "lock") {
        SetTimeOfDayScale(0)
    } else {
        const timeNum = tonumber(time) || 0
        SetTimeOfDay(timeNum)
    }
})

registerSimpleCommand("dnc", (_, lexer) => {
    const id = tonumber(lexer.lex()) || 0

    const dncs = [
        "DNCAnimated2.mdx", //0
        "DNCAshenValeTerrain.mdx", //1
        "DNCUndergroundTerrain.mdx", //2
        "DNCCustom.mdx" //3
    ]

    SetDayNightModels(dncs[id], dncs[id])
})

registerSimpleCommand("dncreset", () => {
    SetDayNightModels(
        "environment/dnc/dncdungeon/dncdungeonterrain/dncdungeonterrain.mdx",
        "environment/dnc/dncdungeon/dncdungeonunit/dncdungeonunit.mdx"
    )
})

registerSimpleCommand("makelight", () => {
    AddSpecialEffect("doodads/lordaeronsummer/props/lanternpost/lanternpost0.mdx", 0, 0)
})

registerSimpleCommand("lorem", () => {
    sysMessage(
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
    )
})
