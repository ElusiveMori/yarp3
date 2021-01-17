import "cerrie/core/idgen"
import "../objutil"

import { Unit } from "cerrie/core/types/unit"
import { Player } from "cerrie/core/types/player"
import { addGetter } from "../../augment"
import { U, P } from "cerrie/core/war3event"
import Timer from "cerrie/core/timer"
import { YUnitType } from "../unitext"

const SPAWNER_ID = compiletime(() => {
    if (!currentMap) {
        throw "Current map must be active"
    }

    const cargoHold = objutil.createObject(objutil.ObjectType.ABILITY, "Sch5", {
        Area1: 100000,
        Rng1: 100000,
        Effectsound: ""
    })

    const cargoLoad = objutil.createObject(objutil.ObjectType.ABILITY, "Slo3", {
        Rng1: 100000,
        Effectsound: ""
    })

    const cargoUnload = objutil.createObject(objutil.ObjectType.ABILITY, "Sdro", {
        Rng1: 100000,
        Effectsound: ""
    })

    const spawner = objutil.createObject(objutil.ObjectType.UNIT, "ncrb", {
        Name: "Spawner",
        file: "Objects\\StartLocation\\StartLocation.mdl",
        art: "ReplaceableTextures\\WorldEditUI\\StartingLocation.blp",
        cargoSize: 8,
        movetp: "fly",
        sight: 1500,
        nsight: 1500,
        unitSound: "",
        spd: 522,
        weapsOn: 0,
        moveHeight: 400,
        abilList: `Avul,${cargoHold.id},${cargoLoad.id},${cargoUnload.id}`
    })

    return spawner.id
})

declare module "cerrie/core/types/player" {
    interface Player {
        readonly spawner: Spawner
    }
}

export class Spawner {
    private static spawners: Spawner[] = util.contextFn("yarp/spawners", () => {
        const spawners: Spawner[] = []

        for (const player of Player.all) {
            if (player.isHuman && player.isPlaying) {
                spawners[player.id] = new Spawner(player)
            }
        }

        return spawners
    })

    readonly owner: Player
    readonly unit: Unit

    private constructor(owner: Player) {
        this.unit = Unit.create(owner, SPAWNER_ID, 0, 0, 0)
        this.unit.size = 0.25
        this.unit.yarp.type = YUnitType.SPAWNER
        this.owner = owner
    }

    static of(owner: Player): Spawner {
        return this.spawners[owner.id]
    }
}

U.OrderPoint.register((unit, orderId, x, y) => {
    const orderString = OrderId2String(orderId)

    if (unit.yarp.type == YUnitType.SPAWNER) {
        if (orderString == "move" || orderString == "patrol" || orderString == "smart") {
            unit.x = x
            unit.y = y
            unit.issueSelfOrder("stop")
        }
    }
})

U.OrderTarget.register((unit, orderId) => {
    const orderString = OrderId2String(orderId)

    if (orderString == "patrol") {
        Timer.simple(0, () => {
            unit.issueSelfOrder("stop")
        })
    }
})

P.Leave.register(player => {
    const spawner = player.spawner

    spawner.unit.remove()
})
