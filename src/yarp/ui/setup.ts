import { Frame, FrameEvents } from "cerrie/core/types/frame"
import Timer from "cerrie/core/timer"
import { triggerLiveReload } from "cerrie/livereload"
import { createCustomFrame, Skins, wideScreenFrame } from "./frames"
import "cerrie/core/util"

function hideByName(name: string): void {
    Frame.byName(name, 0).visible = false
}

function showByName(name: string): void {
    Frame.byName(name, 0).visible = true
}

BlzHideOriginFrames(true)
BlzHideCinematicPanels(true)
BlzEnableUIAutoPosition(false)

const rootFrame = Frame.byOrigin(ORIGIN_FRAME_GAME_UI, 0)
const worldFrame = Frame.byOrigin(ORIGIN_FRAME_WORLD_FRAME, 0)

worldFrame.setAllPoints(rootFrame)

const commandBtnSize = 0.0385
const commandBarLength = commandBtnSize * 4
const commandBarY = commandBtnSize * 3 + 0.0025
const commandBarX = 0.505
const commandButtons: Frame[] = []
for (let i = 0; i < 12; i++) {
    const btn = Frame.byName(`CommandButton_${i}`, 0)
    const btnOr = Frame.byOrigin(ORIGIN_FRAME_COMMAND_BUTTON, i)

    commandButtons.push(btnOr)

    btn.clearAllPoints()
    const x = commandBarX + (i % 4) * commandBtnSize
    const y = commandBarY - math.floor(i / 4) * commandBtnSize
    btn.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y)
    btn.setAbsPoint(FRAMEPOINT_BOTTOMRIGHT, x + commandBtnSize, y - commandBtnSize)
    btn.setSize(commandBtnSize, commandBtnSize)
}

// Hide hero indicators
for (let i = 0; i < 7; i++) {
    const btn = Frame.byOrigin(ORIGIN_FRAME_HERO_BUTTON_INDICATOR, i)
    btn.clearAllPoints()
    btn.setAbsPoint(FRAMEPOINT_CENTER, -1, -1)
}

// Reposition ubertip position
const uberTip = Frame.byOrigin(ORIGIN_FRAME_UBERTOOLTIP, 0)
uberTip.clearAllPoints()
uberTip.setSize(0.2, 0.2)
uberTip.setPoint(FRAMEPOINT_BOTTOMLEFT, wideScreenFrame, FRAMEPOINT_BOTTOMLEFT, 0, 0)
uberTip.visible = false

// show inventory/unit panels
const inventoryBar = Frame.byName("SimpleInventoryBar", 0)
inventoryBar.parent.visible = true

// remove inventory text
const invText = Frame.byName("InventoryText", 0)
invText.text = ""
invText.clearAllPoints()
invText.setAbsPoint(FRAMEPOINT_CENTER, 0, -2.0)

// remove inventory cover texture
const invCoverTex = Frame.byName("InventoryCoverTexture", 0)
invCoverTex.clearAllPoints()
invCoverTex.setSize(0.01, 0.01)
invCoverTex.setAbsPoint(FRAMEPOINT_CENTER, 0.4, -0.2)

// reposition item buttons
const itemBtnSize = 0.035
const itemBarLength = itemBtnSize * 3

for (let i = 0; i < 6; i++) {
    const itemButton = Frame.byName(`InventoryButton_${i}`, 0)
    itemButton.visible = true
    itemButton.clearAllPoints()
    const x = commandBarX + (commandBarLength - itemBarLength) / 2 + (i % 3) * itemBtnSize
    const y = commandBarY + (math.floor(i / 3) + 1) * itemBtnSize
    itemButton.setAbsPoint(FRAMEPOINT_TOPLEFT, x, y)
}

// reposition unit selection frame
const unitArea = Frame.byName("SimpleInfoPanelUnitDetail", 0).parent
unitArea.setSize(0.2, 0.1)
unitArea.clearAllPoints()
unitArea.setAbsPoint(FRAMEPOINT_BOTTOM, 0.4, 0)

