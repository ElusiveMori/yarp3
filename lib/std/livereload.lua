require 'std.core.util'
require 'std.core.types.timer'

require 'std.preload'
require 'std.network'
require 'std.connector'

local base64 = require 'std.ext.base64'
local lzw = require 'std.ext.lzw'

local context = util.context("livereload", {newScript = ""})

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

    connector.addCommand("std-livereload", function()
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
end)

ceres.addHook("reload::before", function()
    print("---- Ceres has reloaded ----")
end)

network.receive("__lr", function(sender)
    local compressedScript
    if sender.isLocal then
        compressedScript = lzw.compress(context.newScript)
        compressedScript = base64.encode(compressedScript)
    end

    network.synchronize(sender, compressedScript, function(data)
        data = base64.decode(data)
        data = lzw.decompress(data)

        ceres.catch(load(data))
    end)
end)

event.registerOnce(function()
    local t = CreateTrigger()
    TriggerAddAction(t, ceres.wrapCatch(function()
        if player.get(0).isLocal then
            preload.write("ceresLiveReloadFile.pld", "NODATA")
            connector.sendCommand("std-livereload")

            local tryRead
            local retries = 10
            tryRead = function()
                if retries == 0 then
                    print("LiveReload: failed to load script after 10 retries...")
                    return
                end
                
                retries = retries - 1

                context.newScript = preload.read("ceresLiveReloadFile.pld")
                if not context.newScript or context.newScript == "NODATA" then
                    timer.simple(0.2, tryRead)
                else
                    network.send("__lr", "")
                end
            end

            timer.simple(0.2, tryRead)
        end
    end))
    BlzTriggerRegisterPlayerKeyEvent(t, Player(0), OSKEY_F2, 0, true)
end)