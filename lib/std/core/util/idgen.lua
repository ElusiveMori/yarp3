local firstValidChar = 48
local lastValidChar = 126

local function nextValidCharId(char)
    if char < 48 then return 48 end
    if char > 126 then return nil end
    if char == 57 then return 97 end
    return char + 1
end

local function isUnoccupiedId(id)
    if currentMap == nil then
        return true
    end

    for _, objs in pairs(currentMap.objects) do
        if objs[id] ~= nil then
            return false
        end
    end

    return true
end

local function nextIdFrom(id)
    if #id ~= 4 then
        error("id must be 4-char")
    end

    local b1, b2, b3, b4 = string.byte(id, 1, 4)

    repeat
        if b4 < lastValidChar then
            b4 = nextValidCharId(b4)
        elseif b3 < lastValidChar then
            b4 = firstValidChar
            b3 = nextValidCharId(b3)
        elseif b2 < lastValidChar then
            b4 = firstValidChar
            b3 = firstValidChar
            b2 = nextValidCharId(b2)
        elseif b1 < lastValidChar then
            b4 = firstValidChar
            b3 = firstValidChar
            b2 = firstValidChar
            b1 = nextValidCharId(b1)
        end
    until isUnoccupiedId(string.char(b1, b2, b3, b4))

    return string.char(b1, b2, b3, b4)
end

idgen = {}

local unitId = 'x000'
local heroId = 'H000'
local abilId = 'A000'
local buffId = 'B000'
local itemId = 'I000'
local upgdId = 'R000'

function idgen.unit()
    local ret = unitId
    unitId = nextIdFrom(ret)
    return ret
end

function idgen.hero()
    local ret = heroId
    heroId = nextIdFrom(ret)
    return ret
end

function idgen.abil()
    local ret = abilId
    abilId = nextIdFrom(ret)
    return ret
end

function idgen.buff()
    local ret = buffId
    buffId = nextIdFrom(ret)
    return ret
end

function idgen.item()
    local ret = itemId
    itemId = nextIdFrom(ret)
    return ret
end

function idgen.upgd()
    local ret = upgdId
    upgdId = nextIdFrom(ret)
    return ret
end