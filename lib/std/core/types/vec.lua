require 'std.core.util'

local vec2Meta = util.meta.get("vec2")
local vec3Meta = util.meta.get("vec3")
local rectMeta = util.meta.get("rect")

function vec2(x, y)
    ASSERT_ARG_TYPE(1, "x", "number")
    ASSERT_ARG_TYPE(2, "y", "number")

    local t = {x = x, y = y}
    setmetatable(t, vec2Meta)
    return t
end

function vec3(x, y, z)
    ASSERT_ARG_TYPE(1, "x", "number")
    ASSERT_ARG_TYPE(2, "y", "number")
    ASSERT_ARG_TYPE(3, "z", "number")

    local t = {x = x, y = y, z = z}
    setmetatable(t, vec3Meta)
    return t
end

function vec2Meta.funcs:clone()
    return vec2(self.x, self.y)
end

function vec3Meta.funcs:clone()
    return vec3(self.x, self.y, self.z)
end
