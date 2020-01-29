
require 'std.core'
require 'std.core.util'
require 'std.core.event'
require 'std.core.unitenterleave'

require 'std.preload'
require 'std.network'
require 'std.livereload'

yarp = yarp or {}

-- require 'yarp.command'
require 'yarp.ui'
require 'std.ui.frame'

AllFrames = AllFrames or {}

oldCreateFrame = oldCreateFrame or BlzCreateFrame
oldCreateSimpleFrame = oldCreateSimpleFrame or BlzCreateSimpleFrame
oldCreateFrameByType = oldCreateFrameByType or BlzCreateFrameByType

local function wwww(orig)
    return function(...)
        local f = orig(...)
        table.insert(AllFrames, f)
        return f
    end
    
end

event.registerChat(false, "", function(p, s)
    ceres.catch(load(s))
end)

BlzCreateFrame = wwww(oldCreateFrame)
BlzCreateSimpleFrame = wwww(oldCreateSimpleFrame)
BlzCreateFrameByType = wwww(oldCreateFrameByType)

for k, v in pairs(AllFrames) do
    BlzDestroyFrame(v)
end

do

    local parentFrame = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
    local worldFrame = BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0)

    local function createEditBox()
        local editBox = BlzCreateFrameByType("EDITBOX", "HelloWorld", parentFrame, "StandardDecoratedEditBoxTemplate", 0)


        BlzFrameSetSize(editBox, 0.45, 0.45)
        BlzFrameSetPoint(editBox, FRAMEPOINT_CENTER, parentFrame, FRAMEPOINT_CENTER, 0, 0)

        BlzFrameSetTextAlignment(editBox, TEXT_JUSTIFY_TOP, TEXT_JUSTIFY_LEFT)

        local t = CreateTrigger()
        TriggerAddAction(t, function()
            local eId = BlzGetTriggerFrameEvent()
            if eId == FRAMEEVENT_EDITBOX_TEXT_CHANGED then
                print("text changed")
            elseif eId == FRAMEEVENT_EDITBOX_ENTER then
                BlzFrameSetText(BlzGetTriggerFrame(), "")
            end
        end)

        BlzTriggerRegisterFrameEvent(t, editBox, FRAMEEVENT_EDITBOX_TEXT_CHANGED)
        BlzTriggerRegisterFrameEvent(t, editBox, FRAMEEVENT_EDITBOX_ENTER)
    end

    local function calcWidescreenMargin()
        local w = BlzGetLocalClientWidth()
        local h = BlzGetLocalClientHeight()
        local r = w/h

        print(w, h, w/h, 0.6 * w/h, (0.6 * w/h) - 0.8)

        return ((0.6 * r) - 0.8)/2
    end

    local function createTextArea()
        -- print(calcWidescreenMargin())

        local glue = BlzCreateFrame("CustomMessageAreaGlue", parentFrame, 0, 0)
        BlzFrameSetSize(glue, 0.2, 0.2)
        BlzFrameSetAbsPoint(glue, FRAMEPOINT_CENTER, 0.4, 0.4)
        
        local textArea = BlzGetFrameByName("CustomMessageAreaTextarea", 0)
        BlzFrameSetTextAlignment(textArea, TEXT_JUSTIFY_MIDDLE, TEXT_JUSTIFY_LEFT)

        -- BlzFrameSetVisible(glue, false)
        -- BlzFrameSetEnable(glue, false)
        -- BlzFrameCageMouse(glue, false)
        -- BlzFrameCageMouse(textArea, false)

        local editBox = BlzCreateFrame("BattleNetEditBoxTemplate", parentFrame, 0, 0)

        BlzFrameSetSize(editBox, 0.3, 0.04)
        BlzFrameSetText(editBox, "")
        BlzFrameSetPoint(editBox, FRAMEPOINT_CENTER, parentFrame, FRAMEPOINT_CENTER, 0, -0.1)
        BlzFrameCageMouse(editBox, true)

        local t = CreateTrigger()
        TriggerAddAction(t, function()
            BlzFrameSetText(textArea, BlzFrameGetText(editBox))
            BlzFrameSetText(editBox, "")
        end)
        BlzTriggerRegisterFrameEvent(t, editBox, FRAMEEVENT_EDITBOX_ENTER)
    end

    local function createAlternateMessageArea()
    end

    createTextArea()

    local function x() end
    ---@param whichTrigger jtrigger
    ---@param whichUnit junit
    ---@param whichEvent junitevent
    ---@param filter jboolexpr
    ---@return jevent
    function TriggerRegisterFilterUnitEvent(whichTrigger, whichUnit, whichEvent, filter) x(whichTrigger) x(whichUnit) x(whichEvent) x(filter) end

    -- print(BlzGetFrameByName("ChatEditBar", 0))
    -- print(BlzFrameGetName(BlzGetFrameByName("ChatEditBar", 0)))

    -- local frame = BlzGetOriginFrame(ORIGIN_FRAME_UNIT_MSG, 0)

    -- BlzFrameAddText(frame, "haha")
    -- BlzFrameSetVisible(frame, false)
end
