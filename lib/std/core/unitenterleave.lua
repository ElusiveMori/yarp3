require 'std.core.event'
require 'std.core.types.unit'
require 'std.core.types.timer'
require 'std.core.mapbounds'

local hook = require 'std.core.hook'
local undefendOrderId = 852056

local abilityId = compiletime(function()
    require("std.core.util")

    UNIT_ENTER_LEAVE_ABILITY_ID = UNIT_ENTER_LEAVE_ABILITY_ID or idgen.abil()

    return util.s2id(UNIT_ENTER_LEAVE_ABILITY_ID)
end)

compiletime(function()
    if currentMap ~= nil then
        local defendClone = currentMap.objects.ability['Adef']:clone()
        defendClone.acat = ""
        defendClone.aart = ""
        currentMap.objects.ability[UNIT_ENTER_LEAVE_ABILITY_ID] = defendClone
    end
end)

local function processUnit(whichUnit)
    UnitAddAbility(whichUnit.__h, abilityId)
    hook.call("unitCreated", whichUnit)
end

hook.once(function()
    for _, v in pairs(player.getAll()) do
        SetPlayerAbilityAvailable(v.__h, abilityId, false)
    end
end)

event.registerUnitEnterRegion(mapbounds.wholeRegion(), processUnit)

event.register(U.ISSUED_ORDER, function(orderedUnit, orderId)
    if orderedUnit:getAbilityLevel(abilityId) == 0 and orderId == undefendOrderId then
        hook.call("unitRemoved", orderedUnit)
    end
end)