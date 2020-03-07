import { Frame } from "cerrie/core/types/frame"
import { createStringFrame, wideScreenFrame, screenInfo } from "./frames"
import * as game from "cerrie/core/game"
import "cerrie/core/util"
import { ChatMessage, ChatDisplay, setActiveChatDisplay } from "../chatbuf"

import { wrapString } from "./wrap"
import Timer from "cerrie/core/timer"

const LINE_FRAMES = 64
const CHAT_FONT = "fonts/SourceSansPro-Regular.ttf"
const DEFAULT_X_OFF = 0.1
const DEFAULT_Y_OFF = 0.14
const FADE_THRESHOLD = 999999

interface ChatBoxMessage extends ChatMessage {
    // whether the message has been processed and loaded into the lines buffer
    loaded?: boolean
}

interface ChatBoxLine {
    content: string
    timestamp: number
    badge?: string
}

interface ChatBoxConfig {
    shadow: boolean
    height: number
    maxLines: number
    thresholdMul: number
    fontSizeMul: number
    offsetX: number
    offsetY: number
    noFade: boolean
}

function processMessage(message: ChatBoxMessage, threshold: number): ChatBoxLine[] {
    const tmp: ChatBoxLine[] = []
    const wrapped = wrapString(message.content, threshold)

    for (const line of wrapped) {
        table.insert(tmp, {
            content: line,
            timestamp: message.timestamp
        })
    }

    tmp[0].badge = message.badge

    return tmp
}

export class ChatBox implements Destroyable, ChatDisplay {
    private lineThreshold = 0
    private fontSize = 0
    private chatLines = 0

    private processedMessageIdx = -1

    private lineFrames: Frame[] = []
    private badgeFrames: Frame[] = []

    private messageBuffer: ChatBoxMessage[]
    private lineBuffer: ChatBoxLine[] = []

    config: ChatBoxConfig

    constructor(config: ChatBoxConfig) {
        this.config = config
        this.recalculateSizes()

        for (let i = 0; i < LINE_FRAMES; i++) {
            const lineFrame = createStringFrame(true)
            const badgeFrame = createStringFrame(true)

            lineFrame.clearAllPoints()
            lineFrame.setTextAlignment(TEXT_JUSTIFY_BOTTOM, TEXT_JUSTIFY_LEFT)
            lineFrame.text = ""

            badgeFrame.clearAllPoints()
            badgeFrame.setTextAlignment(TEXT_JUSTIFY_BOTTOM, TEXT_JUSTIFY_RIGHT)
            badgeFrame.text = ""
            badgeFrame.setPoint(FRAMEPOINT_TOPRIGHT, lineFrame, FRAMEPOINT_TOPLEFT, -0.005, 0)

            this.lineFrames[i] = lineFrame
            this.badgeFrames[i] = badgeFrame
        }

        this.messageBuffer = []

        this.updateLayout()
    }

    setBuffer(buffer: ChatMessage[]): void {
        this.messageBuffer = buffer
        this.resetContent()
    }

    sendMessage(chatMessage: ChatMessage): void {
        const message = {
            loaded: true,
            ...chatMessage
        }

        table.insert(this.messageBuffer, message)

        const tmp: ChatBoxLine[] = processMessage(message, this.lineThreshold)

        util.insertBatch(this.lineBuffer, tmp)
        this.updateContent()
    }

    recalculateSizes(): void {
        this.fontSize = screenInfo.scale * 0.018 * this.config.fontSizeMul
        this.lineThreshold = (1.2 / this.fontSize) * this.config.thresholdMul
        this.chatLines = math.min(
            LINE_FRAMES,
            this.config.maxLines,
            math.floor(this.config.height / this.fontSize)
        )
    }

    // ensures that there are at least `count` lines in the line buffer
    loadLines(count: number): void {
        let currentMessageIdx =
            this.processedMessageIdx == -1
                ? this.messageBuffer.length - 1
                : this.processedMessageIdx - 1
        const linesRemaining = count - this.lineBuffer.length
        // add lines to an intermediate buffer for more efficient inserts later
        const collector: ChatBoxLine[] = []

        // keep loading lines while we need them, and while we still have unprocessed messages
        while (linesRemaining > 0 && currentMessageIdx >= 0) {
            const currentMessage = this.messageBuffer[currentMessageIdx]
            // if this message has already been processed, skip it
            if (currentMessage.loaded) {
                currentMessageIdx--
                continue
            }

            const tmp = processMessage(currentMessage, this.lineThreshold)

            util.insertBatch(collector, tmp, 0)
            currentMessage.loaded = true
            this.processedMessageIdx = currentMessageIdx
            currentMessageIdx--
        }

        util.insertBatch(this.lineBuffer, collector, 0)
    }

