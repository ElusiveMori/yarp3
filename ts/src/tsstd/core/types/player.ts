import Handle from "./handle"

let playerNative = _G.Player

class Player extends Handle<jplayer> {
    protected constructor(handle: jplayer, ctor: typeof Player) {
        super(handle, ctor as typeof Handle)
        print(`constructed Player for ${GetPlayerId(handle)}:${GetHandleId(handle)}`)
    }

    static local: Player
    static all: Player[]

    private static _init = util.contextFn("player/all", () => {
        Player.init()
        let storage: Player[] = []

        for (let i = 0; i < 4; i++) {
            storage[i] = Player.of(playerNative(i))
        }

        Player.all = storage
        Player.local = Player.of(GetLocalPlayer())
    })

    get id() {
        return GetPlayerId(this.handle)
    }

    get name() {
        return GetPlayerName(this.handle)
    }

    set name(v: string) {
        SetPlayerName(this.handle, v)
    }

    get isLocal() {
        return this == Player.local
    }

    get isHuman() {
        return GetPlayerController(this.handle) == MAP_CONTROL_USER
    }

    get isPlaying() {
        return GetPlayerSlotState(this.handle) == PLAYER_SLOT_STATE_PLAYING
    }

    destroy() {
        throw new Error("Player instances are not supposed to be destroyed.")
    }

    static byId(id: number): Player {
        return Player.all[id]!
    }

    static of(player: jplayer): Player {
        return Player.getForHandle(player)
    }
}

Player.init()

export default Player
