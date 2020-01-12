require 'std.core.util'

preload = preload or {}

local abilityId = objid("ANcl")
local maxPreloadSize = 259
local noDataMarker = "NO_DATA_PRESENT"

function preload.read(filename)
    ASSERT_ARG_TYPE(1, "filename", "string")

    BlzSetAbilityTooltip(abilityId, noDataMarker, 0)
    Preloader(filename)
    local data = BlzGetAbilityTooltip(abilityId, 0)
    if data == noDataMarker then
        return nil
    else
        return data
    end
end

local function escapePreload(input)
    return ('")\n%s\n//'):format(input)
end

local prelude = [[
//! beginusercode
local a=""
Preload=function(s)a=a..s end
PreloadEnd=function()end
//! endusercode
]]

local postlude = ([[
//! beginusercode
BlzSetAbilityTooltip(%s, a, 0)
//! endusercode
]]):format(abilityId)

function preload.writeRaw(filename, ...)
    ASSERT_ARG_TYPE(1, "filename", "string")

    PreloadGenClear()
    PreloadGenStart()

    for _, content in pairs({...}) do
        for i=0, ((#content) // maxPreloadSize) + 1 do
            local segStart = (i * maxPreloadSize) + 1
            local segEnd = math.min(((i + 1) * maxPreloadSize), #content)
            Preload(content:sub(segStart, segEnd))
        end
    end

    PreloadGenEnd(filename)
end

function preload.write(filename, content)
    ASSERT_ARG_TYPE(1, "filename", "string")
    ASSERT_ARG_TYPE(2, "content", "string")

    PreloadGenClear()
    PreloadGenStart()

    Preload(escapePreload(prelude))
    for i=0, ((#content) // maxPreloadSize) + 1 do
        local segStart = (i * maxPreloadSize) + 1
        local segEnd = math.min(((i + 1) * maxPreloadSize), #content)
        Preload(content:sub(segStart, segEnd))
    end
    Preload(escapePreload(postlude))

    PreloadGenEnd(filename)
end