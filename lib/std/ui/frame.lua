require 'std.core.util'

local frameMeta = util.meta.get('frame')

ui = ui or {}

local context = util.context("frame", {
    storage = {}
})

local frameStorage = context.storage

local function wrapFrame(frame)
    local id = GetHandleId(frame)
    if frameStorage[id] then
        return frameStorage[id]
    end

    local t = {__h = frame}
    setmetatable(t, frameMeta)
    frameStorage[id] = t
    return t
end

function ui.getOrigin(originType, index)
    local t = wrapFrame(BlzGetOriginFrame(originType, index))
    return t
end

function ui.getRoot()
    return ui.getOrigin(ORIGIN_FRAME_GAME_UI, 0)
end

function ui.getByName(name, context)
    ASSERT_ARG_TYPE(1, "name", "string")
    ASSERT_ARG_TYPE(2, "context", "number")
    return wrapFrame(BlzGetFrameByName(name, context))
end

function frameMeta.funcs:createChild(frameId, priority, context)
    ASSERT_ARG_TYPE(1, "frameId", "string")
    ASSERT_ARG_TYPE(2, "priority", "number")
    ASSERT_ARG_TYPE(3, "context", "number")

    local parent = self.__h
    local child = BlzCreateFrame(frameId, parent, priority, context)
    local t = wrapFrame(child)
    return t
end

function frameMeta.funcs:createSimpleChild(frameId, context)
    ASSERT_ARG_TYPE(1, "frameId", "string")
    ASSERT_ARG_TYPE(3, "context", "number")

    local parent = self.__h
    local child = BlzCreateSimpleFrame(frameId, parent, context)
    local t = wrapFrame(child)
    return t
end

function frameMeta.funcs:createChildByType(typeName, frameId, inherits, context)
    ASSERT_ARG_TYPE(1, "typeName", "string")
    ASSERT_ARG_TYPE(2, "frameId", "string")
    ASSERT_ARG_TYPE(3, "inherits", "string")
    ASSERT_ARG_TYPE(4, "context", "number")

    local parent = self.__h
    local child = BlzCreateFrameByType(typeName, frameId, parent, inherits, context)
    local t = wrapFrame(child)
    return t
end

compiletime(function()
    FRAME_WRAP = "wrapFrame(%s(self.__h))"
    HANDLE_UNWRAP = "%s(self.__h, v.__h)"
end)

macro_define("GEN_F_GET_BINDING", function(nativeName, propertyName, wrapper)
    return (prepare_macro_template [[
        function frameMeta.get:%s()
            return %s
        end
    ]]):format(propertyName, (wrapper or "%s(self.__h)"):format(nativeName))
end)

macro_define("GEN_F_SET_BINDING", function(nativeName, typeId, propertyName, wrapper)
    if not wrapper and typeId == "frame" then
        wrapper = HANDLE_UNWRAP
    end

    return (prepare_macro_template [[
        function frameMeta.set:%s(v)
            %s
            %s
        end
    ]]):format(propertyName, MAKE_ASSERT_ARG_TYPE(1, "v", typeId), (wrapper or "%s(self.__h, v)"):format(nativeName))
end)


-- TODO: BlzFrameSetTextColor
-- TODO: BlzFrameSetModel
-- TODO: BlzFrameSetSpriteAnimate
-- TODO: BlzFrameSetTexture
-- TODO: BlzFrameSetMinMaxValue
-- TODO: BlzFrameSetSize
-- TODO: get size as vector
-- TODO: BlzFrameSetVertexColor
-- TODO: BlzFrameSetFont
-- TODO: BlzFrameSetTextAlignment

GEN_F_GET_BINDING("BlzFrameGetText",          "text")
GEN_F_GET_BINDING("BlzFrameGetTextSizeLimit", "textLimit")
GEN_F_GET_BINDING("BlzFrameIsVisible",        "visible")
GEN_F_GET_BINDING("BlzFrameGetName",          "name")
GEN_F_GET_BINDING("BlzFrameGetEnable",        "enabled")
GEN_F_GET_BINDING("BlzFrameGetAlpha",         "alpha")
GEN_F_GET_BINDING("BlzFrameGetValue",         "value")
GEN_F_GET_BINDING("BlzFrameGetParent",        "parent", FRAME_WRAP)
GEN_F_GET_BINDING("BlzFrameGetHeight",        "height")
GEN_F_GET_BINDING("BlzFrameGetWidth",         "width")

GEN_F_SET_BINDING("BlzFrameSetText",          "string",  "text")
GEN_F_SET_BINDING("BlzFrameSetTextSizeLimit", "number",  "text")
GEN_F_SET_BINDING("BlzFrameSetFocus",         "boolean", "focus")
GEN_F_SET_BINDING("BlzFrameSetVisible",       "boolean", "visible")
GEN_F_SET_BINDING("BlzFrameSetEnable",        "boolean", "enabled")
GEN_F_SET_BINDING("BlzFrameSetAlpha",         "number",  "alpha")
GEN_F_SET_BINDING("BlzFrameSetScale",         "number",  "scale")
GEN_F_SET_BINDING("BlzFrameSetTooltip",       "frame",   "tooltip")
GEN_F_SET_BINDING("BlzFrameCageMouse",        "boolean", "cageMouse")
GEN_F_SET_BINDING("BlzFrameSetValue",         "number",  "value")
GEN_F_SET_BINDING("BlzFrameSetStepSize",      "number",  "stepSize")
GEN_F_SET_BINDING("BlzFrameSetParent",        "frame",   "parent")
