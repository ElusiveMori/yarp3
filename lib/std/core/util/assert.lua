function typeId(obj)
    local t = type(obj)
    if t == "table" then
        local meta = getmetatable(obj)
        if meta == nil then
            return "table"
        elseif meta == false then
            return "wc3handle"
        else
            return meta.__typeId or "unknown"
        end
    else
        return t
    end
end

compiletime(function()
    ASSERT_ARG_TEMPLATE = prepare_macro_template([[
        do
        local t = typeId(%s)
        if t ~= "%s" then
            error("argument #%s ('%s') must be a '%s', but got a " .. t .. " instead")
        end
        end
    ]])
end)

macro_define("ASSERT_ARG_TYPE", function(num, arg, requiredType)
    local out = string.format(ASSERT_ARG_TEMPLATE, arg, requiredType, num, arg, requiredType)

    return out
end)

compiletime(function()
    ASSERT_COND_TEMPLATE = prepare_macro_template([[
        do
        local r = (%s)
        if not r then
            error("invariant failed, %s must be 'true' but was '" .. tostring(r) .. "'")
        end
        end
    ]])
end)

macro_define("ASSERT_COND", function(expr)
    local out = string.format(ASSERT_COND_TEMPLATE, expr, expr)

    return out
end)