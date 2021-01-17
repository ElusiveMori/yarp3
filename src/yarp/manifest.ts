import "cerrie/core/idgen"
import "./objutil"
import { Unit } from "cerrie/core/types/unit"
import { Player } from "cerrie/core/types/player"
import { sysMessage } from "./log"

interface RegistryUnit {
    uid: string
    name: string
    model: string
    icon?: string
    scale?: number
}

interface DecoBuilder extends TypedRegistryUnit {
    built: TypedRegistryUnit[]
}

interface TypedRegistryUnit extends RegistryUnit {
    type: string
}

interface ShopData extends RegistryUnit {
    sold: TypedRegistryUnit[]
}

interface ShopSection {
    [idx: string]: ShopData
}

interface ShopsData {
    [idx: string]: ShopSection
}

interface RegistryData {
    shops: ShopsData
}

export interface ManifestShop {
    uid: string
    id: string
}

export interface ManifestUnitInfo {
    id: string
    uid?: string
    model: string
    scale: number
}

export interface Manifest {
    shops: ManifestShop[]
    unitInfos: ManifestUnitInfo[]
}

function unpackUnitInfo(o: any): void {
    let i = 1
    for (const n of MF_PACKED_ORDER) {
        o[n] = o[i]
        o[i] = undefined
        i++
    }
}

const [manifest, MF_PACKED_ORDER] = compiletime(() => {
    const clockStart = os.clock()

    const MF_PACKED_ORDER = ["id", "model", "scale", "uid"]
    if (!currentMap) {
        error("crikey")
    }

    const DEFAULT_PATHING_MAP = "pathtextures/2x2default.tga"
    const UNIT_BASE = "ncrb" // crab
    const BUILDING_BASE = "hhou" // farm

    function isDecoBuilder(what: TypedRegistryUnit): what is DecoBuilder {
        return what.type == "builder"
    }

    function isDecoration(what: TypedRegistryUnit): boolean {
        return what.type == "building"
    }

    const json = require("json") as {
        encode: (this: void, value: any) => string
        decode: (this: void, input: string) => any
    }

    function packUnitInfo(o: any): void {
        let i = 1
        for (const n of MF_PACKED_ORDER) {
            o[i] = o[n]
            o[n] = undefined
            i++
        }
    }

    const unitInfos: ManifestUnitInfo[] = []
    const shops: ManifestShop[] = []
    const [data] = fs.readFile("data.json")
    const dataObj = json.decode(data as string) as RegistryData

    function addUnitInfo(object: WarObject, uid?: string): void {
        const [model] = string.gsub(object.getField("file") as string, "%\\", "%/")

        unitInfos.push({
            id: object.id,
            model: model,
            uid: uid,
            scale: object.getField("modelScale") as number
        })
    }

    function prepareBuildingForFlying(building: WarObject): void {
        const [isAncient] = string.find(building.getField("type") as string, "ancient")
        const isBuilding = building.getField("isbldg") == 1
        if (isBuilding && !isAncient) {
            building.setField("spd", 1)
        }
    }

    const peasantModel = currentMap?.objects.unit.getObject("hpea").getField("file") as string

    for (const [, section] of pairs(dataObj.shops)) {
        for (const [, shop] of ipairs(section)) {
            if ((shop as any).nextRow) {
                continue
            }

            const shopUnit = objutil.createObject(objutil.ObjectType.UNIT, BUILDING_BASE, {
                Name: shop.name,
                file: shop.model,
                modelScale: shop.scale!,
                uico: shop.icon,
                abilList: "Avul",
                pathTex: DEFAULT_PATHING_MAP,
                uberSplat: "",
                buildingShadow: "_"
            })

            const soldList: string[] = []
            for (const [, sold] of ipairs(shop.sold || {})) {
                const unit = objutil.createObject(objutil.ObjectType.UNIT, UNIT_BASE, {
                    Tip: sold.name,
                    Ubertip: "",
                    Name: sold.name,
                    file: sold.model,
                    stockMax: 1,
                    stockStart: 1,
                    stockRegen: 0,
                    spd: 256,
                    walk: 256,
                    run: 256,
                    abilList: "",
                    uico: sold.icon
                })

                if (isDecoBuilder(sold)) {
                    const builtList: string[] = []

                    for (const [, built] of ipairs(sold.built)) {
                        const builtUnit = objutil.createObject(objutil.ObjectType.UNIT, UNIT_BASE, {
                            Tip: built.name,
                            Ubertip: "",
                            Name: built.name,
                            file: built.model,
                            abilList: "",
                            uico: built.icon,
                            pathTex: DEFAULT_PATHING_MAP,
                            isbldg: 1,
                            spd: 1
                        })

                        prepareBuildingForFlying(builtUnit)
                        builtList.push(builtUnit.id)
                        addUnitInfo(builtUnit, built.uid)
                    }

                    unit.setField("Builds", table.concat(builtList, ","))
                    unit.setField("file", peasantModel)
                    unit.setField("spd", 522)
                }

                soldList.push(unit.id)
                addUnitInfo(unit, sold.uid)
            }

            shopUnit.setField("Sellunits", table.concat(soldList, ","))

            shops.push({
                uid: shop.uid,
                id: shopUnit.id
            })
        }
    }

    for (const [, unit] of pairs(currentMap.objects.unit.all)) {
        const isBuilding = unit.getField("isbldg") == 1

        if (unit.parentId == undefined) {
            addUnitInfo(unit)
            prepareBuildingForFlying(unit)
        }

        unit.setField("elevPts", 0)
        unit.setField("elevRad", 0)

        if (isBuilding) {
            unit.setField("maxPitch", 0)
            unit.setField("maxRoll", 0)
        }
    }

    for (const unitInfo of unitInfos) {
        packUnitInfo(unitInfo)
    }

    print(`generating metadata took ${math.floor((os.clock() - clockStart) * 1000)}ms`)

    return [
        {
            shops: shops,
            unitInfos: unitInfos
        },
        MF_PACKED_ORDER
    ]
})

for (const unitInfo of manifest.unitInfos) {
    unpackUnitInfo(unitInfo)
}

export { manifest }

let x = -2048 - 512
let y = -2048
for (const shop of manifest.shops) {
    util.reloadCleanup(Unit.create(Player.neutralExtra(), shop.id, x, y, 270))
    x += 192

    if (x >= 2048) {
        x = -2048 - 512
        y -= 192
    }
}

for (const player of Player.all) {
    SetPlayerAlliance(Player.neutralExtra().handle, player.handle, ALLIANCE_SHARED_CONTROL, true)
    SetPlayerAlliance(
        Player.neutralExtra().handle,
        player.handle,
        ALLIANCE_SHARED_ADVANCED_CONTROL,
        true
    )

    SetPlayerAlliance(Player.neutralExtra().handle, player.handle, ALLIANCE_SHARED_VISION, true)
}
