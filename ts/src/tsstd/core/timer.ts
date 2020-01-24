import { elapsedTime } from "./game"

class Timer {
    private scheduledTime: number
    private period?: number
    private callback: (this: void) => void

    private static context = util.contextFn("timer", () => {
        Timer.initialize()

        return {
            scheduled: [] as Timer[]
        }
    })

    private constructor(scheduledTime: number, callback: () => void) {
        this.scheduledTime = scheduledTime
        this.callback = callback
    }

    cancel() {
        let scheduled = Timer.context.scheduled
        for (let i = 0; i < scheduled.length; i++) {
            if (scheduled[i] == this) {
                // performance workaround...
                table.remove(scheduled, i + 1)
            }
        }
    }

    static simple(timeout: number, callback: () => void): Timer {
        let timer = new Timer(elapsedTime() + timeout, ceres.wrapSafeCall(callback))
        timer.schedule()
        return timer
    }

    static periodic(period: number, callback: () => void): Timer {
        let timer = new Timer(elapsedTime() + period, ceres.wrapSafeCall(callback))
        timer.period = period
        timer.schedule()
        return timer
    }

    private schedule() {
        let scheduledTime = this.scheduledTime
        let scheduled = Timer.context.scheduled

        for (let i = scheduled.length - 1; i >= 0; i--) {
            if (scheduled[i].scheduledTime > scheduledTime) {
                // apparently, there's no efficient way of doing this in TS
                // without using splice...
                table.insert(scheduled, i + 1 + 1, this)
                return
            }
        }

        table.insert(scheduled, 1, this)
    }

    private static initialize() {
        let t = CreateTimer()
        TimerStart(t, 1 / 128, true, () => {
            let elapsed = elapsedTime()
            let toReschedule: Timer[] = []
            let scheduled = Timer.context.scheduled

            for (let i = scheduled.length - 1; i >= 0; i--) {
                let currentTimer = scheduled[i]
                if (currentTimer.scheduledTime <= elapsed) {
                    delete scheduled[i]
                    currentTimer.callback()

                    if (currentTimer.period != undefined) {
                        currentTimer.scheduledTime = elapsed + currentTimer.period
                        toReschedule.push(currentTimer)
                    }
                } else {
                    break
                }
            }

            for (let v of toReschedule) {
                v.schedule()
            }
        })
    }
}

export default Timer
