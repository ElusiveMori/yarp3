require 'std.core.util'
require 'std.core.types.timer'

require 'std.preload'
require 'std.network'

local base64 = require 'std.ext.base64'
local lzw = require 'std.ext.lzw'

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

    ceres.addPostRunHook(function()
        local dataDir = ceres.runConfig.mapDataDir
        if dataDir == nil then
            log("[STDLIB-LiveReload] Live reload support is disabled because ceres.runConfig.mapDataDir is not set.")
            return
        end

        log("[STDLIB-LiveReload] Live reload watch is starting. Press Ctrl-C to terminate Ceres.")
        local _, err = fs.watchFile(ceres.runConfig.mapDataDir .. "/ceresLiveReloadTrigger.pld", function(data)
            lastBuildCommand.output = "script"
            local result = ceres.buildMap(lastBuildCommand)
            if not result then
                log("[STDLIB-LiveReload] Failed to recompile map...")
                return
            end

            local payload = ""
            for line in string.gmatch(result.content, "(.-)\n") do
                payload = payload .. ("a = a .. [===[%s]===] .. '\\n'\n"):format(line)
            end

            local newScript = template:format(payload)
            fs.writeFile(ceres.runConfig.mapDataDir .. "/ceresLiveReloadFile.pld", newScript)
            log("[STDLIB-LiveReload] Map built and live reload successfully triggered.")
        end)

        log(err)
    end)
end)

ceres.addHook("reload::before", function()
    print("---- Ceres has reloaded ----")
end)

local newScript
network.receive("__lr", function(sender)
    local compressedScript = newScript
    if sender.isLocal then
        compressedScript = lzw.compress(newScript)
        compressedScript = base64.encode(compressedScript)
    end
    
    network.synchronize(sender, compressedScript, function(data)
        print(#data)
        data = base64.decode(data)
        data = lzw.decompress(data)

        ceres.catch(load(data))
    end)
end)

event.registerOnce(function()
    local t = CreateTrigger()
    TriggerAddAction(t, function()
        if player.get(0).isLocal then
            preload.writeRaw("ceresLiveReloadTrigger.pld", "")

            local tryRead
            tryRead = function()
                newScript = preload.read("ceresLiveReloadFile.pld")
                if not newScript then
                    timer.simple(0.2, tryRead)
                else
                    network.send("__lr", "")
                end
            end

            timer.simple(0.2, tryRead)
        end
    end)
    BlzTriggerRegisterPlayerKeyEvent(t, Player(0), OSKEY_F2, 0, true)
end)