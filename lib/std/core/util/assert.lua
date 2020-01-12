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
            print(t)
            error("argument #%s ('%s') must be a '%s', but got a " .. t .. " instead")
        end
        end
    ]])

    function MAKE_ASSERT_ARG_TYPE(num, arg, requiredType)
        if not ASSERTS_DISABLED then
            return string.format(ASSERT_ARG_TEMPLATE, arg, requiredType, num, arg, requiredType)
        else
            return ""
        end
    end
end)

macro_define("ASSERT_ARG_TYPE", MAKE_ASSERT_ARG_TYPE)

compiletime(function()
    ASSERT_COND_TEMPLATE = prepare_macro_template([[
        do
        local r = (%s)
        if not r then
            error("invariant failed, %s must be 'true' but was '" .. tostring(r) .. "'")
        end
        end
    ]])

    function MAKE_ASSERT_COND(expr)
        if not ASSERTS_DISABLED then
            return string.format(ASSERT_COND_TEMPLATE, expr, expr)
        else
            return ""
        end
    end
end)

macro_define("ASSERT_COND", MAKE_ASSERT_COND)