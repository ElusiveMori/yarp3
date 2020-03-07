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

const shops = compiletime(() => {
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

    const shops: { uid: string; id: string }[] = []
    const [data] = fs.readFile("data.json") as string
    const dataObj = json.decode(data) as RegistryData

    const peaModel = currentMap?.objects.unit.getObject("hpea").getField("file") as string

    for (const [, section] of pairs(dataObj.shops)) {
        for (const [, shop] of ipairs(section)) {
            if ((shop as any).nextRow) {
                continue
            }

            const shopUnit = objutil.createObject(objutil.ObjectType.UNIT, "hhou", {
                Name: shop.name,
                file: shop.model,
                modelScale: shop.scale!,
                uico: shop.icon,
                abilList: "Avul",
                pathTex: "pathtextures/2x2default.tga",
                uberSplat: "",
                buildingShadow: "_"
            })

            const soldList: string[] = []
            for (const [, sold] of ipairs(shop.sold || {})) {
                const unit = objutil.createObject(objutil.ObjectType.UNIT, "ncrb", {
                    Tip: sold.name,
                    Ubertip: "",
                    Name: sold.name,
                    file: sold.model,
                    stockMax: 1,
                    stockStart: 1,
                    stockRegen: 0,
                    spd: 200,
                    walk: 1,
                    run: 1,
                    abilList: "",
                    uico: sold.icon
                })

                if (isDecoBuilder(sold)) {
                    const builtList: string[] = []

                    for (const [, built] of ipairs(sold.built)) {
                        const builtUnit = objutil.createObject(objutil.ObjectType.UNIT, "ncrb", {
                            Tip: built.name,
                            Ubertip: "",
                            Name: built.name,
                            file: built.model,
                            abilList: "",
                            uico: built.icon,
                            pathTex: "pathtextures/2x2default.tga",
                            isbldg: 1
                        })

                        builtList.push(builtUnit.id)
                    }

                    unit.setField("Builds", table.concat(builtList, ","))
                    unit.setField("file", peaModel)
                    unit.setField("spd", 522)
                } else {
                    //
                }

                soldList.push(unit.id)
            }

            shopUnit.setField("Sellunits", table.concat(soldList, ","))

            shops.push({
                uid: shop.uid,
                id: shopUnit.id
            })
        }
    }

    return shops
})

let x = -2048 - 512
let y = -2048
for (const shop of shops) {
    util.reloadCleanup(Unit.create(Player.neutralExtra(), shop.id, x, y, 90))
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
