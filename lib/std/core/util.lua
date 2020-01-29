compiletime(function()
    if NEVER then
    end
end)

compiletime(function()
    function prepare_macro_template(s)
        return s:gsub("\n", ""):gsub("[ ]+", " "):gsub("^[ ]+", ""):gsub("[ ]+$", "")
    end
end)

macro_define("objid", function(input)
    if type(input) == "string" then
        if #input ~= 4 then
            error("objid length must be 4")
        end

        return tostring(string.unpack(">I4", input))
    else
        error("objid input must be a string")
    end
end)

compiletime(function()
    SANITIZE_OBJID_TEMPLATE = prepare_macro_template [[
        do
            local t = type(%s)
            if t == "string" then
                %s = util.s2id(%s)
            elseif t ~= "number" then
                error("ERROR: %s must be of type 'string' or 'number', but was '" .. t .. "'")
            end
        end
    ]]

    function MAKE_SANITIZE_OBJID(input)
        if not ASSERTS_DISABLED then
            return SANITIZE_OBJID_TEMPLATE:format(input, input, input, input)
        else
            return input .. " = util.sanitizeObjId(" .. input .. ")"
        end
    end
end)

macro_define("SANITIZE_OBJID", MAKE_SANITIZE_OBJID)

util = {}

if not ceres.compiletime then
    function print(...)
        local args = {...}
        local msgs = {}

        for k, v in pairs(args) do
            table.insert(msgs, tostring(v))
        end

        local msg = table.concat(msgs, " ")
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 60, msg)
    end
end

function util.id2s(id)
    return string.pack(">I4", id)
end

function util.s2id(s)
    return string.unpack(">I4", s)
end

function util.sanitizeObjId(id)
    local t = type(id)
    if t == "string" then
        id = util.s2id(id)
    elseif t ~= "number" then
        error("ERROR: id must be of type 'string' or 'number', but was '" .. t .. "'")
    end
    return id
end

local printTable
printTable = function(t, indent)
    for k, v in pairs(t) do
        if type(v) ~= "table" then
            print(("  "):rep(indent), k, " = ", v)
        else
            print(("  "):rep(indent), k, " = {")
            printTable(v, indent+1)
            print(("  "):rep(indent), "}")
        end
    end
end

function util.printTable(t)
    printTable(t, 0)
end

require 'std.core.util.assert'
require 'std.core.util.idgen'
require 'std.core.util.string'

util.meta = require 'std.core.util.meta'

__contexts = __contexts or {}

function util.context(id, default)
    ASSERT_ARG_TYPE(1, "id", "string")
    __contexts[id] = __contexts[id] or default or {}
    return __contexts[id]
end