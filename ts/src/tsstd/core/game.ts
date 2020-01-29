import Player from "./types/player"

let context = util.contextFn("game", () => {
    let tracker = CreateTimer()
    TimerStart(tracker, 60 * 60 * 24 * 365, false, undefined)
    return {
        tracker: tracker
    }
})

export function elapsedTime(): number {
    return TimerGetElapsed(context.tracker)
}

export function isSinglePlayer(): boolean {
    let count = 0
    for (let player of Player.all) {
        if (player.isHuman && player.isPlaying) {
            count++
        }
    }
    return count == 1
}
