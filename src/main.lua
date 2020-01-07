require 'std.core'
require 'std.core.util'
require 'std.core.event'
require 'std.core.unitenterleave'

compiletime(function()
    local crabIds = {}

    for i=0, 2 do
        for j=0, 9 do
            for k=0, 2 do
                local newCrab = currentMap.objects.unit['ncrb']:clone()
                newCrab.Name = "Crab " .. tostring(i) .. "-" .. tostring(j) .. "-" .. tostring(k)
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
    -- if input == "count" then
    --     talker.count = (talker.count or 0) + 1
    --     print(talker.count)
    -- end

    -- local selected = unit.getSelectedBy(talker)

    -- for k, v in pairs(selected) do
    --     if input == "rm" then
    --         v:remove()
    --     end

    --     if input == "kill" then
    --         v:kill()
    --     end
    -- end

    load(input)()
end)

event.register("init", function()
    -- for k, v in pairs(unit.getAll()) do
    --     if v.owner.id ~= 0 then
    --         v:remove()
    --     end
    -- end
end)

event.register(U.CREATED, function(createdUnit)
    print(("created unit: %s"):format(createdUnit.name))
end)
event.register(U.REMOVED, function(removedUnit)
    print(("removed unit: %s"):format(removedUnit.name))
end)