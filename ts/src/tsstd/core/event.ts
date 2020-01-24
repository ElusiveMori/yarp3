export type AnyEventCallback = (...args: Vararg<any[]>) => void

/** @vararg */
type Vararg<A extends any[]> = A & {}

let context = util.context("event", {
    hooks: new Map<string, Array<AnyEventCallback>>()
})

export class Event<C extends AnyEventCallback> {
    private _1?: C
    private _id: string

    constructor(id: string) {
        this._id = id
    }

    register(callback: (...args: Parameters<C>) => void) {
        let id = this._id

        if (!context.hooks.has(id)) {
            context.hooks.set(id, [])
        }

        let hooks = context.hooks.get(id)!
        hooks.push(callback as AnyEventCallback)
        Event.call(OnRegister, this)
    }

    static call<C extends AnyEventCallback>(event: Event<C>, ...args: Vararg<Parameters<C>>) {
        let id = (event as any)._id
        let hooks = context.hooks.get(id)
        if (hooks != undefined) {
            for (let hook of hooks) {
                hook(...args)
            }
        }
    }
}

export const OnRegister = new Event<(event: Event<AnyEventCallback>) => void>("e/register")

ceres.addHook("reload::before", () => {
    for (let [_, hooks] of context.hooks.entries()) {
        hooks.length = 0
    }
})
