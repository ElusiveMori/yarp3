// import "./tsstd/livereload"
// import "./yarp/init"

compiletime(() => {
    if (currentMap) {
        currentMap.addDir("import")
    }
})

import "cerrie/init"
import "cerrie/livereload"

import "./yarp/init"
import "./testbed"
