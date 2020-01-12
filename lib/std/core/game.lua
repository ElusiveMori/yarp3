require 'std.core.util'

local hook = require 'std.core.hook'

game = game or {}

function game.getElapsedTime()
    return TimerGetElapsed(game.__tracker)
end

function game.isSingleplayer()
    local count = 0
    for _, v in pairs(player.getAll()) do
        if v.isHuman and v.isPlaying then
            count = count + 1
        end
    end
    
    return count == 1
end

hook.once(function()
    local tracker = CreateTimer()
    TimerStart(tracker, 60 * 60 * 24 * 365, false, nil)
    game.__tracker = tracker
end)