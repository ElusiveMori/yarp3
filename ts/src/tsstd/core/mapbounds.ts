import Rect from "./types/rect"
import Region from "./types/region"

let context = util.contextFn("mapbounds", () => {
    let playable = Rect.of(GetPlayableMapRect())
    let bounds = Rect.of(GetWorldBounds())

    let playableRegion = Region.create()
    let boundsRegion = Region.create()
    playableRegion.addRect(playable)
    boundsRegion.addRect(bounds)

    return {
        playable: playable,
        bounds: bounds,
        playableRegion: playableRegion,
        boundsRegion: boundsRegion
    }
})

export function playableRect(): Rect {
    return context.playable
}

export function playableRegion(): Region {
    return context.playableRegion
}

export function wholeRect(): Rect {
    return context.bounds
}

export function wholeRegion(): Region {
    return context.boundsRegion
}
