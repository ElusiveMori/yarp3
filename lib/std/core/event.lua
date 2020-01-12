require 'std.core.util'
require 'std.core.types.player'
require 'std.core.types.unit'
require 'std.core.types.rect'
require 'std.core.types.region'
require 'std.core.types.vec'
local hook = require 'std.core.hook'

event = event or {
    __war3eventRegistry = {
        stateless = {},
        stateful = {},
    }
}

local war3eventRegistry = event.__war3eventRegistry

-- unit event ids
U = {
    CREATED             = "unitCreated",
    REMOVED             = "unitRemoved",

    ATTACKED            = 18,
    RESCUED             = 19,
    DEATH               = 20,
    DECAY               = 21,
    DETECTED            = 22,
    HIDDEN              = 23,
    SELECTED            = 24,
    DESELECTED          = 25,
    CONSTRUCT_START     = 26,
    CONSTRUCT_CANCEL    = 27,
    CONSTRUCT_FINISH    = 28,
    UPGRADE_START       = 29,
    UPGRADE_CANCEL      = 30,
    UPGRADE_FINISH      = 31,
    TRAIN_START         = 32,
    TRAIN_CANCEL        = 33,
    TRAIN_FINISH        = 34,
    RESEARCH_START      = 35,
    RESEARCH_CANCEL     = 36,
    RESEARCH_FINISH     = 37,
    ISSUED_ORDER        = 38,
    ISSUED_POINT_ORDER  = 39,
    ISSUED_TARGET_ORDER = 40,
    LEVEL               = 41,
    SKILL               = 42,
    REVIVABLE           = 43,
    REVIVE_START        = 44,
    REVIVE_CANCEL       = 45,
    REVIVE_FINISH       = 46,
    SUMMON              = 47,
    DROP_ITEM           = 48,
    PICKUP_ITEM         = 49,
    USE_ITEM            = 50,
    LOADED              = 51,
    DAMAGED             = 308,
    DAMAGING            = 315,
    SELL                = 269,
    CHANGE_OWNER        = 270,
    SELL_ITEM           = 271,
    SPELL_CHANNEL       = 272,
    SPELL_CAST          = 273,
    SPELL_EFFECT        = 274,
    SPELL_FINISH        = 275,
    SPELL_ENDCAST       = 276,
    PAWN_ITEM           = 277,
}

-- player event ids
P = {
    DEFEAT        = 13,
    VICTORY       = 14,
    LEAVE         = 15,
    END_CINEMATIC = 17
}

-- game event ids
G = {
    INIT   = "init",
    RELOAD = "reload",
    MAPSTART = "mapStart"
}

-- unit wrap shortcut
local function uw(f)
    return function()
        return __WrapUnit(f())
    end
end

-- player wrap shortcut
local function pw(f)
    return function()
        return __WrapPlayer(f())
    end
end

local s2id = util.s2id
local id2s = util.id2s

-- integer id wrap shortcut
local function iw(f)
    return function()
        return id2s(f())
    end
end

-- vec2 wrap shortcut
local function vw(f, g)
    return function()
        return vec2(f(), g())
    end
end

