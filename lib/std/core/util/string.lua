function string.startsWith(str, prefix)
    return str:sub(1, #prefix) == prefix
end

function string.endsWith(str, postfix)
    return str:sub(-#postfix, postfix)
end

function string.trim(str)
    local strStart = 1
    local strEnd = #str

    while str:sub(strStart, strStart) == " " and strStart <= strEnd do strStart = strStart + 1 end
    while str:sub(strEnd, strEnd) == " " and strEnd >= 1 do strEnd = strEnd - 1 end
    return str:sub(strStart, strEnd)
end