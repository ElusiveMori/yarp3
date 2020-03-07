interface TSTLInternals {
    ____getters: { [index: string]: (this: any) => any }
    ____setters: { [index: string]: (this: any, value: any) => void }
}

export function addSetter<T>(obj: any, id: string, setter: (this: T, value: any) => void): void {
    const proto = obj.prototype as TSTLInternals

    proto.____setters[id] = setter
}

export function addGetter<T>(obj: any, id: string, getter: (this: T) => any): void {
    const proto = obj.prototype as TSTLInternals

    proto.____getters[id] = getter
}