local unitEventArgMappers = {
    [U.RESCUED]             = {uw(GetTriggerUnit), uw(GetRescuer)},
    [U.DEATH]               = {uw(GetTriggerUnit), uw(GetKillingUnit)},
    [U.DECAY]               = {uw(GetTriggerUnit)},

    [U.DETECTED]            = {uw(GetTriggerUnit), pw(GetEventDetectingPlayer)},
    [U.HIDDEN]              = {uw(GetTriggerUnit)},

    [U.SELECTED]            = {uw(GetTriggerUnit), pw(GetTriggerPlayer)},
    [U.DESELECTED]          = {uw(GetTriggerUnit), pw(GetTriggerPlayer)},

    [U.CONSTRUCT_START]     = {uw(GetTriggerUnit), uw(GetConstructingStructure)},
    [U.CONSTRUCT_CANCEL]    = {uw(GetTriggerUnit), uw(GetCancelledStructure)},
    [U.CONSTRUCT_FINISH]    = {uw(GetTriggerUnit), uw(GetConstructedStructure)},

    [U.UPGRADE_START]       = {uw(GetTriggerUnit)},
    [U.UPGRADE_CANCEL]      = {uw(GetTriggerUnit)},
    [U.UPGRADE_FINISH]      = {uw(GetTriggerUnit)},

    [U.TRAIN_START]         = {uw(GetTriggerUnit), iw(GetTrainedUnitType)},
    [U.TRAIN_CANCEL]        = {uw(GetTriggerUnit), iw(GetTrainedUnitType)},
    [U.TRAIN_FINISH]        = {uw(GetTriggerUnit), uw(GetTrainedUnit)},

    [U.RESEARCH_START]      = {uw(GetTriggerUnit), iw(GetResearched)},
    [U.RESEARCH_CANCEL]     = {uw(GetTriggerUnit), iw(GetResearched)},
    [U.RESEARCH_FINISH]     = {uw(GetTriggerUnit), iw(GetResearched)},

    [U.ISSUED_ORDER]        = {uw(GetTriggerUnit), GetIssuedOrderId},
    [U.ISSUED_POINT_ORDER]  = {uw(GetTriggerUnit), GetIssuedOrderId, vw(GetOrderPointX, GetOrderPointY)},
    [U.ISSUED_TARGET_ORDER] = {uw(GetTriggerUnit), GetIssuedOrderId --[[TODO: add dispatch for proper target]]},

    [U.LEVEL]               = {uw(GetTriggerUnit)},
    [U.SKILL]               = {uw(GetTriggerUnit), iw(GetLearnedSkill), GetLearnedSkillLevel},

    [U.REVIVABLE]           = {uw(GetTriggerUnit)},
    [U.REVIVE_START]        = {uw(GetTriggerUnit), uw(GetRevivingUnit)},
    [U.REVIVE_CANCEL]       = {uw(GetTriggerUnit), uw(GetRevivingUnit)},
    [U.REVIVE_FINISH]       = {uw(GetTriggerUnit), uw(GetRevivingUnit)},

    [U.SUMMON]              = {uw(GetTriggerUnit), uw(GetSummonedUnit)},

    [U.DROP_ITEM]           = {uw(GetTriggerUnit), --[[TODO: add item wrapper ]] GetManipulatedItem},
    [U.PICKUP_ITEM]         = {uw(GetTriggerUnit), --[[TODO: add item wrapper ]] GetManipulatedItem},
    [U.USE_ITEM]            = {uw(GetTriggerUnit), --[[TODO: add item wrapper ]] GetManipulatedItem},
    [U.SELL_ITEM]           = {uw(GetTriggerUnit), --[[TODO: add item wrapper ]] GetSoldItem},
    [U.PAWN_ITEM]           = {uw(GetTriggerUnit)  --[[TODO: add item wrapper? ]]},

    [U.LOADED]              = {uw(GetTriggerUnit), uw(GetLoadedUnit)},

    [U.ATTACKED]            = {uw(GetTriggerUnit), uw(GetAttacker)},
    [U.DAMAGED]             = {uw(GetTriggerUnit), --[[TODO: add damage handler support]]},
    [U.DAMAGING]            = {uw(GetTriggerUnit), --[[TODO: add damage handler support]]},
    [U.SELL]                = {uw(GetTriggerUnit), uw(GetSoldUnit), uw(GetBuyingUnit)},
    [U.CHANGE_OWNER]        = {uw(GetTriggerUnit), pw(GetChangingUnitPrevOwner)},

    [U.SPELL_CHANNEL]       = {uw(GetTriggerUnit) --[[TODO: add spell handler support]]},
    [U.SPELL_CAST]          = {uw(GetTriggerUnit) --[[TODO: add spell handler support]]},
    [U.SPELL_EFFECT]        = {uw(GetTriggerUnit) --[[TODO: add spell handler support]]},
    [U.SPELL_FINISH]        = {uw(GetTriggerUnit) --[[TODO: add spell handler support]]},
    [U.SPELL_ENDCAST]       = {uw(GetTriggerUnit) --[[TODO: add spell handler support]]},
}

