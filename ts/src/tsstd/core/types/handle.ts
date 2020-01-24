import { Event } from "../event"

export abstract class HandleExtension<T extends Handle<any>> {
    created(owner: T): void {}
    destroyed(owner: T): void {}
}

class Handle<T extends jhandle> {
    private static memoized: { [id: number]: Handle<any> }
    private static hooks: {
        [id: string]: HandleExtension<any>
    }

    readonly handle: T

    protected constructor(h: T, ctor: typeof Handle) {
        if (ctor.memoized[GetHandleId(h)]) {
            error("Double-constructor run for handle!")
        }

        this.handle = h
    }

    /**
     * Should be called on deriving classes to initialize relevant tables.
     */
    static init() {
        let context = util.context(`h/${this.name}`, {
            hooks: {},
            memoized: {}
        })

        this.hooks = context.hooks
        this.memoized = context.memoized
    }

    /**
     * Returns a `HandleWrap` for this handle, potentially memoized using the handle id.
     */
    protected static getForHandle<H extends jhandle, T extends Handle<H>>(handle: H): T {
        let id = GetHandleId(handle)
        if (this.memoized[id]) {
            return this.memoized[id] as T
        } else {
            let wrap = new this(handle, this)
            this.memoized[id] = wrap

            for (let [k, v] of pairs(this.hooks)) {
                v.created(wrap)
            }

            return wrap as T
        }
    }

    /**
     * Returns all instantiated handles.
     */
    static getAllHandles<T extends Handle<H>, H extends jhandle = jhandle>(): T[] {
        let t: T[] = []
        for (let [_, v] of pairs(this.memoized)) {
            t[t.length] = v as T
        }
        return t
    }

    /**
     * Registers an extension class to be created
     * on all instances of this handle type.
     */
    static registerExtension(c: HandleExtension<Handle<any>>): void {
        this.hooks[(c.constructor as typeof HandleExtension).name] = c
    }

    /**
     * Frees this handle, and runs any associated
     * extension destruction hooks.
     */
    destroy() {
        let clazz = this.constructor as typeof Handle

        for (let [_, hook] of pairs(clazz.hooks)) {
            hook.destroyed(this)
        }

        delete clazz.memoized[GetHandleId(this.handle)]
    }
}

Handle.init()

export default Handle
