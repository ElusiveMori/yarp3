require 'std.core.util'
local hook = require 'std.core.hook'

timer = timer or {
    __recycled = {}
}

local recycledTimers = timer.__recycled
local timerMeta = util.meta.new("timer")

function timer.new()
    local ti
    if #recycledTimers > 0 then
        ti = table.remove(recycledTimers)
    else
        ti = CreateTimer()
    end

    local t = {
        __h = ti
    }
    setmetatable(t, timerMeta)
    return t
end

function timerMeta.funcs:release()
    table.insert(recycledTimers, self.__h)
    self.__h = nil
    setmetatable(self, nil)
end

function timerMeta.funcs:start(timeout, callback)
    TimerStart(self.__h, timeout, false, ceres.wrapCatch(callback))
end

function timer.simple(timeout, callback)
    local ti = timer.new()
    ti:start(timeout, function()
        callback()
        ti:release()
    end)
end

function timer.null(callback)
    timer.simple(0, callback)
end