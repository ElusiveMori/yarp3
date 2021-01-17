import { PlayerColor } from "cerrie/core/types/playercolor"

const colorMap: { [id: string]: number | undefined } = {
    red: 0,
    blue: 1,
    cyan: 2,
    teal: 2,
    purple: 3,
    yellow: 4,
    orange: 5,
    green: 6,
    pink: 7,
    gray: 8,
    grey: 8,
    "light blue": 9,
    lightblue: 9,
    lb: 9,
    aqua: 10,
    "dark green": 10,
    darkgreen: 10,
    dg: 10,
    brown: 11,
    black: 24,
    neutral: 24,
    passive: 24,
    hostile: 24,

    maroon: 12,
    navy: 13,
    turquoise: 14,
    violet: 15,
    wheat: 16,
    peach: 17,
    mint: 18,
    lavender: 19,
    coal: 20,
    snow: 21,
    emerald: 22,
    peanut: 23,

    red2: 12,
    blue2: 13,
    teal2: 14,
    purple2: 15,
    yellow2: 16,
    orange2: 17,
    green2: 18,
    pink2: 19,
    gray2: 20,
    white: 21,
    lightblue2: 21,
    lb2: 21,
    darkgreen2: 22,
    dg2: 22,
    brown2: 23
}

export function stringToPlayerColor(input: string): PlayerColor | undefined {
    const id = colorMap[input]

    if (id != undefined) {
        return PlayerColor.byId(id)
    } else {
        return undefined
    }
}
