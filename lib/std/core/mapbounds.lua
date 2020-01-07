require 'std.core.types.region'
require 'std.core.types.rect'
local hook = require 'std.core.hook'

mapbounds = mapbounds or {}

function mapbounds.playableRect()
    return mapbounds.__playable
end

function mapbounds.playableRegion()
    return mapbounds.__playableRegion
end

function mapbounds.wholeRect()
    return mapbounds.__whole
end

function mapbounds.wholeRegion()
    return mapbounds.__wholeRegion
end

hook.add("init", function()
    mapbounds.__playable = rectFromNative(GetPlayableMapRect())
    mapbounds.__whole = rectFromNative(GetWorldBounds())

    local playableRegion = region.new()
    playableRegion:addRect(mapbounds.__playable)
    mapbounds.__playableRegion = playableRegion

    local wholeRegion = region.new()
    wholeRegion:addRect(mapbounds.__whole)
    mapbounds.__wholeRegion = wholeRegion
end)