/** @tuplereturn */
export function parseWord(input: string): [string, string] {
    let i = 0
    let length = input.length
    let curChar = input.charAt(i)

    while (curChar != " " && i < length) {
        i++
        curChar = input.charAt(i)
    }

    return [input.substring(0, i), input.substring(i + 1)]
}

/** @tuplereturn */
export function parseCommand(input: string): [string, string] {
    const length = input.length
    let i = 0
    let depth = 0
    while (i < length) {
        if (input.substring(i, i + 2) == "<<") {
            depth++
            i += 2
            continue
        }

        if (input.substring(i, i + 2) == ">>") {
            depth = math.max(0, depth - 1)
            i += 2
            continue
        }

        if (input.charAt(i) == "|" && depth == 0) {
            return [input.substring(0, i - 1), input.substring(i + 1)]
        }

        i++
    }

    return [input.substring(0, i), ""]
}

/** @tuplereturn */
// input should be trimmed
export function parseArgument(input: string): [string, string] {
    const length = input.length
    let start = 0
    let i = 0
    let depth = 0
    while (i < length) {
        if (input.charAt(i) == " " && depth == 0) {
            return [input.substring(start, i), input.substring(i + 1)]
        }

        if (input.substring(i, i + 2) == "<<") {
            if (depth == 0) {
                start = i + 2
            }

            depth++
            i += 2
        }

        if (input.substring(i, i + 2) == ">>") {
            depth--

            if (depth == 0) {
                return [input.substring(start, i), input.substring(i + 2)]
            }
            i += 2
        }

        i++
    }

    return [input.substring(0, i), ""]
}
