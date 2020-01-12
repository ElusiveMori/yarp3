require 'std.core.util'
require 'std.core.game'
local hook = require 'std.core.hook'

timer = timer or {}

local context = util.context("timer", {
    scheduled = {}
})

local scheduledTimers = context.scheduled
local timerMeta = util.meta.get("timer")

local function getTimer()
    local t = {}
    setmetatable(t, timerMeta)
    return t
end

local function scheduleTimer(toSchedule)
    local scheduledTime = toSchedule.scheduledTime

    for i=#scheduledTimers, 1, -1 do
        if scheduledTimers[i].scheduledTime > scheduledTime then
            table.insert(scheduledTimers, i+1, toSchedule)
            return
        end
    end

    table.insert(scheduledTimers, 1, toSchedule)
end

function timerMeta.funcs:cancel()
    for i=1, #scheduledTimers do
        if scheduledTimers[i] == self then
            table.remove(scheduledTimers, i)
        end
    end
end

function timer.simple(timeout, callback)
    local newTimer = getTimer()
    newTimer.scheduledTime = game.getElapsedTime() + timeout
    newTimer.callback = ceres.wrapCatch(callback)

    scheduleTimer(newTimer)
    return newTimer
end

function timer.periodic(period, callback)
    local newTimer = getTimer()
    newTimer.scheduledTime = game.getElapsedTime() + period
    newTimer.period = period
    newTimer.callback = ceres.wrapCatch(callback)

    scheduleTimer(newTimer)
    return newTimer
end

hook.once(function()
    local ti = CreateTimer()
    TimerStart(ti, 1/128, true, function()
        local elapsed = game.getElapsedTime()
        local toReschedule = {}

        for i=#scheduledTimers, 1, -1 do
            local currentTimer = scheduledTimers[i]
            if currentTimer.scheduledTime <= elapsed then
                scheduledTimers[i] = nil
                currentTimer.callback()

                if currentTimer.period then
                    currentTimer.scheduledTime = elapsed + currentTimer.period
                    table.insert(toReschedule, currentTimer)
                end
            else
                break
            end
        end

        for _, v in pairs(toReschedule) do
            scheduleTimer(v)
        end
    end)
end)