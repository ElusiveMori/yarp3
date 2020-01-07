require 'std.core.util'
require 'std.core.types.player'
local hook = require 'std.core.hook'

unit = unit or {
    __unitStorage = {}
}

local unitStorage = unit.__unitStorage
local unitMeta = util.meta.new("unit")
local dummyGroup

local function wrapUnit(u)
    local id = GetHandleId(u)
    if unitStorage[id] then
        return unitStorage[id]
    end

    local t = {__h = u}
    setmetatable(t, unitMeta)
    unitStorage[id] = t
    return t
end

_G.__WrapUnit = wrapUnit

function unit.create(owner, id)
    ASSERT_ARG_TYPE(1, "owner", "player")
    SANITIZE_OBJID("id")

    return wrapUnit(CreateUnit(owner, id, 0, 0, 0))
end

local function emptyDummyGroup(t)
    local size = BlzGroupGetSize(dummyGroup)
    for i=0, size-1 do
        local u = BlzGroupUnitAt(dummyGroup, i)
        if u ~= nil then
            table.insert(t, wrapUnit(u))
        end
    end
    GroupClear(dummyGroup)
end

function unit.getOwnedBy(who)
    ASSERT_ARG_TYPE(1, "who", "player")
    local t = {}
    GroupEnumUnitsOfPlayer(dummyGroup, who.__h, nil)
    emptyDummyGroup(t)
    return t
end

function unit.getAll()
    local t = {}
    for _, p in pairs(player.getAll()) do
        GroupEnumUnitsOfPlayer(dummyGroup, p.__h, nil)
        emptyDummyGroup(t)
    end
    return t
end

function unit.getInRect(rect)
    ASSERT_ARG_TYPE(1, "rect", "rect")
    local t = {}
    GroupEnumUnitsInRect(dummyGroup, rect.__h, nil)
    emptyDummyGroup(t)
    return t
end

function unit.getInRange(pos, range)
    ASSERT_ARG_TYPE(1, "pos", "vec2")
    ASSERT_ARG_TYPE(2, "range", "number")
    ASSERT_COND("range >= 0")
    local t = {}
    GroupEnumUnitsInRange(dummyGroup, pos.x, pos.y, range, nil)
    emptyDummyGroup(t)
    return t
end

function unit.getSelectedBy(who)
    ASSERT_ARG_TYPE(1, "who", "player")
    local t = {}
    GroupEnumUnitsSelected(dummyGroup, who.__h, nil)
    emptyDummyGroup(t)
    return t
end

function unitMeta.get:name()
    return GetUnitName(self.__h)
end

function unitMeta.get:owner()
    return __WrapPlayer(GetOwningPlayer(self.__h))
end

function unitMeta.funcs:remove()
    RemoveUnit(self.__h)
end

function unitMeta.funcs:kill()
    KillUnit(self.__h)
end

function unitMeta.funcs:getAbilityLevel(abilityId)
    SANITIZE_OBJID("abilityId")
    return GetUnitAbilityLevel(self.__h, abilityId)
end

hook.add("init", function()
    dummyGroup = CreateGroup()
end)

hook.addPost("unitRemoved", function(removedUnit)
    removedUnit.__h = nil
    setmetatable(removedUnit, nil)
end)