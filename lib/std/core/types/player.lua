require 'std.core.util'
local hook = require 'std.core.hook'

player = player or {
    __playerStorage = {},
    __localPlayer = nil
}

local playerStorage = player.__playerStorage
local localPlayer = player.__localPlayer
local playerMeta = util.meta.new("player")

local function wrapPlayer(p)
    local id = GetPlayerId(p)
    if playerStorage[id] ~= nil then
        return playerStorage[id]
    end

    local t = {
        __id = GetPlayerId(p),
        __h = p
    }

    setmetatable(t, playerMeta)
    return t
end

_G.__WrapPlayer = wrapPlayer

function player.getLocal()
    return localPlayer
end

function player.get(id)
    ASSERT_ARG_TYPE(1, "id", "number")

    return playerStorage[id]
end

function player.getAll()
    local t = {}

    for i=0, bj_MAX_PLAYER_SLOTS - 1 do
        table.insert(t, playerStorage[i])
    end

    return t
end

function playerMeta.get:id()
    return self.__id
end

function playerMeta.get:name()
    return GetPlayerName(self.__h)
end

function playerMeta.set:name(name)
    ASSERT_ARG_TYPE(1, "name", "string")

    SetPlayerName(self.__h, name)
end

hook.add("init", function()
    for i=0, bj_MAX_PLAYER_SLOTS - 1 do
        player.__playerStorage[i] = wrapPlayer(Player(i))
    end

    player.__localPlayer = player.__playerStorage[GetPlayerId(GetLocalPlayer())]
end)

return player