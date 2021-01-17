import { P, registerKeyEvent, ModKey, U } from "cerrie/core/war3event"
import { Player } from "cerrie/core/types/player"
import { Unit } from "cerrie/core/types/unit"
import Vector2 from "cerrie/core/vecmath/vec2"
import { sysMessage } from "./log"

import "./unitext"
import { flyUnit } from "./unitext"
import Timer from "cerrie/core/timer"

enum EditMode {
    NONE,
    MOVE,
    ROTATE,
    SCALE,
    HEIGHT
}

interface Contexts {
    [idx: number]: EditorContext
}

interface EditorContext {
    editMode: EditMode
    editedUnits: EditedUnit[]
    pivotPos: Vector2
    currentMousePos: Vector2
    snapping: boolean
    startMouseAng?: number
    startMouseMag?: number
}

interface EditedUnit {
    unit: Unit
    offsetX?: number
    offsetY?: number
    originalFacing?: number
    originalScale?: number
    originalHeight?: number
}

const contexts: Contexts = {}

for (const player of Player.all) {
    contexts[player.id] = {
        editMode: EditMode.NONE,
        editedUnits: [],
        pivotPos: Vector2.zero,
        currentMousePos: Vector2.zero,
        snapping: false
    }
}

function enableEditorMode(player: Player, editMode: EditMode): void {
    const context = contexts[player.id]
    const mousePos = context.currentMousePos
    context.editMode = editMode
    const selection = Unit.getSelectionOf(player)
    const editedUnits: EditedUnit[] = []

    if (editMode == EditMode.ROTATE) {
        let centerX = 0
        let centerY = 0
        for (const unit of selection) {
            centerX += unit.x
            centerY += unit.y
        }

        centerX /= selection.length
        centerY /= selection.length

        for (const unit of selection) {
            const offsetX = unit.x - centerX
            const offsetY = unit.y - centerY
            editedUnits[editedUnits.length] = {
                unit: unit,
                offsetX: offsetX,
                offsetY: offsetY,
                originalFacing: (GetUnitFacing(unit.handle) / 180) * math.pi
            }
        }

        context.pivotPos.x = centerX
        context.pivotPos.y = centerY

        context.startMouseAng = math.atan(centerY - mousePos.y, centerX - mousePos.x)
    } else if (editMode == EditMode.MOVE) {
        context.pivotPos = mousePos.copy()
        for (const unit of selection) {
            const offsetX = unit.x - mousePos.x
            const offsetY = unit.y - mousePos.y
            editedUnits[editedUnits.length] = {
                unit: unit,
                offsetX: offsetX,
                offsetY: offsetY
            }
        }
    } else if (editMode == EditMode.SCALE) {
        let centerX = 0
        let centerY = 0
        for (const unit of selection) {
            centerX += unit.x
            centerY += unit.y
        }

        centerX /= selection.length
        centerY /= selection.length

        context.pivotPos.x = centerX
        context.pivotPos.y = centerY

        context.startMouseMag = math.sqrt((centerX - mousePos.x) ** 2 + (centerY - mousePos.y) ** 2)

        for (const unit of selection) {
            const offsetX = unit.x - centerX
            const offsetY = unit.y - centerY
            editedUnits[editedUnits.length] = {
                unit: unit,
                offsetX: offsetX,
                offsetY: offsetY,
                originalScale: unit.size,
                originalHeight: unit.z
            }
        }
    } else if (editMode == EditMode.HEIGHT) {
        context.pivotPos = mousePos.copy()

        for (const unit of selection) {
            flyUnit(unit)
            editedUnits[editedUnits.length] = {
                unit: unit,
                originalHeight: unit.z
            }
        }
    }

    context.editedUnits = editedUnits
}

P.MouseMove.register((p, x, y) => {
    const context = contexts[p.id]
    const vec = context.currentMousePos

    vec.x = x
    vec.y = y

    if (context.editMode == EditMode.MOVE) {
        for (const editedUnit of context.editedUnits) {
            editedUnit.unit.x = x + editedUnit.offsetX!
            editedUnit.unit.y = y + editedUnit.offsetY!

            editedUnit.unit.issueSelfOrder("stop")
        }
    } else if (context.editMode == EditMode.ROTATE) {
        const dx = context.pivotPos.x - context.currentMousePos.x
        const dy = context.pivotPos.y - context.currentMousePos.y

        const offsetAng = (math.atan(dy, dx) - context.startMouseAng!) % (math.pi * 2)

        for (const editedUnit of context.editedUnits) {
            const unitAng = math.atan(editedUnit.offsetY!, editedUnit.offsetX!)
            const unitDist = math.sqrt(editedUnit.offsetX! ** 2 + editedUnit.offsetY! ** 2)

            const newX =
                math.cos((unitAng + offsetAng) % (math.pi * 2)) * unitDist + context.pivotPos.x
            const newY =
                math.sin((unitAng + offsetAng) % (math.pi * 2)) * unitDist + context.pivotPos.y

            editedUnit.unit.x = newX
            editedUnit.unit.y = newY

            const newUnitFacing =
                (((editedUnit.originalFacing! + offsetAng) % (math.pi * 2)) * 180) / math.pi

            editedUnit.unit.facing = newUnitFacing

            editedUnit.unit.issueSelfOrder("stop")
        }
    } else if (context.editMode == EditMode.SCALE) {
        const dx = context.pivotPos.x - context.currentMousePos.x
        const dy = context.pivotPos.y - context.currentMousePos.y

        const newMag = math.sqrt(dx ** 2 + dy ** 2)
        const scale = newMag / context.startMouseMag!

        for (const editedUnit of context.editedUnits) {
            editedUnit.unit.size = editedUnit.originalScale! * scale
            editedUnit.unit.x = context.pivotPos.x + editedUnit.offsetX! * scale
            editedUnit.unit.y = context.pivotPos.y + editedUnit.offsetY! * scale
            editedUnit.unit.z = editedUnit.originalHeight! * scale

            editedUnit.unit.issueSelfOrder("stop")
        }
    } else if (context.editMode == EditMode.HEIGHT) {
        let minHeight = math.huge
        for (const editedUnit of context.editedUnits) {
            minHeight = math.min(minHeight, editedUnit.originalHeight!)
        }

        const dy = math.min(minHeight, context.pivotPos.y - context.currentMousePos.y)

        for (const editedUnit of context.editedUnits) {
            editedUnit.unit.z = editedUnit.originalHeight! - dy / 1.5

            editedUnit.unit.issueSelfOrder("stop")
        }
    }
})

function editorEnabler(type: EditMode): (p: Player) => void {
    return (p): void => {
        const context = contexts[p.id]

        if (context.editMode == type) {
            context.editMode = EditMode.NONE
        } else {
            enableEditorMode(p, type)
        }
    }
}

registerKeyEvent(OSKEY_Q, ModKey.None, false, editorEnabler(EditMode.MOVE))
registerKeyEvent(OSKEY_W, ModKey.None, false, editorEnabler(EditMode.ROTATE))
registerKeyEvent(OSKEY_E, ModKey.None, false, editorEnabler(EditMode.SCALE))
registerKeyEvent(OSKEY_R, ModKey.None, false, editorEnabler(EditMode.HEIGHT))

// instant build
U.OrderPoint.register((builder, orderId, x, y) => {
    // build orders have a non-zero first octet
    if (orderId >>> 24 > 0) {
        const built = Unit.create(builder.owner, orderId, x, y, 270)
        built.x = x
        built.y = y

        Timer.simple(0, () => {
            builder.issueSelfOrder("stop")
        })
    }
})
