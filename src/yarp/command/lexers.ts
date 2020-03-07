const WHITESPACE_CC = string.byte(" ")
const QUOTE_OPEN_CC = string.byte("<")
const QUOTE_CLOSE_CC = string.byte(">")
const COMMAND_SEP_CC = string.byte("|")

export interface Lexer {
    hasNext(): boolean
    lex(): string
    collect(): string[]
    remaining(): string
}

abstract class AbstractLexer implements Lexer {
    protected inputString: string
    protected input: number[]
    protected cursor = 0

    constructor(input: string) {
        this.inputString = input
        this.input = string.byte(input, 1, input.length)
    }

    abstract lex(): string

    remaining(): string {
        return this.inputString.substring(this.cursor)
    }

    hasNext(): boolean {
        return this.cursor < this.input.length
    }

    collect(): string[] {
        const buf: string[] = []
        while (this.hasNext()) {
            buf[buf.length] = this.lex()
        }
        return buf
    }
}

/** @tuplereturn */
export function lexWord(input: number[], start: number): [string, number] {
    const buf: number[] = []
    const length = input.length
    let cursor = start

    while (cursor < length) {
        const char = input[cursor]

        if (char == WHITESPACE_CC) {
            cursor++
            break
        } else {
            cursor++
            buf[buf.length] = char
        }
    }

    return [string.char(...buf), cursor]
}

export class WordLexer extends AbstractLexer {
    constructor(input: string) {
        super(input)
    }

    lex(): string {
        const [result, newCursor] = lexWord(this.input, this.cursor)
        this.cursor = newCursor

        return result
    }
}

/** @tuplereturn */
export function lexCommand(input: number[], start: number): [string, number] {
    const length = input.length
    const buf: number[] = []
    let cursor = start
    let depth = 0

    while (cursor < length) {
        const charFirst = input[cursor]
        const charSecond = input[cursor + 1]

        if (charFirst == WHITESPACE_CC && buf.length == 0) {
            cursor++
            continue
        }

        if (charFirst == QUOTE_OPEN_CC && charSecond == QUOTE_OPEN_CC) {
            buf[buf.length] = QUOTE_OPEN_CC
            buf[buf.length] = QUOTE_OPEN_CC
            cursor += 2
            depth++
            continue
        }

        if (charFirst == QUOTE_CLOSE_CC && charSecond == QUOTE_CLOSE_CC) {
            buf[buf.length] = QUOTE_CLOSE_CC
            buf[buf.length] = QUOTE_CLOSE_CC
            cursor += 2
            depth = math.max(0, depth - 1)
            continue
        }

        if (charFirst == COMMAND_SEP_CC && depth == 0) {
            cursor++
            break
        }

        cursor++
        buf[buf.length] = charFirst
    }

    return [string.char(...buf), cursor]
}

export class CommandLexer extends AbstractLexer {
    constructor(input: string) {
        super(input)
    }

    lex(): string {
        const [result, newCursor] = lexCommand(this.input, this.cursor)
        this.cursor = newCursor

        return result
    }
}

/** @tuplereturn */
export function lexArgument(input: number[], start: number): [string, number] {
    const length = input.length
    const buf: number[] = []
    let cursor = start
    let depth = 0

    while (cursor < length) {
        const charFirst = input[cursor]
        const charSecond = input[cursor]

        if (charFirst == WHITESPACE_CC && depth == 0) {
            cursor++

            if (buf.length > 0) {
                break
            }
        }

        if (charFirst == QUOTE_OPEN_CC && charSecond == QUOTE_OPEN_CC) {
            if (depth > 0) {
                buf[buf.length] = QUOTE_OPEN_CC
                buf[buf.length] = QUOTE_OPEN_CC
            }

            cursor += 2
            depth++
            continue
        }

        if (charFirst == QUOTE_CLOSE_CC && charSecond == QUOTE_CLOSE_CC) {
            cursor += 2
            depth--

            if (depth > 0) {
                buf[buf.length] = QUOTE_CLOSE_CC
                buf[buf.length] = QUOTE_CLOSE_CC
            }

            continue
        }

        cursor++
        buf[buf.length] = charFirst
    }

    return [string.char(...buf), cursor]
}

export class ArgumentLexer extends AbstractLexer {
    constructor(input: string) {
        super(input)
    }

    lex(): string {
        const [result, newCursor] = lexArgument(this.input, this.cursor)
        this.cursor = newCursor

        return result
    }
}

/** @tuplereturn */
// input should be trimmed
export function lexArgumentString(input: string): [string, string] {
    const [lexed, cursor] = lexArgument(string.byte(input, 1, input.length), 0)
    return [lexed, input.substring(cursor)]
}
