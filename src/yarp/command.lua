yarp.command = yarp.command or {}

local macros = {{
    prefix = ".",
    replacement = "ooc "
}}

local commands = {
    atomic = {
        {
            trigger = "ooc",
            callback = function(arg)

            end
        }
    },

}

local function expandMacros(str)
    str = str:trim()
    for i, v in ipairs(macros) do
        if str:startsWith(v.prefix) then
            str = v.replacement .. str:sub(#v.prefix + 1)
            break
        end
    end
    return str
end

event.registerChat(false, "", function(talker, message)
    print("'" .. expandMacros(message) .. "'")
end)