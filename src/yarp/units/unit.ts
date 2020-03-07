import { Unit } from "cerrie/core/types/unit"
import { addSetter, addGetter } from "../../augment"
import { Player } from "cerrie/core/types/player"

interface UnitInternals extends Player {
    _size: number
}

declare module "cerrie/core/types/unit" {
    interface Unit {
        size: number
    }
}

const STOCK_SIZES = compiletime(() => {
    const sizeManifest: {
        [idx: string]: number | undefined
    } = {}

    if (currentMap) {
        for (const obj of (currentMap.objects.unit.all as unknown) as WarObject[]) {
            sizeManifest[obj.id] = tonumber(obj.getField("modelScale"))
        }
    }

    return sizeManifest
})

addSetter<Unit>(Unit, "size", function(v) {
    ;((this as unknown) as UnitInternals)._size = v
    SetUnitScale(this.handle, v, 1, 1)
})

addGetter<Unit>(Unit, "size", function(): number {
    return ((this as unknown) as UnitInternals)._size || STOCK_SIZES[util.id2s(this.id)] || 1
})
