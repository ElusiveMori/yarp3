import Handle from "./handle"
import Rect from "./rect"
import Unit from "./unit"

let events: jtrigger[] = []

class Region extends Handle<jregion> {
    private enterTrigger?: jtrigger
    private onEnterCallbacks: ((unit: Unit) => void)[] = []

    addRect(rect: Rect) {
        RegionAddRect(this.handle, rect.handle)
    }

    clearRect(rect: Rect) {
        RegionClearRect(this.handle, rect.handle)
    }

    registerEnter(callback: (entering: Unit) => void) {
        if (this.enterTrigger == undefined) {
            let trigger = CreateTrigger()
            TriggerAddAction(trigger, () => {
                for (let callback of this.onEnterCallbacks) {
                    callback(Unit.of(GetEnteringUnit()))
                }
            })
            TriggerRegisterEnterRegion(trigger, this.handle)
            this.enterTrigger = trigger
        }

        this.onEnterCallbacks.push(callback)
    }

    clearCallbacks() {
        this.onEnterCallbacks.length = 0
    }

    static of(handle: jregion): Region {
        return Region.getForHandle(handle)
    }

    static create(): Region {
        let handle = CreateRegion()
        return Region.getForHandle(handle)
    }
}

ceres.addHook("reload::before", () => {
    for (let region of Region.getAllHandles<Region>()) {
        region.clearCallbacks()
    }
})

Region.init()

export default Region
