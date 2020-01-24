import Player from "./core/types/player"

import * as lzw from "std.ext.lzw"
import * as base64 from "std.ext.base64"
import * as preload from "./preloader"
import * as network from "./network"
import Timer from "./core/timer"

import "./connector"

let context = util.context("livereload", { newScript: undefined as string | undefined })

compiletime(() => {
    let template = `
function PreloadFiles takes nothing returns nothing
    //! beginusercode
    local a = ""
    %s
    BlzSetAbilityTooltip(FourCC("ANcl"), a, 0)
    //! endusercode
endfunction
`

    connector.addCommand("std-livereload", () => {
        log("[STDLIB-LiveReload] Received reload command.")
        lastBuildCommand.output = "script"
        let result = ceres.buildMap(lastBuildCommand)
        if (!result) {
            log("[STDLIB-LiveReload] Failed to recompile map...")
            return
        }

        let payload = ""
        for (let [line] of string.gmatch(result.content!, "(.-)\n")) {
            payload = payload + string.format("a = a .. [===[%s]===] .. '\\n'\n", line)
        }

        let newScript = string.format(template, payload)
        fs.writeFile((ceres as any).runConfig.mapDataDir + "/ceresLiveReloadFile.pld", newScript)
        log("[STDLIB-LiveReload] Map built and live reload successfully triggered.")
    })
})

ceres.addHook("reload::before", function() {
    print("---- Ceres has reloaded ----")
})

network.receive("__lr", (sender: Player) => {
    let compressedScript = context.newScript!
    if (sender.isLocal) {
        // compressedScript = lzw.compress(compressedScript)
        // compressedScript = base64.encode(compressedScript)
    }

    network.synchronize(sender, compressedScript, data => {
        // data = base64.decode(data)
        // data = lzw.decompress(data)

        let compiled = load(data)
        if (compiled[0] != undefined) {
            ceres.safeCall(compiled[0])
        } else {
            print("failed to compile live reload script: ", compiled[1])
        }
    })
})

util.runOnce(() => {
    let t = CreateTrigger()
    TriggerAddAction(
        t,
        ceres.wrapSafeCall(() => {
            if (Player.all[0].isLocal) {
                preload.write("ceresLiveReloadFile.pld", "NODATA")
                connector.sendCommand("std-livereload", "")

                let tryRead: () => void
                let retries = 10
                tryRead = () => {
                    if (retries == 0) {
                        print("LiveReload: failed to load script after 10 retries...")
                        return
                    }

                    retries = retries - 1

                    context.newScript = preload.read("ceresLiveReloadFile.pld")
                    if (!context.newScript || context.newScript == "NODATA") {
                        Timer.simple(0.2, tryRead)
                    } else {
                        network.send("__lr", "")
                    }
                }

                Timer.simple(0.2, tryRead)
            }
        })
    )
    BlzTriggerRegisterPlayerKeyEvent(t, Player.byId(0).handle, OSKEY_F2, 0, true)
})
