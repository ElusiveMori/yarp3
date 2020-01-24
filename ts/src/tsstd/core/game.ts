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
    // TODO: implement
    return true
}
