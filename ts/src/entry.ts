import { U } from "./tsstd/core/war3event"

import "./tsstd/livereload"
import "./yarp/init"

U.Created.register(unit => {
    print("Unit created:", unit.name)
})