// reposition unit detail frame
const unitDetail = Frame.byName("SimpleInfoPanelUnitDetail", 0)
unitDetail.clearAllPoints()
unitDetail.setSize(0.2, 0.12)
unitDetail.setAbsPoint(FRAMEPOINT_BOTTOM, 0.4, 0)

const portrait = Frame.byOrigin(ORIGIN_FRAME_PORTRAIT, 0)
portrait.clearAllPoints()
portrait.setSize(0.05, 0.12)
portrait.setAbsPoint(FRAMEPOINT_BOTTOMLEFT, 0.27, 0)
portrait.visible = true

showByName("UpperButtonBarFrame")

hideByName("ConsoleUIBackdrop")
hideByName("UpperButtonBarQuestsButton")
hideByName("UpperButtonBarAlliesButton")
hideByName("UpperButtonBarChatButton")
hideByName("SaveGameButton")
hideByName("LoadGameButton")
hideByName("PauseButton")

Frame.byOrigin(ORIGIN_FRAME_CHAT_MSG, 0).visible = false

const menuButton = Frame.byName("UpperButtonBarMenuButton", 0)
menuButton.clearAllPoints()
menuButton.setAbsPoint(FRAMEPOINT_CENTER, 0, -1)

const levelBar = Frame.byName("SimpleHeroLevelBar", 0)
levelBar.clearAllPoints()
levelBar.setSize(0.1, 0.011)
levelBar.setAbsPoint(FRAMEPOINT_CENTER, 0.4, 0.099)
levelBar.visible = true

// unit info backdrop
const unitInfoBackdrop = createCustomFrame(
    0.2,
    0.13,
    Skins.BlackSmooth,
    0.6,
    Skins.FancyCorners,
    0.016
)
unitInfoBackdrop.setAbsPoint(FRAMEPOINT_BOTTOM, 0.4, 0.0)

// command button badkrop
const commandButtonBdrpVertMargin = 0.0025
const commandButtonBackdrop = createCustomFrame(
    0,
    0,
    Skins.BlackSmooth,
    0.6,
    Skins.FancyCorners,
    0.016
)
commandButtonBackdrop.setSize(
    commandBarLength + 0.005,
    commandBtnSize * 3 + commandButtonBdrpVertMargin * 2
)
commandButtonBackdrop.setAbsPoint(
    FRAMEPOINT_TOP,
    commandBarX + commandBarLength / 2,
    commandBarY + commandButtonBdrpVertMargin
)

util.reloadCleanup(
    Timer.periodic(1 / 16, () => {
        commandButtonBackdrop.visible = false

        for (const commandBtn of commandButtons) {
            if (commandBtn.visible) {
                commandButtonBackdrop.visible = true
                break
            }
        }
    })
)

util.reloadCleanup(unitInfoBackdrop)
util.reloadCleanup(commandButtonBackdrop)

const reloadBtn = Frame.create("SimpleButton", rootFrame, 0, 0)
reloadBtn.setSize(0.07, 0.022)
reloadBtn.clearAllPoints()
reloadBtn.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.075, 0.595)
reloadBtn.visible = true
util.reloadCleanup(reloadBtn)

const reloadBtnText = Frame.byName("SimpleButtonText", 0)
reloadBtnText.text = "Reload"
reloadBtnText.setTextAlignment(TEXT_JUSTIFY_CENTER, TEXT_JUSTIFY_CENTER)

const menuReplButton = Frame.create("SimpleButton", rootFrame, 0, 1)
menuReplButton.setSize(0.07, 0.022)
menuReplButton.clearAllPoints()
menuReplButton.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.0, 0.595)
menuReplButton.visible = true

const menuReplButtonText = Frame.byName("SimpleButtonText", 1)
menuReplButtonText.text = "Menu"
menuReplButtonText.setTextAlignment(TEXT_JUSTIFY_CENTER, TEXT_JUSTIFY_CENTER)

menuReplButton.registerEvent(FrameEvents.MouseUp, player => {
    if (player.isLocal) {
        menuButton.click()
    }
})

reloadBtn.registerEvent(FrameEvents.MouseUp, player => {
    triggerLiveReload(player)
})

util.reloadCleanup(menuReplButton)
