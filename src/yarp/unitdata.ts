import { Unit } from "cerrie/core/types/unit"

import "./unitext"
import { PlayerColor } from "cerrie/core/types/playercolor"
import { Player } from "cerrie/core/types/player"

export interface UnitVisualData {
    tR: number
    tG: number
    tB: number
    tA: number
    color: number
    height: number
    scale: number
    facing: number
}

export interface UnitData {
    id: string
    visual: UnitVisualData
}

export function collectDataFromUnit(unit: Unit): UnitData {
    const visualData: UnitVisualData = {
        tR: unit.tintR,
        tG: unit.tintG,
        tB: unit.tintB,
        tA: unit.tintA,
        color: unit.color.id,
        height: unit.z,
        scale: unit.size,
        facing: unit.facing
    }

    return {
        id: util.id2s(unit.id),
        visual: visualData
    }
}

export function applyDataToUnit(unit: Unit, data: UnitData): void {
    const visual = data.visual

    unit.setVertexColor(visual.tR, visual.tG, visual.tB, visual.tA)
    unit.color = PlayerColor.byId(visual.color)
    unit.size = visual.scale
    unit.facing = visual.facing
    unit.z = visual.height
}

export function createUnitFromData(owner: Player, data: UnitData): Unit {
    const unit = Unit.create(owner, data.id, 0, 0, 0)

    applyDataToUnit(unit, data)

    return unit
}
