import Player from "./core/types/player"
import { isSinglePlayer } from "./core/game"
import * as base64 from "std.ext.base64"

const MAX_PER_CHUNK = 255 - 6
let MAX_CHUNKS_PER_ROUND = 4
const MAX_TRANSMISSIONS_PER_PLAYER = 1
const MAX_TRANSMISSIONS_PER_GAME = 4

enum TransmissionStatus {
    None,
    QueuedStart,
    QueuedChunk,
    Inflight
}

type TransmissionCallback = (payload: string, status: "success" | "failure") => void
type NetworkCallback = (sender: Player, payload: string) => void

interface Transmission {
    id: number
    sender: Player
    received: string[]
    status: TransmissionStatus
    callback: TransmissionCallback
    chunkCounter: number

    queuedCount?: number
    queuedChunks?: string[]
}

let context = util.context("network", {
    listeners: new Map<string, NetworkCallback>(),
    transmissions: [] as Map<number, Transmission>[],
    queued: [] as Transmission[],
    counters: [] as number[]
})

export function receive(id: string, callback: NetworkCallback) {
    if (context.listeners.has(id)) {
        context.listeners.set(id, callback)
    } else {
        let trigger = CreateTrigger()
        for (let player of Player.all) {
            BlzTriggerRegisterPlayerSyncEvent(trigger, player.handle, id, false)
        }
        TriggerAddAction(
            trigger,
            ceres.wrapSafeCall(() => {
                context.listeners.get(id)!(Player.of(GetTriggerPlayer()), BlzGetTriggerSyncData())
            })
        )
        context.listeners.set(id, callback)
    }
}

export function send(id: string, payload: string) {
    assert(payload.length <= 255, "payload must be under 256 chars")
    BlzSendSyncData(id, payload)
}

function countInFlightTransmissions(player: Player): number {
    if (!context.transmissions[player.id]) {
        return 0
    } else {
        let count = 0
        for (let [_, transmission] of context.transmissions[player.id]) {
            if (transmission.status == TransmissionStatus.Inflight) {
                count++
            }
        }
        return count
    }
}

function countInFlightTransmissionsAll(): number {
    let count = 0
    for (let player of Player.all) {
        count += countInFlightTransmissions(player)
    }
    return count
}

const CHUNK_HEADER_PACK = ">I3"
const CHUNK_HEADER_SIZE = 4
function sendTransmissionRound(transmission: Transmission) {
    if (transmission.sender.isLocal) {
        if (isSinglePlayer()) {
            MAX_CHUNKS_PER_ROUND = 16384
        }

        for (let i = 0; i < MAX_CHUNKS_PER_ROUND; i++) {
            let chunkData = table.remove(transmission.queuedChunks!, 1)

            if (!chunkData) {
                break
            }

            let chunkHeader = base64.encode(string.pack(CHUNK_HEADER_PACK, transmission.id))

            send("__tc", chunkHeader + chunkData)
        }
    }

    transmission.status = TransmissionStatus.Inflight
}

function receiveTransmissionChunk(sender: Player, data: string) {
    let [transmissionId] = string.unpack(
        CHUNK_HEADER_PACK,
        base64.decode(data.substring(0, CHUNK_HEADER_SIZE))
    )
    let chunkData = data.substring(CHUNK_HEADER_SIZE)

    let transmission = context.transmissions[sender.id].get(transmissionId)!
    table.insert(transmission.received, chunkData)

    if (transmission.received.length == transmission.queuedCount) {
        context.transmissions[sender.id].delete(transmission.id)

        ceres.safeCall(transmission.callback, table.concat(transmission.received), "success")
        updateQueue()
        return
    }

    transmission.chunkCounter = transmission.chunkCounter + 1
    if (transmission.chunkCounter % MAX_CHUNKS_PER_ROUND == 0) {
        enqueueTransmission(transmission, TransmissionStatus.QueuedChunk)
        updateQueue()
    }
}

const TRANSMISSION_HEADER_PACK = ">I3I3"
function sendTransmissionHeader(transmission: Transmission) {
    if (transmission.sender.isLocal) {
        let headerData = base64.encode(
            string.pack(
                TRANSMISSION_HEADER_PACK,
                transmission.id,
                transmission.queuedChunks?.length
            )
        )
        send("__th", headerData)
    }

    transmission.status = TransmissionStatus.Inflight
}

function receiveTransmissionHeader(sender: Player, data: string) {
    let [transmissionId, chunkCount] = string.unpack(
        TRANSMISSION_HEADER_PACK,
        base64.decode(data)
    ) as [number, number]
    let transmission = context.transmissions[sender.id].get(transmissionId)!
    transmission.queuedCount = chunkCount

    sendTransmissionRound(transmission)
}

function enqueueTransmission(transmission: Transmission, status: TransmissionStatus) {
    transmission.status = status
    table.insert(context.queued, transmission)
}

function updateQueue(): void {
    if (countInFlightTransmissionsAll() >= MAX_TRANSMISSIONS_PER_GAME) {
        return
    }

    for (let [k, v] of ipairs(context.queued)) {
        if (countInFlightTransmissions(v.sender) < MAX_TRANSMISSIONS_PER_PLAYER) {
            if (v.status == TransmissionStatus.QueuedStart) {
                sendTransmissionHeader(v)
            } else if (v.status == TransmissionStatus.QueuedChunk) {
                sendTransmissionRound(v)
            }
            table.remove(context.queued, k)

            // tail call
            return updateQueue()
        }
    }
}

export function synchronize(sender: Player, payload: string, callback: TransmissionCallback) {
    if (!context.transmissions[sender.id]) {
        context.transmissions[sender.id] = new Map()
    }
    context.counters[sender.id] = context.counters[sender.id] || 0
    let senderTransmissions = context.transmissions[sender.id]
    let transmissionId = context.counters[sender.id]
    context.counters[sender.id]++

    let transmission: Transmission = {
        id: transmissionId,
        chunkCounter: 0,
        sender: sender,
        callback: callback,
        received: [],
        status: TransmissionStatus.None
    }

    senderTransmissions.set(transmissionId, transmission)

    if (sender.isLocal) {
        transmission.queuedChunks = payload.partition(MAX_PER_CHUNK)
    }

    enqueueTransmission(transmission, TransmissionStatus.QueuedStart)
    updateQueue()
}

receive("__th", receiveTransmissionHeader)
receive("__tc", receiveTransmissionChunk)