    resetContent(): void {
        this.processedMessageIdx = -1
        this.lineBuffer = []

        for (const message of this.messageBuffer) {
            message.loaded = false
        }

        this.updateContent()
    }

    updateContent(): void {
        const noFade = this.config.noFade
        const currentTime = game.elapsedTime()

        let lineNumber = 0

        this.loadLines(this.chatLines)
        const allLinesCount = this.lineBuffer.length

        while (lineNumber < this.chatLines) {
            const textFrame = this.lineFrames[lineNumber]
            const badgeFrame = this.badgeFrames[lineNumber]

            // check if we actually need to display a line here
            if (lineNumber < allLinesCount) {
                // newer lines appear at the end of the buffer
                const line = this.lineBuffer[allLinesCount - lineNumber - 1]

                if (noFade || currentTime - line.timestamp < FADE_THRESHOLD) {
                    textFrame.text = line.content
                    badgeFrame.text = line.badge || ""
                } else {
                    textFrame.text = ""
                    badgeFrame.text = ""
                }
            } else {
                textFrame.text = ""
                badgeFrame.text = ""
            }

            lineNumber++
        }
    }

    updateTimestamps(): void {
        const maxChatLines = this.chatLines
        const lineBuffer = this.lineBuffer
        const lineBufferLength = lineBuffer.length
        const noFade = this.config.noFade
        const currentTime = game.elapsedTime()

        let i = 0
        while (i < maxChatLines && i < lineBufferLength) {
            const line = lineBuffer[lineBufferLength - i - 1]
            if (!noFade && currentTime - line.timestamp > FADE_THRESHOLD) {
                this.lineFrames[i].text = ""
                this.badgeFrames[i].text = ""
            }
            i++
        }
    }

    updateLayout(): void {
        for (let i = 0; i < LINE_FRAMES; i++) {
            const lineFrame = this.lineFrames[i]
            const badgeFrame = this.badgeFrames[i]

            if (i < this.chatLines) {
                lineFrame.setSize(1, this.fontSize)
                lineFrame.setPoint(
                    FRAMEPOINT_BOTTOMLEFT,
                    wideScreenFrame,
                    FRAMEPOINT_BOTTOMLEFT,
                    DEFAULT_X_OFF + this.config.offsetX,
                    DEFAULT_Y_OFF + i * this.fontSize + this.config.offsetY
                )

                lineFrame.setFont(CHAT_FONT, this.fontSize, this.config.shadow ? 1 : 0)

                badgeFrame.setSize(1, this.fontSize)
                badgeFrame.setFont(CHAT_FONT, this.fontSize, this.config.shadow ? 1 : 0)
            } else {
                lineFrame.text = ""
                badgeFrame.text = ""
            }
        }
    }

    clear(): void {
        this.messageBuffer.length = 0
        this.resetContent()
    }

    destroy(): void {
        // actually destroying frames can crash the game under certain conditions,
        // but it will suffice to just hide them, since we only destroy the chatbox
        // on code reloads
        for (const [, frame] of ipairs(this.lineFrames)) {
            frame.text = ""
        }

        for (const [, frame] of ipairs(this.badgeFrames)) {
            frame.text = ""
        }
    }
}

const chatBoxConfig = util.context("yarp/chatBoxConfig", {
    height: 0.4,
    maxLines: 128,
    thresholdMul: 1.0,
    fontSizeMul: 1.0,
    offsetX: 0.0,
    offsetY: 0.0,
    noFade: false,
    shadow: true
})

export const defaultChatBox = new ChatBox(chatBoxConfig)
setActiveChatDisplay(defaultChatBox)

const timer = Timer.periodic(0.2, () => {
    defaultChatBox.updateTimestamps()
})

ceres.addHook("reload::before", () => {
    timer.destroy()
    setActiveChatDisplay(undefined)
    defaultChatBox.destroy()
})