local playerEventArgMappers = {
    [P.DEFEAT]        = {pw(GetTriggerPlayer)},
    [P.LEAVE]         = {pw(GetTriggerPlayer)},
    [P.VICTORY]       = {pw(GetTriggerPlayer)},
    [P.END_CINEMATIC] = {pw(GetTriggerPlayer)},
}

local function getArgMapper(eventId, handlerTable, callback)
    local funcs = handlerTable[eventId]

    if funcs == nil then
        return nil
    end

    return ceres.wrapCatch(function()
        local args = {}
        for i, v in ipairs(funcs) do
            args[i] = v()
        end
        callback(table.unpack(args))
    end)
end

local function activateWar3Event(eventId)
    if war3eventRegistry.stateless[eventId] ~= nil then
        return
    end

    if unitEventArgMappers[eventId] then
        local argMapper = getArgMapper(eventId, unitEventArgMappers,
            function(...)
                hook.call(eventId, ...)
            end)

        local trig = CreateTrigger()
        TriggerAddAction(trig, argMapper)
        for i=0, bj_MAX_PLAYER_SLOTS-1 do
            TriggerRegisterPlayerUnitEvent(trig, Player(i), ConvertPlayerUnitEvent(eventId), nil)
        end
        war3eventRegistry.stateless[eventId] = trig
    elseif playerEventArgMappers[eventId] then
        local argMapper = getArgMapper(eventId, playerEventArgMappers,
            function(...)
                hook.call(eventId, ...)
            end)

        local trig = CreateTrigger()
        TriggerAddAction(trig, argMapper)
        for i=0, bj_MAX_PLAYER_SLOTS-1 do
            TriggerRegisterPlayerEvent(trig, Player(i), ConvertPlayerEvent(eventId), nil)
        end
        war3eventRegistry.stateless[eventId] = trig
    end
end

ceres.addHook("reload::before", function()
    for _, v in pairs(war3eventRegistry.stateful) do
        DisableTrigger(v)
        DestroyTrigger(v)
    end

    war3eventRegistry.stateful = {}
end)

function event.registerOnce(callback)
    hook.once(callback)
end

function event.register(eventId, callback)
    ASSERT_ARG_TYPE(2, "callback", "function")
    ASSERT_COND("eventId ~= nil")

    hook.add(eventId, callback)
    activateWar3Event(eventId)
end

function event.registerChat(matchExactly, matchPattern, callback)
    ASSERT_ARG_TYPE(1, "matchExactly", "boolean")
    ASSERT_ARG_TYPE(2, "matchPattern", "string")
    ASSERT_ARG_TYPE(3, "callback", "function")

    local trig = CreateTrigger()
    TriggerAddAction(trig, ceres.wrapCatch(function()
        local p = pw(GetTriggerPlayer)()
        local s = GetEventPlayerChatString()

        callback(p, s)
    end))
    for i=0, bj_MAX_PLAYER_SLOTS do
        TriggerRegisterPlayerChatEvent(trig, Player(i), matchPattern, matchExactly)
    end
    table.insert(war3eventRegistry.stateful, trig)
end

function event.registerUnitEnterRegion(whichRegion, callback)
    ASSERT_ARG_TYPE(1, "whichRegion", "region")
    ASSERT_ARG_TYPE(2, "callback", "function")

    local trig = CreateTrigger()
    TriggerAddAction(trig, ceres.wrapCatch(function()
        local u = uw(GetEnteringUnit)()
        callback(u)
    end))
    TriggerRegisterEnterRegion(trig, whichRegion.__h, nil)
    table.insert(war3eventRegistry.stateful, trig)
end

function event.registerUnitLeaveRegion(whichRegion, callback)
    ASSERT_ARG_TYPE(1, "whichRegion", "region")
    ASSERT_ARG_TYPE(2, "callback", "function")

    local trig = CreateTrigger()
    TriggerAddAction(trig, ceres.wrapCatch(function()
        local u = uw(GetEnteringUnit())
        callback(u)
    end))
    TriggerRegisterLeaveRegion(trig, whichRegion.__h, nil)
    table.insert(war3eventRegistry.stateful, trig)
end

--[[ TODO: Add support for trackable events ]]