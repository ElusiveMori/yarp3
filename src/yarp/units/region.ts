import { Player } from "cerrie/core/types/player"
import { Unit } from "cerrie/core/types/unit"
import { YUnitType } from "../unitext"

const REGION_ID = compiletime(() => {
    if (!currentMap) {
        throw "Current map must be active"
    }

    const region = objutil.createObject(objutil.ObjectType.UNIT, "ncrb", {
        Name: "Region",
        file: "Objects\\StartLocation\\StartLocation.mdl",
        art: "ReplaceableTextures\\WorldEditUI\\StartingLocation.blp",
        unitSound: "",
        spd: 0,
        weapsOn: 0,
        moveHeight: 0,
        abilList: `Avul`
    })

    return region.id
})

export class Region {
    readonly unit: Unit

    constructor(owner: Player, x: number, y: number) {
        this.unit = Unit.create(owner, REGION_ID, x, y, 0)
        this.unit.yarp.type = YUnitType.REGION
    }
}
