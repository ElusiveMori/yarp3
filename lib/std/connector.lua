
compiletime(function()
    local template = [[
function PreloadFiles takes nothing returns nothing
    //! beginusercode
    local a = ""
    %s
    BlzSetAbilityTooltip(FourCC("ANcl"), a, 0)
    //! endusercode
endfunction
]]
    connector = connector or {}

    local connectorHooks = {}

    local function parsePreloaderFile(input)
        local iter = input:gmatch("call Preload%( \"(.*-) \"%)\n")
        local commandId = iter()
        local payload = ""
        for line in iter do payload = payload .. line end

        if commandId ~= nil then
            return commandId, payload
        end
    end

    function connector.addCommand(commandId, callback)
        connectorHooks[commandId] = callback
    end

    ceres.addPostRunHook("std-connector", function()
        local dataDir = ceres.runConfig.mapDataDir
        if dataDir == nil then
            log("[CeresConnector] Connector isn't running because ceres.runConfig.mapDataDir is not set.")
            return
        end

        log("[CeresConnector] Connector has started. Press Ctrl-C to terminate Ceres.")
        local _, err = fs.watchFile(ceres.runConfig.mapDataDir .. "/ceresConnectorTrigger.pld", function(data)
            local commandId, payload = parsePreloaderFile(data)

            if not commandId then
                log("[CeresConnector] The trigger file was refreshed but no data could be extracted.")
                return
            end

            if not connectorHooks[commandId] then
                log("[CeresConnector] No such command '" .. commandId .. "'.")
                return
            end
        end)

        log(err)
    end)
end)