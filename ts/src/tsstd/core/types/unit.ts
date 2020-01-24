import Handle from "./handle"
import Player from "./player"
import Rect from "./rect"
import Vector2 from "../vecmath/vec2"

let targetCollection: Unit[]
let collectIntoTarget = Filter(
    () => (targetCollection[targetCollection.length] = Unit.of(GetFilterUnit()))
)

class Unit extends Handle<junit> {
    private static dummyGroup = util.contextFn("Player/dummy", () => CreateGroup())

    get name(): string {
        return GetUnitName(this.handle)
    }

    set name(v: string) {
        BlzSetUnitName(this.handle, v)
    }

    explode() {
        SetUnitExploded(this.handle, true)
        KillUnit(this.handle)
    }

    kill() {
        KillUnit(this.handle)
    }

    remove() {
        RemoveUnit(this.handle)
    }

    static of(handle: junit): Unit {
        return Unit.getForHandle(handle)
    }

    static getAll(): Unit[] {
        targetCollection = []
        for (let player of Player.all) {
            GroupEnumUnitsOfPlayer(this.dummyGroup, player.handle, collectIntoTarget)
        }
        return targetCollection
    }

    static getOwnedBy(player: Player): Unit[] {
        targetCollection = []
        GroupEnumUnitsOfPlayer(this.dummyGroup, player.handle, collectIntoTarget)
        return targetCollection
    }

    static getInRect(rect: Rect): Unit[] {
        targetCollection = []
        GroupEnumUnitsInRect(this.dummyGroup, rect.handle, collectIntoTarget)
        return targetCollection
    }

    static getInRange(pos: Vector2, range: number): Unit[] {
        targetCollection = []
        GroupEnumUnitsInRange(this.dummyGroup, pos.x, pos.y, range, collectIntoTarget)
        return targetCollection
    }

    static getSelectionOf(player: Player): Unit[] {
        targetCollection = []
        GroupEnumUnitsSelected(this.dummyGroup, player.handle, collectIntoTarget)
        return targetCollection
    }
}

Unit.init()

export default Unit
