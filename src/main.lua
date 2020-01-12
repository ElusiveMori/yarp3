compiletime(function()
    ASSERTS_DISABLED = true
end)

require 'std.core'
require 'std.core.util'
require 'std.core.event'
require 'std.core.unitenterleave'

require 'std.preload'
require 'std.network'
require 'std.livereload'

compiletime(function()
    local crabIds = {}

    for i=0, 2 do
        for j=0, 9 do
            for k=0, 2 do
                local newCrab = currentMap.objects.unit['halt']:clone()
                newCrab.Name = "Crab " .. tostring(i) .. "-" .. tostring(j) .. "-" .. tostring(k)
                -- newCrab.pathTex = "a"
                local crabId = "c" .. tostring(k) .. tostring(j) .. tostring(i)
                currentMap.objects.unit[crabId] = newCrab
                table.insert(crabIds, crabId)
            end
        end
    end

    local customFootman = currentMap.objects.unit['hfoo']:clone()

    local builds = crabIds[1]
    for i=2, #crabIds do
        builds = builds .. "," .. crabIds[i]
    end
    customFootman.ubui = builds

    currentMap.objects.unit['x000'] = customFootman
end)

event.registerChat(false, "", function(talker, input)
    load(input)()
end)

HFOO_COUNT = HFOO_COUNT or 1

do
    local u = unit.create(player.get(0), 'halt')

    BlzSetUnitIntegerField(u.__h, UNIT_IF_MOVE_TYPE, 4)
    BlzSetUnitRealField(u.__h, UNIT_RF_ANIMATION_RUN_SPEED, 1000.0)
    BlzSetUnitBooleanField(u.__h, UNIT_BF_IS_A_BUILDING, false)
    UnitAddAbility(u.__h, FourCC('Amov'))
end

event.register(U.CREATED, function(createdUnit)
    print(("created unit: %s"):format(createdUnit.name))
end)

event.register(U.REMOVED, function(removedUnit)
    print(("removed unit: %s"):format(removedUnit.name))
end)