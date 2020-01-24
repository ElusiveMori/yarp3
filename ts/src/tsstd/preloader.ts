let abilityId = util.s2id("ANcl")
let maxPreloadSize = 259
let noDataMarker = "NO_DATA_PRESENT"

export function read(filename: string): string | undefined {
    BlzSetAbilityTooltip(abilityId, noDataMarker, 0)
    Preloader(filename)
    let data = BlzGetAbilityTooltip(abilityId, 0)
    if (data == noDataMarker) {
        return undefined
    } else {
        return data
    }
}

function escapePreload(input: string): string {
    return string.format('")\n%s\n//', input)
}

let prelude = `
//! beginusercode
local a=""
Preload=function(s)a=a..s end
PreloadEnd=function()end
//! endusercode
`

let postlude = string.format(
    `
//! beginusercode
BlzSetAbilityTooltip(%s, a, 0)
//! endusercode
`,
    abilityId
)

export function writeRaw(filename: string, ...args: string[]) {
    PreloadGenClear()
    PreloadGenStart()

    for (let [_, content] of ipairs(args)) {
        for (let part of string.partition(content, maxPreloadSize)) {
            Preload(part)
        }
    }

    PreloadGenEnd(filename)
}

export function write(filename: string, content: string) {
    PreloadGenClear()
    PreloadGenStart()

    Preload(escapePreload(prelude))
    for (let part of string.partition(content, maxPreloadSize)) {
        Preload(part)
    }
    Preload(escapePreload(postlude))

    PreloadGenEnd(filename)
}
