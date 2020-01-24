import { writeRaw } from "./preloader"

compiletime(() => {
    let connectorHooks = {} as { [id: string]: (data: string) => void }
    ;(_G as any).connector = {}

    _G.connector.addCommand = function(commandId: string, callback: (data: string) => void) {
        connectorHooks[commandId] = callback
    }

    /** @tuplereturn */
    function parsePreloaderFile(input: string): [string | undefined, string] {
        let iter = (string.gmatch(input, 'Preload%(%s*"(.-)"%s*%)%s*\n') as unknown) as () =>
            | string
            | undefined
        let commandId = iter()
        let payload = ""
        let line = iter()
        while (line) {
            payload = payload + line
            line = iter()
        }

        if (commandId != undefined) {
            return [commandId, payload]
        } else {
            return ([undefined] as unknown) as [string | undefined, string]
        }
    }

    ceres.addPostRunHook("std-connector", () => {
        let dataDir = (ceres.runConfig as any).mapDataDir
        if (dataDir == undefined) {
            log(
                "[CeresConnector] Connector isn't running because ceres.runConfig.mapDataDir is not set."
            )
            return
        }

        log("[CeresConnector] Connector has started. Press Ctrl-C to terminate Ceres.")
        let _,
            err = fs.watchFile(dataDir + "/ceresConnectorTrigger.pld", data => {
                let [commandId, payload] = parsePreloaderFile(data)

                if (!commandId) {
                    log(
                        "[CeresConnector] The trigger file was refreshed but no data could be extracted."
                    )
                    return
                }

                if (!connectorHooks[commandId]) {
                    log(`[CeresConnector] No such command '${commandId}'.`)
                    return
                }

                log(`[CeresConnector] Received command '${commandId}'.`)
                connectorHooks[commandId](payload)
            })

        log(`[CeresConnector] An error has occured: ${err}`)
    })
})
;(_G as any).connector = {}

_G.connector.sendCommand = function(commandId: string, payload: string) {
    writeRaw("ceresConnectorTrigger.pld", commandId, payload)
}
