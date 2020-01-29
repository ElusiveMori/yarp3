require 'std.core.util'
require 'std.core.types.player'
local hook = require 'std.core.hook'

unit = unit or {}

local context = util.context("unit", {
    storage = {},
})

local unitStorage = context.storage
local dummyGroup = context.dummyGroup
local unitMeta = util.meta.get("unit")

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

local targetCollection
local collectIntoTarget = Filter(function()
    table.insert(targetCollection, wrapUnit(GetFilterUnit()))
end)

_G.__WrapUnit = wrapUnit

function unit.create(owner, id)
    ASSERT_ARG_TYPE(1, "owner", "player")
    SANITIZE_OBJID("id")

    return wrapUnit(CreateUnit(owner.__h, id, 0, 0, 0))
end

function unit.getOwnedBy(who)
    ASSERT_ARG_TYPE(1, "who", "player")
    targetCollection = {}
    GroupEnumUnitsOfPlayer(dummyGroup, who.__h, collectIntoTarget)
    return targetCollection
end

function unit.getAll()
    targetCollection = {}
    for _, p in pairs(player.getAll()) do
        GroupEnumUnitsOfPlayer(dummyGroup, p.__h, collectIntoTarget)
    end
    return targetCollection
end

function unit.getInRect(rect)
    ASSERT_ARG_TYPE(1, "rect", "rect")
    targetCollection = {}
    GroupEnumUnitsInRect(dummyGroup, rect.__h, collectIntoTarget)
    return targetCollection
end

function unit.getInRange(pos, range)
    ASSERT_ARG_TYPE(1, "pos", "vec2")
    ASSERT_ARG_TYPE(2, "range", "number")
    ASSERT_COND("range >= 0")
    targetCollection = {}
    GroupEnumUnitsInRange(dummyGroup, pos.x, pos.y, range, collectIntoTarget)
    return targetCollection
end

function unit.getSelectedBy(who)
    ASSERT_ARG_TYPE(1, "who", "player")
    targetCollection = {}
    GroupEnumUnitsSelected(dummyGroup, who.__h, collectIntoTarget)
    return targetCollection
end

macro_define("GEN_U_GET_BINDING", function(nativeName, propertyName, wrapper)
    return (prepare_macro_template [[
        function unitMeta.get:%s()
            return %s
        end
    ]]):format(propertyName, (wrapper or "%s(self.__h)"):format(nativeName))
end)

macro_define("GEN_U_SET_BINDING", function(nativeName, typeId, propertyName, wrapper)
    return (prepare_macro_template [[
        function unitMeta.set:%s(v)
            %s
            %s
        end
    ]]):format(propertyName, MAKE_ASSERT_ARG_TYPE(1, "v", typeId), (wrapper or "%s(self.__h, v)"):format(nativeName))
end)

macro_define("GEN_U_FUNC", function(nativeName, funcName, args, wrapper, extraAsserts)
    local params
    local asserts
    if args and #args > 0 then
        params = {}
        for i in ipairs(args) do table.insert(params, args[i][1]) end
        params = table.concat(params, ", ")
        asserts = ""
        for i, v in ipairs(args) do
            if v[2] == "id" then
                asserts = asserts .. MAKE_SANITIZE_OBJID(v[1]) .. " "
            else
                asserts = asserts .. MAKE_ASSERT_ARG_TYPE(i, v[1], v[2]) .. " "
            end
        end
    else
        params = ""
        asserts = ""
    end
    if extraAsserts then
        for _, v in pairs(extraAsserts) do
            asserts = asserts + MAKE_ASSERT_COND(v) .. " "
        end
    end
    wrapper = (wrapper or ((args and #args > 0) and "%s(self.__h, %s)" or "%s(self.__h)")):format(nativeName, params)
    return (prepare_macro_template [[
        function unitMeta.funcs:%s(%s)
            %s
            %s
        end
    ]]):format(funcName, params, asserts, wrapper)
end)

compiletime(function()
    PLAYER_WRAP = "__WrapPlayer(%s(self.__h))"
    HANDLE_UNWRAP = "%s(self.__h, v.__h)"
end)

GEN_U_GET_BINDING("GetUnitName",     "name")
GEN_U_GET_BINDING("GetOwningPlayer", "owner", PLAYER_WRAP)

GEN_U_SET_BINDING("BlzSetUnitName", "string", "name")
GEN_U_SET_BINDING("SetUnitOwner",   "player", "owner", HANDLE_UNWRAP)

GEN_U_FUNC("RemoveUnit",          "remove")
GEN_U_FUNC("KillUnit",            "kill")

GEN_U_FUNC("GetUnitAbilityLevel", "getAbilityLevel", {{"abilityId", "id"}})
GEN_U_FUNC("SetUnitAbilityLevel", "setAbilityLevel", {{"abilityId", "id"}, {"level", "number"}})
GEN_U_FUNC("UnitAddAbility",       "addAbility",     {{"abilityId", "id"}})

hook.once(function()
    dummyGroup = CreateGroup()
    context.dummyGroup = dummyGroup
end)

hook.addPost("unitRemoved", function(removedUnit)
    unitStorage[GetHandleId(removedUnit.__h)] = nil
    removedUnit.__h = nil
    setmetatable(removedUnit, nil)
end)