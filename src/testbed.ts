import { Unit } from "cerrie/core/types/unit"
import { Player } from "cerrie/core/types/player"
import "cerrie/core/util"
import { Spawner } from "./yarp/units/spawner"
import { sysMessage } from "./yarp/log"

util.runOnce(() => {
    const u1 = Unit.create(Player.byId(0), "hfoo", 0, 0, 0)
    u1.skin = "sk01"

    const u2 = Unit.create(Player.byId(0), "hfoo", 0, 0, 0)
    u2.skin = "sk02"
})
