require 'std.core.util'

--[[
    Internal library.

    Use std.core.event instead.
]]

ceres.__hook = ceres.__hook or {
    hookRegistry = {}
}

local hook = ceres.__hook
local hookRegistry = hook.hookRegistry

function hook.add(id, callback)
    hookRegistry[id] = hookRegistry[id] or {pre = {}, post = {}}
    table.insert(hookRegistry[id].pre, ceres.wrapCatch(callback))
end

function hook.addPost(id, callback)
    hookRegistry[id] = hookRegistry[id] or {pre = {}, post = {}}
    table.insert(hookRegistry[id].post, ceres.wrapCatch(callback))
end

local function callFuncsInTable(id, t, ...)
    for k, v in ipairs(t) do
        local success, err = pcall(v, ...)

        if not success then
            print("ERROR: Error during call of hook " .. tostring(id))
            print(err)
        end
    end
end

function hook.call(id, ...)
    local hooks = hookRegistry[id]
    if hooks ~= nil then
        callFuncsInTable(id, hooks.pre, ...)
        callFuncsInTable(id, hooks.post, ...)
    end
end

function hook.once(callback)
    if not ceres.initialized then
        callback()
    end
end

ceres.addHook("reload::before", function()
    for k, v in pairs(hookRegistry) do
        hookRegistry[k] = nil
    end
end)

return hook