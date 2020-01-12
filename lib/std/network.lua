require 'std.core.util'
require 'std.core.types.player'
require 'std.core.game'
require 'std.core.event'

local base64 = require 'std.ext.base64'

network = network or {}

-- max amount of bytes allowed per data chunk
local MAX_PER_CHUNK = 255 - 6
-- max amount of chunks per send "round"
local MAX_CHUNKS_PER_ROUND = 4

-- max amount of concurrent transmissions each player can have
local MAX_TRANSMISSIONS_PER_PLAYER = 1
-- max amount of total concurrent transmissions allowed in the game
local MAX_TRANSMISSIONS_PER_GAME = 4

local STATUS_QUEUED_START = 0
local STATUS_QUEUED_CHUNK = 1
local STATUS_INFLIGHT = 2

local networkContext = util.context("network", {
    listeners = {},
    transmissions = {},
    queued = {},
    counters = {}
})

local transmissions = networkContext.transmissions
local listeners = networkContext.listeners
local counters = networkContext.counters
local queuedTransmissions = networkContext.queued

function network.receive(id, callback)
    ASSERT_ARG_TYPE(1, "id", "string")
    ASSERT_ARG_TYPE(2, "callback", "function")

    if listeners[id] then
        listeners[id] = callback
    else
        local trig = CreateTrigger()
        for _, v in pairs(player.getAll()) do
            BlzTriggerRegisterPlayerSyncEvent(trig, v.__h, id, false)
        end
        TriggerAddAction(trig, function()
            local p = __WrapPlayer(GetTriggerPlayer())
            local d = BlzGetTriggerSyncData()
            ceres.catch(listeners[id], p, d)
        end)
        listeners[id] = callback
    end
end

function network.send(id, payload)
    ASSERT_ARG_TYPE(1, "id", "string")
    ASSERT_ARG_TYPE(2, "payload", "string")
    ASSERT_COND("#payload <= 255")

    BlzSendSyncData(id, payload)
end

local updateQueue, enqueueTransmission

local function countInFlightTransmissionsOf(sender)
    if not transmissions[sender.id] then
        return 0
    else
        local count = 0
        for _, v in pairs(transmissions[sender.id]) do
            if v.status == STATUS_INFLIGHT then
                count = count + 1
            end
        end
        return count
    end
end

local function countInFlightTransmissionsAll()
    local count = 0
    for _, p in pairs(player.getAll()) do
        count = count + countInFlightTransmissionsOf(p)
    end
    return count
end

local CHUNK_HEADER_PACK=">I3"
local CHUNK_HEADER_SIZE = 4
local function sendTransmissionRound(transmission)
    if transmission.sender.isLocal then
        if game.isSingleplayer() then
            MAX_CHUNKS_PER_ROUND = 16384
        end

        for i=1, MAX_CHUNKS_PER_ROUND do
            local chunkData = table.remove(transmission.queuedChunks, 1)

            if not chunkData then
                break
            end

            local chunkHeader = base64.encode(string.pack(CHUNK_HEADER_PACK, transmission.id))

            network.send("__tc", chunkHeader .. chunkData)
        end
    end

    transmission.status = STATUS_INFLIGHT
end

local function receiveTransmissionChunk(sender, data)
    local transmissionId = string.unpack(CHUNK_HEADER_PACK, base64.decode(data:sub(1, CHUNK_HEADER_SIZE)))
    local chunkData = data:sub(CHUNK_HEADER_SIZE + 1)

    local transmission = transmissions[sender.id][transmissionId]
    table.insert(transmission.received, chunkData)

    if #transmission.received == transmission.queuedCount then
        transmissions[sender.id][transmission.id] = nil

        ceres.catch(transmission.callback, table.concat(transmission.received), "success")
        updateQueue()
        return
    end

    transmission.chunkCounter = transmission.chunkCounter + 1
    if transmission.chunkCounter % MAX_CHUNKS_PER_ROUND == 0 then
        enqueueTransmission(transmission, STATUS_QUEUED_CHUNK)
        updateQueue()
    end
end

local TRANSMISSION_HEADER_PACK = ">I3I3"
local function sendTransmissionHeader(transmission)
    if transmission.sender.isLocal then
        local headerData = base64.encode(string.pack(TRANSMISSION_HEADER_PACK, transmission.id, #transmission.queuedChunks))
        network.send("__th", headerData)
    end

    transmission.status = STATUS_INFLIGHT
end

local function receiveTransmissionHeader(sender, data)
    local transmissionId, chunkCount = string.unpack(TRANSMISSION_HEADER_PACK, base64.decode(data))
    local transmission = transmissions[sender.id][transmissionId]
    transmission.queuedCount = chunkCount

    sendTransmissionRound(transmission)
end

enqueueTransmission = function(transmission, status)
    transmission.status = status
    table.insert(queuedTransmissions, transmission)
end

updateQueue = function()
    if countInFlightTransmissionsAll() >= MAX_TRANSMISSIONS_PER_GAME then
        return
    end

    for k, v in ipairs(queuedTransmissions) do
        if countInFlightTransmissionsOf(v.sender) < MAX_TRANSMISSIONS_PER_PLAYER then
            if v.status == STATUS_QUEUED_START then
                sendTransmissionHeader(v)
            elseif v.status == STATUS_QUEUED_CHUNK then
                sendTransmissionRound(v)
            end
            table.remove(queuedTransmissions, k)

            -- tail call
            return updateQueue()
        end
    end
end

function network.synchronize(sender, payload, callback)
    ASSERT_ARG_TYPE(1, "sender", "player")
    ASSERT_ARG_TYPE(2, "payload", "string")
    ASSERT_ARG_TYPE(3, "callback", "function")

    transmissions[sender.id] = transmissions[sender.id] or {}
    counters[sender.id] = counters[sender.id] or 0
    local senderTransmissions = transmissions[sender.id]
    local transmissionId = counters[sender.id]
    counters[sender.id] = counters[sender.id] + 1

    local transmission = {
        id = transmissionId,
        chunkCounter = 0,
        sender = sender,
        callback = callback,
        received = {}
    }

    senderTransmissions[transmissionId] = transmission

    if sender.isLocal then
        local queued = {}
        for i=0, (#payload // MAX_PER_CHUNK) do
            local segStart = (i * MAX_PER_CHUNK) + 1
            local segEnd = math.min(((i + 1) * MAX_PER_CHUNK), #payload)
            table.insert(queued, payload:sub(segStart, segEnd))
        end

        transmission.queuedChunks = queued
    end

    enqueueTransmission(transmission, STATUS_QUEUED_START)
    updateQueue()
end

network.receive("__th", receiveTransmissionHeader)
network.receive("__tc", receiveTransmissionChunk)