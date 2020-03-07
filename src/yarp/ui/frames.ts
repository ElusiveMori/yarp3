import { Frame } from "cerrie/core/types/frame"
import Timer from "cerrie/core/timer"
import "cerrie/core/util"

util.runOnce(function() {
    print("TOC Loaded: ", BlzLoadTOCFile("custom.toc"))
})

compiletime(() => {
    const toc = [
        "ui\\FrameDef\\Glue\\StandardTemplates.fdf",
        "UI\\FrameDef\\Glue\\BattleNetTemplates.fdf",
        "ui\\FrameDef\\UI\\EscMenuTemplates.fdf",
        "custom.fdf",
        ""
    ]

    if (currentMap != undefined) {
        currentMap.addFileString("custom.toc", table.concat(toc, "\r\n"))
    }
})

const rootFrame = Frame.byOrigin(ORIGIN_FRAME_GAME_UI, 0)

const creationContext = util.context("yarp/uiContext", {
    frameCounter: 0,
    baseTexCounter: 0,
    baseStringCounter: 0
})

interface FrameSkin {
    UL: string
    UR: string
    BL: string
    BR: string
    U: string
    B: string
    L: string
    R: string
    BG: string
}

interface CornerSkin {
    UL?: string
    UR?: string
    BL?: string
    BR?: string
}

export namespace Skins {
    export const BlackSmooth: FrameSkin = {
        UL: "Black_Corner_UL.tga",
        UR: "Black_Corner_UR.tga",
        BL: "Black_Corner_BL.tga",
        BR: "Black_Corner_BR.tga",
        U: "Black_Edge_U.tga",
        B: "Black_Edge_B.tga",
        L: "Black_Edge_L.tga",
        R: "Black_Edge_R.tga",
        BG: "Black_BG.tga"
    }

    export const FancyCorners: CornerSkin = {
        UL: "corner_tl_deco.tga",
        UR: "corner_tr_deco.tga",
        BL: "corner_bl_deco.tga",
        BR: "corner_br_deco.tga"
    }
}

const CORNER_POINTS: { [idx: string]: jframepointtype } = {
    UL: FRAMEPOINT_TOPLEFT,
    UR: FRAMEPOINT_TOPRIGHT,
    BL: FRAMEPOINT_BOTTOMLEFT,
    BR: FRAMEPOINT_BOTTOMRIGHT
}

export function createTexture(texture: string): Frame {
    const contextId = creationContext.baseTexCounter
    creationContext.baseTexCounter++

    const base = Frame.createSimple("CustomTextureBase", rootFrame, contextId)
    const textureFrame = Frame.byName("CTB_T", contextId)

    base.clearAllPoints()
    textureFrame.setTexture(texture, 0, true)

    return base
}

export function createCustomFrame(
    width: number,
    height: number,
    frameSkin: FrameSkin,
    transparency?: number,
    cornerSkin?: CornerSkin,
    cornerDecoSize?: number
): Frame {
    const contextId = creationContext.frameCounter
    creationContext.frameCounter++

    const base = Frame.createSimple("CustomBackdropBase", rootFrame, contextId)
    base.clearAllPoints()
    base.setSize(width, height)
    if (transparency) {
        base.alpha = math.floor(255 * transparency)
    }
    base.visible = true

    for (const cornerId of ["CBB_UL", "CBB_UR", "CBB_BL", "CBB_BR"]) {
        const corner = Frame.byName(cornerId, contextId)
        corner.setSize(0.008, 0.008)
    }

    for (const [texId, texName] of pairs(frameSkin)) {
        const frame = Frame.byName(`CBB_${texId}`, contextId)

        frame.setTexture(texName, 0, true)
    }

    if (cornerSkin && cornerDecoSize) {
        for (const [texId, texName] of pairs(cornerSkin)) {
            const cornerDecoTex = createTexture(texName!)
            const pointType = CORNER_POINTS[texId]
            cornerDecoTex.setPoint(pointType, base, pointType, 0, 0)
            cornerDecoTex.setSize(cornerDecoSize, cornerDecoSize)
            cornerDecoTex.parent = base
        }
    }

    return base
}

export function createStringFrame(shadow: boolean): Frame {
    const frameName = shadow ? "CustomStringBase_Shadowed" : "CustomStringBase"
    const textName = shadow ? "CSB_SS" : "CSB_S"

    const base = Frame.createSimple(frameName, Frame.byOrigin(ORIGIN_FRAME_GAME_UI, 0), 0)
    const text = Frame.byName(textName, 0)

    base.clearAllPoints()
    return text
}

const wsFrame: Frame = util.contextFn("yarp/widescreenFrame", () => {
    const frame = Frame.createSimple("Container", rootFrame, 0)
    return frame
})

export const wideScreenFrame = wsFrame

interface ScreenInfo {
    widthPixels: number
    heightPixels: number
    aspectRatio: number
    widthUnits: number
    heightUnits: number
    scale: number
    minX: number
    maxX: number
    minY: number
    maxY: number
}

export let screenInfo: ScreenInfo = {
    widthPixels: 0,
    heightPixels: 0,
    aspectRatio: 0,
    widthUnits: 0,
    heightUnits: 0,
    scale: 0,
    minX: 0,
    minY: 0,
    maxX: 0,
    maxY: 0.8
}

function calculateScreenInfo(): void {
    const screenWidthPixels = BlzGetLocalClientWidth()
    const screenHeightPixels = BlzGetLocalClientHeight()

    const aspectRatio = screenWidthPixels / screenHeightPixels
    const screenHeight = 0.6
    const screenWidth = screenHeight * aspectRatio

    const screenMinX = (0.8 - screenWidth) / 2
    const screenMaxX = (0.8 + screenWidth) / 2

    screenInfo = {
        widthPixels: screenWidthPixels,
        heightPixels: screenHeightPixels,

        aspectRatio: aspectRatio,

        widthUnits: screenWidth,
        heightUnits: screenHeight,

        scale: 800 / screenHeightPixels,
        minX: screenMinX,
        minY: 0,
        maxX: screenMaxX,
        maxY: 0.8
    }
}

calculateScreenInfo()

function resizeWidescreenFrame(): void {
    calculateScreenInfo()

    wideScreenFrame.setAbsPoint(FRAMEPOINT_TOPLEFT, screenInfo.minX, 0.6)
    wideScreenFrame.setAbsPoint(FRAMEPOINT_BOTTOMRIGHT, screenInfo.maxX, 0)
}

resizeWidescreenFrame()
util.reloadCleanup(Timer.periodic(1, resizeWidescreenFrame))
