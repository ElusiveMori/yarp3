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
end)

macro_define("SANITIZE_OBJID", function(input)
    return SANITIZE_OBJID_TEMPLATE:format(input, input, input, input)
end)

util = {}

function util.id2s(id)
    return string.pack(">I4", id)
end

function util.s2id(s)
    return string.unpack(">I4", s)
end

require 'std.core.util.assert'
require 'std.core.util.idgen'
util.meta = require 'std.core.util.meta'

