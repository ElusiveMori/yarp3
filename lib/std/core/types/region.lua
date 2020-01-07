require 'std.core.util'

region = region or {
    __regionStorage = {}
}

local regionStorage = region.__regionStorage
local regionMeta = util.meta.new("region")

local function wrapRegion(r)
    local id = GetHandleId(r)
    if regionStorage[r] then
        return regionStorage[r]
    end

    local t = {__h = r}
    setmetatable(t, regionMeta)
    regionStorage[id] = t
    return t
end

_G.__WrapRegion = wrapRegion

function region.new()
    local r = CreateRegion()
    local t = wrapRegion(r)
    return t
end

function regionMeta.funcs:addRect(rect)
    ASSERT_ARG_TYPE(1, "rect", "rect")
    RegionAddRect(self.__h, rect.__h)
end

function regionMeta.funcs:clearRect(rect)
    ASSERT_ARG_TYPE(1, "rect", "rect")
    RegionClearRect(self.__h, rect.__h)
end

function regionMeta.funcs:remove()
    RemoveRegion(self.__h)
    regionStorage[GetHandleId(self.__handle)] = nil
    self.__h = nil
    setmetatable(self, nil)
end