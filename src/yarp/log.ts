import * as color from "cerrie/color"
import { Player } from "cerrie/core/types/player"
import { sendMessage } from "./chatbuf"
import { setDisplayHandler } from "cerrie/core/configurable"

const COLOR_GRAY = "|cff999999"
const COLOR_SYS_BADGE = "|cff9999bb"
const COLOR_SYS_TEXT = color.toColorCode(color.compToRgb(200, 200, 230))

function playerColorCode(p: Player): string {
    let [h, s, v] = color.rgbToHsv(p.colorValue)
    v = math.max(0.2, v)
    return color.toColorCode(color.hsvToRgb(h, s * 0.8, v * 1.2))
}

export function sysMessage(message: string): void {
    sendMessage(`${COLOR_SYS_TEXT}${message}`, `${COLOR_SYS_BADGE}SYSTEM ${COLOR_GRAY}>`)
}

export function oocMessage(speaker: Player, text: string): void {
    const rgbCode = playerColorCode(speaker)
    sendMessage(`${rgbCode}${speaker.name}${COLOR_GRAY}:|r ${text}`, `${rgbCode}OOC ${COLOR_GRAY}>`)
}

export function icMessage(speaker: Player, icName: string, text: string): void {
    const rgbCode = playerColorCode(speaker)
    sendMessage(`${rgbCode}${icName}|r ${text}`, `${rgbCode}IC ${COLOR_GRAY}>`)
}

setDisplayHandler(message => {
    sysMessage(message)
})
