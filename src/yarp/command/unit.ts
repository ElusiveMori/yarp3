import { registerUnitCommand } from "./command"
import { sysMessage } from "../log"

registerUnitCommand(
    "runspeed",
    (e, a) => [tonumber(a.lex())!],
    (u, [speed]) => {
        BlzSetUnitRealField(u.handle, UNIT_RF_ANIMATION_RUN_SPEED, speed)
        sysMessage("Hi")
    }
)
