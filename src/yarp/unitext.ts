import { wholeRect } from "cerrie/core/mapbounds"
import { Unit } from "cerrie/core/types/unit"
import { addSetter, addGetter } from "../augment"
import { sysMessage } from "./log"
import { manifest, ManifestUnitInfo } from "./manifest"
import { U } from "cerrie/core/war3event"
import { PlayerColor } from "cerrie/core/types/playercolor"

interface UnitInternals extends Unit {
    _color: PlayerColor
    _size: number
    _uprooted: boolean
    _flown: boolean
    _tint: [number, number, number, number]
}

export enum YUnitType {
    NORMAL,
    SPAWNER,
    REGION
}

export interface YUnitData {
    type: YUnitType
    description?: string
}

declare module "cerrie/core/types/unit" {
    interface Unit {
        size: number
        model: string
        uid?: string
        color: PlayerColor
        tintR: number
        tintG: number
        tintB: number
        tintA: number
        yarp: YUnitData
    }
}

const MANIFESTS: NumTable<ManifestUnitInfo> = {}

const UID_TO_ID: StrTable<number> = {}
const ID_TO_UID: NumTable<string> = {}

for (const unitInfo of manifest.unitInfos) {
    const id = util.s2id(unitInfo.id)
    if (unitInfo.uid) {
        UID_TO_ID[unitInfo.uid] = id
        ID_TO_UID[id] = unitInfo.uid
    }
    MANIFESTS[id] = unitInfo
}

const bounds = wholeRect()
const minx = bounds.minx + 0.1
const miny = bounds.miny + 0.1
const maxx = bounds.maxx - 0.1
const maxy = bounds.maxy - 0.1

addSetter<Unit>(Unit, "x", function(v) {
    SetUnitX(this.handle, v > maxx ? maxx : v < minx ? minx : v)
})

addSetter<Unit>(Unit, "y", function(v) {
    SetUnitY(this.handle, v > maxy ? maxy : v < miny ? miny : v)
})

addSetter<Unit>(Unit, "size", function(v) {
    ;(this as UnitInternals)._size = v
    SetUnitScale(this.handle, v, 1, 1)
})

addGetter<Unit>(Unit, "size", function(): number {
    return (this as UnitInternals)._size || (MANIFESTS[this.id] && MANIFESTS[this.id]!.scale) || 1
})

addGetter<Unit>(Unit, "model", function(): string {
    return (MANIFESTS[this.id] || {}).model || ""
})

addGetter<Unit>(Unit, "uid", function(): string | undefined {
    return ID_TO_UID[this.id]
})

addGetter<Unit>(Unit, "tintR", function(): number {
    return (this as UnitInternals)._tint[0]
})

addGetter<Unit>(Unit, "tintG", function(): number {
    return (this as UnitInternals)._tint[1]
})

addGetter<Unit>(Unit, "tintB", function(): number {
    return (this as UnitInternals)._tint[2]
})

addGetter<Unit>(Unit, "tintA", function(): number {
    return (this as UnitInternals)._tint[3]
})

addSetter<Unit>(Unit, "color", function(v) {
    ;(this as UnitInternals)._color = v
    SetUnitColor(this.handle, v.handle)
})

addGetter<Unit>(Unit, "color", function(): PlayerColor {
    return (this as UnitInternals)._color || this.owner.color
})

Unit.prototype.setVertexColor = function(r: number, g: number, b: number, a: number): void {
    const colorArray = (this as UnitInternals)._tint
    colorArray[0] = r
    colorArray[1] = g
    colorArray[2] = b
    colorArray[3] = a
    SetUnitVertexColor(this.handle, r, g, b, a)
}

export function uid2id(uid: string): number | undefined {
    return UID_TO_ID[uid]
}

export function id2uid(id: number): string | undefined {
    return ID_TO_UID[id]
}

const CLAW_MORPH_ID = "Amrf"
const ORIGINAL_UPROOT_ID = "Aro1"

function hasUproot(unit: Unit): boolean {
    return unit.getAbility(ORIGINAL_UPROOT_ID) != undefined
}

export function flyUnit(unit: Unit): void {
    if (!(unit as UnitInternals)._flown) {
        // don't really need to uproot since we
        // set all buildings to have 0 elev sampling points
        // so they correctly get flown and can move around
        // without the uproot trick

        // uprootUnit(unit)

        if (unit.addAbility(CLAW_MORPH_ID)) {
            unit.removeAbility(CLAW_MORPH_ID)
        }

        ;(unit as UnitInternals)._flown = true
    }
}

function removeMovement(unit: Unit): void {
    if (unit.isBuilding && !hasUproot(unit)) {
        unit.removeAbility("Amov")
    }
}

Unit.registerExtension<Unit>("yarp", {
    created: unit => {
        ;(unit as UnitInternals)._tint = [255, 255, 255, 255]

        unit.yarp = {
            type: YUnitType.NORMAL
        }
    }
})

U.Created.register(removeMovement)
U.UpgradeFinish.register(removeMovement)
