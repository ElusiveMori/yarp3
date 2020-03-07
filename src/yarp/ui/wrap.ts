import * as glyphs from "./glyphestimate"

const [CHARCODE_PIPE] = utf8.codepoint("|")
const [CHARCODE_C] = utf8.codepoint("c")
const [CHARCODE_R] = utf8.codepoint("r")

function testSpecialSequence(codes: number[], idx: number): [boolean, number] {
    if (codes[idx] == CHARCODE_PIPE) {
        if (codes[idx + 1] == CHARCODE_C) {
            return [true, 10]
        } else if (codes[idx + 1] == CHARCODE_R) {
            return [true, 2]
        }
    }

    return [false, 0]
}

function stripSpecialSequences(input: string): string {
    const codes = string.byte(input, 1, input.length)
    const codesLength = codes.length
    const buf: number[] = []
    let i = 0
    while (i < codesLength) {
        if (codes[i] == CHARCODE_PIPE) {
            if (codes[i + 1] == CHARCODE_C) {
                i += 10
                continue
            } else if (codes[i] == CHARCODE_R) {
                i += 2
                continue
            }
        }

        buf[buf.length] = codes[i]
        i++
    }
    return string.char(...buf)
}

function glyphWeight(glyphCode: number): number {
    const glyphMetrics = glyphs.AdobeSourceProMetricMap[glyphCode]
    return (glyphMetrics ? glyphMetrics.advx : 400) / 400
}

function stringWeight(word: string): number {
    let weight = 0
    const filtered = stripSpecialSequences(word)
    for (const [, glyph] of utf8.codes(filtered)) {
        weight += glyphWeight(glyph)
    }
    return weight
}

function wrapWord(word: string, startWeight: number, threshold: number): string[] {
    const parts: string[] = []

    const codes = utf8.codepoint(word, 1, word.length)
    let tmp: number[] = []
    let currentWeight = startWeight
    let i = 0
    while (i < codes.length) {
        const [isSpecialSequence, specialSequenceLen] = testSpecialSequence(codes, i)
        if (isSpecialSequence) {
            for (let j = 0; j < specialSequenceLen; j++) {
                tmp[tmp.length] = codes[i]
                i++
            }

            continue
        }

        const glyphCode = codes[i]
        const thisWeight = glyphWeight(glyphCode)
        if (currentWeight + thisWeight > threshold) {
            parts[parts.length] = utf8.char(...tmp)
            tmp = [glyphCode]
            currentWeight = thisWeight
        } else {
            tmp[tmp.length] = glyphCode
            currentWeight += thisWeight
        }

        i++
    }

    parts[parts.length] = utf8.char(...tmp)

    return parts
}

export function wrapString(input: string, lineThreshold: number): string[] {
    input = input.trim()
    const lines: string[] = []

    let currentWeight = 0
    let currentLine = ""

    function commit(): void {
        table.insert(lines, currentLine)
        currentLine = ""
        currentWeight = 0
    }

    for (let [word, whitespace] of string.gmatch(input, "([^ ]+)([ ]*)")) {
        const wordWeight = stringWeight(word)
        let whitespaceWeight = stringWeight(whitespace)

        if (currentWeight + wordWeight + whitespaceWeight > lineThreshold) {
            // if the offending part is just whitepsace, we can get rid of it overall
            if (currentWeight + wordWeight <= lineThreshold) {
                whitespace = ""
                whitespaceWeight = 0
            }
        }

        if (currentWeight + wordWeight > lineThreshold) {
            if (wordWeight <= lineThreshold) {
                commit()
                currentLine = word + whitespace
                currentWeight = wordWeight + whitespaceWeight
            } else if (wordWeight > lineThreshold) {
                const wordParts = wrapWord(word, currentWeight, lineThreshold)

                const head = table.remove(wordParts, 1)!
                const tail = table.remove(wordParts)!

                currentLine += head
                commit()
                for (const wordPart of wordParts) {
                    table.insert(lines, wordPart)
                }
                currentLine += tail + whitespace
                currentWeight = stringWeight(tail) + whitespaceWeight
            }
        } else {
            currentLine += word + whitespace
            currentWeight += wordWeight + whitespaceWeight
        }
    }

    table.insert(lines, currentLine)

    let color: string | undefined = undefined
    for (const [k, s] of ipairs(lines)) {
        if (color != undefined) {
            lines[k - 1] = `|c${color}${s}`
        }

        for (const [cmd, colors] of string.gmatch(s, "(|[cr])(%x?%x?%x?%x?%x?%x?%x?%x?)")) {
            if (cmd == "|c" && colors.length == 8) {
                color = colors
            } else if (cmd == "|r") {
                color = undefined
            }
        }
    }

    return lines
}
