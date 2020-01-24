import Player from "./tsstd/core/types/player"
import { HandleExtension } from "./tsstd/core/types/handle"
import { U } from "./tsstd/core/war3event"
import Timer from "./tsstd/core/timer"
import { synchronize } from "./tsstd/network"

import "./tsstd/livereload"
import "./yarp/init"

U.Created.register(unit => {
    print("Unit created:", unit.name)
})
