import "cerrie/core/idgen"

interface ObjectConstructor {
    [index: string]: string | number | undefined
}

namespace objutilNamespace {
    export enum ObjectType {
        ABILITY,
        ITEM,
        UNIT,
        DESTRUCTABLE,
        DOODAD,
        BUFF,
        UPGRADE
    }

    function war3objectsForType(objects: WarMapObjects, objectType: ObjectType): WarObjects {
        switch (objectType) {
            case ObjectType.ABILITY:
                return objects.ability
            case ObjectType.ITEM:
                return objects.item
            case ObjectType.UNIT:
                return objects.unit
            case ObjectType.DESTRUCTABLE:
                return objects.destructable
            case ObjectType.DOODAD:
                return objects.doodad
            case ObjectType.BUFF:
                return objects.buff
            case ObjectType.UPGRADE:
                return objects.upgrade
        }
    }

    function idForType(objectType: ObjectType): string {
        switch (objectType) {
            case ObjectType.ABILITY:
                return idgen.abil()
            case ObjectType.ITEM:
                return idgen.item()
            case ObjectType.UNIT:
                return idgen.unit()
            case ObjectType.DESTRUCTABLE:
                return idgen.dest()
            case ObjectType.DOODAD:
                return idgen.dood()
            case ObjectType.BUFF:
                return idgen.buff()
            case ObjectType.UPGRADE:
                return idgen.upgd()
        }
    }

    export function createObject(
        objectType: ObjectType,
        base: string,
        ctor: ObjectConstructor
    ): WarObject {
        if (!currentMap) {
            error("objects can only be created when a map is active")
        }

        const objects = war3objectsForType(currentMap.objects, objectType)
        const id = idForType(objectType)
        const clone = objects.getObject(base).clone()

        for (const [field, value] of pairs(ctor)) {
            clone.setField(field as string, value)
        }

        objects.setObject(id, clone)
        return objects.getObject(id)
    }
}

declare global {
    const objutil: typeof objutilNamespace
}
;(_G as any).objutil = objutilNamespace

if (!ceres.compiletime) {
    compiletime(() => {
        require("yarp.objutil")
    })
}

export {}
