require 'std.core.util.assert'

util.__metatables = {}
local meta = {}

function meta.get(typeName)
    ASSERT_ARG_TYPE(1, "typeName", "string")

    if util.__metatables[typeName] ~= nil then
        return util.__metatables[typeName]
    end

    local t = {
        __typeId = typeName
    }

    local funcs = {}
    local get = {}
    local set = {}

    t.funcs = funcs
    t.get = get
    t.set = set

    t.__index = function(self, k)
        if get[k] then
            return get[k](self)
        elseif funcs[k] then
            return funcs[k]
        else
            return rawget(self, k)
        end
    end

    t.__newindex = function(self, k, v)
        if set[k] then
            set[k](self, v)
        else
            rawset(self, k, v)
        end
    end

    return t
end

return meta