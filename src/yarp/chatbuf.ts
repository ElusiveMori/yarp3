import { elapsedTime } from "cerrie/core/game"

export interface ChatMessage {
    // the raw content of the message, without wrapping
    content: string
    // timestamp when the message was sent (for fading out old messages)
    timestamp: number
    // a small string displayed to the left of the message
    badge?: string
}

export interface ChatDisplay {
    sendMessage(message: ChatMessage): void
    setBuffer(buffer: ChatMessage[]): void
    clear(): void
}

const chatMessageBuffer: ChatMessage[] = util.context("yarp/chatBuffer", [])
let currentDisplay: ChatDisplay | undefined = undefined

export function clearMessages(): void {
    if (currentDisplay != undefined) {
        currentDisplay.clear()
    } else {
        chatMessageBuffer.length = 0
    }
}

export function setActiveChatDisplay(display: ChatDisplay | undefined): void {
    currentDisplay = display

    if (display != undefined) {
        display.setBuffer(chatMessageBuffer)
    }
}

export function sendMessage(message: string, badge?: string): void {
    const chatMessage = {
        content: message,
        badge: badge,
        timestamp: elapsedTime()
    }

    if (currentDisplay != undefined) {
        currentDisplay.sendMessage(chatMessage)
    } else {
        table.insert(chatMessageBuffer, chatMessage)
    }
}
