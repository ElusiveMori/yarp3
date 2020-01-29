local function x(...) end
---@class jhandle
local jhandle
---@class jagent:jhandle
local jagent
---@class jevent:jagent
local jevent
---@class jplayer:jagent
local jplayer
---@class jwidget:jagent
local jwidget
---@class junit:jwidget
local junit
---@class jdestructable:jwidget
local jdestructable
---@class jitem:jwidget
local jitem
---@class jability:jagent
local jability
---@class jbuff:jability
local jbuff
---@class jforce:jagent
local jforce
---@class jgroup:jagent
local jgroup
---@class jtrigger:jagent
local jtrigger
---@class jtriggercondition:jagent
local jtriggercondition
---@class jtriggeraction:jhandle
local jtriggeraction
---@class jtimer:jagent
local jtimer
---@class jlocation:jagent
local jlocation
---@class jregion:jagent
local jregion
---@class jrect:jagent
local jrect
---@class jboolexpr:jagent
local jboolexpr
---@class jsound:jagent
local jsound
---@class jconditionfunc:jboolexpr
local jconditionfunc
---@class jfilterfunc:jboolexpr
local jfilterfunc
---@class junitpool:jhandle
local junitpool
---@class jitempool:jhandle
local jitempool
---@class jrace:jhandle
local jrace
---@class jalliancetype:jhandle
local jalliancetype
---@class jracepreference:jhandle
local jracepreference
---@class jgamestate:jhandle
local jgamestate
---@class jigamestate:jgamestate
local jigamestate
---@class jfgamestate:jgamestate
local jfgamestate
---@class jplayerstate:jhandle
local jplayerstate
---@class jplayerscore:jhandle
local jplayerscore
---@class jplayergameresult:jhandle
local jplayergameresult
---@class junitstate:jhandle
local junitstate
---@class jaidifficulty:jhandle
local jaidifficulty
---@class jeventid:jhandle
local jeventid
---@class jgameevent:jeventid
local jgameevent
---@class jplayerevent:jeventid
local jplayerevent
---@class jplayerunitevent:jeventid
local jplayerunitevent
---@class junitevent:jeventid
local junitevent
---@class jlimitop:jeventid
local jlimitop
---@class jwidgetevent:jeventid
local jwidgetevent
---@class jdialogevent:jeventid
local jdialogevent
---@class junittype:jhandle
local junittype
---@class jgamespeed:jhandle
local jgamespeed
---@class jgamedifficulty:jhandle
local jgamedifficulty
---@class jgametype:jhandle
local jgametype
---@class jmapflag:jhandle
local jmapflag
---@class jmapvisibility:jhandle
local jmapvisibility
---@class jmapsetting:jhandle
local jmapsetting
---@class jmapdensity:jhandle
local jmapdensity
---@class jmapcontrol:jhandle
local jmapcontrol
---@class jplayerslotstate:jhandle
local jplayerslotstate
---@class jvolumegroup:jhandle
local jvolumegroup
---@class jcamerafield:jhandle
local jcamerafield
---@class jcamerasetup:jhandle
local jcamerasetup
---@class jplayercolor:jhandle
local jplayercolor
---@class jplacement:jhandle
local jplacement
---@class jstartlocprio:jhandle
local jstartlocprio
---@class jraritycontrol:jhandle
local jraritycontrol
---@class jblendmode:jhandle
local jblendmode
---@class jtexmapflags:jhandle
local jtexmapflags
---@class jeffect:jagent
local jeffect
---@class jeffecttype:jhandle
local jeffecttype
---@class jweathereffect:jhandle
local jweathereffect
---@class jterraindeformation:jhandle
local jterraindeformation
---@class jfogstate:jhandle
local jfogstate
---@class jfogmodifier:jagent
local jfogmodifier
---@class jdialog:jagent
local jdialog
---@class jbutton:jagent
local jbutton
---@class jquest:jagent
local jquest
---@class jquestitem:jagent
local jquestitem
---@class jdefeatcondition:jagent
local jdefeatcondition
---@class jtimerdialog:jagent
local jtimerdialog
---@class jleaderboard:jagent
local jleaderboard
---@class jmultiboard:jagent
local jmultiboard
---@class jmultiboarditem:jagent
local jmultiboarditem
---@class jtrackable:jagent
local jtrackable
---@class jgamecache:jagent
local jgamecache
---@class jversion:jhandle
local jversion
---@class jitemtype:jhandle
local jitemtype
---@class jtexttag:jhandle
local jtexttag
---@class jattacktype:jhandle
local jattacktype
---@class jdamagetype:jhandle
local jdamagetype
---@class jweapontype:jhandle
local jweapontype
---@class jsoundtype:jhandle
local jsoundtype
---@class jlightning:jhandle
local jlightning
---@class jpathingtype:jhandle
local jpathingtype
---@class jmousebuttontype:jhandle
local jmousebuttontype
---@class janimtype:jhandle
local janimtype
---@class jsubanimtype:jhandle
local jsubanimtype
---@class jimage:jhandle
local jimage
---@class jubersplat:jhandle
local jubersplat
---@class jhashtable:jagent
local jhashtable
---@class jframehandle:jhandle
local jframehandle
---@class joriginframetype:jhandle
local joriginframetype
---@class jframepointtype:jhandle
local jframepointtype
---@class jtextaligntype:jhandle
local jtextaligntype
---@class jframeeventtype:jhandle
local jframeeventtype
---@class joskeytype:jhandle
local joskeytype
---@class jabilityintegerfield:jhandle
local jabilityintegerfield
---@class jabilityrealfield:jhandle
local jabilityrealfield
---@class jabilitybooleanfield:jhandle
local jabilitybooleanfield
---@class jabilitystringfield:jhandle
local jabilitystringfield
---@class jabilityintegerlevelfield:jhandle
local jabilityintegerlevelfield
---@class jabilityreallevelfield:jhandle
local jabilityreallevelfield
---@class jabilitybooleanlevelfield:jhandle
local jabilitybooleanlevelfield
---@class jabilitystringlevelfield:jhandle
local jabilitystringlevelfield
---@class jabilityintegerlevelarrayfield:jhandle
local jabilityintegerlevelarrayfield
---@class jabilityreallevelarrayfield:jhandle
local jabilityreallevelarrayfield
---@class jabilitybooleanlevelarrayfield:jhandle
local jabilitybooleanlevelarrayfield
---@class jabilitystringlevelarrayfield:jhandle
local jabilitystringlevelarrayfield
---@class junitintegerfield:jhandle
local junitintegerfield
---@class junitrealfield:jhandle
local junitrealfield
---@class junitbooleanfield:jhandle
local junitbooleanfield
---@class junitstringfield:jhandle
local junitstringfield
---@class junitweaponintegerfield:jhandle
local junitweaponintegerfield
---@class junitweaponrealfield:jhandle
local junitweaponrealfield
---@class junitweaponbooleanfield:jhandle
local junitweaponbooleanfield
---@class junitweaponstringfield:jhandle
local junitweaponstringfield
---@class jitemintegerfield:jhandle
local jitemintegerfield
---@class jitemrealfield:jhandle
local jitemrealfield
---@class jitembooleanfield:jhandle
local jitembooleanfield
---@class jitemstringfield:jhandle
local jitemstringfield
---@class jmovetype:jhandle
local jmovetype
---@class jtargetflag:jhandle
local jtargetflag
---@class jarmortype:jhandle
local jarmortype
---@class jheroattribute:jhandle
local jheroattribute
---@class jdefensetype:jhandle
local jdefensetype
---@class jregentype:jhandle
local jregentype
---@class junitcategory:jhandle
local junitcategory
---@class jpathingflag:jhandle
local jpathingflag
---@param i number
---@return jrace
function ConvertRace(i) x(i) end
---@param i number
---@return jalliancetype
function ConvertAllianceType(i) x(i) end
---@param i number
---@return jracepreference
function ConvertRacePref(i) x(i) end
---@param i number
---@return jigamestate
function ConvertIGameState(i) x(i) end
---@param i number
---@return jfgamestate
function ConvertFGameState(i) x(i) end
---@param i number
---@return jplayerstate
function ConvertPlayerState(i) x(i) end
---@param i number
---@return jplayerscore
function ConvertPlayerScore(i) x(i) end
---@param i number
---@return jplayergameresult
function ConvertPlayerGameResult(i) x(i) end
---@param i number
---@return junitstate
function ConvertUnitState(i) x(i) end
---@param i number
---@return jaidifficulty
function ConvertAIDifficulty(i) x(i) end
---@param i number
---@return jgameevent
function ConvertGameEvent(i) x(i) end
---@param i number
---@return jplayerevent
function ConvertPlayerEvent(i) x(i) end
---@param i number
---@return jplayerunitevent
function ConvertPlayerUnitEvent(i) x(i) end
---@param i number
---@return jwidgetevent
function ConvertWidgetEvent(i) x(i) end
---@param i number
---@return jdialogevent
function ConvertDialogEvent(i) x(i) end
---@param i number
---@return junitevent
function ConvertUnitEvent(i) x(i) end
---@param i number
---@return jlimitop
function ConvertLimitOp(i) x(i) end
---@param i number
---@return junittype
function ConvertUnitType(i) x(i) end
---@param i number
---@return jgamespeed
function ConvertGameSpeed(i) x(i) end
---@param i number
---@return jplacement
function ConvertPlacement(i) x(i) end
---@param i number
---@return jstartlocprio
function ConvertStartLocPrio(i) x(i) end
---@param i number
---@return jgamedifficulty
function ConvertGameDifficulty(i) x(i) end
---@param i number
---@return jgametype
function ConvertGameType(i) x(i) end
---@param i number
---@return jmapflag
function ConvertMapFlag(i) x(i) end
---@param i number
---@return jmapvisibility
function ConvertMapVisibility(i) x(i) end
---@param i number
---@return jmapsetting
function ConvertMapSetting(i) x(i) end
---@param i number
---@return jmapdensity
function ConvertMapDensity(i) x(i) end
---@param i number
---@return jmapcontrol
function ConvertMapControl(i) x(i) end
---@param i number
---@return jplayercolor
function ConvertPlayerColor(i) x(i) end
---@param i number
---@return jplayerslotstate
function ConvertPlayerSlotState(i) x(i) end
---@param i number
---@return jvolumegroup
function ConvertVolumeGroup(i) x(i) end
---@param i number
---@return jcamerafield
function ConvertCameraField(i) x(i) end
---@param i number
---@return jblendmode
function ConvertBlendMode(i) x(i) end
---@param i number
---@return jraritycontrol
function ConvertRarityControl(i) x(i) end
---@param i number
---@return jtexmapflags
function ConvertTexMapFlags(i) x(i) end
---@param i number
---@return jfogstate
function ConvertFogState(i) x(i) end
---@param i number
---@return jeffecttype
function ConvertEffectType(i) x(i) end
---@param i number
---@return jversion
function ConvertVersion(i) x(i) end
---@param i number
---@return jitemtype
function ConvertItemType(i) x(i) end
---@param i number
---@return jattacktype
function ConvertAttackType(i) x(i) end
---@param i number
---@return jdamagetype
function ConvertDamageType(i) x(i) end
---@param i number
---@return jweapontype
function ConvertWeaponType(i) x(i) end
---@param i number
---@return jsoundtype
function ConvertSoundType(i) x(i) end
---@param i number
---@return jpathingtype
function ConvertPathingType(i) x(i) end
---@param i number
---@return jmousebuttontype
function ConvertMouseButtonType(i) x(i) end
---@param i number
---@return janimtype
function ConvertAnimType(i) x(i) end
---@param i number
---@return jsubanimtype
function ConvertSubAnimType(i) x(i) end
---@param i number
---@return joriginframetype
function ConvertOriginFrameType(i) x(i) end
---@param i number
---@return jframepointtype
function ConvertFramePointType(i) x(i) end
---@param i number
---@return jtextaligntype
function ConvertTextAlignType(i) x(i) end
---@param i number
---@return jframeeventtype
function ConvertFrameEventType(i) x(i) end
---@param i number
---@return joskeytype
function ConvertOsKeyType(i) x(i) end
---@param i number
---@return jabilityintegerfield
function ConvertAbilityIntegerField(i) x(i) end
---@param i number
---@return jabilityrealfield
function ConvertAbilityRealField(i) x(i) end
---@param i number
---@return jabilitybooleanfield
function ConvertAbilityBooleanField(i) x(i) end
---@param i number
---@return jabilitystringfield
function ConvertAbilityStringField(i) x(i) end
---@param i number
---@return jabilityintegerlevelfield
function ConvertAbilityIntegerLevelField(i) x(i) end
---@param i number
---@return jabilityreallevelfield
function ConvertAbilityRealLevelField(i) x(i) end
---@param i number
---@return jabilitybooleanlevelfield
function ConvertAbilityBooleanLevelField(i) x(i) end
---@param i number
---@return jabilitystringlevelfield
function ConvertAbilityStringLevelField(i) x(i) end
---@param i number
---@return jabilityintegerlevelarrayfield
function ConvertAbilityIntegerLevelArrayField(i) x(i) end
---@param i number
---@return jabilityreallevelarrayfield
function ConvertAbilityRealLevelArrayField(i) x(i) end
---@param i number
---@return jabilitybooleanlevelarrayfield
function ConvertAbilityBooleanLevelArrayField(i) x(i) end
---@param i number
---@return jabilitystringlevelarrayfield
function ConvertAbilityStringLevelArrayField(i) x(i) end
---@param i number
---@return junitintegerfield
function ConvertUnitIntegerField(i) x(i) end
---@param i number
---@return junitrealfield
function ConvertUnitRealField(i) x(i) end
---@param i number
---@return junitbooleanfield
function ConvertUnitBooleanField(i) x(i) end
---@param i number
---@return junitstringfield
function ConvertUnitStringField(i) x(i) end
---@param i number
---@return junitweaponintegerfield
function ConvertUnitWeaponIntegerField(i) x(i) end
---@param i number
---@return junitweaponrealfield
function ConvertUnitWeaponRealField(i) x(i) end
---@param i number
---@return junitweaponbooleanfield
function ConvertUnitWeaponBooleanField(i) x(i) end
---@param i number
---@return junitweaponstringfield
function ConvertUnitWeaponStringField(i) x(i) end
---@param i number
---@return jitemintegerfield
function ConvertItemIntegerField(i) x(i) end
---@param i number
---@return jitemrealfield
function ConvertItemRealField(i) x(i) end
---@param i number
---@return jitembooleanfield
function ConvertItemBooleanField(i) x(i) end
---@param i number
---@return jitemstringfield
function ConvertItemStringField(i) x(i) end
---@param i number
---@return jmovetype
function ConvertMoveType(i) x(i) end
---@param i number
---@return jtargetflag
function ConvertTargetFlag(i) x(i) end
---@param i number
---@return jarmortype
function ConvertArmorType(i) x(i) end
---@param i number
---@return jheroattribute
function ConvertHeroAttribute(i) x(i) end
---@param i number
---@return jdefensetype
function ConvertDefenseType(i) x(i) end
---@param i number
---@return jregentype
function ConvertRegenType(i) x(i) end
---@param i number
---@return junitcategory
function ConvertUnitCategory(i) x(i) end
---@param i number
---@return jpathingflag
function ConvertPathingFlag(i) x(i) end
---@param orderIdString string
---@return number
function OrderId(orderIdString) x(orderIdString) end
---@param orderId number
---@return string
function OrderId2String(orderId) x(orderId) end
---@param unitIdString string
---@return number
function UnitId(unitIdString) x(unitIdString) end
---@param unitId number
---@return string
function UnitId2String(unitId) x(unitId) end
---@param abilityIdString string
---@return number
function AbilityId(abilityIdString) x(abilityIdString) end
---@param abilityId number
---@return string
function AbilityId2String(abilityId) x(abilityId) end
---@param objectId number
---@return string
function GetObjectName(objectId) x(objectId) end
---@return number
function GetBJMaxPlayers()  end
---@return number
function GetBJPlayerNeutralVictim()  end
---@return number
function GetBJPlayerNeutralExtra()  end
---@return number
function GetBJMaxPlayerSlots()  end
---@return number
function GetPlayerNeutralPassive()  end
---@return number
function GetPlayerNeutralAggressive()  end
---@type boolean
_G.FALSE = nil
---@type boolean
_G.TRUE = nil
---@type number
_G.JASS_MAX_ARRAY_SIZE = nil
---@type number
_G.PLAYER_NEUTRAL_PASSIVE = nil
---@type number
_G.PLAYER_NEUTRAL_AGGRESSIVE = nil
---@type jplayercolor
_G.PLAYER_COLOR_RED = nil
---@type jplayercolor
_G.PLAYER_COLOR_BLUE = nil
---@type jplayercolor
_G.PLAYER_COLOR_CYAN = nil
---@type jplayercolor
_G.PLAYER_COLOR_PURPLE = nil
---@type jplayercolor
_G.PLAYER_COLOR_YELLOW = nil
---@type jplayercolor
_G.PLAYER_COLOR_ORANGE = nil
---@type jplayercolor
_G.PLAYER_COLOR_GREEN = nil
---@type jplayercolor
_G.PLAYER_COLOR_PINK = nil
---@type jplayercolor
_G.PLAYER_COLOR_LIGHT_GRAY = nil
---@type jplayercolor
_G.PLAYER_COLOR_LIGHT_BLUE = nil
---@type jplayercolor
_G.PLAYER_COLOR_AQUA = nil
---@type jplayercolor
_G.PLAYER_COLOR_BROWN = nil
---@type jplayercolor
_G.PLAYER_COLOR_MAROON = nil
---@type jplayercolor
_G.PLAYER_COLOR_NAVY = nil
---@type jplayercolor
_G.PLAYER_COLOR_TURQUOISE = nil
---@type jplayercolor
_G.PLAYER_COLOR_VIOLET = nil
---@type jplayercolor
_G.PLAYER_COLOR_WHEAT = nil
---@type jplayercolor
_G.PLAYER_COLOR_PEACH = nil
---@type jplayercolor
_G.PLAYER_COLOR_MINT = nil
---@type jplayercolor
_G.PLAYER_COLOR_LAVENDER = nil
---@type jplayercolor
_G.PLAYER_COLOR_COAL = nil
---@type jplayercolor
_G.PLAYER_COLOR_SNOW = nil
---@type jplayercolor
_G.PLAYER_COLOR_EMERALD = nil
---@type jplayercolor
_G.PLAYER_COLOR_PEANUT = nil
---@type jrace
_G.RACE_HUMAN = nil
---@type jrace
_G.RACE_ORC = nil
---@type jrace
_G.RACE_UNDEAD = nil
---@type jrace
_G.RACE_NIGHTELF = nil
---@type jrace
_G.RACE_DEMON = nil
---@type jrace
_G.RACE_OTHER = nil
---@type jplayergameresult
_G.PLAYER_GAME_RESULT_VICTORY = nil
---@type jplayergameresult
_G.PLAYER_GAME_RESULT_DEFEAT = nil
---@type jplayergameresult
_G.PLAYER_GAME_RESULT_TIE = nil
---@type jplayergameresult
_G.PLAYER_GAME_RESULT_NEUTRAL = nil
---@type jalliancetype
_G.ALLIANCE_PASSIVE = nil
---@type jalliancetype
_G.ALLIANCE_HELP_REQUEST = nil
---@type jalliancetype
_G.ALLIANCE_HELP_RESPONSE = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_XP = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_SPELLS = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_VISION = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_CONTROL = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_ADVANCED_CONTROL = nil
---@type jalliancetype
_G.ALLIANCE_RESCUABLE = nil
---@type jalliancetype
_G.ALLIANCE_SHARED_VISION_FORCED = nil
---@type jversion
_G.VERSION_REIGN_OF_CHAOS = nil
---@type jversion
_G.VERSION_FROZEN_THRONE = nil
---@type jattacktype
_G.ATTACK_TYPE_NORMAL = nil
---@type jattacktype
_G.ATTACK_TYPE_MELEE = nil
---@type jattacktype
_G.ATTACK_TYPE_PIERCE = nil
---@type jattacktype
_G.ATTACK_TYPE_SIEGE = nil
---@type jattacktype
_G.ATTACK_TYPE_MAGIC = nil
---@type jattacktype
_G.ATTACK_TYPE_CHAOS = nil
---@type jattacktype
_G.ATTACK_TYPE_HERO = nil
---@type jdamagetype
_G.DAMAGE_TYPE_UNKNOWN = nil
---@type jdamagetype
_G.DAMAGE_TYPE_NORMAL = nil
---@type jdamagetype
_G.DAMAGE_TYPE_ENHANCED = nil
---@type jdamagetype
_G.DAMAGE_TYPE_FIRE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_COLD = nil
---@type jdamagetype
_G.DAMAGE_TYPE_LIGHTNING = nil
---@type jdamagetype
_G.DAMAGE_TYPE_POISON = nil
---@type jdamagetype
_G.DAMAGE_TYPE_DISEASE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_DIVINE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_MAGIC = nil
---@type jdamagetype
_G.DAMAGE_TYPE_SONIC = nil
---@type jdamagetype
_G.DAMAGE_TYPE_ACID = nil
---@type jdamagetype
_G.DAMAGE_TYPE_FORCE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_DEATH = nil
---@type jdamagetype
_G.DAMAGE_TYPE_MIND = nil
---@type jdamagetype
_G.DAMAGE_TYPE_PLANT = nil
---@type jdamagetype
_G.DAMAGE_TYPE_DEFENSIVE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_DEMOLITION = nil
---@type jdamagetype
_G.DAMAGE_TYPE_SLOW_POISON = nil
---@type jdamagetype
_G.DAMAGE_TYPE_SPIRIT_LINK = nil
---@type jdamagetype
_G.DAMAGE_TYPE_SHADOW_STRIKE = nil
---@type jdamagetype
_G.DAMAGE_TYPE_UNIVERSAL = nil
---@type jweapontype
_G.WEAPON_TYPE_WHOKNOWS = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_LIGHT_CHOP = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_MEDIUM_CHOP = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_HEAVY_CHOP = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_LIGHT_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_MEDIUM_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_HEAVY_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_MEDIUM_BASH = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_HEAVY_BASH = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_MEDIUM_STAB = nil
---@type jweapontype
_G.WEAPON_TYPE_METAL_HEAVY_STAB = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_LIGHT_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_MEDIUM_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_HEAVY_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_LIGHT_BASH = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_MEDIUM_BASH = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_HEAVY_BASH = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_LIGHT_STAB = nil
---@type jweapontype
_G.WEAPON_TYPE_WOOD_MEDIUM_STAB = nil
---@type jweapontype
_G.WEAPON_TYPE_CLAW_LIGHT_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_CLAW_MEDIUM_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_CLAW_HEAVY_SLICE = nil
---@type jweapontype
_G.WEAPON_TYPE_AXE_MEDIUM_CHOP = nil
---@type jweapontype
_G.WEAPON_TYPE_ROCK_HEAVY_BASH = nil
---@type jpathingtype
_G.PATHING_TYPE_ANY = nil
---@type jpathingtype
_G.PATHING_TYPE_WALKABILITY = nil
---@type jpathingtype
_G.PATHING_TYPE_FLYABILITY = nil
---@type jpathingtype
_G.PATHING_TYPE_BUILDABILITY = nil
---@type jpathingtype
_G.PATHING_TYPE_PEONHARVESTPATHING = nil
---@type jpathingtype
_G.PATHING_TYPE_BLIGHTPATHING = nil
---@type jpathingtype
_G.PATHING_TYPE_FLOATABILITY = nil
---@type jpathingtype
_G.PATHING_TYPE_AMPHIBIOUSPATHING = nil
---@type jmousebuttontype
_G.MOUSE_BUTTON_TYPE_LEFT = nil
---@type jmousebuttontype
_G.MOUSE_BUTTON_TYPE_MIDDLE = nil
---@type jmousebuttontype
_G.MOUSE_BUTTON_TYPE_RIGHT = nil
---@type janimtype
_G.ANIM_TYPE_BIRTH = nil
---@type janimtype
_G.ANIM_TYPE_DEATH = nil
---@type janimtype
_G.ANIM_TYPE_DECAY = nil
---@type janimtype
_G.ANIM_TYPE_DISSIPATE = nil
---@type janimtype
_G.ANIM_TYPE_STAND = nil
---@type janimtype
_G.ANIM_TYPE_WALK = nil
---@type janimtype
_G.ANIM_TYPE_ATTACK = nil
---@type janimtype
_G.ANIM_TYPE_MORPH = nil
---@type janimtype
_G.ANIM_TYPE_SLEEP = nil
---@type janimtype
_G.ANIM_TYPE_SPELL = nil
---@type janimtype
_G.ANIM_TYPE_PORTRAIT = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_ROOTED = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_ALTERNATE_EX = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_LOOPING = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SLAM = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_THROW = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SPIKED = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FAST = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SPIN = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_READY = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_CHANNEL = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_DEFEND = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_VICTORY = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_TURN = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_LEFT = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_RIGHT = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FIRE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FLESH = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_HIT = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_WOUNDED = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_LIGHT = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_MODERATE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SEVERE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_CRITICAL = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_COMPLETE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_GOLD = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_LUMBER = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_WORK = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_TALK = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FIRST = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SECOND = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_THIRD = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FOURTH = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FIFTH = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_ONE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_TWO = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_THREE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FOUR = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FIVE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SMALL = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_MEDIUM = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_LARGE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_UPGRADE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_DRAIN = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FILL = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_CHAINLIGHTNING = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_EATTREE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_PUKE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_FLAIL = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_OFF = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_SWIM = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_ENTANGLE = nil
---@type jsubanimtype
_G.SUBANIM_TYPE_BERSERK = nil
---@type jracepreference
_G.RACE_PREF_HUMAN = nil
---@type jracepreference
_G.RACE_PREF_ORC = nil
---@type jracepreference
_G.RACE_PREF_NIGHTELF = nil
---@type jracepreference
_G.RACE_PREF_UNDEAD = nil
---@type jracepreference
_G.RACE_PREF_DEMON = nil
---@type jracepreference
_G.RACE_PREF_RANDOM = nil
---@type jracepreference
_G.RACE_PREF_USER_SELECTABLE = nil
---@type jmapcontrol
_G.MAP_CONTROL_USER = nil
---@type jmapcontrol
_G.MAP_CONTROL_COMPUTER = nil
---@type jmapcontrol
_G.MAP_CONTROL_RESCUABLE = nil
---@type jmapcontrol
_G.MAP_CONTROL_NEUTRAL = nil
---@type jmapcontrol
_G.MAP_CONTROL_CREEP = nil
---@type jmapcontrol
_G.MAP_CONTROL_NONE = nil
---@type jgametype
_G.GAME_TYPE_MELEE = nil
---@type jgametype
_G.GAME_TYPE_FFA = nil
---@type jgametype
_G.GAME_TYPE_USE_MAP_SETTINGS = nil
---@type jgametype
_G.GAME_TYPE_BLIZ = nil
---@type jgametype
_G.GAME_TYPE_ONE_ON_ONE = nil
---@type jgametype
_G.GAME_TYPE_TWO_TEAM_PLAY = nil
---@type jgametype
_G.GAME_TYPE_THREE_TEAM_PLAY = nil
---@type jgametype
_G.GAME_TYPE_FOUR_TEAM_PLAY = nil
---@type jmapflag
_G.MAP_FOG_HIDE_TERRAIN = nil
---@type jmapflag
_G.MAP_FOG_MAP_EXPLORED = nil
---@type jmapflag
_G.MAP_FOG_ALWAYS_VISIBLE = nil
---@type jmapflag
_G.MAP_USE_HANDICAPS = nil
---@type jmapflag
_G.MAP_OBSERVERS = nil
---@type jmapflag
_G.MAP_OBSERVERS_ON_DEATH = nil
---@type jmapflag
_G.MAP_FIXED_COLORS = nil
---@type jmapflag
_G.MAP_LOCK_RESOURCE_TRADING = nil
---@type jmapflag
_G.MAP_RESOURCE_TRADING_ALLIES_ONLY = nil
---@type jmapflag
_G.MAP_LOCK_ALLIANCE_CHANGES = nil
---@type jmapflag
_G.MAP_ALLIANCE_CHANGES_HIDDEN = nil
---@type jmapflag
_G.MAP_CHEATS = nil
---@type jmapflag
_G.MAP_CHEATS_HIDDEN = nil
---@type jmapflag
_G.MAP_LOCK_SPEED = nil
---@type jmapflag
_G.MAP_LOCK_RANDOM_SEED = nil
---@type jmapflag
_G.MAP_SHARED_ADVANCED_CONTROL = nil
---@type jmapflag
_G.MAP_RANDOM_HERO = nil
---@type jmapflag
_G.MAP_RANDOM_RACES = nil
---@type jmapflag
_G.MAP_RELOADED = nil
---@type jplacement
_G.MAP_PLACEMENT_RANDOM = nil
---@type jplacement
_G.MAP_PLACEMENT_FIXED = nil
---@type jplacement
_G.MAP_PLACEMENT_USE_MAP_SETTINGS = nil
---@type jplacement
_G.MAP_PLACEMENT_TEAMS_TOGETHER = nil
---@type jstartlocprio
_G.MAP_LOC_PRIO_LOW = nil
---@type jstartlocprio
_G.MAP_LOC_PRIO_HIGH = nil
---@type jstartlocprio
_G.MAP_LOC_PRIO_NOT = nil
---@type jmapdensity
_G.MAP_DENSITY_NONE = nil
---@type jmapdensity
_G.MAP_DENSITY_LIGHT = nil
---@type jmapdensity
_G.MAP_DENSITY_MEDIUM = nil
---@type jmapdensity
_G.MAP_DENSITY_HEAVY = nil
---@type jgamedifficulty
_G.MAP_DIFFICULTY_EASY = nil
---@type jgamedifficulty
_G.MAP_DIFFICULTY_NORMAL = nil
---@type jgamedifficulty
_G.MAP_DIFFICULTY_HARD = nil
---@type jgamedifficulty
_G.MAP_DIFFICULTY_INSANE = nil
---@type jgamespeed
_G.MAP_SPEED_SLOWEST = nil
---@type jgamespeed
_G.MAP_SPEED_SLOW = nil
---@type jgamespeed
_G.MAP_SPEED_NORMAL = nil
---@type jgamespeed
_G.MAP_SPEED_FAST = nil
---@type jgamespeed
_G.MAP_SPEED_FASTEST = nil
---@type jplayerslotstate
_G.PLAYER_SLOT_STATE_EMPTY = nil
---@type jplayerslotstate
_G.PLAYER_SLOT_STATE_PLAYING = nil
---@type jplayerslotstate
_G.PLAYER_SLOT_STATE_LEFT = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_UNITMOVEMENT = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_UNITSOUNDS = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_COMBAT = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_SPELLS = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_UI = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_MUSIC = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_AMBIENTSOUNDS = nil
---@type jvolumegroup
_G.SOUND_VOLUMEGROUP_FIRE = nil
---@type jigamestate
_G.GAME_STATE_DIVINE_INTERVENTION = nil
---@type jigamestate
_G.GAME_STATE_DISCONNECTED = nil
---@type jfgamestate
_G.GAME_STATE_TIME_OF_DAY = nil
---@type jplayerstate
_G.PLAYER_STATE_GAME_RESULT = nil
---@type jplayerstate
_G.PLAYER_STATE_RESOURCE_GOLD = nil
---@type jplayerstate
_G.PLAYER_STATE_RESOURCE_LUMBER = nil
---@type jplayerstate
_G.PLAYER_STATE_RESOURCE_HERO_TOKENS = nil
---@type jplayerstate
_G.PLAYER_STATE_RESOURCE_FOOD_CAP = nil
---@type jplayerstate
_G.PLAYER_STATE_RESOURCE_FOOD_USED = nil
---@type jplayerstate
_G.PLAYER_STATE_FOOD_CAP_CEILING = nil
---@type jplayerstate
_G.PLAYER_STATE_GIVES_BOUNTY = nil
---@type jplayerstate
_G.PLAYER_STATE_ALLIED_VICTORY = nil
---@type jplayerstate
_G.PLAYER_STATE_PLACED = nil
---@type jplayerstate
_G.PLAYER_STATE_OBSERVER_ON_DEATH = nil
---@type jplayerstate
_G.PLAYER_STATE_OBSERVER = nil
---@type jplayerstate
_G.PLAYER_STATE_UNFOLLOWABLE = nil
---@type jplayerstate
_G.PLAYER_STATE_GOLD_UPKEEP_RATE = nil
---@type jplayerstate
_G.PLAYER_STATE_LUMBER_UPKEEP_RATE = nil
---@type jplayerstate
_G.PLAYER_STATE_GOLD_GATHERED = nil
---@type jplayerstate
_G.PLAYER_STATE_LUMBER_GATHERED = nil
---@type jplayerstate
_G.PLAYER_STATE_NO_CREEP_SLEEP = nil
---@type junitstate
_G.UNIT_STATE_LIFE = nil
---@type junitstate
_G.UNIT_STATE_MAX_LIFE = nil
---@type junitstate
_G.UNIT_STATE_MANA = nil
---@type junitstate
_G.UNIT_STATE_MAX_MANA = nil
---@type jaidifficulty
_G.AI_DIFFICULTY_NEWBIE = nil
---@type jaidifficulty
_G.AI_DIFFICULTY_NORMAL = nil
---@type jaidifficulty
_G.AI_DIFFICULTY_INSANE = nil
---@type jplayerscore
_G.PLAYER_SCORE_UNITS_TRAINED = nil
---@type jplayerscore
_G.PLAYER_SCORE_UNITS_KILLED = nil
---@type jplayerscore
_G.PLAYER_SCORE_STRUCT_BUILT = nil
---@type jplayerscore
_G.PLAYER_SCORE_STRUCT_RAZED = nil
---@type jplayerscore
_G.PLAYER_SCORE_TECH_PERCENT = nil
---@type jplayerscore
_G.PLAYER_SCORE_FOOD_MAXPROD = nil
---@type jplayerscore
_G.PLAYER_SCORE_FOOD_MAXUSED = nil
---@type jplayerscore
_G.PLAYER_SCORE_HEROES_KILLED = nil
---@type jplayerscore
_G.PLAYER_SCORE_ITEMS_GAINED = nil
---@type jplayerscore
_G.PLAYER_SCORE_MERCS_HIRED = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_MINED_TOTAL = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_MINED_UPKEEP = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_LOST_UPKEEP = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_LOST_TAX = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_GIVEN = nil
---@type jplayerscore
_G.PLAYER_SCORE_GOLD_RECEIVED = nil
---@type jplayerscore
_G.PLAYER_SCORE_LUMBER_TOTAL = nil
---@type jplayerscore
_G.PLAYER_SCORE_LUMBER_LOST_UPKEEP = nil
---@type jplayerscore
_G.PLAYER_SCORE_LUMBER_LOST_TAX = nil
---@type jplayerscore
_G.PLAYER_SCORE_LUMBER_GIVEN = nil
---@type jplayerscore
_G.PLAYER_SCORE_LUMBER_RECEIVED = nil
---@type jplayerscore
_G.PLAYER_SCORE_UNIT_TOTAL = nil
---@type jplayerscore
_G.PLAYER_SCORE_HERO_TOTAL = nil
---@type jplayerscore
_G.PLAYER_SCORE_RESOURCE_TOTAL = nil
---@type jplayerscore
_G.PLAYER_SCORE_TOTAL = nil
---@type jgameevent
_G.EVENT_GAME_VICTORY = nil
---@type jgameevent
_G.EVENT_GAME_END_LEVEL = nil
---@type jgameevent
_G.EVENT_GAME_VARIABLE_LIMIT = nil
---@type jgameevent
_G.EVENT_GAME_STATE_LIMIT = nil
---@type jgameevent
_G.EVENT_GAME_TIMER_EXPIRED = nil
---@type jgameevent
_G.EVENT_GAME_ENTER_REGION = nil
---@type jgameevent
_G.EVENT_GAME_LEAVE_REGION = nil
---@type jgameevent
_G.EVENT_GAME_TRACKABLE_HIT = nil
---@type jgameevent
_G.EVENT_GAME_TRACKABLE_TRACK = nil
---@type jgameevent
_G.EVENT_GAME_SHOW_SKILL = nil
---@type jgameevent
_G.EVENT_GAME_BUILD_SUBMENU = nil
---@type jplayerevent
_G.EVENT_PLAYER_STATE_LIMIT = nil
---@type jplayerevent
_G.EVENT_PLAYER_ALLIANCE_CHANGED = nil
---@type jplayerevent
_G.EVENT_PLAYER_DEFEAT = nil
---@type jplayerevent
_G.EVENT_PLAYER_VICTORY = nil
---@type jplayerevent
_G.EVENT_PLAYER_LEAVE = nil
---@type jplayerevent
_G.EVENT_PLAYER_CHAT = nil
---@type jplayerevent
_G.EVENT_PLAYER_END_CINEMATIC = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_ATTACKED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_RESCUED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DEATH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DECAY = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DETECTED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_HIDDEN = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SELECTED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DESELECTED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_CONSTRUCT_START = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_UPGRADE_START = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_UPGRADE_CANCEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_UPGRADE_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_TRAIN_START = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_TRAIN_CANCEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_TRAIN_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_RESEARCH_START = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_RESEARCH_CANCEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_RESEARCH_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_ISSUED_ORDER = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_LEVEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_SKILL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_REVIVABLE = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_REVIVE_START = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_REVIVE_CANCEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_HERO_REVIVE_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SUMMON = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DROP_ITEM = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_PICKUP_ITEM = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_USE_ITEM = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_LOADED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DAMAGED = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_DAMAGING = nil
---@type junitevent
_G.EVENT_UNIT_DAMAGED = nil
---@type junitevent
_G.EVENT_UNIT_DAMAGING = nil
---@type junitevent
_G.EVENT_UNIT_DEATH = nil
---@type junitevent
_G.EVENT_UNIT_DECAY = nil
---@type junitevent
_G.EVENT_UNIT_DETECTED = nil
---@type junitevent
_G.EVENT_UNIT_HIDDEN = nil
---@type junitevent
_G.EVENT_UNIT_SELECTED = nil
---@type junitevent
_G.EVENT_UNIT_DESELECTED = nil
---@type junitevent
_G.EVENT_UNIT_STATE_LIMIT = nil
---@type junitevent
_G.EVENT_UNIT_ACQUIRED_TARGET = nil
---@type junitevent
_G.EVENT_UNIT_TARGET_IN_RANGE = nil
---@type junitevent
_G.EVENT_UNIT_ATTACKED = nil
---@type junitevent
_G.EVENT_UNIT_RESCUED = nil
---@type junitevent
_G.EVENT_UNIT_CONSTRUCT_CANCEL = nil
---@type junitevent
_G.EVENT_UNIT_CONSTRUCT_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_UPGRADE_START = nil
---@type junitevent
_G.EVENT_UNIT_UPGRADE_CANCEL = nil
---@type junitevent
_G.EVENT_UNIT_UPGRADE_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_TRAIN_START = nil
---@type junitevent
_G.EVENT_UNIT_TRAIN_CANCEL = nil
---@type junitevent
_G.EVENT_UNIT_TRAIN_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_RESEARCH_START = nil
---@type junitevent
_G.EVENT_UNIT_RESEARCH_CANCEL = nil
---@type junitevent
_G.EVENT_UNIT_RESEARCH_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_ISSUED_ORDER = nil
---@type junitevent
_G.EVENT_UNIT_ISSUED_POINT_ORDER = nil
---@type junitevent
_G.EVENT_UNIT_ISSUED_TARGET_ORDER = nil
---@type junitevent
_G.EVENT_UNIT_HERO_LEVEL = nil
---@type junitevent
_G.EVENT_UNIT_HERO_SKILL = nil
---@type junitevent
_G.EVENT_UNIT_HERO_REVIVABLE = nil
---@type junitevent
_G.EVENT_UNIT_HERO_REVIVE_START = nil
---@type junitevent
_G.EVENT_UNIT_HERO_REVIVE_CANCEL = nil
---@type junitevent
_G.EVENT_UNIT_HERO_REVIVE_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_SUMMON = nil
---@type junitevent
_G.EVENT_UNIT_DROP_ITEM = nil
---@type junitevent
_G.EVENT_UNIT_PICKUP_ITEM = nil
---@type junitevent
_G.EVENT_UNIT_USE_ITEM = nil
---@type junitevent
_G.EVENT_UNIT_LOADED = nil
---@type jwidgetevent
_G.EVENT_WIDGET_DEATH = nil
---@type jdialogevent
_G.EVENT_DIALOG_BUTTON_CLICK = nil
---@type jdialogevent
_G.EVENT_DIALOG_CLICK = nil
---@type jgameevent
_G.EVENT_GAME_LOADED = nil
---@type jgameevent
_G.EVENT_GAME_TOURNAMENT_FINISH_SOON = nil
---@type jgameevent
_G.EVENT_GAME_TOURNAMENT_FINISH_NOW = nil
---@type jgameevent
_G.EVENT_GAME_SAVE = nil
---@type jgameevent
_G.EVENT_GAME_CUSTOM_UI_FRAME = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_LEFT_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_LEFT_UP = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_RIGHT_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_RIGHT_UP = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_DOWN_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_DOWN_UP = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_UP_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_ARROW_UP_UP = nil
---@type jplayerevent
_G.EVENT_PLAYER_MOUSE_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_MOUSE_UP = nil
---@type jplayerevent
_G.EVENT_PLAYER_MOUSE_MOVE = nil
---@type jplayerevent
_G.EVENT_PLAYER_SYNC_DATA = nil
---@type jplayerevent
_G.EVENT_PLAYER_KEY = nil
---@type jplayerevent
_G.EVENT_PLAYER_KEY_DOWN = nil
---@type jplayerevent
_G.EVENT_PLAYER_KEY_UP = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SELL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_CHANGE_OWNER = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SELL_ITEM = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SPELL_CHANNEL = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SPELL_CAST = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SPELL_EFFECT = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SPELL_FINISH = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_SPELL_ENDCAST = nil
---@type jplayerunitevent
_G.EVENT_PLAYER_UNIT_PAWN_ITEM = nil
---@type junitevent
_G.EVENT_UNIT_SELL = nil
---@type junitevent
_G.EVENT_UNIT_CHANGE_OWNER = nil
---@type junitevent
_G.EVENT_UNIT_SELL_ITEM = nil
---@type junitevent
_G.EVENT_UNIT_SPELL_CHANNEL = nil
---@type junitevent
_G.EVENT_UNIT_SPELL_CAST = nil
---@type junitevent
_G.EVENT_UNIT_SPELL_EFFECT = nil
---@type junitevent
_G.EVENT_UNIT_SPELL_FINISH = nil
---@type junitevent
_G.EVENT_UNIT_SPELL_ENDCAST = nil
---@type junitevent
_G.EVENT_UNIT_PAWN_ITEM = nil
---@type jlimitop
_G.LESS_THAN = nil
---@type jlimitop
_G.LESS_THAN_OR_EQUAL = nil
---@type jlimitop
_G.EQUAL = nil
---@type jlimitop
_G.GREATER_THAN_OR_EQUAL = nil
---@type jlimitop
_G.GREATER_THAN = nil
---@type jlimitop
_G.NOT_EQUAL = nil
---@type junittype
_G.UNIT_TYPE_HERO = nil
---@type junittype
_G.UNIT_TYPE_DEAD = nil
---@type junittype
_G.UNIT_TYPE_STRUCTURE = nil
---@type junittype
_G.UNIT_TYPE_FLYING = nil
---@type junittype
_G.UNIT_TYPE_GROUND = nil
---@type junittype
_G.UNIT_TYPE_ATTACKS_FLYING = nil
---@type junittype
_G.UNIT_TYPE_ATTACKS_GROUND = nil
---@type junittype
_G.UNIT_TYPE_MELEE_ATTACKER = nil
---@type junittype
_G.UNIT_TYPE_RANGED_ATTACKER = nil
---@type junittype
_G.UNIT_TYPE_GIANT = nil
---@type junittype
_G.UNIT_TYPE_SUMMONED = nil
---@type junittype
_G.UNIT_TYPE_STUNNED = nil
---@type junittype
_G.UNIT_TYPE_PLAGUED = nil
---@type junittype
_G.UNIT_TYPE_SNARED = nil
---@type junittype
_G.UNIT_TYPE_UNDEAD = nil
---@type junittype
_G.UNIT_TYPE_MECHANICAL = nil
---@type junittype
_G.UNIT_TYPE_PEON = nil
---@type junittype
_G.UNIT_TYPE_SAPPER = nil
---@type junittype
_G.UNIT_TYPE_TOWNHALL = nil
---@type junittype
_G.UNIT_TYPE_ANCIENT = nil
---@type junittype
_G.UNIT_TYPE_TAUREN = nil
---@type junittype
_G.UNIT_TYPE_POISONED = nil
---@type junittype
_G.UNIT_TYPE_POLYMORPHED = nil
---@type junittype
_G.UNIT_TYPE_SLEEPING = nil
---@type junittype
_G.UNIT_TYPE_RESISTANT = nil
---@type junittype
_G.UNIT_TYPE_ETHEREAL = nil
---@type junittype
_G.UNIT_TYPE_MAGIC_IMMUNE = nil
---@type jitemtype
_G.ITEM_TYPE_PERMANENT = nil
---@type jitemtype
_G.ITEM_TYPE_CHARGED = nil
---@type jitemtype
_G.ITEM_TYPE_POWERUP = nil
---@type jitemtype
_G.ITEM_TYPE_ARTIFACT = nil
---@type jitemtype
_G.ITEM_TYPE_PURCHASABLE = nil
---@type jitemtype
_G.ITEM_TYPE_CAMPAIGN = nil
---@type jitemtype
_G.ITEM_TYPE_MISCELLANEOUS = nil
---@type jitemtype
_G.ITEM_TYPE_UNKNOWN = nil
---@type jitemtype
_G.ITEM_TYPE_ANY = nil
---@type jitemtype
_G.ITEM_TYPE_TOME = nil
---@type jcamerafield
_G.CAMERA_FIELD_TARGET_DISTANCE = nil
---@type jcamerafield
_G.CAMERA_FIELD_FARZ = nil
---@type jcamerafield
_G.CAMERA_FIELD_ANGLE_OF_ATTACK = nil
---@type jcamerafield
_G.CAMERA_FIELD_FIELD_OF_VIEW = nil
---@type jcamerafield
_G.CAMERA_FIELD_ROLL = nil
---@type jcamerafield
_G.CAMERA_FIELD_ROTATION = nil
---@type jcamerafield
_G.CAMERA_FIELD_ZOFFSET = nil
---@type jcamerafield
_G.CAMERA_FIELD_NEARZ = nil
---@type jcamerafield
_G.CAMERA_FIELD_LOCAL_PITCH = nil
---@type jcamerafield
_G.CAMERA_FIELD_LOCAL_YAW = nil
---@type jcamerafield
_G.CAMERA_FIELD_LOCAL_ROLL = nil
---@type jblendmode
_G.BLEND_MODE_NONE = nil
---@type jblendmode
_G.BLEND_MODE_DONT_CARE = nil
---@type jblendmode
_G.BLEND_MODE_KEYALPHA = nil
---@type jblendmode
_G.BLEND_MODE_BLEND = nil
---@type jblendmode
_G.BLEND_MODE_ADDITIVE = nil
---@type jblendmode
_G.BLEND_MODE_MODULATE = nil
---@type jblendmode
_G.BLEND_MODE_MODULATE_2X = nil
---@type jraritycontrol
_G.RARITY_FREQUENT = nil
---@type jraritycontrol
_G.RARITY_RARE = nil
---@type jtexmapflags
_G.TEXMAP_FLAG_NONE = nil
---@type jtexmapflags
_G.TEXMAP_FLAG_WRAP_U = nil
---@type jtexmapflags
_G.TEXMAP_FLAG_WRAP_V = nil
---@type jtexmapflags
_G.TEXMAP_FLAG_WRAP_UV = nil
---@type jfogstate
_G.FOG_OF_WAR_MASKED = nil
---@type jfogstate
_G.FOG_OF_WAR_FOGGED = nil
---@type jfogstate
_G.FOG_OF_WAR_VISIBLE = nil
---@type number
_G.CAMERA_MARGIN_LEFT = nil
---@type number
_G.CAMERA_MARGIN_RIGHT = nil
---@type number
_G.CAMERA_MARGIN_TOP = nil
---@type number
_G.CAMERA_MARGIN_BOTTOM = nil
---@type jeffecttype
_G.EFFECT_TYPE_EFFECT = nil
---@type jeffecttype
_G.EFFECT_TYPE_TARGET = nil
---@type jeffecttype
_G.EFFECT_TYPE_CASTER = nil
---@type jeffecttype
_G.EFFECT_TYPE_SPECIAL = nil
---@type jeffecttype
_G.EFFECT_TYPE_AREA_EFFECT = nil
---@type jeffecttype
_G.EFFECT_TYPE_MISSILE = nil
---@type jeffecttype
_G.EFFECT_TYPE_LIGHTNING = nil
---@type jsoundtype
_G.SOUND_TYPE_EFFECT = nil
---@type jsoundtype
_G.SOUND_TYPE_EFFECT_LOOPED = nil
---@type joriginframetype
_G.ORIGIN_FRAME_GAME_UI = nil
---@type joriginframetype
_G.ORIGIN_FRAME_COMMAND_BUTTON = nil
---@type joriginframetype
_G.ORIGIN_FRAME_HERO_BAR = nil
---@type joriginframetype
_G.ORIGIN_FRAME_HERO_BUTTON = nil
---@type joriginframetype
_G.ORIGIN_FRAME_HERO_HP_BAR = nil
---@type joriginframetype
_G.ORIGIN_FRAME_HERO_MANA_BAR = nil
---@type joriginframetype
_G.ORIGIN_FRAME_HERO_BUTTON_INDICATOR = nil
---@type joriginframetype
_G.ORIGIN_FRAME_ITEM_BUTTON = nil
---@type joriginframetype
_G.ORIGIN_FRAME_MINIMAP = nil
---@type joriginframetype
_G.ORIGIN_FRAME_MINIMAP_BUTTON = nil
---@type joriginframetype
_G.ORIGIN_FRAME_SYSTEM_BUTTON = nil
---@type joriginframetype
_G.ORIGIN_FRAME_TOOLTIP = nil
---@type joriginframetype
_G.ORIGIN_FRAME_UBERTOOLTIP = nil
---@type joriginframetype
_G.ORIGIN_FRAME_CHAT_MSG = nil
---@type joriginframetype
_G.ORIGIN_FRAME_UNIT_MSG = nil
---@type joriginframetype
_G.ORIGIN_FRAME_TOP_MSG = nil
---@type joriginframetype
_G.ORIGIN_FRAME_PORTRAIT = nil
---@type joriginframetype
_G.ORIGIN_FRAME_WORLD_FRAME = nil
---@type jframepointtype
_G.FRAMEPOINT_TOPLEFT = nil
---@type jframepointtype
_G.FRAMEPOINT_TOP = nil
---@type jframepointtype
_G.FRAMEPOINT_TOPRIGHT = nil
---@type jframepointtype
_G.FRAMEPOINT_LEFT = nil
---@type jframepointtype
_G.FRAMEPOINT_CENTER = nil
---@type jframepointtype
_G.FRAMEPOINT_RIGHT = nil
---@type jframepointtype
_G.FRAMEPOINT_BOTTOMLEFT = nil
---@type jframepointtype
_G.FRAMEPOINT_BOTTOM = nil
---@type jframepointtype
_G.FRAMEPOINT_BOTTOMRIGHT = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_TOP = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_MIDDLE = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_BOTTOM = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_LEFT = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_CENTER = nil
---@type jtextaligntype
_G.TEXT_JUSTIFY_RIGHT = nil
---@type jframeeventtype
_G.FRAMEEVENT_CONTROL_CLICK = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_ENTER = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_LEAVE = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_UP = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_DOWN = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_WHEEL = nil
---@type jframeeventtype
_G.FRAMEEVENT_CHECKBOX_CHECKED = nil
---@type jframeeventtype
_G.FRAMEEVENT_CHECKBOX_UNCHECKED = nil
---@type jframeeventtype
_G.FRAMEEVENT_EDITBOX_TEXT_CHANGED = nil
---@type jframeeventtype
_G.FRAMEEVENT_POPUPMENU_ITEM_CHANGED = nil
---@type jframeeventtype
_G.FRAMEEVENT_MOUSE_DOUBLECLICK = nil
---@type jframeeventtype
_G.FRAMEEVENT_SPRITE_ANIM_UPDATE = nil
---@type jframeeventtype
_G.FRAMEEVENT_SLIDER_VALUE_CHANGED = nil
---@type jframeeventtype
_G.FRAMEEVENT_DIALOG_CANCEL = nil
---@type jframeeventtype
_G.FRAMEEVENT_DIALOG_ACCEPT = nil
---@type jframeeventtype
_G.FRAMEEVENT_EDITBOX_ENTER = nil
---@type joskeytype
_G.OSKEY_BACKSPACE = nil
---@type joskeytype
_G.OSKEY_TAB = nil
---@type joskeytype
_G.OSKEY_CLEAR = nil
---@type joskeytype
_G.OSKEY_RETURN = nil
---@type joskeytype
_G.OSKEY_SHIFT = nil
---@type joskeytype
_G.OSKEY_CONTROL = nil
---@type joskeytype
_G.OSKEY_ALT = nil
---@type joskeytype
_G.OSKEY_PAUSE = nil
---@type joskeytype
_G.OSKEY_CAPSLOCK = nil
---@type joskeytype
_G.OSKEY_KANA = nil
---@type joskeytype
_G.OSKEY_HANGUL = nil
---@type joskeytype
_G.OSKEY_JUNJA = nil
---@type joskeytype
_G.OSKEY_FINAL = nil
---@type joskeytype
_G.OSKEY_HANJA = nil
---@type joskeytype
_G.OSKEY_KANJI = nil
---@type joskeytype
_G.OSKEY_ESCAPE = nil
---@type joskeytype
_G.OSKEY_CONVERT = nil
---@type joskeytype
_G.OSKEY_NONCONVERT = nil
---@type joskeytype
_G.OSKEY_ACCEPT = nil
---@type joskeytype
_G.OSKEY_MODECHANGE = nil
---@type joskeytype
_G.OSKEY_SPACE = nil
---@type joskeytype
_G.OSKEY_PAGEUP = nil
---@type joskeytype
_G.OSKEY_PAGEDOWN = nil
---@type joskeytype
_G.OSKEY_END = nil
---@type joskeytype
_G.OSKEY_HOME = nil
---@type joskeytype
_G.OSKEY_LEFT = nil
---@type joskeytype
_G.OSKEY_UP = nil
---@type joskeytype
_G.OSKEY_RIGHT = nil
---@type joskeytype
_G.OSKEY_DOWN = nil
---@type joskeytype
_G.OSKEY_SELECT = nil
---@type joskeytype
_G.OSKEY_PRINT = nil
---@type joskeytype
_G.OSKEY_EXECUTE = nil
---@type joskeytype
_G.OSKEY_PRINTSCREEN = nil
---@type joskeytype
_G.OSKEY_INSERT = nil
---@type joskeytype
_G.OSKEY_DELETE = nil
---@type joskeytype
_G.OSKEY_HELP = nil
---@type joskeytype
_G.OSKEY_0 = nil
---@type joskeytype
_G.OSKEY_1 = nil
---@type joskeytype
_G.OSKEY_2 = nil
---@type joskeytype
_G.OSKEY_3 = nil
---@type joskeytype
_G.OSKEY_4 = nil
---@type joskeytype
_G.OSKEY_5 = nil
---@type joskeytype
_G.OSKEY_6 = nil
---@type joskeytype
_G.OSKEY_7 = nil
---@type joskeytype
_G.OSKEY_8 = nil
---@type joskeytype
_G.OSKEY_9 = nil
---@type joskeytype
_G.OSKEY_A = nil
---@type joskeytype
_G.OSKEY_B = nil
---@type joskeytype
_G.OSKEY_C = nil
---@type joskeytype
_G.OSKEY_D = nil
---@type joskeytype
_G.OSKEY_E = nil
---@type joskeytype
_G.OSKEY_F = nil
---@type joskeytype
_G.OSKEY_G = nil
---@type joskeytype
_G.OSKEY_H = nil
---@type joskeytype
_G.OSKEY_I = nil
---@type joskeytype
_G.OSKEY_J = nil
---@type joskeytype
_G.OSKEY_K = nil
---@type joskeytype
_G.OSKEY_L = nil
---@type joskeytype
_G.OSKEY_M = nil
---@type joskeytype
_G.OSKEY_N = nil
---@type joskeytype
_G.OSKEY_O = nil
---@type joskeytype
_G.OSKEY_P = nil
---@type joskeytype
_G.OSKEY_Q = nil
---@type joskeytype
_G.OSKEY_R = nil
---@type joskeytype
_G.OSKEY_S = nil
---@type joskeytype
_G.OSKEY_T = nil
---@type joskeytype
_G.OSKEY_U = nil
---@type joskeytype
_G.OSKEY_V = nil
---@type joskeytype
_G.OSKEY_W = nil
---@type joskeytype
_G.OSKEY_X = nil
---@type joskeytype
_G.OSKEY_Y = nil
---@type joskeytype
_G.OSKEY_Z = nil
---@type joskeytype
_G.OSKEY_LMETA = nil
---@type joskeytype
_G.OSKEY_RMETA = nil
---@type joskeytype
_G.OSKEY_APPS = nil
---@type joskeytype
_G.OSKEY_SLEEP = nil
---@type joskeytype
_G.OSKEY_NUMPAD0 = nil
---@type joskeytype
_G.OSKEY_NUMPAD1 = nil
---@type joskeytype
_G.OSKEY_NUMPAD2 = nil
---@type joskeytype
_G.OSKEY_NUMPAD3 = nil
---@type joskeytype
_G.OSKEY_NUMPAD4 = nil
---@type joskeytype
_G.OSKEY_NUMPAD5 = nil
---@type joskeytype
_G.OSKEY_NUMPAD6 = nil
---@type joskeytype
_G.OSKEY_NUMPAD7 = nil
---@type joskeytype
_G.OSKEY_NUMPAD8 = nil
---@type joskeytype
_G.OSKEY_NUMPAD9 = nil
---@type joskeytype
_G.OSKEY_MULTIPLY = nil
---@type joskeytype
_G.OSKEY_ADD = nil
---@type joskeytype
_G.OSKEY_SEPARATOR = nil
---@type joskeytype
_G.OSKEY_SUBTRACT = nil
---@type joskeytype
_G.OSKEY_DECIMAL = nil
---@type joskeytype
_G.OSKEY_DIVIDE = nil
---@type joskeytype
_G.OSKEY_F1 = nil
---@type joskeytype
_G.OSKEY_F2 = nil
---@type joskeytype
_G.OSKEY_F3 = nil
---@type joskeytype
_G.OSKEY_F4 = nil
---@type joskeytype
_G.OSKEY_F5 = nil
---@type joskeytype
_G.OSKEY_F6 = nil
---@type joskeytype
_G.OSKEY_F7 = nil
---@type joskeytype
_G.OSKEY_F8 = nil
---@type joskeytype
_G.OSKEY_F9 = nil
---@type joskeytype
_G.OSKEY_F10 = nil
---@type joskeytype
_G.OSKEY_F11 = nil
---@type joskeytype
_G.OSKEY_F12 = nil
---@type joskeytype
_G.OSKEY_F13 = nil
---@type joskeytype
_G.OSKEY_F14 = nil
---@type joskeytype
_G.OSKEY_F15 = nil
---@type joskeytype
_G.OSKEY_F16 = nil
---@type joskeytype
_G.OSKEY_F17 = nil
---@type joskeytype
_G.OSKEY_F18 = nil
---@type joskeytype
_G.OSKEY_F19 = nil
---@type joskeytype
_G.OSKEY_F20 = nil
---@type joskeytype
_G.OSKEY_F21 = nil
---@type joskeytype
_G.OSKEY_F22 = nil
---@type joskeytype
_G.OSKEY_F23 = nil
---@type joskeytype
_G.OSKEY_F24 = nil
---@type joskeytype
_G.OSKEY_NUMLOCK = nil
---@type joskeytype
_G.OSKEY_SCROLLLOCK = nil
---@type joskeytype
_G.OSKEY_OEM_NEC_EQUAL = nil
---@type joskeytype
_G.OSKEY_OEM_FJ_JISHO = nil
---@type joskeytype
_G.OSKEY_OEM_FJ_MASSHOU = nil
---@type joskeytype
_G.OSKEY_OEM_FJ_TOUROKU = nil
---@type joskeytype
_G.OSKEY_OEM_FJ_LOYA = nil
---@type joskeytype
_G.OSKEY_OEM_FJ_ROYA = nil
---@type joskeytype
_G.OSKEY_LSHIFT = nil
---@type joskeytype
_G.OSKEY_RSHIFT = nil
---@type joskeytype
_G.OSKEY_LCONTROL = nil
---@type joskeytype
_G.OSKEY_RCONTROL = nil
---@type joskeytype
_G.OSKEY_LALT = nil
---@type joskeytype
_G.OSKEY_RALT = nil
---@type joskeytype
_G.OSKEY_BROWSER_BACK = nil
---@type joskeytype
_G.OSKEY_BROWSER_FORWARD = nil
---@type joskeytype
_G.OSKEY_BROWSER_REFRESH = nil
---@type joskeytype
_G.OSKEY_BROWSER_STOP = nil
---@type joskeytype
_G.OSKEY_BROWSER_SEARCH = nil
---@type joskeytype
_G.OSKEY_BROWSER_FAVORITES = nil
---@type joskeytype
_G.OSKEY_BROWSER_HOME = nil
---@type joskeytype
_G.OSKEY_VOLUME_MUTE = nil
---@type joskeytype
_G.OSKEY_VOLUME_DOWN = nil
---@type joskeytype
_G.OSKEY_VOLUME_UP = nil
---@type joskeytype
_G.OSKEY_MEDIA_NEXT_TRACK = nil
---@type joskeytype
_G.OSKEY_MEDIA_PREV_TRACK = nil
---@type joskeytype
_G.OSKEY_MEDIA_STOP = nil
---@type joskeytype
_G.OSKEY_MEDIA_PLAY_PAUSE = nil
---@type joskeytype
_G.OSKEY_LAUNCH_MAIL = nil
---@type joskeytype
_G.OSKEY_LAUNCH_MEDIA_SELECT = nil
---@type joskeytype
_G.OSKEY_LAUNCH_APP1 = nil
---@type joskeytype
_G.OSKEY_LAUNCH_APP2 = nil
---@type joskeytype
_G.OSKEY_OEM_1 = nil
---@type joskeytype
_G.OSKEY_OEM_PLUS = nil
---@type joskeytype
_G.OSKEY_OEM_COMMA = nil
---@type joskeytype
_G.OSKEY_OEM_MINUS = nil
---@type joskeytype
_G.OSKEY_OEM_PERIOD = nil
---@type joskeytype
_G.OSKEY_OEM_2 = nil
---@type joskeytype
_G.OSKEY_OEM_3 = nil
---@type joskeytype
_G.OSKEY_OEM_4 = nil
---@type joskeytype
_G.OSKEY_OEM_5 = nil
---@type joskeytype
_G.OSKEY_OEM_6 = nil
---@type joskeytype
_G.OSKEY_OEM_7 = nil
---@type joskeytype
_G.OSKEY_OEM_8 = nil
---@type joskeytype
_G.OSKEY_OEM_AX = nil
---@type joskeytype
_G.OSKEY_OEM_102 = nil
---@type joskeytype
_G.OSKEY_ICO_HELP = nil
---@type joskeytype
_G.OSKEY_ICO_00 = nil
---@type joskeytype
_G.OSKEY_PROCESSKEY = nil
---@type joskeytype
_G.OSKEY_ICO_CLEAR = nil
---@type joskeytype
_G.OSKEY_PACKET = nil
---@type joskeytype
_G.OSKEY_OEM_RESET = nil
---@type joskeytype
_G.OSKEY_OEM_JUMP = nil
---@type joskeytype
_G.OSKEY_OEM_PA1 = nil
---@type joskeytype
_G.OSKEY_OEM_PA2 = nil
---@type joskeytype
_G.OSKEY_OEM_PA3 = nil
---@type joskeytype
_G.OSKEY_OEM_WSCTRL = nil
---@type joskeytype
_G.OSKEY_OEM_CUSEL = nil
---@type joskeytype
_G.OSKEY_OEM_ATTN = nil
---@type joskeytype
_G.OSKEY_OEM_FINISH = nil
---@type joskeytype
_G.OSKEY_OEM_COPY = nil
---@type joskeytype
_G.OSKEY_OEM_AUTO = nil
---@type joskeytype
_G.OSKEY_OEM_ENLW = nil
---@type joskeytype
_G.OSKEY_OEM_BACKTAB = nil
---@type joskeytype
_G.OSKEY_ATTN = nil
---@type joskeytype
_G.OSKEY_CRSEL = nil
---@type joskeytype
_G.OSKEY_EXSEL = nil
---@type joskeytype
_G.OSKEY_EREOF = nil
---@type joskeytype
_G.OSKEY_PLAY = nil
---@type joskeytype
_G.OSKEY_ZOOM = nil
---@type joskeytype
_G.OSKEY_NONAME = nil
---@type joskeytype
_G.OSKEY_PA1 = nil
---@type joskeytype
_G.OSKEY_OEM_CLEAR = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_NORMAL_X = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_NORMAL_Y = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_ACTIVATED_X = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_RESEARCH_X = nil
---@type jabilityintegerfield
_G.ABILITY_IF_BUTTON_POSITION_RESEARCH_Y = nil
---@type jabilityintegerfield
_G.ABILITY_IF_MISSILE_SPEED = nil
---@type jabilityintegerfield
_G.ABILITY_IF_TARGET_ATTACHMENTS = nil
---@type jabilityintegerfield
_G.ABILITY_IF_CASTER_ATTACHMENTS = nil
---@type jabilityintegerfield
_G.ABILITY_IF_PRIORITY = nil
---@type jabilityintegerfield
_G.ABILITY_IF_LEVELS = nil
---@type jabilityintegerfield
_G.ABILITY_IF_REQUIRED_LEVEL = nil
---@type jabilityintegerfield
_G.ABILITY_IF_LEVEL_SKIP_REQUIREMENT = nil
---@type jabilitybooleanfield
_G.ABILITY_BF_HERO_ABILITY = nil
---@type jabilitybooleanfield
_G.ABILITY_BF_ITEM_ABILITY = nil
---@type jabilitybooleanfield
_G.ABILITY_BF_CHECK_DEPENDENCIES = nil
---@type jabilityrealfield
_G.ABILITY_RF_ARF_MISSILE_ARC = nil
---@type jabilitystringfield
_G.ABILITY_SF_NAME = nil
---@type jabilitystringfield
_G.ABILITY_SF_ICON_ACTIVATED = nil
---@type jabilitystringfield
_G.ABILITY_SF_ICON_RESEARCH = nil
---@type jabilitystringfield
_G.ABILITY_SF_EFFECT_SOUND = nil
---@type jabilitystringfield
_G.ABILITY_SF_EFFECT_SOUND_LOOPING = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_COST = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_WAVES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SHARDS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_IMAGES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MORPHING_FLAGS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STRENGTH_BONUS_NRG5 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DEFENSE_BONUS_NRG6 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_TARGETS_HIT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_OFS1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STACK_FLAGS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SHIELD_LIFE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_LOSS_AMS4 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_PER_INTERVAL_BGM1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_NUMBER_OF_MINERS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_CARGO_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_CREEP_LEVEL_DEV1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_PER_INTERVAL_EGM1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DEFENSE_REDUCTION = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_FLA1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_FLARE_COUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_GOLD = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MINING_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DAMAGE_TO_TREE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LUMBER_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DEFENSE_INCREASE_INF2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_INTERACTION_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_COST_NDT1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LUMBER_COST_NDT2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_NDT3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STACKING_TYPE_POI4 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STACKING_TYPE_POA5 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_LOSS_PRG6 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_UNITS_SUMMONED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ALLOW_WHEN_FULL_REJ3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_UNITS_AFFECTED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DEFENSE_INCREASE_ROA2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_UNITS_ROA7 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ROOTED_WEAPONS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UPROOTED_WEAPONS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UPROOTED_DEFENSE_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ACCUMULATION_STEP = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_OWLS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STACKING_TYPE_SPO4 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_UNITS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SPIDER_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_AGILITY_BONUS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_INTELLIGENCE_BONUS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_STRENGTH_BONUS_ISTR = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ATTACK_BONUS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DEFENSE_BONUS_IDEF = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMON_1_AMOUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMON_2_AMOUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_EXPERIENCE_GAINED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_HIT_POINTS_GAINED_IHPG = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_POINTS_GAINED_IMPG = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_HIT_POINTS_GAINED_IHP2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_POINTS_GAINED_IMP2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DAMAGE_BONUS_DICE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ARMOR_PENALTY_IARP = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LEVELS_GAINED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_LIFE_GAINED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_MANA_GAINED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_GIVEN = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LUMBER_GIVEN = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_IFA1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MOVEMENT_SPEED_BONUS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SIGHT_RANGE_BONUS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DAMAGE_PER_DURATION = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_USED_PER_SECOND = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_EXTRA_MANA_REQUIRED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_RADIUS_IDET = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_RESTORED_LIFE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_HIT_POINTS_RESTORED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MANA_POINTS_RESTORED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_UNITS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_DET1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GOLD_COST_PER_STRUCTURE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LUMBER_COST_PER_USE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DETECTION_TYPE_NSP3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SWARM_UNITS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ATTACKS_PREVENTED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ITEM_CAPACITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ALLOW_WHEN_FULL_IRL3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_DISPELLED_UNITS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_LURES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NEW_TIME_OF_DAY_HOUR = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MINIMUM_SPELLS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_SPELLS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DISABLED_ATTACK_INDEX = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAXIMUM_ATTACKS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ATTACK_MODIFICATION = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UPGRADE_LEVELS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_BEASTS_PER_SECOND = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_TARGET_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_OPTIONS = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ARMOR_PENALTY_NAB3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_WAVE_COUNT_NHS6 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_CREEP_LEVEL_NTM3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MISSILE_COUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SPLIT_ATTACK_COUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_GENERATION_COUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ROCK_RING_COUNT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_WAVE_COUNT_NVC2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_PREFER_HOSTILES_TAU1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_PREFER_FRIENDLIES_TAU2 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_MAX_UNITS_TAU3 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NUMBER_OF_PULSES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_UIN4 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_OSF1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPES = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_NEW_UNIT_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_CORPSE_UNIT_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1 = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_WARD_UNIT_TYPE_STAU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_EFFECT_ABILITY = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_CONVERSION_UNIT = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNIT_TO_PRESERVE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNIT_TYPE_ALLOWED = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SWARM_UNIT_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_RESULTING_UNIT_TYPE_COAU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNIT_TYPE_EXHU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_WARD_UNIT_TYPE_HWDU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_LURE_UNIT_TYPE = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UNIT_TYPE_IPMU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_FACTORY_UNIT_ID = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_SPAWN_UNIT_ID_NFYU = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_DESTRUCTIBLE_ID = nil
---@type jabilityintegerlevelfield
_G.ABILITY_ILF_UPGRADE_TYPE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CASTING_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DURATION_NORMAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DURATION_HERO = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_COOLDOWN = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AREA_OF_EFFECT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CAST_RANGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_HBZ2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_REDUCTION_HBZ4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_DAMAGE_PER_WAVE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_REGENERATION_INCREASE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CASTING_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_OWW1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_OWW2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_CRITICAL_STRIKE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_MULTIPLIER_OCR2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_OCR3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_EVADE_OCR4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_PERCENT_OMI2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_TAKEN_PERCENT_OMI3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ANIMATION_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_TRANSITION_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OWK2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BACKSTAB_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AMOUNT_HEALED_DAMAGED_UDC1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_CONVERTED_TO_MANA = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_CONVERTED_TO_LIFE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_UAU1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_REGENERATION_INCREASE_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_EVADE_EEV1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_DRAINED_PER_SECOND_EIM2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUFFER_MANA_REQUIRED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_MANA_DRAINED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BOLT_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BOLT_LIFETIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ALTITUDE_ADJUSTMENT_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LANDING_DELAY_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ALTERNATE_FORM_HIT_POINT_BONUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVE_SPEED_BONUS_INFO_PANEL_ONLY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_BONUS_INFO_PANEL_ONLY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_REGENERATION_RATE_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_STUN_DURATION_USL1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_DAMAGE_STOLEN_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_UCS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_DAMAGE_UCS2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DISTANCE_UCS3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FINAL_AREA_UCS4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_UIN1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_IMPACT_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_TARGET_OCL1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EFFECT_DELAY_OEQ1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_TO_BUILDINGS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNITS_SLOWED_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FINAL_AREA_OEQ4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_EER1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_TO_ATTACKERS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_HEALED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HEAL_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_REDUCTION_ETQ3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INITIAL_IMMUNITY_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_LIFE_DRAINED_PER_SECOND_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_REDUCTION_UDD2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ARMOR_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ARMOR_BONUS_UFA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AREA_OF_EFFECT_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_HFA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_ESF1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INTERVAL_ESF2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_REDUCTION_ESF3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEFENSE_BONUS_HAV1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINT_BONUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_HAV3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_HAV4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_BASH = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_MULTIPLIER_HBH2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_HBH3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_MISS_HBH4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_HTB1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AOE_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_HTC2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HTC3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HTC4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ARMOR_BONUS_HAD1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AMOUNT_HEALED_DAMAGED_HHB1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EXTRA_DAMAGE_HCA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_HCA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_HCA3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OAE1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_OAE2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_REINCARNATION_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_OSH1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_DAMAGE_OSH2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DISTANCE_OSH3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FINAL_AREA_OSH4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_GRAPHIC_DELAY_NFD1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_GRAPHIC_DURATION_NFD2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_NFD3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_AMS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_AMS2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AURA_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_APL2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DURATION_OF_PLAGUE_WARD = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_DAMAGE_INCREASE_AKB1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_LOSS_ADM1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_ADM2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EXPANSION_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INTERVAL_DURATION_BGM2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RADIUS_OF_MINING_RING = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SCALING_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_PER_SECOND_CAN1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_HIT_POINTS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_DEV2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_UPDATE_FREQUENCY_CHD1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_UPDATE_FREQUENCY_CHD2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_CHD3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_CRI1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_CRI2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_REDUCTION_CRI3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_MISS_CRS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_RADIUS_DDA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_AMOUNT_DDA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_PARTIAL_DAMAGE_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_PARTIAL_DAMAGE_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_SDS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_DAMAGE_UCO5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVE_SPEED_BONUS_UCO6 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_TAKEN_PERCENT_DEF1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_PERCENT_DEF2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_DEF3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_DEF4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_DEF5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_DEFLECT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_PIERCING = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_SPELLS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RIP_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EAT_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_GAINED_EAT3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AIR_UNIT_LOWER_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AIR_UNIT_HEIGHT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MELEE_ATTACK_RANGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INTERVAL_DURATION_EGM2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EFFECT_DELAY_FLA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINING_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RADIUS_OF_GRAVESTONES = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RADIUS_OF_CORPSES = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_GAINED_HEA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AUTOCAST_RANGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_REGEN_RATE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_GRAPHIC_DELAY_LIT1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_GRAPHIC_DURATION_LIT2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_LSH1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_GAINED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_GAINED_MBT2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AUTOCAST_REQUIREMENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_WATER_HEIGHT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ACTIVATION_DELAY_MIN1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INVISIBILITY_TRANSITION_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ACTIVATION_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AMOUNT_REGENERATED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_POI1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_POI2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POI3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EXTRA_DAMAGE_POA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_POA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_POA3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POA4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_AMPLIFICATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_STOMP_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_WAR2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_RADIUS_WAR3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HALF_DAMAGE_RADIUS_WAR4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_PRG3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNIT_PAUSE_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HERO_PAUSE_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_GAINED_REJ1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_POINTS_GAINED_REJ2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINIMUM_LIFE_REQUIRED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINIMUM_MANA_REQUIRED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_REPAIR_COST_RATIO = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_REPAIR_TIME_RATIO = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_POWERBUILD_COST = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_POWERBUILD_RATE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_NAVAL_RANGE_BONUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_REGENERATION_RATE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_REGEN = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INCREASE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SALVAGE_COST_RATIO = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_IN_FLIGHT_SIGHT_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HOVERING_SIGHT_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HOVERING_HEIGHT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DURATION_OF_OWLS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FADE_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAY_NIGHT_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ACTION_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_SPO1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SPO2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_SPO3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ACTIVATION_DELAY_STA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DETECTION_RADIUS_STA2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DETONATION_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_STUN_DURATION_STA4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_UHF2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LUMBER_PER_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ART_ATTACHMENT_HEIGHT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_TELEPORT_AREA_WIDTH = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_TELEPORT_AREA_HEIGHT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_STOLEN_PER_ATTACK = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_IDAM = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_HIT_UNITS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_HIT_HEROS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_HIT_SUMMONS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DELAY_FOR_TARGET_EFFECT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_PERCENT_OF_NORMAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RECEIVED_MULTIPLIER = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_REGENERATION_BONUS_AS_FRACTION_OF_NORMAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_IDPS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_DAMAGE_INCREASE_CAC1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_COR1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_WRS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_TERRAIN_DEFORMATION_AMPLITUDE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_CTC1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EXTRA_DAMAGE_TO_TARGET = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_CTC3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_CTC4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_CTB1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CASTING_DELAY_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_LOSS_PER_UNIT_DTN1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_DTN2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_TRANSITION_TIME_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_DRAINED_PER_SECOND_NMR1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_REDUCE_DAMAGE_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINIMUM_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_IGNORED_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_DEALT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HALF_DAMAGE_DEALT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HALF_DAMAGE_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_REDUCTION_HFS5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_DAMAGE_HFS6 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_PER_HIT_POINT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_ABSORBED_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_WAVE_DISTANCE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_WAVE_TIME_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DEALT_UIM3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AIR_TIME_SECONDS_UIM4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNIT_RELEASE_INTERVAL_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RETURN_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RETURN_THRESHOLD = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RETURNED_DAMAGE_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_RECEIVED_DAMAGE_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEFENSE_BONUS_UTS3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_NBA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NBA3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_PER_SUMMONED_HITPOINT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHARGE_FOR_CURRENT_LIFE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_DRAINED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_POINTS_DRAINED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DRAIN_INTERVAL_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_TRANSFERRED_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_TRANSFERRED_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BONUS_LIFE_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BONUS_LIFE_DECAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BONUS_MANA_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BONUS_MANA_DECAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_MISS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_MODIFIER = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_MODIFIER = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_TDG1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_TDG2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MEDIUM_DAMAGE_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SMALL_DAMAGE_RADIUS_TDG4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SMALL_DAMAGE_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_AIR_TIME_SECONDS_TSP1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINIMUM_HIT_INTERVAL_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_NBF5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_RANGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MINIMUM_RANGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_TARGET_EFK1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_TOTAL_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_SPEED_ADJUSTMENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DECAYING_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_FACTOR_ESH2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_FACTOR_ESH3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DECAY_POWER = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INITIAL_DAMAGE_ESH5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_LIFE_ABSORBED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAXIMUM_MANA_ABSORBED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_INCREASE_BSK1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_INCREASE_BSK2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_TAKEN_INCREASE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_PER_UNIT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_PER_UNIT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_PER_BUFF = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_PER_BUFF = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_DVM5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_FAK1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MEDIUM_DAMAGE_FACTOR_FAK2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SMALL_DAMAGE_FACTOR_FAK3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_RADIUS_FAK4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HALF_DAMAGE_RADIUS_FAK5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EXTRA_DAMAGE_PER_SECOND = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_LIQ2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_LIQ3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNIT_DAMAGE_PER_MANA_POINT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HERO_DAMAGE_PER_MANA_POINT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNIT_MAXIMUM_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HERO_MAXIMUM_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_COOLDOWN = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_SPL1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_REGENERATED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_REGENERATED = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_LOSS_PER_UNIT_IDC1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DAMAGE_IDC2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ACTIVATION_DELAY_IMO2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LURE_INTERVAL_SECONDS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_ISR1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_REDUCTION_ISR2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_IPV1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_STEAL_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_RESTORED_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MANA_RESTORED_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACH_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_REMOVE_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HERO_REGENERATION_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_UNIT_REGENERATION_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_NSA4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HIT_POINTS_PER_SECOND_NSA5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_IXS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_IXS2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SHIELD_COOLDOWN_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_NDO1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NDO3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_FLK1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SMALL_DAMAGE_RADIUS_FLK2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_AMOUNT_FLK3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MEDIUM_DAMAGE_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SMALL_DAMAGE_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_MANA_DRAINED_UNITS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RATIO_UNITS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_MANA_DRAINED_HEROS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RATIO_HEROS_PERCENT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SUMMONED_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_NCA1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INITIAL_DAMAGE_PXF1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_PXF2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PER_SECOND_MLS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BEAST_COLLISION_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_AMOUNT_NST3 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_RADIUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FOLLOW_THROUGH_TIME = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ART_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NAB1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NAB2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_PRIMARY_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SECONDARY_DAMAGE = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INTERVAL_NAB6 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_GOLD_COST_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LUMBER_COST_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVE_SPEED_BONUS_NEG1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_BONUS_NEG2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_AMOUNT_NCS1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_INTERVAL_NCS2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_DAMAGE_NCS4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NCS5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_EFFECT_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPAWN_INTERVAL_NSY1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPAWN_UNIT_DURATION = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPAWN_UNIT_OFFSET = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LEASH_RANGE_NSY5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPAWN_INTERVAL_NFY1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LEASH_RANGE_NFY2 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_CHANCE_TO_DEMOLISH = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_MULTIPLIER_BUILDINGS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_MULTIPLIER_UNITS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_MULTIPLIER_HEROES = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BONUS_DAMAGE_MULTIPLIER = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEATH_DAMAGE_FULL_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEATH_DAMAGE_FULL_AREA = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEATH_DAMAGE_HALF_AMOUNT = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEATH_DAMAGE_HALF_AREA = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DEATH_DAMAGE_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_AMOUNT_NSO1 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PERIOD = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_DAMAGE_PENALTY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NSO4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NSO5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_SPLIT_DELAY = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_MAX_HITPOINT_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_LIFE_DURATION_SPLIT_BONUS = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_WAVE_INTERVAL = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NVC4 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_FULL_DAMAGE_AMOUNT_NVC5 = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_HALF_DAMAGE_FACTOR = nil
---@type jabilityreallevelfield
_G.ABILITY_RLF_INTERVAL_BETWEEN_PULSES = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PERCENT_BONUS_HAB2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_USE_TELEPORT_CLUSTERING_HMT3 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_NEVER_MISS_OCR5 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_EXCLUDE_ITEM_DAMAGE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_BACKSTAB_DAMAGE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_INHERIT_UPGRADES_UAN3 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_MANA_CONVERSION_AS_PERCENT = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_LIFE_CONVERSION_AS_PERCENT = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_LEAVE_TARGET_ALIVE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PERCENT_BONUS_UAU3 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DAMAGE_IS_PERCENT_RECEIVED = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_MELEE_BONUS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_RANGED_BONUS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_FLAT_BONUS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_NEVER_MISS_HBH5 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PERCENT_BONUS_HAD2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CAN_DEACTIVATE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_RAISED_UNITS_ARE_INVULNERABLE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PERCENTAGE_OAR2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_SUMMON_BUSY_UNITS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CREATES_BLIGHT = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_EXPLODES_ON_DEATH = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ALWAYS_AUTOCAST_FAE2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_REGENERATE_ONLY_AT_NIGHT = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_SHOW_SELECT_UNIT_BUTTON = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_SHOW_UNIT_INDICATOR = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CHARGE_OWNING_PLAYER = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PERCENTAGE_ARM2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_TARGET_IS_INVULNERABLE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_TARGET_IS_MAGIC_IMMUNE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_KILL_ON_CASTER_DEATH = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_NO_TARGET_REQUIRED_REJ4 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ACCEPTS_GOLD = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ACCEPTS_LUMBER = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PREFER_HOSTILES_ROA5 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_PREFER_FRIENDLIES_ROA6 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ROOTED_TURNING = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ALWAYS_AUTOCAST_SLO3 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_HIDE_BUTTON = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_USE_TELEPORT_CLUSTERING_ITP2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DOES_NOT_BLOCK_BUILDINGS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_AUTO_ACQUIRE_ATTACK_TARGETS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS_GHO2 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DO_NOT_BLOCK_BUILDINGS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_INCLUDE_RANGED_DAMAGE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_INCLUDE_MELEE_DAMAGE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_MOVE_TO_PARTNER = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CAN_BE_DISPELLED = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_IGNORE_FRIENDLY_BUFFS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DROP_ITEMS_ON_DEATH = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CAN_USE_ITEMS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CAN_GET_ITEMS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CAN_DROP_ITEMS = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_REPAIRS_ALLOWED = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_CASTER_ONLY_SPLASH = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_NO_TARGET_REQUIRED_IRL4 = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DISPEL_ON_ATTACK = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_AMOUNT_IS_RAW_VALUE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_SHARED_SPELL_COOLDOWN = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_SLEEP_ONCE = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ALLOW_ON_ANY_PLAYER_SLOT = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_DISABLE_OTHER_ABILITIES = nil
---@type jabilitybooleanlevelfield
_G.ABILITY_BLF_ALLOW_BOUNTY = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ICON_NORMAL = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_CASTER = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TARGET = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SPECIAL = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_EFFECT = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_AREA_EFFECT = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_LIGHTNING_EFFECTS = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_MISSILE_ART = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_LEARN = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_LEARN_EXTENDED = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_NORMAL = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_TURN_OFF = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_NORMAL_EXTENDED = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_TOOLTIP_TURN_OFF_EXTENDED = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_NORMAL_FORM_UNIT_EME1 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SPAWNED_UNITS = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ABILITY_FOR_UNIT_CREATION = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_NORMAL_FORM_UNIT_MIL1 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ALTERNATE_FORM_UNIT_MIL2 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_BASE_ORDER_ID_ANS5 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_MORPH_UNITS_GROUND = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_MORPH_UNITS_AIR = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_MORPH_UNITS_AMPHIBIOUS = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_MORPH_UNITS_WATER = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_UNIT_TYPE_ONE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_UNIT_TYPE_TWO = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_UNIT_TYPE_SOD2 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SUMMON_1_UNIT_TYPE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SUMMON_2_UNIT_TYPE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_RACE_TO_CONVERT = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_PARTNER_UNIT_TYPE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_PARTNER_UNIT_TYPE_ONE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_PARTNER_UNIT_TYPE_TWO = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_REQUIRED_UNIT_TYPE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_CONVERTED_UNIT_TYPE = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SPELL_LIST = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_BASE_ORDER_ID_SPB5 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_BASE_ORDER_ID_NCL6 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ABILITY_UPGRADE_1 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ABILITY_UPGRADE_2 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ABILITY_UPGRADE_3 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_ABILITY_UPGRADE_4 = nil
---@type jabilitystringlevelfield
_G.ABILITY_SLF_SPAWN_UNIT_ID_NSY2 = nil
---@type jitemintegerfield
_G.ITEM_IF_LEVEL = nil
---@type jitemintegerfield
_G.ITEM_IF_NUMBER_OF_CHARGES = nil
---@type jitemintegerfield
_G.ITEM_IF_COOLDOWN_GROUP = nil
---@type jitemintegerfield
_G.ITEM_IF_MAX_HIT_POINTS = nil
---@type jitemintegerfield
_G.ITEM_IF_HIT_POINTS = nil
---@type jitemintegerfield
_G.ITEM_IF_PRIORITY = nil
---@type jitemintegerfield
_G.ITEM_IF_ARMOR_TYPE = nil
---@type jitemintegerfield
_G.ITEM_IF_TINTING_COLOR_RED = nil
---@type jitemintegerfield
_G.ITEM_IF_TINTING_COLOR_GREEN = nil
---@type jitemintegerfield
_G.ITEM_IF_TINTING_COLOR_BLUE = nil
---@type jitemintegerfield
_G.ITEM_IF_TINTING_COLOR_ALPHA = nil
---@type jitemrealfield
_G.ITEM_RF_SCALING_VALUE = nil
---@type jitembooleanfield
_G.ITEM_BF_DROPPED_WHEN_CARRIER_DIES = nil
---@type jitembooleanfield
_G.ITEM_BF_CAN_BE_DROPPED = nil
---@type jitembooleanfield
_G.ITEM_BF_PERISHABLE = nil
---@type jitembooleanfield
_G.ITEM_BF_INCLUDE_AS_RANDOM_CHOICE = nil
---@type jitembooleanfield
_G.ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED = nil
---@type jitembooleanfield
_G.ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS = nil
---@type jitembooleanfield
_G.ITEM_BF_ACTIVELY_USED = nil
---@type jitemstringfield
_G.ITEM_SF_MODEL_USED = nil
---@type junitintegerfield
_G.UNIT_IF_DEFENSE_TYPE = nil
---@type junitintegerfield
_G.UNIT_IF_ARMOR_TYPE = nil
---@type junitintegerfield
_G.UNIT_IF_LOOPING_FADE_IN_RATE = nil
---@type junitintegerfield
_G.UNIT_IF_LOOPING_FADE_OUT_RATE = nil
---@type junitintegerfield
_G.UNIT_IF_AGILITY = nil
---@type junitintegerfield
_G.UNIT_IF_INTELLIGENCE = nil
---@type junitintegerfield
_G.UNIT_IF_STRENGTH = nil
---@type junitintegerfield
_G.UNIT_IF_AGILITY_PERMANENT = nil
---@type junitintegerfield
_G.UNIT_IF_INTELLIGENCE_PERMANENT = nil
---@type junitintegerfield
_G.UNIT_IF_STRENGTH_PERMANENT = nil
---@type junitintegerfield
_G.UNIT_IF_AGILITY_WITH_BONUS = nil
---@type junitintegerfield
_G.UNIT_IF_INTELLIGENCE_WITH_BONUS = nil
---@type junitintegerfield
_G.UNIT_IF_STRENGTH_WITH_BONUS = nil
---@type junitintegerfield
_G.UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE = nil
---@type junitintegerfield
_G.UNIT_IF_GOLD_BOUNTY_AWARDED_BASE = nil
---@type junitintegerfield
_G.UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE = nil
---@type junitintegerfield
_G.UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE = nil
---@type junitintegerfield
_G.UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE = nil
---@type junitintegerfield
_G.UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE = nil
---@type junitintegerfield
_G.UNIT_IF_LEVEL = nil
---@type junitintegerfield
_G.UNIT_IF_FORMATION_RANK = nil
---@type junitintegerfield
_G.UNIT_IF_ORIENTATION_INTERPOLATION = nil
---@type junitintegerfield
_G.UNIT_IF_ELEVATION_SAMPLE_POINTS = nil
---@type junitintegerfield
_G.UNIT_IF_TINTING_COLOR_RED = nil
---@type junitintegerfield
_G.UNIT_IF_TINTING_COLOR_GREEN = nil
---@type junitintegerfield
_G.UNIT_IF_TINTING_COLOR_BLUE = nil
---@type junitintegerfield
_G.UNIT_IF_TINTING_COLOR_ALPHA = nil
---@type junitintegerfield
_G.UNIT_IF_MOVE_TYPE = nil
---@type junitintegerfield
_G.UNIT_IF_TARGETED_AS = nil
---@type junitintegerfield
_G.UNIT_IF_UNIT_CLASSIFICATION = nil
---@type junitintegerfield
_G.UNIT_IF_HIT_POINTS_REGENERATION_TYPE = nil
---@type junitintegerfield
_G.UNIT_IF_PLACEMENT_PREVENTED_BY = nil
---@type junitintegerfield
_G.UNIT_IF_PRIMARY_ATTRIBUTE = nil
---@type junitrealfield
_G.UNIT_RF_STRENGTH_PER_LEVEL = nil
---@type junitrealfield
_G.UNIT_RF_AGILITY_PER_LEVEL = nil
---@type junitrealfield
_G.UNIT_RF_INTELLIGENCE_PER_LEVEL = nil
---@type junitrealfield
_G.UNIT_RF_HIT_POINTS_REGENERATION_RATE = nil
---@type junitrealfield
_G.UNIT_RF_MANA_REGENERATION = nil
---@type junitrealfield
_G.UNIT_RF_DEATH_TIME = nil
---@type junitrealfield
_G.UNIT_RF_FLY_HEIGHT = nil
---@type junitrealfield
_G.UNIT_RF_TURN_RATE = nil
---@type junitrealfield
_G.UNIT_RF_ELEVATION_SAMPLE_RADIUS = nil
---@type junitrealfield
_G.UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS = nil
---@type junitrealfield
_G.UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES = nil
---@type junitrealfield
_G.UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES = nil
---@type junitrealfield
_G.UNIT_RF_SCALING_VALUE = nil
---@type junitrealfield
_G.UNIT_RF_ANIMATION_RUN_SPEED = nil
---@type junitrealfield
_G.UNIT_RF_SELECTION_SCALE = nil
---@type junitrealfield
_G.UNIT_RF_SELECTION_CIRCLE_HEIGHT = nil
---@type junitrealfield
_G.UNIT_RF_SHADOW_IMAGE_HEIGHT = nil
---@type junitrealfield
_G.UNIT_RF_SHADOW_IMAGE_WIDTH = nil
---@type junitrealfield
_G.UNIT_RF_SHADOW_IMAGE_CENTER_X = nil
---@type junitrealfield
_G.UNIT_RF_SHADOW_IMAGE_CENTER_Y = nil
---@type junitrealfield
_G.UNIT_RF_ANIMATION_WALK_SPEED = nil
---@type junitrealfield
_G.UNIT_RF_DEFENSE = nil
---@type junitrealfield
_G.UNIT_RF_SIGHT_RADIUS = nil
---@type junitrealfield
_G.UNIT_RF_PRIORITY = nil
---@type junitrealfield
_G.UNIT_RF_SPEED = nil
---@type junitrealfield
_G.UNIT_RF_OCCLUDER_HEIGHT = nil
---@type junitrealfield
_G.UNIT_RF_HP = nil
---@type junitrealfield
_G.UNIT_RF_MANA = nil
---@type junitrealfield
_G.UNIT_RF_ACQUISITION_RANGE = nil
---@type junitrealfield
_G.UNIT_RF_CAST_BACK_SWING = nil
---@type junitrealfield
_G.UNIT_RF_CAST_POINT = nil
---@type junitrealfield
_G.UNIT_RF_MINIMUM_ATTACK_RANGE = nil
---@type junitbooleanfield
_G.UNIT_BF_RAISABLE = nil
---@type junitbooleanfield
_G.UNIT_BF_DECAYABLE = nil
---@type junitbooleanfield
_G.UNIT_BF_IS_A_BUILDING = nil
---@type junitbooleanfield
_G.UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT = nil
---@type junitbooleanfield
_G.UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON = nil
---@type junitbooleanfield
_G.UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON = nil
---@type junitbooleanfield
_G.UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY = nil
---@type junitbooleanfield
_G.UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE = nil
---@type junitbooleanfield
_G.UNIT_BF_HIDE_MINIMAP_DISPLAY = nil
---@type junitbooleanfield
_G.UNIT_BF_SCALE_PROJECTILES = nil
---@type junitbooleanfield
_G.UNIT_BF_SELECTION_CIRCLE_ON_WATER = nil
---@type junitbooleanfield
_G.UNIT_BF_HAS_WATER_SHADOW = nil
---@type junitstringfield
_G.UNIT_SF_NAME = nil
---@type junitstringfield
_G.UNIT_SF_PROPER_NAMES = nil
---@type junitstringfield
_G.UNIT_SF_GROUND_TEXTURE = nil
---@type junitstringfield
_G.UNIT_SF_SHADOW_IMAGE_UNIT = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS = nil
---@type junitweaponintegerfield
_G.UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE = nil
---@type junitweaponrealfield
_G.UNIT_WEAPON_RF_ATTACK_RANGE = nil
---@type junitweaponbooleanfield
_G.UNIT_WEAPON_BF_ATTACK_SHOW_UI = nil
---@type junitweaponbooleanfield
_G.UNIT_WEAPON_BF_ATTACKS_ENABLED = nil
---@type junitweaponbooleanfield
_G.UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED = nil
---@type junitweaponstringfield
_G.UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART = nil
---@type jmovetype
_G.MOVE_TYPE_UNKNOWN = nil
---@type jmovetype
_G.MOVE_TYPE_FOOT = nil
---@type jmovetype
_G.MOVE_TYPE_FLY = nil
---@type jmovetype
_G.MOVE_TYPE_HORSE = nil
---@type jmovetype
_G.MOVE_TYPE_HOVER = nil
---@type jmovetype
_G.MOVE_TYPE_FLOAT = nil
---@type jmovetype
_G.MOVE_TYPE_AMPHIBIOUS = nil
---@type jmovetype
_G.MOVE_TYPE_UNBUILDABLE = nil
---@type jtargetflag
_G.TARGET_FLAG_NONE = nil
---@type jtargetflag
_G.TARGET_FLAG_GROUND = nil
---@type jtargetflag
_G.TARGET_FLAG_AIR = nil
---@type jtargetflag
_G.TARGET_FLAG_STRUCTURE = nil
---@type jtargetflag
_G.TARGET_FLAG_WARD = nil
---@type jtargetflag
_G.TARGET_FLAG_ITEM = nil
---@type jtargetflag
_G.TARGET_FLAG_TREE = nil
---@type jtargetflag
_G.TARGET_FLAG_WALL = nil
---@type jtargetflag
_G.TARGET_FLAG_DEBRIS = nil
---@type jtargetflag
_G.TARGET_FLAG_DECORATION = nil
---@type jtargetflag
_G.TARGET_FLAG_BRIDGE = nil
---@type jdefensetype
_G.DEFENSE_TYPE_LIGHT = nil
---@type jdefensetype
_G.DEFENSE_TYPE_MEDIUM = nil
---@type jdefensetype
_G.DEFENSE_TYPE_LARGE = nil
---@type jdefensetype
_G.DEFENSE_TYPE_FORT = nil
---@type jdefensetype
_G.DEFENSE_TYPE_NORMAL = nil
---@type jdefensetype
_G.DEFENSE_TYPE_HERO = nil
---@type jdefensetype
_G.DEFENSE_TYPE_DIVINE = nil
---@type jdefensetype
_G.DEFENSE_TYPE_NONE = nil
---@type jheroattribute
_G.HERO_ATTRIBUTE_STR = nil
---@type jheroattribute
_G.HERO_ATTRIBUTE_INT = nil
---@type jheroattribute
_G.HERO_ATTRIBUTE_AGI = nil
---@type jarmortype
_G.ARMOR_TYPE_WHOKNOWS = nil
---@type jarmortype
_G.ARMOR_TYPE_FLESH = nil
---@type jarmortype
_G.ARMOR_TYPE_METAL = nil
---@type jarmortype
_G.ARMOR_TYPE_WOOD = nil
---@type jarmortype
_G.ARMOR_TYPE_ETHREAL = nil
---@type jarmortype
_G.ARMOR_TYPE_STONE = nil
---@type jregentype
_G.REGENERATION_TYPE_NONE = nil
---@type jregentype
_G.REGENERATION_TYPE_ALWAYS = nil
---@type jregentype
_G.REGENERATION_TYPE_BLIGHT = nil
---@type jregentype
_G.REGENERATION_TYPE_DAY = nil
---@type jregentype
_G.REGENERATION_TYPE_NIGHT = nil
---@type junitcategory
_G.UNIT_CATEGORY_GIANT = nil
---@type junitcategory
_G.UNIT_CATEGORY_UNDEAD = nil
---@type junitcategory
_G.UNIT_CATEGORY_SUMMONED = nil
---@type junitcategory
_G.UNIT_CATEGORY_MECHANICAL = nil
---@type junitcategory
_G.UNIT_CATEGORY_PEON = nil
---@type junitcategory
_G.UNIT_CATEGORY_SAPPER = nil
---@type junitcategory
_G.UNIT_CATEGORY_TOWNHALL = nil
---@type junitcategory
_G.UNIT_CATEGORY_ANCIENT = nil
---@type junitcategory
_G.UNIT_CATEGORY_NEUTRAL = nil
---@type junitcategory
_G.UNIT_CATEGORY_WARD = nil
---@type junitcategory
_G.UNIT_CATEGORY_STANDON = nil
---@type junitcategory
_G.UNIT_CATEGORY_TAUREN = nil
---@type jpathingflag
_G.PATHING_FLAG_UNWALKABLE = nil
---@type jpathingflag
_G.PATHING_FLAG_UNFLYABLE = nil
---@type jpathingflag
_G.PATHING_FLAG_UNBUILDABLE = nil
---@type jpathingflag
_G.PATHING_FLAG_UNPEONHARVEST = nil
---@type jpathingflag
_G.PATHING_FLAG_BLIGHTED = nil
---@type jpathingflag
_G.PATHING_FLAG_UNFLOATABLE = nil
---@type jpathingflag
_G.PATHING_FLAG_UNAMPHIBIOUS = nil
---@type jpathingflag
_G.PATHING_FLAG_UNITEMPLACABLE = nil
---@param degrees number
---@return number
function Deg2Rad(degrees) x(degrees) end
---@param radians number
---@return number
function Rad2Deg(radians) x(radians) end
---@param radians number
---@return number
function Sin(radians) x(radians) end
---@param radians number
---@return number
function Cos(radians) x(radians) end
---@param radians number
---@return number
function Tan(radians) x(radians) end
---@param y number
---@return number
function Asin(y) x(y) end
---@param x number
---@return number
function Acos(x) x(x) end
---@param x number
---@return number
function Atan(x) x(x) end
---@param y number
---@param x number
---@return number
function Atan2(y, x) x(y) x(x) end
---@param x number
---@return number
function SquareRoot(x) x(x) end
---@param x number
---@param power number
---@return number
function Pow(x, power) x(x) x(power) end
---@param i number
---@return number
function I2R(i) x(i) end
---@param r number
---@return number
function R2I(r) x(r) end
---@param i number
---@return string
function I2S(i) x(i) end
---@param r number
---@return string
function R2S(r) x(r) end
---@param r number
---@param width number
---@param precision number
---@return string
function R2SW(r, width, precision) x(r) x(width) x(precision) end
---@param s string
---@return number
function S2I(s) x(s) end
---@param s string
---@return number
function S2R(s) x(s) end
---@param h jhandle
---@return number
function GetHandleId(h) x(h) end
---@param source string
---@param start number
---@param _end number
---@return string
function SubString(source, start, _end) x(source) x(start) x(_end) end
---@param s string
---@return number
function StringLength(s) x(s) end
---@param source string
---@param upper boolean
---@return string
function StringCase(source, upper) x(source) x(upper) end
---@param s string
---@return number
function StringHash(s) x(s) end
---@param source string
---@return string
function GetLocalizedString(source) x(source) end
---@param source string
---@return number
function GetLocalizedHotkey(source) x(source) end
---@param name string
function SetMapName(name) x(name) end
---@param description string
function SetMapDescription(description) x(description) end
---@param teamcount number
function SetTeams(teamcount) x(teamcount) end
---@param playercount number
function SetPlayers(playercount) x(playercount) end
---@param whichStartLoc number
---@param x number
---@param y number
function DefineStartLocation(whichStartLoc, x, y) x(whichStartLoc) x(x) x(y) end
---@param whichStartLoc number
---@param whichLocation jlocation
function DefineStartLocationLoc(whichStartLoc, whichLocation) x(whichStartLoc) x(whichLocation) end
---@param whichStartLoc number
---@param prioSlotCount number
function SetStartLocPrioCount(whichStartLoc, prioSlotCount) x(whichStartLoc) x(prioSlotCount) end
---@param whichStartLoc number
---@param prioSlotIndex number
---@param otherStartLocIndex number
---@param priority jstartlocprio
function SetStartLocPrio(whichStartLoc, prioSlotIndex, otherStartLocIndex, priority) x(whichStartLoc) x(prioSlotIndex) x(otherStartLocIndex) x(priority) end
---@param whichStartLoc number
---@param prioSlotIndex number
---@return number
function GetStartLocPrioSlot(whichStartLoc, prioSlotIndex) x(whichStartLoc) x(prioSlotIndex) end
---@param whichStartLoc number
---@param prioSlotIndex number
---@return jstartlocprio
function GetStartLocPrio(whichStartLoc, prioSlotIndex) x(whichStartLoc) x(prioSlotIndex) end
---@param whichGameType jgametype
---@param value boolean
function SetGameTypeSupported(whichGameType, value) x(whichGameType) x(value) end
---@param whichMapFlag jmapflag
---@param value boolean
function SetMapFlag(whichMapFlag, value) x(whichMapFlag) x(value) end
---@param whichPlacementType jplacement
function SetGamePlacement(whichPlacementType) x(whichPlacementType) end
---@param whichspeed jgamespeed
function SetGameSpeed(whichspeed) x(whichspeed) end
---@param whichdifficulty jgamedifficulty
function SetGameDifficulty(whichdifficulty) x(whichdifficulty) end
---@param whichdensity jmapdensity
function SetResourceDensity(whichdensity) x(whichdensity) end
---@param whichdensity jmapdensity
function SetCreatureDensity(whichdensity) x(whichdensity) end
---@return number
function GetTeams()  end
---@return number
function GetPlayers()  end
---@param whichGameType jgametype
---@return boolean
function IsGameTypeSupported(whichGameType) x(whichGameType) end
---@return jgametype
function GetGameTypeSelected()  end
---@param whichMapFlag jmapflag
---@return boolean
function IsMapFlagSet(whichMapFlag) x(whichMapFlag) end
---@return jplacement
function GetGamePlacement()  end
---@return jgamespeed
function GetGameSpeed()  end
---@return jgamedifficulty
function GetGameDifficulty()  end
---@return jmapdensity
function GetResourceDensity()  end
---@return jmapdensity
function GetCreatureDensity()  end
---@param whichStartLocation number
---@return number
function GetStartLocationX(whichStartLocation) x(whichStartLocation) end
---@param whichStartLocation number
---@return number
function GetStartLocationY(whichStartLocation) x(whichStartLocation) end
---@param whichStartLocation number
---@return jlocation
function GetStartLocationLoc(whichStartLocation) x(whichStartLocation) end
---@param whichPlayer jplayer
---@param whichTeam number
function SetPlayerTeam(whichPlayer, whichTeam) x(whichPlayer) x(whichTeam) end
---@param whichPlayer jplayer
---@param startLocIndex number
function SetPlayerStartLocation(whichPlayer, startLocIndex) x(whichPlayer) x(startLocIndex) end
---@param whichPlayer jplayer
---@param startLocIndex number
function ForcePlayerStartLocation(whichPlayer, startLocIndex) x(whichPlayer) x(startLocIndex) end
---@param whichPlayer jplayer
---@param color jplayercolor
function SetPlayerColor(whichPlayer, color) x(whichPlayer) x(color) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param whichAllianceSetting jalliancetype
---@param value boolean
function SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value) x(sourcePlayer) x(otherPlayer) x(whichAllianceSetting) x(value) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param whichResource jplayerstate
---@param rate number
function SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate) x(sourcePlayer) x(otherPlayer) x(whichResource) x(rate) end
---@param whichPlayer jplayer
---@param whichRacePreference jracepreference
function SetPlayerRacePreference(whichPlayer, whichRacePreference) x(whichPlayer) x(whichRacePreference) end
---@param whichPlayer jplayer
---@param value boolean
function SetPlayerRaceSelectable(whichPlayer, value) x(whichPlayer) x(value) end
---@param whichPlayer jplayer
---@param controlType jmapcontrol
function SetPlayerController(whichPlayer, controlType) x(whichPlayer) x(controlType) end
---@param whichPlayer jplayer
---@param name string
function SetPlayerName(whichPlayer, name) x(whichPlayer) x(name) end
---@param whichPlayer jplayer
---@param flag boolean
function SetPlayerOnScoreScreen(whichPlayer, flag) x(whichPlayer) x(flag) end
---@param whichPlayer jplayer
---@return number
function GetPlayerTeam(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function GetPlayerStartLocation(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jplayercolor
function GetPlayerColor(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return boolean
function GetPlayerSelectable(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jmapcontrol
function GetPlayerController(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jplayerslotstate
function GetPlayerSlotState(whichPlayer) x(whichPlayer) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param whichResource jplayerstate
---@return number
function GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource) x(sourcePlayer) x(otherPlayer) x(whichResource) end
---@param whichPlayer jplayer
---@param pref jracepreference
---@return boolean
function IsPlayerRacePrefSet(whichPlayer, pref) x(whichPlayer) x(pref) end
---@param whichPlayer jplayer
---@return string
function GetPlayerName(whichPlayer) x(whichPlayer) end
---@return jtimer
function CreateTimer()  end
---@param whichTimer jtimer
function DestroyTimer(whichTimer) x(whichTimer) end
---@param whichTimer jtimer
---@param timeout number
---@param periodic boolean
---@param handlerFunc function
function TimerStart(whichTimer, timeout, periodic, handlerFunc) x(whichTimer) x(timeout) x(periodic) x(handlerFunc) end
---@param whichTimer jtimer
---@return number
function TimerGetElapsed(whichTimer) x(whichTimer) end
---@param whichTimer jtimer
---@return number
function TimerGetRemaining(whichTimer) x(whichTimer) end
---@param whichTimer jtimer
---@return number
function TimerGetTimeout(whichTimer) x(whichTimer) end
---@param whichTimer jtimer
function PauseTimer(whichTimer) x(whichTimer) end
---@param whichTimer jtimer
function ResumeTimer(whichTimer) x(whichTimer) end
---@return jtimer
function GetExpiredTimer()  end
---@return jgroup
function CreateGroup()  end
---@param whichGroup jgroup
function DestroyGroup(whichGroup) x(whichGroup) end
---@param whichGroup jgroup
---@param whichUnit junit
---@return boolean
function GroupAddUnit(whichGroup, whichUnit) x(whichGroup) x(whichUnit) end
---@param whichGroup jgroup
---@param whichUnit junit
---@return boolean
function GroupRemoveUnit(whichGroup, whichUnit) x(whichGroup) x(whichUnit) end
---@param whichGroup jgroup
---@param addGroup jgroup
---@return number
function BlzGroupAddGroupFast(whichGroup, addGroup) x(whichGroup) x(addGroup) end
---@param whichGroup jgroup
---@param removeGroup jgroup
---@return number
function BlzGroupRemoveGroupFast(whichGroup, removeGroup) x(whichGroup) x(removeGroup) end
---@param whichGroup jgroup
function GroupClear(whichGroup) x(whichGroup) end
---@param whichGroup jgroup
---@return number
function BlzGroupGetSize(whichGroup) x(whichGroup) end
---@param whichGroup jgroup
---@param index number
---@return junit
function BlzGroupUnitAt(whichGroup, index) x(whichGroup) x(index) end
---@param whichGroup jgroup
---@param unitname string
---@param filter jboolexpr
function GroupEnumUnitsOfType(whichGroup, unitname, filter) x(whichGroup) x(unitname) x(filter) end
---@param whichGroup jgroup
---@param whichPlayer jplayer
---@param filter jboolexpr
function GroupEnumUnitsOfPlayer(whichGroup, whichPlayer, filter) x(whichGroup) x(whichPlayer) x(filter) end
---@param whichGroup jgroup
---@param unitname string
---@param filter jboolexpr
---@param countLimit number
function GroupEnumUnitsOfTypeCounted(whichGroup, unitname, filter, countLimit) x(whichGroup) x(unitname) x(filter) x(countLimit) end
---@param whichGroup jgroup
---@param r jrect
---@param filter jboolexpr
function GroupEnumUnitsInRect(whichGroup, r, filter) x(whichGroup) x(r) x(filter) end
---@param whichGroup jgroup
---@param r jrect
---@param filter jboolexpr
---@param countLimit number
function GroupEnumUnitsInRectCounted(whichGroup, r, filter, countLimit) x(whichGroup) x(r) x(filter) x(countLimit) end
---@param whichGroup jgroup
---@param x number
---@param y number
---@param radius number
---@param filter jboolexpr
function GroupEnumUnitsInRange(whichGroup, x, y, radius, filter) x(whichGroup) x(x) x(y) x(radius) x(filter) end
---@param whichGroup jgroup
---@param whichLocation jlocation
---@param radius number
---@param filter jboolexpr
function GroupEnumUnitsInRangeOfLoc(whichGroup, whichLocation, radius, filter) x(whichGroup) x(whichLocation) x(radius) x(filter) end
---@param whichGroup jgroup
---@param x number
---@param y number
---@param radius number
---@param filter jboolexpr
---@param countLimit number
function GroupEnumUnitsInRangeCounted(whichGroup, x, y, radius, filter, countLimit) x(whichGroup) x(x) x(y) x(radius) x(filter) x(countLimit) end
---@param whichGroup jgroup
---@param whichLocation jlocation
---@param radius number
---@param filter jboolexpr
---@param countLimit number
function GroupEnumUnitsInRangeOfLocCounted(whichGroup, whichLocation, radius, filter, countLimit) x(whichGroup) x(whichLocation) x(radius) x(filter) x(countLimit) end
---@param whichGroup jgroup
---@param whichPlayer jplayer
---@param filter jboolexpr
function GroupEnumUnitsSelected(whichGroup, whichPlayer, filter) x(whichGroup) x(whichPlayer) x(filter) end
---@param whichGroup jgroup
---@param order string
---@return boolean
function GroupImmediateOrder(whichGroup, order) x(whichGroup) x(order) end
---@param whichGroup jgroup
---@param order number
---@return boolean
function GroupImmediateOrderById(whichGroup, order) x(whichGroup) x(order) end
---@param whichGroup jgroup
---@param order string
---@param x number
---@param y number
---@return boolean
function GroupPointOrder(whichGroup, order, x, y) x(whichGroup) x(order) x(x) x(y) end
---@param whichGroup jgroup
---@param order string
---@param whichLocation jlocation
---@return boolean
function GroupPointOrderLoc(whichGroup, order, whichLocation) x(whichGroup) x(order) x(whichLocation) end
---@param whichGroup jgroup
---@param order number
---@param x number
---@param y number
---@return boolean
function GroupPointOrderById(whichGroup, order, x, y) x(whichGroup) x(order) x(x) x(y) end
---@param whichGroup jgroup
---@param order number
---@param whichLocation jlocation
---@return boolean
function GroupPointOrderByIdLoc(whichGroup, order, whichLocation) x(whichGroup) x(order) x(whichLocation) end
---@param whichGroup jgroup
---@param order string
---@param targetWidget jwidget
---@return boolean
function GroupTargetOrder(whichGroup, order, targetWidget) x(whichGroup) x(order) x(targetWidget) end
---@param whichGroup jgroup
---@param order number
---@param targetWidget jwidget
---@return boolean
function GroupTargetOrderById(whichGroup, order, targetWidget) x(whichGroup) x(order) x(targetWidget) end
---@param whichGroup jgroup
---@param callback function
function ForGroup(whichGroup, callback) x(whichGroup) x(callback) end
---@param whichGroup jgroup
---@return junit
function FirstOfGroup(whichGroup) x(whichGroup) end
---@return jforce
function CreateForce()  end
---@param whichForce jforce
function DestroyForce(whichForce) x(whichForce) end
---@param whichForce jforce
---@param whichPlayer jplayer
function ForceAddPlayer(whichForce, whichPlayer) x(whichForce) x(whichPlayer) end
---@param whichForce jforce
---@param whichPlayer jplayer
function ForceRemovePlayer(whichForce, whichPlayer) x(whichForce) x(whichPlayer) end
---@param whichForce jforce
---@param whichPlayer jplayer
---@return boolean
function BlzForceHasPlayer(whichForce, whichPlayer) x(whichForce) x(whichPlayer) end
---@param whichForce jforce
function ForceClear(whichForce) x(whichForce) end
---@param whichForce jforce
---@param filter jboolexpr
function ForceEnumPlayers(whichForce, filter) x(whichForce) x(filter) end
---@param whichForce jforce
---@param filter jboolexpr
---@param countLimit number
function ForceEnumPlayersCounted(whichForce, filter, countLimit) x(whichForce) x(filter) x(countLimit) end
---@param whichForce jforce
---@param whichPlayer jplayer
---@param filter jboolexpr
function ForceEnumAllies(whichForce, whichPlayer, filter) x(whichForce) x(whichPlayer) x(filter) end
---@param whichForce jforce
---@param whichPlayer jplayer
---@param filter jboolexpr
function ForceEnumEnemies(whichForce, whichPlayer, filter) x(whichForce) x(whichPlayer) x(filter) end
---@param whichForce jforce
---@param callback function
function ForForce(whichForce, callback) x(whichForce) x(callback) end
---@param minx number
---@param miny number
---@param maxx number
---@param maxy number
---@return jrect
function Rect(minx, miny, maxx, maxy) x(minx) x(miny) x(maxx) x(maxy) end
---@param min jlocation
---@param max jlocation
---@return jrect
function RectFromLoc(min, max) x(min) x(max) end
---@param whichRect jrect
function RemoveRect(whichRect) x(whichRect) end
---@param whichRect jrect
---@param minx number
---@param miny number
---@param maxx number
---@param maxy number
function SetRect(whichRect, minx, miny, maxx, maxy) x(whichRect) x(minx) x(miny) x(maxx) x(maxy) end
---@param whichRect jrect
---@param min jlocation
---@param max jlocation
function SetRectFromLoc(whichRect, min, max) x(whichRect) x(min) x(max) end
---@param whichRect jrect
---@param newCenterX number
---@param newCenterY number
function MoveRectTo(whichRect, newCenterX, newCenterY) x(whichRect) x(newCenterX) x(newCenterY) end
---@param whichRect jrect
---@param newCenterLoc jlocation
function MoveRectToLoc(whichRect, newCenterLoc) x(whichRect) x(newCenterLoc) end
---@param whichRect jrect
---@return number
function GetRectCenterX(whichRect) x(whichRect) end
---@param whichRect jrect
---@return number
function GetRectCenterY(whichRect) x(whichRect) end
---@param whichRect jrect
---@return number
function GetRectMinX(whichRect) x(whichRect) end
---@param whichRect jrect
---@return number
function GetRectMinY(whichRect) x(whichRect) end
---@param whichRect jrect
---@return number
function GetRectMaxX(whichRect) x(whichRect) end
---@param whichRect jrect
---@return number
function GetRectMaxY(whichRect) x(whichRect) end
---@return jregion
function CreateRegion()  end
---@param whichRegion jregion
function RemoveRegion(whichRegion) x(whichRegion) end
---@param whichRegion jregion
---@param r jrect
function RegionAddRect(whichRegion, r) x(whichRegion) x(r) end
---@param whichRegion jregion
---@param r jrect
function RegionClearRect(whichRegion, r) x(whichRegion) x(r) end
---@param whichRegion jregion
---@param x number
---@param y number
function RegionAddCell(whichRegion, x, y) x(whichRegion) x(x) x(y) end
---@param whichRegion jregion
---@param whichLocation jlocation
function RegionAddCellAtLoc(whichRegion, whichLocation) x(whichRegion) x(whichLocation) end
---@param whichRegion jregion
---@param x number
---@param y number
function RegionClearCell(whichRegion, x, y) x(whichRegion) x(x) x(y) end
---@param whichRegion jregion
---@param whichLocation jlocation
function RegionClearCellAtLoc(whichRegion, whichLocation) x(whichRegion) x(whichLocation) end
---@param x number
---@param y number
---@return jlocation
function Location(x, y) x(x) x(y) end
---@param whichLocation jlocation
function RemoveLocation(whichLocation) x(whichLocation) end
---@param whichLocation jlocation
---@param newX number
---@param newY number
function MoveLocation(whichLocation, newX, newY) x(whichLocation) x(newX) x(newY) end
---@param whichLocation jlocation
---@return number
function GetLocationX(whichLocation) x(whichLocation) end
---@param whichLocation jlocation
---@return number
function GetLocationY(whichLocation) x(whichLocation) end
---@param whichLocation jlocation
---@return number
function GetLocationZ(whichLocation) x(whichLocation) end
---@param whichRegion jregion
---@param whichUnit junit
---@return boolean
function IsUnitInRegion(whichRegion, whichUnit) x(whichRegion) x(whichUnit) end
---@param whichRegion jregion
---@param x number
---@param y number
---@return boolean
function IsPointInRegion(whichRegion, x, y) x(whichRegion) x(x) x(y) end
---@param whichRegion jregion
---@param whichLocation jlocation
---@return boolean
function IsLocationInRegion(whichRegion, whichLocation) x(whichRegion) x(whichLocation) end
---@return jrect
function GetWorldBounds()  end
---@return jtrigger
function CreateTrigger()  end
---@param whichTrigger jtrigger
function DestroyTrigger(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
function ResetTrigger(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
function EnableTrigger(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
function DisableTrigger(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
---@return boolean
function IsTriggerEnabled(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
---@param flag boolean
function TriggerWaitOnSleeps(whichTrigger, flag) x(whichTrigger) x(flag) end
---@param whichTrigger jtrigger
---@return boolean
function IsTriggerWaitOnSleeps(whichTrigger) x(whichTrigger) end
---@return junit
function GetFilterUnit()  end
---@return junit
function GetEnumUnit()  end
---@return jdestructable
function GetFilterDestructable()  end
---@return jdestructable
function GetEnumDestructable()  end
---@return jitem
function GetFilterItem()  end
---@return jitem
function GetEnumItem()  end
---@return jplayer
function GetFilterPlayer()  end
---@return jplayer
function GetEnumPlayer()  end
---@return jtrigger
function GetTriggeringTrigger()  end
---@return jeventid
function GetTriggerEventId()  end
---@param whichTrigger jtrigger
---@return number
function GetTriggerEvalCount(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
---@return number
function GetTriggerExecCount(whichTrigger) x(whichTrigger) end
---@param funcName string
function ExecuteFunc(funcName) x(funcName) end
---@param operandA jboolexpr
---@param operandB jboolexpr
---@return jboolexpr
function And(operandA, operandB) x(operandA) x(operandB) end
---@param operandA jboolexpr
---@param operandB jboolexpr
---@return jboolexpr
function Or(operandA, operandB) x(operandA) x(operandB) end
---@param operand jboolexpr
---@return jboolexpr
function Not(operand) x(operand) end
---@param func function
---@return jconditionfunc
function Condition(func) x(func) end
---@param c jconditionfunc
function DestroyCondition(c) x(c) end
---@param func function
---@return jfilterfunc
function Filter(func) x(func) end
---@param f jfilterfunc
function DestroyFilter(f) x(f) end
---@param e jboolexpr
function DestroyBoolExpr(e) x(e) end
---@param whichTrigger jtrigger
---@param varName string
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterVariableEvent(whichTrigger, varName, opcode, limitval) x(whichTrigger) x(varName) x(opcode) x(limitval) end
---@param whichTrigger jtrigger
---@param timeout number
---@param periodic boolean
---@return jevent
function TriggerRegisterTimerEvent(whichTrigger, timeout, periodic) x(whichTrigger) x(timeout) x(periodic) end
---@param whichTrigger jtrigger
---@param t jtimer
---@return jevent
function TriggerRegisterTimerExpireEvent(whichTrigger, t) x(whichTrigger) x(t) end
---@param whichTrigger jtrigger
---@param whichState jgamestate
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterGameStateEvent(whichTrigger, whichState, opcode, limitval) x(whichTrigger) x(whichState) x(opcode) x(limitval) end
---@param whichTrigger jtrigger
---@param whichDialog jdialog
---@return jevent
function TriggerRegisterDialogEvent(whichTrigger, whichDialog) x(whichTrigger) x(whichDialog) end
---@param whichTrigger jtrigger
---@param whichButton jbutton
---@return jevent
function TriggerRegisterDialogButtonEvent(whichTrigger, whichButton) x(whichTrigger) x(whichButton) end
---@return jgamestate
function GetEventGameState()  end
---@param whichTrigger jtrigger
---@param whichGameEvent jgameevent
---@return jevent
function TriggerRegisterGameEvent(whichTrigger, whichGameEvent) x(whichTrigger) x(whichGameEvent) end
---@return jplayer
function GetWinningPlayer()  end
---@param whichTrigger jtrigger
---@param whichRegion jregion
---@param filter jboolexpr
---@return jevent
function TriggerRegisterEnterRegion(whichTrigger, whichRegion, filter) x(whichTrigger) x(whichRegion) x(filter) end
---@return jregion
function GetTriggeringRegion()  end
---@return junit
function GetEnteringUnit()  end
---@param whichTrigger jtrigger
---@param whichRegion jregion
---@param filter jboolexpr
---@return jevent
function TriggerRegisterLeaveRegion(whichTrigger, whichRegion, filter) x(whichTrigger) x(whichRegion) x(filter) end
---@return junit
function GetLeavingUnit()  end
---@param whichTrigger jtrigger
---@param t jtrackable
---@return jevent
function TriggerRegisterTrackableHitEvent(whichTrigger, t) x(whichTrigger) x(t) end
---@param whichTrigger jtrigger
---@param t jtrackable
---@return jevent
function TriggerRegisterTrackableTrackEvent(whichTrigger, t) x(whichTrigger) x(t) end
---@return jtrackable
function GetTriggeringTrackable()  end
---@return jbutton
function GetClickedButton()  end
---@return jdialog
function GetClickedDialog()  end
---@return number
function GetTournamentFinishSoonTimeRemaining()  end
---@return number
function GetTournamentFinishNowRule()  end
---@return jplayer
function GetTournamentFinishNowPlayer()  end
---@param whichPlayer jplayer
---@return number
function GetTournamentScore(whichPlayer) x(whichPlayer) end
---@return string
function GetSaveBasicFilename()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param whichPlayerEvent jplayerevent
---@return jevent
function TriggerRegisterPlayerEvent(whichTrigger, whichPlayer, whichPlayerEvent) x(whichTrigger) x(whichPlayer) x(whichPlayerEvent) end
---@return jplayer
function GetTriggerPlayer()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param whichPlayerUnitEvent jplayerunitevent
---@param filter jboolexpr
---@return jevent
function TriggerRegisterPlayerUnitEvent(whichTrigger, whichPlayer, whichPlayerUnitEvent, filter) x(whichTrigger) x(whichPlayer) x(whichPlayerUnitEvent) x(filter) end
---@return junit
function GetLevelingUnit()  end
---@return junit
function GetLearningUnit()  end
---@return number
function GetLearnedSkill()  end
---@return number
function GetLearnedSkillLevel()  end
---@return junit
function GetRevivableUnit()  end
---@return junit
function GetRevivingUnit()  end
---@return junit
function GetAttacker()  end
---@return junit
function GetRescuer()  end
---@return junit
function GetDyingUnit()  end
---@return junit
function GetKillingUnit()  end
---@return junit
function GetDecayingUnit()  end
---@return junit
function GetConstructingStructure()  end
---@return junit
function GetCancelledStructure()  end
---@return junit
function GetConstructedStructure()  end
---@return junit
function GetResearchingUnit()  end
---@return number
function GetResearched()  end
---@return number
function GetTrainedUnitType()  end
---@return junit
function GetTrainedUnit()  end
---@return junit
function GetDetectedUnit()  end
---@return junit
function GetSummoningUnit()  end
---@return junit
function GetSummonedUnit()  end
---@return junit
function GetTransportUnit()  end
---@return junit
function GetLoadedUnit()  end
---@return junit
function GetSellingUnit()  end
---@return junit
function GetSoldUnit()  end
---@return junit
function GetBuyingUnit()  end
---@return jitem
function GetSoldItem()  end
---@return junit
function GetChangingUnit()  end
---@return jplayer
function GetChangingUnitPrevOwner()  end
---@return junit
function GetManipulatingUnit()  end
---@return jitem
function GetManipulatedItem()  end
---@return junit
function GetOrderedUnit()  end
---@return number
function GetIssuedOrderId()  end
---@return number
function GetOrderPointX()  end
---@return number
function GetOrderPointY()  end
---@return jlocation
function GetOrderPointLoc()  end
---@return jwidget
function GetOrderTarget()  end
---@return jdestructable
function GetOrderTargetDestructable()  end
---@return jitem
function GetOrderTargetItem()  end
---@return junit
function GetOrderTargetUnit()  end
---@return junit
function GetSpellAbilityUnit()  end
---@return number
function GetSpellAbilityId()  end
---@return jability
function GetSpellAbility()  end
---@return jlocation
function GetSpellTargetLoc()  end
---@return number
function GetSpellTargetX()  end
---@return number
function GetSpellTargetY()  end
---@return jdestructable
function GetSpellTargetDestructable()  end
---@return jitem
function GetSpellTargetItem()  end
---@return junit
function GetSpellTargetUnit()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param whichAlliance jalliancetype
---@return jevent
function TriggerRegisterPlayerAllianceChange(whichTrigger, whichPlayer, whichAlliance) x(whichTrigger) x(whichPlayer) x(whichAlliance) end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param whichState jplayerstate
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterPlayerStateEvent(whichTrigger, whichPlayer, whichState, opcode, limitval) x(whichTrigger) x(whichPlayer) x(whichState) x(opcode) x(limitval) end
---@return jplayerstate
function GetEventPlayerState()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return jevent
function TriggerRegisterPlayerChatEvent(whichTrigger, whichPlayer, chatMessageToDetect, exactMatchOnly) x(whichTrigger) x(whichPlayer) x(chatMessageToDetect) x(exactMatchOnly) end
---@return string
function GetEventPlayerChatString()  end
---@return string
function GetEventPlayerChatStringMatched()  end
---@param whichTrigger jtrigger
---@param whichWidget jwidget
---@return jevent
function TriggerRegisterDeathEvent(whichTrigger, whichWidget) x(whichTrigger) x(whichWidget) end
---@return junit
function GetTriggerUnit()  end
---@param whichTrigger jtrigger
---@param whichUnit junit
---@param whichState junitstate
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterUnitStateEvent(whichTrigger, whichUnit, whichState, opcode, limitval) x(whichTrigger) x(whichUnit) x(whichState) x(opcode) x(limitval) end
---@return junitstate
function GetEventUnitState()  end
---@param whichTrigger jtrigger
---@param whichUnit junit
---@param whichEvent junitevent
---@return jevent
function TriggerRegisterUnitEvent(whichTrigger, whichUnit, whichEvent) x(whichTrigger) x(whichUnit) x(whichEvent) end
---@return number
function GetEventDamage()  end
---@return junit
function GetEventDamageSource()  end
---@return jplayer
function GetEventDetectingPlayer()  end
---@param whichTrigger jtrigger
---@param whichUnit junit
---@param whichEvent junitevent
---@param filter jboolexpr
---@return jevent
function TriggerRegisterFilterUnitEvent(whichTrigger, whichUnit, whichEvent, filter) x(whichTrigger) x(whichUnit) x(whichEvent) x(filter) end
---@return junit
function GetEventTargetUnit()  end
---@param whichTrigger jtrigger
---@param whichUnit junit
---@param range number
---@param filter jboolexpr
---@return jevent
function TriggerRegisterUnitInRange(whichTrigger, whichUnit, range, filter) x(whichTrigger) x(whichUnit) x(range) x(filter) end
---@param whichTrigger jtrigger
---@param condition jboolexpr
---@return jtriggercondition
function TriggerAddCondition(whichTrigger, condition) x(whichTrigger) x(condition) end
---@param whichTrigger jtrigger
---@param whichCondition jtriggercondition
function TriggerRemoveCondition(whichTrigger, whichCondition) x(whichTrigger) x(whichCondition) end
---@param whichTrigger jtrigger
function TriggerClearConditions(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
---@param actionFunc function
---@return jtriggeraction
function TriggerAddAction(whichTrigger, actionFunc) x(whichTrigger) x(actionFunc) end
---@param whichTrigger jtrigger
---@param whichAction jtriggeraction
function TriggerRemoveAction(whichTrigger, whichAction) x(whichTrigger) x(whichAction) end
---@param whichTrigger jtrigger
function TriggerClearActions(whichTrigger) x(whichTrigger) end
---@param timeout number
function TriggerSleepAction(timeout) x(timeout) end
---@param s jsound
---@param offset number
function TriggerWaitForSound(s, offset) x(s) x(offset) end
---@param whichTrigger jtrigger
---@return boolean
function TriggerEvaluate(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
function TriggerExecute(whichTrigger) x(whichTrigger) end
---@param whichTrigger jtrigger
function TriggerExecuteWait(whichTrigger) x(whichTrigger) end
function TriggerSyncStart()  end
function TriggerSyncReady()  end
---@param whichWidget jwidget
---@return number
function GetWidgetLife(whichWidget) x(whichWidget) end
---@param whichWidget jwidget
---@param newLife number
function SetWidgetLife(whichWidget, newLife) x(whichWidget) x(newLife) end
---@param whichWidget jwidget
---@return number
function GetWidgetX(whichWidget) x(whichWidget) end
---@param whichWidget jwidget
---@return number
function GetWidgetY(whichWidget) x(whichWidget) end
---@return jwidget
function GetTriggerWidget()  end
---@param objectid number
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDestructable(objectid, x, y, face, scale, variation) x(objectid) x(x) x(y) x(face) x(scale) x(variation) end
---@param objectid number
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDestructableZ(objectid, x, y, z, face, scale, variation) x(objectid) x(x) x(y) x(z) x(face) x(scale) x(variation) end
---@param objectid number
---@param x number
---@param y number
---@param face number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDeadDestructable(objectid, x, y, face, scale, variation) x(objectid) x(x) x(y) x(face) x(scale) x(variation) end
---@param objectid number
---@param x number
---@param y number
---@param z number
---@param face number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation) x(objectid) x(x) x(y) x(z) x(face) x(scale) x(variation) end
---@param d jdestructable
function RemoveDestructable(d) x(d) end
---@param d jdestructable
function KillDestructable(d) x(d) end
---@param d jdestructable
---@param flag boolean
function SetDestructableInvulnerable(d, flag) x(d) x(flag) end
---@param d jdestructable
---@return boolean
function IsDestructableInvulnerable(d) x(d) end
---@param r jrect
---@param filter jboolexpr
---@param actionFunc function
function EnumDestructablesInRect(r, filter, actionFunc) x(r) x(filter) x(actionFunc) end
---@param d jdestructable
---@return number
function GetDestructableTypeId(d) x(d) end
---@param d jdestructable
---@return number
function GetDestructableX(d) x(d) end
---@param d jdestructable
---@return number
function GetDestructableY(d) x(d) end
---@param d jdestructable
---@param life number
function SetDestructableLife(d, life) x(d) x(life) end
---@param d jdestructable
---@return number
function GetDestructableLife(d) x(d) end
---@param d jdestructable
---@param max number
function SetDestructableMaxLife(d, max) x(d) x(max) end
---@param d jdestructable
---@return number
function GetDestructableMaxLife(d) x(d) end
---@param d jdestructable
---@param life number
---@param birth boolean
function DestructableRestoreLife(d, life, birth) x(d) x(life) x(birth) end
---@param d jdestructable
---@param whichAnimation string
function QueueDestructableAnimation(d, whichAnimation) x(d) x(whichAnimation) end
---@param d jdestructable
---@param whichAnimation string
function SetDestructableAnimation(d, whichAnimation) x(d) x(whichAnimation) end
---@param d jdestructable
---@param speedFactor number
function SetDestructableAnimationSpeed(d, speedFactor) x(d) x(speedFactor) end
---@param d jdestructable
---@param flag boolean
function ShowDestructable(d, flag) x(d) x(flag) end
---@param d jdestructable
---@return number
function GetDestructableOccluderHeight(d) x(d) end
---@param d jdestructable
---@param height number
function SetDestructableOccluderHeight(d, height) x(d) x(height) end
---@param d jdestructable
---@return string
function GetDestructableName(d) x(d) end
---@return jdestructable
function GetTriggerDestructable()  end
---@param itemid number
---@param x number
---@param y number
---@return jitem
function CreateItem(itemid, x, y) x(itemid) x(x) x(y) end
---@param whichItem jitem
function RemoveItem(whichItem) x(whichItem) end
---@param whichItem jitem
---@return jplayer
function GetItemPlayer(whichItem) x(whichItem) end
---@param i jitem
---@return number
function GetItemTypeId(i) x(i) end
---@param i jitem
---@return number
function GetItemX(i) x(i) end
---@param i jitem
---@return number
function GetItemY(i) x(i) end
---@param i jitem
---@param x number
---@param y number
function SetItemPosition(i, x, y) x(i) x(x) x(y) end
---@param whichItem jitem
---@param flag boolean
function SetItemDropOnDeath(whichItem, flag) x(whichItem) x(flag) end
---@param i jitem
---@param flag boolean
function SetItemDroppable(i, flag) x(i) x(flag) end
---@param i jitem
---@param flag boolean
function SetItemPawnable(i, flag) x(i) x(flag) end
---@param whichItem jitem
---@param whichPlayer jplayer
---@param changeColor boolean
function SetItemPlayer(whichItem, whichPlayer, changeColor) x(whichItem) x(whichPlayer) x(changeColor) end
---@param whichItem jitem
---@param flag boolean
function SetItemInvulnerable(whichItem, flag) x(whichItem) x(flag) end
---@param whichItem jitem
---@return boolean
function IsItemInvulnerable(whichItem) x(whichItem) end
---@param whichItem jitem
---@param show boolean
function SetItemVisible(whichItem, show) x(whichItem) x(show) end
---@param whichItem jitem
---@return boolean
function IsItemVisible(whichItem) x(whichItem) end
---@param whichItem jitem
---@return boolean
function IsItemOwned(whichItem) x(whichItem) end
---@param whichItem jitem
---@return boolean
function IsItemPowerup(whichItem) x(whichItem) end
---@param whichItem jitem
---@return boolean
function IsItemSellable(whichItem) x(whichItem) end
---@param whichItem jitem
---@return boolean
function IsItemPawnable(whichItem) x(whichItem) end
---@param itemId number
---@return boolean
function IsItemIdPowerup(itemId) x(itemId) end
---@param itemId number
---@return boolean
function IsItemIdSellable(itemId) x(itemId) end
---@param itemId number
---@return boolean
function IsItemIdPawnable(itemId) x(itemId) end
---@param r jrect
---@param filter jboolexpr
---@param actionFunc function
function EnumItemsInRect(r, filter, actionFunc) x(r) x(filter) x(actionFunc) end
---@param whichItem jitem
---@return number
function GetItemLevel(whichItem) x(whichItem) end
---@param whichItem jitem
---@return jitemtype
function GetItemType(whichItem) x(whichItem) end
---@param whichItem jitem
---@param unitId number
function SetItemDropID(whichItem, unitId) x(whichItem) x(unitId) end
---@param whichItem jitem
---@return string
function GetItemName(whichItem) x(whichItem) end
---@param whichItem jitem
---@return number
function GetItemCharges(whichItem) x(whichItem) end
---@param whichItem jitem
---@param charges number
function SetItemCharges(whichItem, charges) x(whichItem) x(charges) end
---@param whichItem jitem
---@return number
function GetItemUserData(whichItem) x(whichItem) end
---@param whichItem jitem
---@param data number
function SetItemUserData(whichItem, data) x(whichItem) x(data) end
---@param id jplayer
---@param unitid number
---@param x number
---@param y number
---@param face number
---@return junit
function CreateUnit(id, unitid, x, y, face) x(id) x(unitid) x(x) x(y) x(face) end
---@param whichPlayer jplayer
---@param unitname string
---@param x number
---@param y number
---@param face number
---@return junit
function CreateUnitByName(whichPlayer, unitname, x, y, face) x(whichPlayer) x(unitname) x(x) x(y) x(face) end
---@param id jplayer
---@param unitid number
---@param whichLocation jlocation
---@param face number
---@return junit
function CreateUnitAtLoc(id, unitid, whichLocation, face) x(id) x(unitid) x(whichLocation) x(face) end
---@param id jplayer
---@param unitname string
---@param whichLocation jlocation
---@param face number
---@return junit
function CreateUnitAtLocByName(id, unitname, whichLocation, face) x(id) x(unitname) x(whichLocation) x(face) end
---@param whichPlayer jplayer
---@param unitid number
---@param x number
---@param y number
---@param face number
---@return junit
function CreateCorpse(whichPlayer, unitid, x, y, face) x(whichPlayer) x(unitid) x(x) x(y) x(face) end
---@param whichUnit junit
function KillUnit(whichUnit) x(whichUnit) end
---@param whichUnit junit
function RemoveUnit(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param show boolean
function ShowUnit(whichUnit, show) x(whichUnit) x(show) end
---@param whichUnit junit
---@param whichUnitState junitstate
---@param newVal number
function SetUnitState(whichUnit, whichUnitState, newVal) x(whichUnit) x(whichUnitState) x(newVal) end
---@param whichUnit junit
---@param newX number
function SetUnitX(whichUnit, newX) x(whichUnit) x(newX) end
---@param whichUnit junit
---@param newY number
function SetUnitY(whichUnit, newY) x(whichUnit) x(newY) end
---@param whichUnit junit
---@param newX number
---@param newY number
function SetUnitPosition(whichUnit, newX, newY) x(whichUnit) x(newX) x(newY) end
---@param whichUnit junit
---@param whichLocation jlocation
function SetUnitPositionLoc(whichUnit, whichLocation) x(whichUnit) x(whichLocation) end
---@param whichUnit junit
---@param facingAngle number
function SetUnitFacing(whichUnit, facingAngle) x(whichUnit) x(facingAngle) end
---@param whichUnit junit
---@param facingAngle number
---@param duration number
function SetUnitFacingTimed(whichUnit, facingAngle, duration) x(whichUnit) x(facingAngle) x(duration) end
---@param whichUnit junit
---@param newSpeed number
function SetUnitMoveSpeed(whichUnit, newSpeed) x(whichUnit) x(newSpeed) end
---@param whichUnit junit
---@param newHeight number
---@param rate number
function SetUnitFlyHeight(whichUnit, newHeight, rate) x(whichUnit) x(newHeight) x(rate) end
---@param whichUnit junit
---@param newTurnSpeed number
function SetUnitTurnSpeed(whichUnit, newTurnSpeed) x(whichUnit) x(newTurnSpeed) end
---@param whichUnit junit
---@param newPropWindowAngle number
function SetUnitPropWindow(whichUnit, newPropWindowAngle) x(whichUnit) x(newPropWindowAngle) end
---@param whichUnit junit
---@param newAcquireRange number
function SetUnitAcquireRange(whichUnit, newAcquireRange) x(whichUnit) x(newAcquireRange) end
---@param whichUnit junit
---@param creepGuard boolean
function SetUnitCreepGuard(whichUnit, creepGuard) x(whichUnit) x(creepGuard) end
---@param whichUnit junit
---@return number
function GetUnitAcquireRange(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitTurnSpeed(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitPropWindow(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitFlyHeight(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultAcquireRange(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultTurnSpeed(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultPropWindow(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultFlyHeight(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@param changeColor boolean
function SetUnitOwner(whichUnit, whichPlayer, changeColor) x(whichUnit) x(whichPlayer) x(changeColor) end
---@param whichUnit junit
---@param whichColor jplayercolor
function SetUnitColor(whichUnit, whichColor) x(whichUnit) x(whichColor) end
---@param whichUnit junit
---@param scaleX number
---@param scaleY number
---@param scaleZ number
function SetUnitScale(whichUnit, scaleX, scaleY, scaleZ) x(whichUnit) x(scaleX) x(scaleY) x(scaleZ) end
---@param whichUnit junit
---@param timeScale number
function SetUnitTimeScale(whichUnit, timeScale) x(whichUnit) x(timeScale) end
---@param whichUnit junit
---@param blendTime number
function SetUnitBlendTime(whichUnit, blendTime) x(whichUnit) x(blendTime) end
---@param whichUnit junit
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetUnitVertexColor(whichUnit, red, green, blue, alpha) x(whichUnit) x(red) x(green) x(blue) x(alpha) end
---@param whichUnit junit
---@param whichAnimation string
function QueueUnitAnimation(whichUnit, whichAnimation) x(whichUnit) x(whichAnimation) end
---@param whichUnit junit
---@param whichAnimation string
function SetUnitAnimation(whichUnit, whichAnimation) x(whichUnit) x(whichAnimation) end
---@param whichUnit junit
---@param whichAnimation number
function SetUnitAnimationByIndex(whichUnit, whichAnimation) x(whichUnit) x(whichAnimation) end
---@param whichUnit junit
---@param whichAnimation string
---@param rarity jraritycontrol
function SetUnitAnimationWithRarity(whichUnit, whichAnimation, rarity) x(whichUnit) x(whichAnimation) x(rarity) end
---@param whichUnit junit
---@param animProperties string
---@param add boolean
function AddUnitAnimationProperties(whichUnit, animProperties, add) x(whichUnit) x(animProperties) x(add) end
---@param whichUnit junit
---@param whichBone string
---@param lookAtTarget junit
---@param offsetX number
---@param offsetY number
---@param offsetZ number
function SetUnitLookAt(whichUnit, whichBone, lookAtTarget, offsetX, offsetY, offsetZ) x(whichUnit) x(whichBone) x(lookAtTarget) x(offsetX) x(offsetY) x(offsetZ) end
---@param whichUnit junit
function ResetUnitLookAt(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param byWhichPlayer jplayer
---@param flag boolean
function SetUnitRescuable(whichUnit, byWhichPlayer, flag) x(whichUnit) x(byWhichPlayer) x(flag) end
---@param whichUnit junit
---@param range number
function SetUnitRescueRange(whichUnit, range) x(whichUnit) x(range) end
---@param whichHero junit
---@param newStr number
---@param permanent boolean
function SetHeroStr(whichHero, newStr, permanent) x(whichHero) x(newStr) x(permanent) end
---@param whichHero junit
---@param newAgi number
---@param permanent boolean
function SetHeroAgi(whichHero, newAgi, permanent) x(whichHero) x(newAgi) x(permanent) end
---@param whichHero junit
---@param newInt number
---@param permanent boolean
function SetHeroInt(whichHero, newInt, permanent) x(whichHero) x(newInt) x(permanent) end
---@param whichHero junit
---@param includeBonuses boolean
---@return number
function GetHeroStr(whichHero, includeBonuses) x(whichHero) x(includeBonuses) end
---@param whichHero junit
---@param includeBonuses boolean
---@return number
function GetHeroAgi(whichHero, includeBonuses) x(whichHero) x(includeBonuses) end
---@param whichHero junit
---@param includeBonuses boolean
---@return number
function GetHeroInt(whichHero, includeBonuses) x(whichHero) x(includeBonuses) end
---@param whichHero junit
---@param howManyLevels number
---@return boolean
function UnitStripHeroLevel(whichHero, howManyLevels) x(whichHero) x(howManyLevels) end
---@param whichHero junit
---@return number
function GetHeroXP(whichHero) x(whichHero) end
---@param whichHero junit
---@param newXpVal number
---@param showEyeCandy boolean
function SetHeroXP(whichHero, newXpVal, showEyeCandy) x(whichHero) x(newXpVal) x(showEyeCandy) end
---@param whichHero junit
---@return number
function GetHeroSkillPoints(whichHero) x(whichHero) end
---@param whichHero junit
---@param skillPointDelta number
---@return boolean
function UnitModifySkillPoints(whichHero, skillPointDelta) x(whichHero) x(skillPointDelta) end
---@param whichHero junit
---@param xpToAdd number
---@param showEyeCandy boolean
function AddHeroXP(whichHero, xpToAdd, showEyeCandy) x(whichHero) x(xpToAdd) x(showEyeCandy) end
---@param whichHero junit
---@param level number
---@param showEyeCandy boolean
function SetHeroLevel(whichHero, level, showEyeCandy) x(whichHero) x(level) x(showEyeCandy) end
---@param whichHero junit
---@return number
function GetHeroLevel(whichHero) x(whichHero) end
---@param whichUnit junit
---@return number
function GetUnitLevel(whichUnit) x(whichUnit) end
---@param whichHero junit
---@return string
function GetHeroProperName(whichHero) x(whichHero) end
---@param whichHero junit
---@param flag boolean
function SuspendHeroXP(whichHero, flag) x(whichHero) x(flag) end
---@param whichHero junit
---@return boolean
function IsSuspendedXP(whichHero) x(whichHero) end
---@param whichHero junit
---@param abilcode number
function SelectHeroSkill(whichHero, abilcode) x(whichHero) x(abilcode) end
---@param whichUnit junit
---@param abilcode number
---@return number
function GetUnitAbilityLevel(whichUnit, abilcode) x(whichUnit) x(abilcode) end
---@param whichUnit junit
---@param abilcode number
---@return number
function DecUnitAbilityLevel(whichUnit, abilcode) x(whichUnit) x(abilcode) end
---@param whichUnit junit
---@param abilcode number
---@return number
function IncUnitAbilityLevel(whichUnit, abilcode) x(whichUnit) x(abilcode) end
---@param whichUnit junit
---@param abilcode number
---@param level number
---@return number
function SetUnitAbilityLevel(whichUnit, abilcode, level) x(whichUnit) x(abilcode) x(level) end
---@param whichHero junit
---@param x number
---@param y number
---@param doEyecandy boolean
---@return boolean
function ReviveHero(whichHero, x, y, doEyecandy) x(whichHero) x(x) x(y) x(doEyecandy) end
---@param whichHero junit
---@param loc jlocation
---@param doEyecandy boolean
---@return boolean
function ReviveHeroLoc(whichHero, loc, doEyecandy) x(whichHero) x(loc) x(doEyecandy) end
---@param whichUnit junit
---@param exploded boolean
function SetUnitExploded(whichUnit, exploded) x(whichUnit) x(exploded) end
---@param whichUnit junit
---@param flag boolean
function SetUnitInvulnerable(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichUnit junit
---@param flag boolean
function PauseUnit(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichHero junit
---@return boolean
function IsUnitPaused(whichHero) x(whichHero) end
---@param whichUnit junit
---@param flag boolean
function SetUnitPathing(whichUnit, flag) x(whichUnit) x(flag) end
function ClearSelection()  end
---@param whichUnit junit
---@param flag boolean
function SelectUnit(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichUnit junit
---@return number
function GetUnitPointValue(whichUnit) x(whichUnit) end
---@param unitType number
---@return number
function GetUnitPointValueByType(unitType) x(unitType) end
---@param whichUnit junit
---@param whichItem jitem
---@return boolean
function UnitAddItem(whichUnit, whichItem) x(whichUnit) x(whichItem) end
---@param whichUnit junit
---@param itemId number
---@return jitem
function UnitAddItemById(whichUnit, itemId) x(whichUnit) x(itemId) end
---@param whichUnit junit
---@param itemId number
---@param itemSlot number
---@return boolean
function UnitAddItemToSlotById(whichUnit, itemId, itemSlot) x(whichUnit) x(itemId) x(itemSlot) end
---@param whichUnit junit
---@param whichItem jitem
function UnitRemoveItem(whichUnit, whichItem) x(whichUnit) x(whichItem) end
---@param whichUnit junit
---@param itemSlot number
---@return jitem
function UnitRemoveItemFromSlot(whichUnit, itemSlot) x(whichUnit) x(itemSlot) end
---@param whichUnit junit
---@param whichItem jitem
---@return boolean
function UnitHasItem(whichUnit, whichItem) x(whichUnit) x(whichItem) end
---@param whichUnit junit
---@param itemSlot number
---@return jitem
function UnitItemInSlot(whichUnit, itemSlot) x(whichUnit) x(itemSlot) end
---@param whichUnit junit
---@return number
function UnitInventorySize(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param whichItem jitem
---@param x number
---@param y number
---@return boolean
function UnitDropItemPoint(whichUnit, whichItem, x, y) x(whichUnit) x(whichItem) x(x) x(y) end
---@param whichUnit junit
---@param whichItem jitem
---@param slot number
---@return boolean
function UnitDropItemSlot(whichUnit, whichItem, slot) x(whichUnit) x(whichItem) x(slot) end
---@param whichUnit junit
---@param whichItem jitem
---@param target jwidget
---@return boolean
function UnitDropItemTarget(whichUnit, whichItem, target) x(whichUnit) x(whichItem) x(target) end
---@param whichUnit junit
---@param whichItem jitem
---@return boolean
function UnitUseItem(whichUnit, whichItem) x(whichUnit) x(whichItem) end
---@param whichUnit junit
---@param whichItem jitem
---@param x number
---@param y number
---@return boolean
function UnitUseItemPoint(whichUnit, whichItem, x, y) x(whichUnit) x(whichItem) x(x) x(y) end
---@param whichUnit junit
---@param whichItem jitem
---@param target jwidget
---@return boolean
function UnitUseItemTarget(whichUnit, whichItem, target) x(whichUnit) x(whichItem) x(target) end
---@param whichUnit junit
---@return number
function GetUnitX(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitY(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return jlocation
function GetUnitLoc(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitFacing(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitMoveSpeed(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultMoveSpeed(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param whichUnitState junitstate
---@return number
function GetUnitState(whichUnit, whichUnitState) x(whichUnit) x(whichUnitState) end
---@param whichUnit junit
---@return jplayer
function GetOwningPlayer(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitTypeId(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return jrace
function GetUnitRace(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return string
function GetUnitName(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitFoodUsed(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitFoodMade(whichUnit) x(whichUnit) end
---@param unitId number
---@return number
function GetFoodMade(unitId) x(unitId) end
---@param unitId number
---@return number
function GetFoodUsed(unitId) x(unitId) end
---@param whichUnit junit
---@param useFood boolean
function SetUnitUseFood(whichUnit, useFood) x(whichUnit) x(useFood) end
---@param whichUnit junit
---@return jlocation
function GetUnitRallyPoint(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return junit
function GetUnitRallyUnit(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return jdestructable
function GetUnitRallyDestructable(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param whichGroup jgroup
---@return boolean
function IsUnitInGroup(whichUnit, whichGroup) x(whichUnit) x(whichGroup) end
---@param whichUnit junit
---@param whichForce jforce
---@return boolean
function IsUnitInForce(whichUnit, whichForce) x(whichUnit) x(whichForce) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitOwnedByPlayer(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitAlly(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitEnemy(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitVisible(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitDetected(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitInvisible(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitFogged(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitMasked(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@return boolean
function IsUnitSelected(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichRace jrace
---@return boolean
function IsUnitRace(whichUnit, whichRace) x(whichUnit) x(whichRace) end
---@param whichUnit junit
---@param whichUnitType junittype
---@return boolean
function IsUnitType(whichUnit, whichUnitType) x(whichUnit) x(whichUnitType) end
---@param whichUnit junit
---@param whichSpecifiedUnit junit
---@return boolean
function IsUnit(whichUnit, whichSpecifiedUnit) x(whichUnit) x(whichSpecifiedUnit) end
---@param whichUnit junit
---@param otherUnit junit
---@param distance number
---@return boolean
function IsUnitInRange(whichUnit, otherUnit, distance) x(whichUnit) x(otherUnit) x(distance) end
---@param whichUnit junit
---@param x number
---@param y number
---@param distance number
---@return boolean
function IsUnitInRangeXY(whichUnit, x, y, distance) x(whichUnit) x(x) x(y) x(distance) end
---@param whichUnit junit
---@param whichLocation jlocation
---@param distance number
---@return boolean
function IsUnitInRangeLoc(whichUnit, whichLocation, distance) x(whichUnit) x(whichLocation) x(distance) end
---@param whichUnit junit
---@return boolean
function IsUnitHidden(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function IsUnitIllusion(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param whichTransport junit
---@return boolean
function IsUnitInTransport(whichUnit, whichTransport) x(whichUnit) x(whichTransport) end
---@param whichUnit junit
---@return boolean
function IsUnitLoaded(whichUnit) x(whichUnit) end
---@param unitId number
---@return boolean
function IsHeroUnitId(unitId) x(unitId) end
---@param unitId number
---@param whichUnitType junittype
---@return boolean
function IsUnitIdType(unitId, whichUnitType) x(unitId) x(whichUnitType) end
---@param whichUnit junit
---@param whichPlayer jplayer
---@param share boolean
function UnitShareVision(whichUnit, whichPlayer, share) x(whichUnit) x(whichPlayer) x(share) end
---@param whichUnit junit
---@param suspend boolean
function UnitSuspendDecay(whichUnit, suspend) x(whichUnit) x(suspend) end
---@param whichUnit junit
---@param whichUnitType junittype
---@return boolean
function UnitAddType(whichUnit, whichUnitType) x(whichUnit) x(whichUnitType) end
---@param whichUnit junit
---@param whichUnitType junittype
---@return boolean
function UnitRemoveType(whichUnit, whichUnitType) x(whichUnit) x(whichUnitType) end
---@param whichUnit junit
---@param abilityId number
---@return boolean
function UnitAddAbility(whichUnit, abilityId) x(whichUnit) x(abilityId) end
---@param whichUnit junit
---@param abilityId number
---@return boolean
function UnitRemoveAbility(whichUnit, abilityId) x(whichUnit) x(abilityId) end
---@param whichUnit junit
---@param permanent boolean
---@param abilityId number
---@return boolean
function UnitMakeAbilityPermanent(whichUnit, permanent, abilityId) x(whichUnit) x(permanent) x(abilityId) end
---@param whichUnit junit
---@param removePositive boolean
---@param removeNegative boolean
function UnitRemoveBuffs(whichUnit, removePositive, removeNegative) x(whichUnit) x(removePositive) x(removeNegative) end
---@param whichUnit junit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
function UnitRemoveBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) x(whichUnit) x(removePositive) x(removeNegative) x(magic) x(physical) x(timedLife) x(aura) x(autoDispel) end
---@param whichUnit junit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return boolean
function UnitHasBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) x(whichUnit) x(removePositive) x(removeNegative) x(magic) x(physical) x(timedLife) x(aura) x(autoDispel) end
---@param whichUnit junit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return number
function UnitCountBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) x(whichUnit) x(removePositive) x(removeNegative) x(magic) x(physical) x(timedLife) x(aura) x(autoDispel) end
---@param whichUnit junit
---@param add boolean
function UnitAddSleep(whichUnit, add) x(whichUnit) x(add) end
---@param whichUnit junit
---@return boolean
function UnitCanSleep(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param add boolean
function UnitAddSleepPerm(whichUnit, add) x(whichUnit) x(add) end
---@param whichUnit junit
---@return boolean
function UnitCanSleepPerm(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function UnitIsSleeping(whichUnit) x(whichUnit) end
---@param whichUnit junit
function UnitWakeUp(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param buffId number
---@param duration number
function UnitApplyTimedLife(whichUnit, buffId, duration) x(whichUnit) x(buffId) x(duration) end
---@param whichUnit junit
---@param flag boolean
---@return boolean
function UnitIgnoreAlarm(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichUnit junit
---@return boolean
function UnitIgnoreAlarmToggled(whichUnit) x(whichUnit) end
---@param whichUnit junit
function UnitResetCooldown(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param constructionPercentage number
function UnitSetConstructionProgress(whichUnit, constructionPercentage) x(whichUnit) x(constructionPercentage) end
---@param whichUnit junit
---@param upgradePercentage number
function UnitSetUpgradeProgress(whichUnit, upgradePercentage) x(whichUnit) x(upgradePercentage) end
---@param whichUnit junit
---@param flag boolean
function UnitPauseTimedLife(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichUnit junit
---@param flag boolean
function UnitSetUsesAltIcon(whichUnit, flag) x(whichUnit) x(flag) end
---@param whichUnit junit
---@param delay number
---@param radius number
---@param x number
---@param y number
---@param amount number
---@param attack boolean
---@param ranged boolean
---@param attackType jattacktype
---@param damageType jdamagetype
---@param weaponType jweapontype
---@return boolean
function UnitDamagePoint(whichUnit, delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType) x(whichUnit) x(delay) x(radius) x(x) x(y) x(amount) x(attack) x(ranged) x(attackType) x(damageType) x(weaponType) end
---@param whichUnit junit
---@param target jwidget
---@param amount number
---@param attack boolean
---@param ranged boolean
---@param attackType jattacktype
---@param damageType jdamagetype
---@param weaponType jweapontype
---@return boolean
function UnitDamageTarget(whichUnit, target, amount, attack, ranged, attackType, damageType, weaponType) x(whichUnit) x(target) x(amount) x(attack) x(ranged) x(attackType) x(damageType) x(weaponType) end
---@param whichUnit junit
---@param order string
---@return boolean
function IssueImmediateOrder(whichUnit, order) x(whichUnit) x(order) end
---@param whichUnit junit
---@param order number
---@return boolean
function IssueImmediateOrderById(whichUnit, order) x(whichUnit) x(order) end
---@param whichUnit junit
---@param order string
---@param x number
---@param y number
---@return boolean
function IssuePointOrder(whichUnit, order, x, y) x(whichUnit) x(order) x(x) x(y) end
---@param whichUnit junit
---@param order string
---@param whichLocation jlocation
---@return boolean
function IssuePointOrderLoc(whichUnit, order, whichLocation) x(whichUnit) x(order) x(whichLocation) end
---@param whichUnit junit
---@param order number
---@param x number
---@param y number
---@return boolean
function IssuePointOrderById(whichUnit, order, x, y) x(whichUnit) x(order) x(x) x(y) end
---@param whichUnit junit
---@param order number
---@param whichLocation jlocation
---@return boolean
function IssuePointOrderByIdLoc(whichUnit, order, whichLocation) x(whichUnit) x(order) x(whichLocation) end
---@param whichUnit junit
---@param order string
---@param targetWidget jwidget
---@return boolean
function IssueTargetOrder(whichUnit, order, targetWidget) x(whichUnit) x(order) x(targetWidget) end
---@param whichUnit junit
---@param order number
---@param targetWidget jwidget
---@return boolean
function IssueTargetOrderById(whichUnit, order, targetWidget) x(whichUnit) x(order) x(targetWidget) end
---@param whichUnit junit
---@param order string
---@param x number
---@param y number
---@param instantTargetWidget jwidget
---@return boolean
function IssueInstantPointOrder(whichUnit, order, x, y, instantTargetWidget) x(whichUnit) x(order) x(x) x(y) x(instantTargetWidget) end
---@param whichUnit junit
---@param order number
---@param x number
---@param y number
---@param instantTargetWidget jwidget
---@return boolean
function IssueInstantPointOrderById(whichUnit, order, x, y, instantTargetWidget) x(whichUnit) x(order) x(x) x(y) x(instantTargetWidget) end
---@param whichUnit junit
---@param order string
---@param targetWidget jwidget
---@param instantTargetWidget jwidget
---@return boolean
function IssueInstantTargetOrder(whichUnit, order, targetWidget, instantTargetWidget) x(whichUnit) x(order) x(targetWidget) x(instantTargetWidget) end
---@param whichUnit junit
---@param order number
---@param targetWidget jwidget
---@param instantTargetWidget jwidget
---@return boolean
function IssueInstantTargetOrderById(whichUnit, order, targetWidget, instantTargetWidget) x(whichUnit) x(order) x(targetWidget) x(instantTargetWidget) end
---@param whichPeon junit
---@param unitToBuild string
---@param x number
---@param y number
---@return boolean
function IssueBuildOrder(whichPeon, unitToBuild, x, y) x(whichPeon) x(unitToBuild) x(x) x(y) end
---@param whichPeon junit
---@param unitId number
---@param x number
---@param y number
---@return boolean
function IssueBuildOrderById(whichPeon, unitId, x, y) x(whichPeon) x(unitId) x(x) x(y) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitToBuild string
---@return boolean
function IssueNeutralImmediateOrder(forWhichPlayer, neutralStructure, unitToBuild) x(forWhichPlayer) x(neutralStructure) x(unitToBuild) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitId number
---@return boolean
function IssueNeutralImmediateOrderById(forWhichPlayer, neutralStructure, unitId) x(forWhichPlayer) x(neutralStructure) x(unitId) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitToBuild string
---@param x number
---@param y number
---@return boolean
function IssueNeutralPointOrder(forWhichPlayer, neutralStructure, unitToBuild, x, y) x(forWhichPlayer) x(neutralStructure) x(unitToBuild) x(x) x(y) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitId number
---@param x number
---@param y number
---@return boolean
function IssueNeutralPointOrderById(forWhichPlayer, neutralStructure, unitId, x, y) x(forWhichPlayer) x(neutralStructure) x(unitId) x(x) x(y) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitToBuild string
---@param target jwidget
---@return boolean
function IssueNeutralTargetOrder(forWhichPlayer, neutralStructure, unitToBuild, target) x(forWhichPlayer) x(neutralStructure) x(unitToBuild) x(target) end
---@param forWhichPlayer jplayer
---@param neutralStructure junit
---@param unitId number
---@param target jwidget
---@return boolean
function IssueNeutralTargetOrderById(forWhichPlayer, neutralStructure, unitId, target) x(forWhichPlayer) x(neutralStructure) x(unitId) x(target) end
---@param whichUnit junit
---@return number
function GetUnitCurrentOrder(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param amount number
function SetResourceAmount(whichUnit, amount) x(whichUnit) x(amount) end
---@param whichUnit junit
---@param amount number
function AddResourceAmount(whichUnit, amount) x(whichUnit) x(amount) end
---@param whichUnit junit
---@return number
function GetResourceAmount(whichUnit) x(whichUnit) end
---@param waygate junit
---@return number
function WaygateGetDestinationX(waygate) x(waygate) end
---@param waygate junit
---@return number
function WaygateGetDestinationY(waygate) x(waygate) end
---@param waygate junit
---@param x number
---@param y number
function WaygateSetDestination(waygate, x, y) x(waygate) x(x) x(y) end
---@param waygate junit
---@param activate boolean
function WaygateActivate(waygate, activate) x(waygate) x(activate) end
---@param waygate junit
---@return boolean
function WaygateIsActive(waygate) x(waygate) end
---@param itemId number
---@param currentStock number
---@param stockMax number
function AddItemToAllStock(itemId, currentStock, stockMax) x(itemId) x(currentStock) x(stockMax) end
---@param whichUnit junit
---@param itemId number
---@param currentStock number
---@param stockMax number
function AddItemToStock(whichUnit, itemId, currentStock, stockMax) x(whichUnit) x(itemId) x(currentStock) x(stockMax) end
---@param unitId number
---@param currentStock number
---@param stockMax number
function AddUnitToAllStock(unitId, currentStock, stockMax) x(unitId) x(currentStock) x(stockMax) end
---@param whichUnit junit
---@param unitId number
---@param currentStock number
---@param stockMax number
function AddUnitToStock(whichUnit, unitId, currentStock, stockMax) x(whichUnit) x(unitId) x(currentStock) x(stockMax) end
---@param itemId number
function RemoveItemFromAllStock(itemId) x(itemId) end
---@param whichUnit junit
---@param itemId number
function RemoveItemFromStock(whichUnit, itemId) x(whichUnit) x(itemId) end
---@param unitId number
function RemoveUnitFromAllStock(unitId) x(unitId) end
---@param whichUnit junit
---@param unitId number
function RemoveUnitFromStock(whichUnit, unitId) x(whichUnit) x(unitId) end
---@param slots number
function SetAllItemTypeSlots(slots) x(slots) end
---@param slots number
function SetAllUnitTypeSlots(slots) x(slots) end
---@param whichUnit junit
---@param slots number
function SetItemTypeSlots(whichUnit, slots) x(whichUnit) x(slots) end
---@param whichUnit junit
---@param slots number
function SetUnitTypeSlots(whichUnit, slots) x(whichUnit) x(slots) end
---@param whichUnit junit
---@return number
function GetUnitUserData(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param data number
function SetUnitUserData(whichUnit, data) x(whichUnit) x(data) end
---@param number number
---@return jplayer
function Player(number) x(number) end
---@return jplayer
function GetLocalPlayer()  end
---@param whichPlayer jplayer
---@param otherPlayer jplayer
---@return boolean
function IsPlayerAlly(whichPlayer, otherPlayer) x(whichPlayer) x(otherPlayer) end
---@param whichPlayer jplayer
---@param otherPlayer jplayer
---@return boolean
function IsPlayerEnemy(whichPlayer, otherPlayer) x(whichPlayer) x(otherPlayer) end
---@param whichPlayer jplayer
---@param whichForce jforce
---@return boolean
function IsPlayerInForce(whichPlayer, whichForce) x(whichPlayer) x(whichForce) end
---@param whichPlayer jplayer
---@return boolean
function IsPlayerObserver(whichPlayer) x(whichPlayer) end
---@param x number
---@param y number
---@param whichPlayer jplayer
---@return boolean
function IsVisibleToPlayer(x, y, whichPlayer) x(x) x(y) x(whichPlayer) end
---@param whichLocation jlocation
---@param whichPlayer jplayer
---@return boolean
function IsLocationVisibleToPlayer(whichLocation, whichPlayer) x(whichLocation) x(whichPlayer) end
---@param x number
---@param y number
---@param whichPlayer jplayer
---@return boolean
function IsFoggedToPlayer(x, y, whichPlayer) x(x) x(y) x(whichPlayer) end
---@param whichLocation jlocation
---@param whichPlayer jplayer
---@return boolean
function IsLocationFoggedToPlayer(whichLocation, whichPlayer) x(whichLocation) x(whichPlayer) end
---@param x number
---@param y number
---@param whichPlayer jplayer
---@return boolean
function IsMaskedToPlayer(x, y, whichPlayer) x(x) x(y) x(whichPlayer) end
---@param whichLocation jlocation
---@param whichPlayer jplayer
---@return boolean
function IsLocationMaskedToPlayer(whichLocation, whichPlayer) x(whichLocation) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jrace
function GetPlayerRace(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function GetPlayerId(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param includeIncomplete boolean
---@return number
function GetPlayerUnitCount(whichPlayer, includeIncomplete) x(whichPlayer) x(includeIncomplete) end
---@param whichPlayer jplayer
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return number
function GetPlayerTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades) x(whichPlayer) x(unitName) x(includeIncomplete) x(includeUpgrades) end
---@param whichPlayer jplayer
---@param includeIncomplete boolean
---@return number
function GetPlayerStructureCount(whichPlayer, includeIncomplete) x(whichPlayer) x(includeIncomplete) end
---@param whichPlayer jplayer
---@param whichPlayerState jplayerstate
---@return number
function GetPlayerState(whichPlayer, whichPlayerState) x(whichPlayer) x(whichPlayerState) end
---@param whichPlayer jplayer
---@param whichPlayerScore jplayerscore
---@return number
function GetPlayerScore(whichPlayer, whichPlayerScore) x(whichPlayer) x(whichPlayerScore) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param whichAllianceSetting jalliancetype
---@return boolean
function GetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting) x(sourcePlayer) x(otherPlayer) x(whichAllianceSetting) end
---@param whichPlayer jplayer
---@return number
function GetPlayerHandicap(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function GetPlayerHandicapXP(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param handicap number
function SetPlayerHandicap(whichPlayer, handicap) x(whichPlayer) x(handicap) end
---@param whichPlayer jplayer
---@param handicap number
function SetPlayerHandicapXP(whichPlayer, handicap) x(whichPlayer) x(handicap) end
---@param whichPlayer jplayer
---@param techid number
---@param maximum number
function SetPlayerTechMaxAllowed(whichPlayer, techid, maximum) x(whichPlayer) x(techid) x(maximum) end
---@param whichPlayer jplayer
---@param techid number
---@return number
function GetPlayerTechMaxAllowed(whichPlayer, techid) x(whichPlayer) x(techid) end
---@param whichPlayer jplayer
---@param techid number
---@param levels number
function AddPlayerTechResearched(whichPlayer, techid, levels) x(whichPlayer) x(techid) x(levels) end
---@param whichPlayer jplayer
---@param techid number
---@param setToLevel number
function SetPlayerTechResearched(whichPlayer, techid, setToLevel) x(whichPlayer) x(techid) x(setToLevel) end
---@param whichPlayer jplayer
---@param techid number
---@param specificonly boolean
---@return boolean
function GetPlayerTechResearched(whichPlayer, techid, specificonly) x(whichPlayer) x(techid) x(specificonly) end
---@param whichPlayer jplayer
---@param techid number
---@param specificonly boolean
---@return number
function GetPlayerTechCount(whichPlayer, techid, specificonly) x(whichPlayer) x(techid) x(specificonly) end
---@param whichPlayer jplayer
---@param newOwner number
function SetPlayerUnitsOwner(whichPlayer, newOwner) x(whichPlayer) x(newOwner) end
---@param whichPlayer jplayer
---@param toWhichPlayers jforce
---@param flag boolean
function CripplePlayer(whichPlayer, toWhichPlayers, flag) x(whichPlayer) x(toWhichPlayers) x(flag) end
---@param whichPlayer jplayer
---@param abilid number
---@param avail boolean
function SetPlayerAbilityAvailable(whichPlayer, abilid, avail) x(whichPlayer) x(abilid) x(avail) end
---@param whichPlayer jplayer
---@param whichPlayerState jplayerstate
---@param value number
function SetPlayerState(whichPlayer, whichPlayerState, value) x(whichPlayer) x(whichPlayerState) x(value) end
---@param whichPlayer jplayer
---@param gameResult jplayergameresult
function RemovePlayer(whichPlayer, gameResult) x(whichPlayer) x(gameResult) end
---@param whichPlayer jplayer
function CachePlayerHeroData(whichPlayer) x(whichPlayer) end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param where jrect
---@param useSharedVision boolean
function SetFogStateRect(forWhichPlayer, whichState, where, useSharedVision) x(forWhichPlayer) x(whichState) x(where) x(useSharedVision) end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param centerx number
---@param centerY number
---@param radius number
---@param useSharedVision boolean
function SetFogStateRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision) x(forWhichPlayer) x(whichState) x(centerx) x(centerY) x(radius) x(useSharedVision) end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param center jlocation
---@param radius number
---@param useSharedVision boolean
function SetFogStateRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision) x(forWhichPlayer) x(whichState) x(center) x(radius) x(useSharedVision) end
---@param enable boolean
function FogMaskEnable(enable) x(enable) end
---@return boolean
function IsFogMaskEnabled()  end
---@param enable boolean
function FogEnable(enable) x(enable) end
---@return boolean
function IsFogEnabled()  end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param where jrect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return jfogmodifier
function CreateFogModifierRect(forWhichPlayer, whichState, where, useSharedVision, afterUnits) x(forWhichPlayer) x(whichState) x(where) x(useSharedVision) x(afterUnits) end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param centerx number
---@param centerY number
---@param radius number
---@param useSharedVision boolean
---@param afterUnits boolean
---@return jfogmodifier
function CreateFogModifierRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision, afterUnits) x(forWhichPlayer) x(whichState) x(centerx) x(centerY) x(radius) x(useSharedVision) x(afterUnits) end
---@param forWhichPlayer jplayer
---@param whichState jfogstate
---@param center jlocation
---@param radius number
---@param useSharedVision boolean
---@param afterUnits boolean
---@return jfogmodifier
function CreateFogModifierRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits) x(forWhichPlayer) x(whichState) x(center) x(radius) x(useSharedVision) x(afterUnits) end
---@param whichFogModifier jfogmodifier
function DestroyFogModifier(whichFogModifier) x(whichFogModifier) end
---@param whichFogModifier jfogmodifier
function FogModifierStart(whichFogModifier) x(whichFogModifier) end
---@param whichFogModifier jfogmodifier
function FogModifierStop(whichFogModifier) x(whichFogModifier) end
---@return jversion
function VersionGet()  end
---@param whichVersion jversion
---@return boolean
function VersionCompatible(whichVersion) x(whichVersion) end
---@param whichVersion jversion
---@return boolean
function VersionSupported(whichVersion) x(whichVersion) end
---@param doScoreScreen boolean
function EndGame(doScoreScreen) x(doScoreScreen) end
---@param newLevel string
---@param doScoreScreen boolean
function ChangeLevel(newLevel, doScoreScreen) x(newLevel) x(doScoreScreen) end
---@param doScoreScreen boolean
function RestartGame(doScoreScreen) x(doScoreScreen) end
function ReloadGame()  end
---@param r jrace
function SetCampaignMenuRace(r) x(r) end
---@param campaignIndex number
function SetCampaignMenuRaceEx(campaignIndex) x(campaignIndex) end
function ForceCampaignSelectScreen()  end
---@param saveFileName string
---@param doScoreScreen boolean
function LoadGame(saveFileName, doScoreScreen) x(saveFileName) x(doScoreScreen) end
---@param saveFileName string
function SaveGame(saveFileName) x(saveFileName) end
---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectory(sourceDirName, destDirName) x(sourceDirName) x(destDirName) end
---@param sourceDirName string
---@return boolean
function RemoveSaveDirectory(sourceDirName) x(sourceDirName) end
---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGame(sourceSaveName, destSaveName) x(sourceSaveName) x(destSaveName) end
---@param saveName string
---@return boolean
function SaveGameExists(saveName) x(saveName) end
function SyncSelections()  end
---@param whichFloatGameState jfgamestate
---@param value number
function SetFloatGameState(whichFloatGameState, value) x(whichFloatGameState) x(value) end
---@param whichFloatGameState jfgamestate
---@return number
function GetFloatGameState(whichFloatGameState) x(whichFloatGameState) end
---@param whichIntegerGameState jigamestate
---@param value number
function SetIntegerGameState(whichIntegerGameState, value) x(whichIntegerGameState) x(value) end
---@param whichIntegerGameState jigamestate
---@return number
function GetIntegerGameState(whichIntegerGameState) x(whichIntegerGameState) end
---@param cleared boolean
function SetTutorialCleared(cleared) x(cleared) end
---@param campaignNumber number
---@param missionNumber number
---@param available boolean
function SetMissionAvailable(campaignNumber, missionNumber, available) x(campaignNumber) x(missionNumber) x(available) end
---@param campaignNumber number
---@param available boolean
function SetCampaignAvailable(campaignNumber, available) x(campaignNumber) x(available) end
---@param campaignNumber number
---@param available boolean
function SetOpCinematicAvailable(campaignNumber, available) x(campaignNumber) x(available) end
---@param campaignNumber number
---@param available boolean
function SetEdCinematicAvailable(campaignNumber, available) x(campaignNumber) x(available) end
---@return jgamedifficulty
function GetDefaultDifficulty()  end
---@param g jgamedifficulty
function SetDefaultDifficulty(g) x(g) end
---@param whichButton number
---@param visible boolean
function SetCustomCampaignButtonVisible(whichButton, visible) x(whichButton) x(visible) end
---@param whichButton number
---@return boolean
function GetCustomCampaignButtonVisible(whichButton) x(whichButton) end
function DoNotSaveReplay()  end
---@return jdialog
function DialogCreate()  end
---@param whichDialog jdialog
function DialogDestroy(whichDialog) x(whichDialog) end
---@param whichDialog jdialog
function DialogClear(whichDialog) x(whichDialog) end
---@param whichDialog jdialog
---@param messageText string
function DialogSetMessage(whichDialog, messageText) x(whichDialog) x(messageText) end
---@param whichDialog jdialog
---@param buttonText string
---@param hotkey number
---@return jbutton
function DialogAddButton(whichDialog, buttonText, hotkey) x(whichDialog) x(buttonText) x(hotkey) end
---@param whichDialog jdialog
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey number
---@return jbutton
function DialogAddQuitButton(whichDialog, doScoreScreen, buttonText, hotkey) x(whichDialog) x(doScoreScreen) x(buttonText) x(hotkey) end
---@param whichPlayer jplayer
---@param whichDialog jdialog
---@param flag boolean
function DialogDisplay(whichPlayer, whichDialog, flag) x(whichPlayer) x(whichDialog) x(flag) end
---@return boolean
function ReloadGameCachesFromDisk()  end
---@param campaignFile string
---@return jgamecache
function InitGameCache(campaignFile) x(campaignFile) end
---@param whichCache jgamecache
---@return boolean
function SaveGameCache(whichCache) x(whichCache) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param value number
function StoreInteger(cache, missionKey, key, value) x(cache) x(missionKey) x(key) x(value) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param value number
function StoreReal(cache, missionKey, key, value) x(cache) x(missionKey) x(key) x(value) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param value boolean
function StoreBoolean(cache, missionKey, key, value) x(cache) x(missionKey) x(key) x(value) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param whichUnit junit
---@return boolean
function StoreUnit(cache, missionKey, key, whichUnit) x(cache) x(missionKey) x(key) x(whichUnit) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function StoreString(cache, missionKey, key, value) x(cache) x(missionKey) x(key) x(value) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function SyncStoredInteger(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function SyncStoredReal(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function SyncStoredBoolean(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function SyncStoredUnit(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function SyncStoredString(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredInteger(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredReal(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredBoolean(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredUnit(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredString(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
function FlushGameCache(cache) x(cache) end
---@param cache jgamecache
---@param missionKey string
function FlushStoredMission(cache, missionKey) x(cache) x(missionKey) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function FlushStoredInteger(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function FlushStoredReal(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function FlushStoredBoolean(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function FlushStoredUnit(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
function FlushStoredString(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return number
function GetStoredInteger(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return number
function GetStoredReal(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return boolean
function GetStoredBoolean(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@return string
function GetStoredString(cache, missionKey, key) x(cache) x(missionKey) x(key) end
---@param cache jgamecache
---@param missionKey string
---@param key string
---@param forWhichPlayer jplayer
---@param x number
---@param y number
---@param facing number
---@return junit
function RestoreUnit(cache, missionKey, key, forWhichPlayer, x, y, facing) x(cache) x(missionKey) x(key) x(forWhichPlayer) x(x) x(y) x(facing) end
---@return jhashtable
function InitHashtable()  end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param value number
function SaveInteger(table, parentKey, childKey, value) x(table) x(parentKey) x(childKey) x(value) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param value number
function SaveReal(table, parentKey, childKey, value) x(table) x(parentKey) x(childKey) x(value) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param value boolean
function SaveBoolean(table, parentKey, childKey, value) x(table) x(parentKey) x(childKey) x(value) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param value string
---@return boolean
function SaveStr(table, parentKey, childKey, value) x(table) x(parentKey) x(childKey) x(value) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichPlayer jplayer
---@return boolean
function SavePlayerHandle(table, parentKey, childKey, whichPlayer) x(table) x(parentKey) x(childKey) x(whichPlayer) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichWidget jwidget
---@return boolean
function SaveWidgetHandle(table, parentKey, childKey, whichWidget) x(table) x(parentKey) x(childKey) x(whichWidget) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichDestructable jdestructable
---@return boolean
function SaveDestructableHandle(table, parentKey, childKey, whichDestructable) x(table) x(parentKey) x(childKey) x(whichDestructable) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichItem jitem
---@return boolean
function SaveItemHandle(table, parentKey, childKey, whichItem) x(table) x(parentKey) x(childKey) x(whichItem) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichUnit junit
---@return boolean
function SaveUnitHandle(table, parentKey, childKey, whichUnit) x(table) x(parentKey) x(childKey) x(whichUnit) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichAbility jability
---@return boolean
function SaveAbilityHandle(table, parentKey, childKey, whichAbility) x(table) x(parentKey) x(childKey) x(whichAbility) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTimer jtimer
---@return boolean
function SaveTimerHandle(table, parentKey, childKey, whichTimer) x(table) x(parentKey) x(childKey) x(whichTimer) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTrigger jtrigger
---@return boolean
function SaveTriggerHandle(table, parentKey, childKey, whichTrigger) x(table) x(parentKey) x(childKey) x(whichTrigger) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTriggercondition jtriggercondition
---@return boolean
function SaveTriggerConditionHandle(table, parentKey, childKey, whichTriggercondition) x(table) x(parentKey) x(childKey) x(whichTriggercondition) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTriggeraction jtriggeraction
---@return boolean
function SaveTriggerActionHandle(table, parentKey, childKey, whichTriggeraction) x(table) x(parentKey) x(childKey) x(whichTriggeraction) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichEvent jevent
---@return boolean
function SaveTriggerEventHandle(table, parentKey, childKey, whichEvent) x(table) x(parentKey) x(childKey) x(whichEvent) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichForce jforce
---@return boolean
function SaveForceHandle(table, parentKey, childKey, whichForce) x(table) x(parentKey) x(childKey) x(whichForce) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichGroup jgroup
---@return boolean
function SaveGroupHandle(table, parentKey, childKey, whichGroup) x(table) x(parentKey) x(childKey) x(whichGroup) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichLocation jlocation
---@return boolean
function SaveLocationHandle(table, parentKey, childKey, whichLocation) x(table) x(parentKey) x(childKey) x(whichLocation) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichRect jrect
---@return boolean
function SaveRectHandle(table, parentKey, childKey, whichRect) x(table) x(parentKey) x(childKey) x(whichRect) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichBoolexpr jboolexpr
---@return boolean
function SaveBooleanExprHandle(table, parentKey, childKey, whichBoolexpr) x(table) x(parentKey) x(childKey) x(whichBoolexpr) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichSound jsound
---@return boolean
function SaveSoundHandle(table, parentKey, childKey, whichSound) x(table) x(parentKey) x(childKey) x(whichSound) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichEffect jeffect
---@return boolean
function SaveEffectHandle(table, parentKey, childKey, whichEffect) x(table) x(parentKey) x(childKey) x(whichEffect) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichUnitpool junitpool
---@return boolean
function SaveUnitPoolHandle(table, parentKey, childKey, whichUnitpool) x(table) x(parentKey) x(childKey) x(whichUnitpool) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichItempool jitempool
---@return boolean
function SaveItemPoolHandle(table, parentKey, childKey, whichItempool) x(table) x(parentKey) x(childKey) x(whichItempool) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichQuest jquest
---@return boolean
function SaveQuestHandle(table, parentKey, childKey, whichQuest) x(table) x(parentKey) x(childKey) x(whichQuest) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichQuestitem jquestitem
---@return boolean
function SaveQuestItemHandle(table, parentKey, childKey, whichQuestitem) x(table) x(parentKey) x(childKey) x(whichQuestitem) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichDefeatcondition jdefeatcondition
---@return boolean
function SaveDefeatConditionHandle(table, parentKey, childKey, whichDefeatcondition) x(table) x(parentKey) x(childKey) x(whichDefeatcondition) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTimerdialog jtimerdialog
---@return boolean
function SaveTimerDialogHandle(table, parentKey, childKey, whichTimerdialog) x(table) x(parentKey) x(childKey) x(whichTimerdialog) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichLeaderboard jleaderboard
---@return boolean
function SaveLeaderboardHandle(table, parentKey, childKey, whichLeaderboard) x(table) x(parentKey) x(childKey) x(whichLeaderboard) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichMultiboard jmultiboard
---@return boolean
function SaveMultiboardHandle(table, parentKey, childKey, whichMultiboard) x(table) x(parentKey) x(childKey) x(whichMultiboard) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichMultiboarditem jmultiboarditem
---@return boolean
function SaveMultiboardItemHandle(table, parentKey, childKey, whichMultiboarditem) x(table) x(parentKey) x(childKey) x(whichMultiboarditem) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTrackable jtrackable
---@return boolean
function SaveTrackableHandle(table, parentKey, childKey, whichTrackable) x(table) x(parentKey) x(childKey) x(whichTrackable) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichDialog jdialog
---@return boolean
function SaveDialogHandle(table, parentKey, childKey, whichDialog) x(table) x(parentKey) x(childKey) x(whichDialog) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichButton jbutton
---@return boolean
function SaveButtonHandle(table, parentKey, childKey, whichButton) x(table) x(parentKey) x(childKey) x(whichButton) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichTexttag jtexttag
---@return boolean
function SaveTextTagHandle(table, parentKey, childKey, whichTexttag) x(table) x(parentKey) x(childKey) x(whichTexttag) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichLightning jlightning
---@return boolean
function SaveLightningHandle(table, parentKey, childKey, whichLightning) x(table) x(parentKey) x(childKey) x(whichLightning) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichImage jimage
---@return boolean
function SaveImageHandle(table, parentKey, childKey, whichImage) x(table) x(parentKey) x(childKey) x(whichImage) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichUbersplat jubersplat
---@return boolean
function SaveUbersplatHandle(table, parentKey, childKey, whichUbersplat) x(table) x(parentKey) x(childKey) x(whichUbersplat) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichRegion jregion
---@return boolean
function SaveRegionHandle(table, parentKey, childKey, whichRegion) x(table) x(parentKey) x(childKey) x(whichRegion) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichFogState jfogstate
---@return boolean
function SaveFogStateHandle(table, parentKey, childKey, whichFogState) x(table) x(parentKey) x(childKey) x(whichFogState) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichFogModifier jfogmodifier
---@return boolean
function SaveFogModifierHandle(table, parentKey, childKey, whichFogModifier) x(table) x(parentKey) x(childKey) x(whichFogModifier) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichAgent jagent
---@return boolean
function SaveAgentHandle(table, parentKey, childKey, whichAgent) x(table) x(parentKey) x(childKey) x(whichAgent) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichHashtable jhashtable
---@return boolean
function SaveHashtableHandle(table, parentKey, childKey, whichHashtable) x(table) x(parentKey) x(childKey) x(whichHashtable) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@param whichFrameHandle jframehandle
---@return boolean
function SaveFrameHandle(table, parentKey, childKey, whichFrameHandle) x(table) x(parentKey) x(childKey) x(whichFrameHandle) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return number
function LoadInteger(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return number
function LoadReal(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function LoadBoolean(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return string
function LoadStr(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jplayer
function LoadPlayerHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jwidget
function LoadWidgetHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jdestructable
function LoadDestructableHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jitem
function LoadItemHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return junit
function LoadUnitHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jability
function LoadAbilityHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtimer
function LoadTimerHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtrigger
function LoadTriggerHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtriggercondition
function LoadTriggerConditionHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtriggeraction
function LoadTriggerActionHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jevent
function LoadTriggerEventHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jforce
function LoadForceHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jgroup
function LoadGroupHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jlocation
function LoadLocationHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jrect
function LoadRectHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jboolexpr
function LoadBooleanExprHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jsound
function LoadSoundHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jeffect
function LoadEffectHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return junitpool
function LoadUnitPoolHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jitempool
function LoadItemPoolHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jquest
function LoadQuestHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jquestitem
function LoadQuestItemHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jdefeatcondition
function LoadDefeatConditionHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtimerdialog
function LoadTimerDialogHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jleaderboard
function LoadLeaderboardHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jmultiboard
function LoadMultiboardHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jmultiboarditem
function LoadMultiboardItemHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtrackable
function LoadTrackableHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jdialog
function LoadDialogHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jbutton
function LoadButtonHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jtexttag
function LoadTextTagHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jlightning
function LoadLightningHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jimage
function LoadImageHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jubersplat
function LoadUbersplatHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jregion
function LoadRegionHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jfogstate
function LoadFogStateHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jfogmodifier
function LoadFogModifierHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jhashtable
function LoadHashtableHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return jframehandle
function LoadFrameHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function HaveSavedInteger(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function HaveSavedReal(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function HaveSavedBoolean(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function HaveSavedString(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
---@return boolean
function HaveSavedHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
function RemoveSavedInteger(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
function RemoveSavedReal(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
function RemoveSavedBoolean(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
function RemoveSavedString(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
---@param parentKey number
---@param childKey number
function RemoveSavedHandle(table, parentKey, childKey) x(table) x(parentKey) x(childKey) end
---@param table jhashtable
function FlushParentHashtable(table) x(table) end
---@param table jhashtable
---@param parentKey number
function FlushChildHashtable(table, parentKey) x(table) x(parentKey) end
---@param lowBound number
---@param highBound number
---@return number
function GetRandomInt(lowBound, highBound) x(lowBound) x(highBound) end
---@param lowBound number
---@param highBound number
---@return number
function GetRandomReal(lowBound, highBound) x(lowBound) x(highBound) end
---@return junitpool
function CreateUnitPool()  end
---@param whichPool junitpool
function DestroyUnitPool(whichPool) x(whichPool) end
---@param whichPool junitpool
---@param unitId number
---@param weight number
function UnitPoolAddUnitType(whichPool, unitId, weight) x(whichPool) x(unitId) x(weight) end
---@param whichPool junitpool
---@param unitId number
function UnitPoolRemoveUnitType(whichPool, unitId) x(whichPool) x(unitId) end
---@param whichPool junitpool
---@param forWhichPlayer jplayer
---@param x number
---@param y number
---@param facing number
---@return junit
function PlaceRandomUnit(whichPool, forWhichPlayer, x, y, facing) x(whichPool) x(forWhichPlayer) x(x) x(y) x(facing) end
---@return jitempool
function CreateItemPool()  end
---@param whichItemPool jitempool
function DestroyItemPool(whichItemPool) x(whichItemPool) end
---@param whichItemPool jitempool
---@param itemId number
---@param weight number
function ItemPoolAddItemType(whichItemPool, itemId, weight) x(whichItemPool) x(itemId) x(weight) end
---@param whichItemPool jitempool
---@param itemId number
function ItemPoolRemoveItemType(whichItemPool, itemId) x(whichItemPool) x(itemId) end
---@param whichItemPool jitempool
---@param x number
---@param y number
---@return jitem
function PlaceRandomItem(whichItemPool, x, y) x(whichItemPool) x(x) x(y) end
---@param level number
---@return number
function ChooseRandomCreep(level) x(level) end
---@return number
function ChooseRandomNPBuilding()  end
---@param level number
---@return number
function ChooseRandomItem(level) x(level) end
---@param whichType jitemtype
---@param level number
---@return number
function ChooseRandomItemEx(whichType, level) x(whichType) x(level) end
---@param seed number
function SetRandomSeed(seed) x(seed) end
---@param a number
---@param b number
---@param c number
---@param d number
---@param e number
function SetTerrainFog(a, b, c, d, e) x(a) x(b) x(c) x(d) x(e) end
function ResetTerrainFog()  end
---@param a number
---@param b number
---@param c number
---@param d number
---@param e number
function SetUnitFog(a, b, c, d, e) x(a) x(b) x(c) x(d) x(e) end
---@param style number
---@param zstart number
---@param zend number
---@param density number
---@param red number
---@param green number
---@param blue number
function SetTerrainFogEx(style, zstart, zend, density, red, green, blue) x(style) x(zstart) x(zend) x(density) x(red) x(green) x(blue) end
---@param toPlayer jplayer
---@param x number
---@param y number
---@param message string
function DisplayTextToPlayer(toPlayer, x, y, message) x(toPlayer) x(x) x(y) x(message) end
---@param toPlayer jplayer
---@param x number
---@param y number
---@param duration number
---@param message string
function DisplayTimedTextToPlayer(toPlayer, x, y, duration, message) x(toPlayer) x(x) x(y) x(duration) x(message) end
---@param toPlayer jplayer
---@param x number
---@param y number
---@param duration number
---@param message string
function DisplayTimedTextFromPlayer(toPlayer, x, y, duration, message) x(toPlayer) x(x) x(y) x(duration) x(message) end
function ClearTextMessages()  end
---@param terrainDNCFile string
---@param unitDNCFile string
function SetDayNightModels(terrainDNCFile, unitDNCFile) x(terrainDNCFile) x(unitDNCFile) end
---@param skyModelFile string
function SetSkyModel(skyModelFile) x(skyModelFile) end
---@param b boolean
function EnableUserControl(b) x(b) end
---@param b boolean
function EnableUserUI(b) x(b) end
---@param b boolean
function SuspendTimeOfDay(b) x(b) end
---@param r number
function SetTimeOfDayScale(r) x(r) end
---@return number
function GetTimeOfDayScale()  end
---@param flag boolean
---@param fadeDuration number
function ShowInterface(flag, fadeDuration) x(flag) x(fadeDuration) end
---@param flag boolean
function PauseGame(flag) x(flag) end
---@param whichUnit junit
---@param red number
---@param green number
---@param blue number
---@param alpha number
function UnitAddIndicator(whichUnit, red, green, blue, alpha) x(whichUnit) x(red) x(green) x(blue) x(alpha) end
---@param whichWidget jwidget
---@param red number
---@param green number
---@param blue number
---@param alpha number
function AddIndicator(whichWidget, red, green, blue, alpha) x(whichWidget) x(red) x(green) x(blue) x(alpha) end
---@param x number
---@param y number
---@param duration number
function PingMinimap(x, y, duration) x(x) x(y) x(duration) end
---@param x number
---@param y number
---@param duration number
---@param red number
---@param green number
---@param blue number
---@param extraEffects boolean
function PingMinimapEx(x, y, duration, red, green, blue, extraEffects) x(x) x(y) x(duration) x(red) x(green) x(blue) x(extraEffects) end
---@param flag boolean
function EnableOcclusion(flag) x(flag) end
---@param introText string
function SetIntroShotText(introText) x(introText) end
---@param introModelPath string
function SetIntroShotModel(introModelPath) x(introModelPath) end
---@param b boolean
function EnableWorldFogBoundary(b) x(b) end
---@param modelName string
function PlayModelCinematic(modelName) x(modelName) end
---@param movieName string
function PlayCinematic(movieName) x(movieName) end
---@param key string
function ForceUIKey(key) x(key) end
function ForceUICancel()  end
function DisplayLoadDialog()  end
---@param iconPath string
function SetAltMinimapIcon(iconPath) x(iconPath) end
---@param flag boolean
function DisableRestartMission(flag) x(flag) end
---@return jtexttag
function CreateTextTag()  end
---@param t jtexttag
function DestroyTextTag(t) x(t) end
---@param t jtexttag
---@param s string
---@param height number
function SetTextTagText(t, s, height) x(t) x(s) x(height) end
---@param t jtexttag
---@param x number
---@param y number
---@param heightOffset number
function SetTextTagPos(t, x, y, heightOffset) x(t) x(x) x(y) x(heightOffset) end
---@param t jtexttag
---@param whichUnit junit
---@param heightOffset number
function SetTextTagPosUnit(t, whichUnit, heightOffset) x(t) x(whichUnit) x(heightOffset) end
---@param t jtexttag
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetTextTagColor(t, red, green, blue, alpha) x(t) x(red) x(green) x(blue) x(alpha) end
---@param t jtexttag
---@param xvel number
---@param yvel number
function SetTextTagVelocity(t, xvel, yvel) x(t) x(xvel) x(yvel) end
---@param t jtexttag
---@param flag boolean
function SetTextTagVisibility(t, flag) x(t) x(flag) end
---@param t jtexttag
---@param flag boolean
function SetTextTagSuspended(t, flag) x(t) x(flag) end
---@param t jtexttag
---@param flag boolean
function SetTextTagPermanent(t, flag) x(t) x(flag) end
---@param t jtexttag
---@param age number
function SetTextTagAge(t, age) x(t) x(age) end
---@param t jtexttag
---@param lifespan number
function SetTextTagLifespan(t, lifespan) x(t) x(lifespan) end
---@param t jtexttag
---@param fadepoint number
function SetTextTagFadepoint(t, fadepoint) x(t) x(fadepoint) end
---@param reserved number
function SetReservedLocalHeroButtons(reserved) x(reserved) end
---@return number
function GetAllyColorFilterState()  end
---@param state number
function SetAllyColorFilterState(state) x(state) end
---@return boolean
function GetCreepCampFilterState()  end
---@param state boolean
function SetCreepCampFilterState(state) x(state) end
---@param enableAlly boolean
---@param enableCreep boolean
function EnableMinimapFilterButtons(enableAlly, enableCreep) x(enableAlly) x(enableCreep) end
---@param state boolean
---@param ui boolean
function EnableDragSelect(state, ui) x(state) x(ui) end
---@param state boolean
---@param ui boolean
function EnablePreSelect(state, ui) x(state) x(ui) end
---@param state boolean
---@param ui boolean
function EnableSelect(state, ui) x(state) x(ui) end
---@param trackableModelPath string
---@param x number
---@param y number
---@param facing number
---@return jtrackable
function CreateTrackable(trackableModelPath, x, y, facing) x(trackableModelPath) x(x) x(y) x(facing) end
---@return jquest
function CreateQuest()  end
---@param whichQuest jquest
function DestroyQuest(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@param title string
function QuestSetTitle(whichQuest, title) x(whichQuest) x(title) end
---@param whichQuest jquest
---@param description string
function QuestSetDescription(whichQuest, description) x(whichQuest) x(description) end
---@param whichQuest jquest
---@param iconPath string
function QuestSetIconPath(whichQuest, iconPath) x(whichQuest) x(iconPath) end
---@param whichQuest jquest
---@param required boolean
function QuestSetRequired(whichQuest, required) x(whichQuest) x(required) end
---@param whichQuest jquest
---@param completed boolean
function QuestSetCompleted(whichQuest, completed) x(whichQuest) x(completed) end
---@param whichQuest jquest
---@param discovered boolean
function QuestSetDiscovered(whichQuest, discovered) x(whichQuest) x(discovered) end
---@param whichQuest jquest
---@param failed boolean
function QuestSetFailed(whichQuest, failed) x(whichQuest) x(failed) end
---@param whichQuest jquest
---@param enabled boolean
function QuestSetEnabled(whichQuest, enabled) x(whichQuest) x(enabled) end
---@param whichQuest jquest
---@return boolean
function IsQuestRequired(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@return boolean
function IsQuestCompleted(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@return boolean
function IsQuestDiscovered(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@return boolean
function IsQuestFailed(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@return boolean
function IsQuestEnabled(whichQuest) x(whichQuest) end
---@param whichQuest jquest
---@return jquestitem
function QuestCreateItem(whichQuest) x(whichQuest) end
---@param whichQuestItem jquestitem
---@param description string
function QuestItemSetDescription(whichQuestItem, description) x(whichQuestItem) x(description) end
---@param whichQuestItem jquestitem
---@param completed boolean
function QuestItemSetCompleted(whichQuestItem, completed) x(whichQuestItem) x(completed) end
---@param whichQuestItem jquestitem
---@return boolean
function IsQuestItemCompleted(whichQuestItem) x(whichQuestItem) end
---@return jdefeatcondition
function CreateDefeatCondition()  end
---@param whichCondition jdefeatcondition
function DestroyDefeatCondition(whichCondition) x(whichCondition) end
---@param whichCondition jdefeatcondition
---@param description string
function DefeatConditionSetDescription(whichCondition, description) x(whichCondition) x(description) end
function FlashQuestDialogButton()  end
function ForceQuestDialogUpdate()  end
---@param t jtimer
---@return jtimerdialog
function CreateTimerDialog(t) x(t) end
---@param whichDialog jtimerdialog
function DestroyTimerDialog(whichDialog) x(whichDialog) end
---@param whichDialog jtimerdialog
---@param title string
function TimerDialogSetTitle(whichDialog, title) x(whichDialog) x(title) end
---@param whichDialog jtimerdialog
---@param red number
---@param green number
---@param blue number
---@param alpha number
function TimerDialogSetTitleColor(whichDialog, red, green, blue, alpha) x(whichDialog) x(red) x(green) x(blue) x(alpha) end
---@param whichDialog jtimerdialog
---@param red number
---@param green number
---@param blue number
---@param alpha number
function TimerDialogSetTimeColor(whichDialog, red, green, blue, alpha) x(whichDialog) x(red) x(green) x(blue) x(alpha) end
---@param whichDialog jtimerdialog
---@param speedMultFactor number
function TimerDialogSetSpeed(whichDialog, speedMultFactor) x(whichDialog) x(speedMultFactor) end
---@param whichDialog jtimerdialog
---@param display boolean
function TimerDialogDisplay(whichDialog, display) x(whichDialog) x(display) end
---@param whichDialog jtimerdialog
---@return boolean
function IsTimerDialogDisplayed(whichDialog) x(whichDialog) end
---@param whichDialog jtimerdialog
---@param timeRemaining number
function TimerDialogSetRealTimeRemaining(whichDialog, timeRemaining) x(whichDialog) x(timeRemaining) end
---@return jleaderboard
function CreateLeaderboard()  end
---@param lb jleaderboard
function DestroyLeaderboard(lb) x(lb) end
---@param lb jleaderboard
---@param show boolean
function LeaderboardDisplay(lb, show) x(lb) x(show) end
---@param lb jleaderboard
---@return boolean
function IsLeaderboardDisplayed(lb) x(lb) end
---@param lb jleaderboard
---@return number
function LeaderboardGetItemCount(lb) x(lb) end
---@param lb jleaderboard
---@param count number
function LeaderboardSetSizeByItemCount(lb, count) x(lb) x(count) end
---@param lb jleaderboard
---@param label string
---@param value number
---@param p jplayer
function LeaderboardAddItem(lb, label, value, p) x(lb) x(label) x(value) x(p) end
---@param lb jleaderboard
---@param index number
function LeaderboardRemoveItem(lb, index) x(lb) x(index) end
---@param lb jleaderboard
---@param p jplayer
function LeaderboardRemovePlayerItem(lb, p) x(lb) x(p) end
---@param lb jleaderboard
function LeaderboardClear(lb) x(lb) end
---@param lb jleaderboard
---@param ascending boolean
function LeaderboardSortItemsByValue(lb, ascending) x(lb) x(ascending) end
---@param lb jleaderboard
---@param ascending boolean
function LeaderboardSortItemsByPlayer(lb, ascending) x(lb) x(ascending) end
---@param lb jleaderboard
---@param ascending boolean
function LeaderboardSortItemsByLabel(lb, ascending) x(lb) x(ascending) end
---@param lb jleaderboard
---@param p jplayer
---@return boolean
function LeaderboardHasPlayerItem(lb, p) x(lb) x(p) end
---@param lb jleaderboard
---@param p jplayer
---@return number
function LeaderboardGetPlayerIndex(lb, p) x(lb) x(p) end
---@param lb jleaderboard
---@param label string
function LeaderboardSetLabel(lb, label) x(lb) x(label) end
---@param lb jleaderboard
---@return string
function LeaderboardGetLabelText(lb) x(lb) end
---@param toPlayer jplayer
---@param lb jleaderboard
function PlayerSetLeaderboard(toPlayer, lb) x(toPlayer) x(lb) end
---@param toPlayer jplayer
---@return jleaderboard
function PlayerGetLeaderboard(toPlayer) x(toPlayer) end
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param alpha number
function LeaderboardSetLabelColor(lb, red, green, blue, alpha) x(lb) x(red) x(green) x(blue) x(alpha) end
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param alpha number
function LeaderboardSetValueColor(lb, red, green, blue, alpha) x(lb) x(red) x(green) x(blue) x(alpha) end
---@param lb jleaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
function LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons) x(lb) x(showLabel) x(showNames) x(showValues) x(showIcons) end
---@param lb jleaderboard
---@param whichItem number
---@param val number
function LeaderboardSetItemValue(lb, whichItem, val) x(lb) x(whichItem) x(val) end
---@param lb jleaderboard
---@param whichItem number
---@param val string
function LeaderboardSetItemLabel(lb, whichItem, val) x(lb) x(whichItem) x(val) end
---@param lb jleaderboard
---@param whichItem number
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
function LeaderboardSetItemStyle(lb, whichItem, showLabel, showValue, showIcon) x(lb) x(whichItem) x(showLabel) x(showValue) x(showIcon) end
---@param lb jleaderboard
---@param whichItem number
---@param red number
---@param green number
---@param blue number
---@param alpha number
function LeaderboardSetItemLabelColor(lb, whichItem, red, green, blue, alpha) x(lb) x(whichItem) x(red) x(green) x(blue) x(alpha) end
---@param lb jleaderboard
---@param whichItem number
---@param red number
---@param green number
---@param blue number
---@param alpha number
function LeaderboardSetItemValueColor(lb, whichItem, red, green, blue, alpha) x(lb) x(whichItem) x(red) x(green) x(blue) x(alpha) end
---@return jmultiboard
function CreateMultiboard()  end
---@param lb jmultiboard
function DestroyMultiboard(lb) x(lb) end
---@param lb jmultiboard
---@param show boolean
function MultiboardDisplay(lb, show) x(lb) x(show) end
---@param lb jmultiboard
---@return boolean
function IsMultiboardDisplayed(lb) x(lb) end
---@param lb jmultiboard
---@param minimize boolean
function MultiboardMinimize(lb, minimize) x(lb) x(minimize) end
---@param lb jmultiboard
---@return boolean
function IsMultiboardMinimized(lb) x(lb) end
---@param lb jmultiboard
function MultiboardClear(lb) x(lb) end
---@param lb jmultiboard
---@param label string
function MultiboardSetTitleText(lb, label) x(lb) x(label) end
---@param lb jmultiboard
---@return string
function MultiboardGetTitleText(lb) x(lb) end
---@param lb jmultiboard
---@param red number
---@param green number
---@param blue number
---@param alpha number
function MultiboardSetTitleTextColor(lb, red, green, blue, alpha) x(lb) x(red) x(green) x(blue) x(alpha) end
---@param lb jmultiboard
---@return number
function MultiboardGetRowCount(lb) x(lb) end
---@param lb jmultiboard
---@return number
function MultiboardGetColumnCount(lb) x(lb) end
---@param lb jmultiboard
---@param count number
function MultiboardSetColumnCount(lb, count) x(lb) x(count) end
---@param lb jmultiboard
---@param count number
function MultiboardSetRowCount(lb, count) x(lb) x(count) end
---@param lb jmultiboard
---@param showValues boolean
---@param showIcons boolean
function MultiboardSetItemsStyle(lb, showValues, showIcons) x(lb) x(showValues) x(showIcons) end
---@param lb jmultiboard
---@param value string
function MultiboardSetItemsValue(lb, value) x(lb) x(value) end
---@param lb jmultiboard
---@param red number
---@param green number
---@param blue number
---@param alpha number
function MultiboardSetItemsValueColor(lb, red, green, blue, alpha) x(lb) x(red) x(green) x(blue) x(alpha) end
---@param lb jmultiboard
---@param width number
function MultiboardSetItemsWidth(lb, width) x(lb) x(width) end
---@param lb jmultiboard
---@param iconPath string
function MultiboardSetItemsIcon(lb, iconPath) x(lb) x(iconPath) end
---@param lb jmultiboard
---@param row number
---@param column number
---@return jmultiboarditem
function MultiboardGetItem(lb, row, column) x(lb) x(row) x(column) end
---@param mbi jmultiboarditem
function MultiboardReleaseItem(mbi) x(mbi) end
---@param mbi jmultiboarditem
---@param showValue boolean
---@param showIcon boolean
function MultiboardSetItemStyle(mbi, showValue, showIcon) x(mbi) x(showValue) x(showIcon) end
---@param mbi jmultiboarditem
---@param val string
function MultiboardSetItemValue(mbi, val) x(mbi) x(val) end
---@param mbi jmultiboarditem
---@param red number
---@param green number
---@param blue number
---@param alpha number
function MultiboardSetItemValueColor(mbi, red, green, blue, alpha) x(mbi) x(red) x(green) x(blue) x(alpha) end
---@param mbi jmultiboarditem
---@param width number
function MultiboardSetItemWidth(mbi, width) x(mbi) x(width) end
---@param mbi jmultiboarditem
---@param iconFileName string
function MultiboardSetItemIcon(mbi, iconFileName) x(mbi) x(iconFileName) end
---@param flag boolean
function MultiboardSuppressDisplay(flag) x(flag) end
---@param x number
---@param y number
function SetCameraPosition(x, y) x(x) x(y) end
---@param x number
---@param y number
function SetCameraQuickPosition(x, y) x(x) x(y) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) x(x1) x(y1) x(x2) x(y2) x(x3) x(y3) x(x4) x(y4) end
function StopCamera()  end
---@param duration number
function ResetToGameCamera(duration) x(duration) end
---@param x number
---@param y number
function PanCameraTo(x, y) x(x) x(y) end
---@param x number
---@param y number
---@param duration number
function PanCameraToTimed(x, y, duration) x(x) x(y) x(duration) end
---@param x number
---@param y number
---@param zOffsetDest number
function PanCameraToWithZ(x, y, zOffsetDest) x(x) x(y) x(zOffsetDest) end
---@param x number
---@param y number
---@param zOffsetDest number
---@param duration number
function PanCameraToTimedWithZ(x, y, zOffsetDest, duration) x(x) x(y) x(zOffsetDest) x(duration) end
---@param cameraModelFile string
function SetCinematicCamera(cameraModelFile) x(cameraModelFile) end
---@param x number
---@param y number
---@param radiansToSweep number
---@param duration number
function SetCameraRotateMode(x, y, radiansToSweep, duration) x(x) x(y) x(radiansToSweep) x(duration) end
---@param whichField jcamerafield
---@param value number
---@param duration number
function SetCameraField(whichField, value, duration) x(whichField) x(value) x(duration) end
---@param whichField jcamerafield
---@param offset number
---@param duration number
function AdjustCameraField(whichField, offset, duration) x(whichField) x(offset) x(duration) end
---@param whichUnit junit
---@param xoffset number
---@param yoffset number
---@param inheritOrientation boolean
function SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation) x(whichUnit) x(xoffset) x(yoffset) x(inheritOrientation) end
---@param whichUnit junit
---@param xoffset number
---@param yoffset number
function SetCameraOrientController(whichUnit, xoffset, yoffset) x(whichUnit) x(xoffset) x(yoffset) end
---@return jcamerasetup
function CreateCameraSetup()  end
---@param whichSetup jcamerasetup
---@param whichField jcamerafield
---@param value number
---@param duration number
function CameraSetupSetField(whichSetup, whichField, value, duration) x(whichSetup) x(whichField) x(value) x(duration) end
---@param whichSetup jcamerasetup
---@param whichField jcamerafield
---@return number
function CameraSetupGetField(whichSetup, whichField) x(whichSetup) x(whichField) end
---@param whichSetup jcamerasetup
---@param x number
---@param y number
---@param duration number
function CameraSetupSetDestPosition(whichSetup, x, y, duration) x(whichSetup) x(x) x(y) x(duration) end
---@param whichSetup jcamerasetup
---@return jlocation
function CameraSetupGetDestPositionLoc(whichSetup) x(whichSetup) end
---@param whichSetup jcamerasetup
---@return number
function CameraSetupGetDestPositionX(whichSetup) x(whichSetup) end
---@param whichSetup jcamerasetup
---@return number
function CameraSetupGetDestPositionY(whichSetup) x(whichSetup) end
---@param whichSetup jcamerasetup
---@param doPan boolean
---@param panTimed boolean
function CameraSetupApply(whichSetup, doPan, panTimed) x(whichSetup) x(doPan) x(panTimed) end
---@param whichSetup jcamerasetup
---@param zDestOffset number
function CameraSetupApplyWithZ(whichSetup, zDestOffset) x(whichSetup) x(zDestOffset) end
---@param whichSetup jcamerasetup
---@param doPan boolean
---@param forceDuration number
function CameraSetupApplyForceDuration(whichSetup, doPan, forceDuration) x(whichSetup) x(doPan) x(forceDuration) end
---@param whichSetup jcamerasetup
---@param zDestOffset number
---@param forceDuration number
function CameraSetupApplyForceDurationWithZ(whichSetup, zDestOffset, forceDuration) x(whichSetup) x(zDestOffset) x(forceDuration) end
---@param mag number
---@param velocity number
function CameraSetTargetNoise(mag, velocity) x(mag) x(velocity) end
---@param mag number
---@param velocity number
function CameraSetSourceNoise(mag, velocity) x(mag) x(velocity) end
---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) x(mag) x(velocity) x(vertOnly) end
---@param mag number
---@param velocity number
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) x(mag) x(velocity) x(vertOnly) end
---@param factor number
function CameraSetSmoothingFactor(factor) x(factor) end
---@param filename string
function SetCineFilterTexture(filename) x(filename) end
---@param whichMode jblendmode
function SetCineFilterBlendMode(whichMode) x(whichMode) end
---@param whichFlags jtexmapflags
function SetCineFilterTexMapFlags(whichFlags) x(whichFlags) end
---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterStartUV(minu, minv, maxu, maxv) x(minu) x(minv) x(maxu) x(maxv) end
---@param minu number
---@param minv number
---@param maxu number
---@param maxv number
function SetCineFilterEndUV(minu, minv, maxu, maxv) x(minu) x(minv) x(maxu) x(maxv) end
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetCineFilterStartColor(red, green, blue, alpha) x(red) x(green) x(blue) x(alpha) end
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetCineFilterEndColor(red, green, blue, alpha) x(red) x(green) x(blue) x(alpha) end
---@param duration number
function SetCineFilterDuration(duration) x(duration) end
---@param flag boolean
function DisplayCineFilter(flag) x(flag) end
---@return boolean
function IsCineFilterDisplayed()  end
---@param portraitUnitId number
---@param color jplayercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) x(portraitUnitId) x(color) x(speakerTitle) x(text) x(sceneDuration) x(voiceoverDuration) end
function EndCinematicScene()  end
---@param flag boolean
function ForceCinematicSubtitles(flag) x(flag) end
---@param whichMargin number
---@return number
function GetCameraMargin(whichMargin) x(whichMargin) end
---@return number
function GetCameraBoundMinX()  end
---@return number
function GetCameraBoundMinY()  end
---@return number
function GetCameraBoundMaxX()  end
---@return number
function GetCameraBoundMaxY()  end
---@param whichField jcamerafield
---@return number
function GetCameraField(whichField) x(whichField) end
---@return number
function GetCameraTargetPositionX()  end
---@return number
function GetCameraTargetPositionY()  end
---@return number
function GetCameraTargetPositionZ()  end
---@return jlocation
function GetCameraTargetPositionLoc()  end
---@return number
function GetCameraEyePositionX()  end
---@return number
function GetCameraEyePositionY()  end
---@return number
function GetCameraEyePositionZ()  end
---@return jlocation
function GetCameraEyePositionLoc()  end
---@param environmentName string
function NewSoundEnvironment(environmentName) x(environmentName) end
---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate number
---@param fadeOutRate number
---@param eaxSetting string
---@return jsound
function CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting) x(fileName) x(looping) x(is3D) x(stopwhenoutofrange) x(fadeInRate) x(fadeOutRate) x(eaxSetting) end
---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate number
---@param fadeOutRate number
---@param SLKEntryName string
---@return jsound
function CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName) x(fileName) x(looping) x(is3D) x(stopwhenoutofrange) x(fadeInRate) x(fadeOutRate) x(SLKEntryName) end
---@param soundLabel string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate number
---@param fadeOutRate number
---@return jsound
function CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate) x(soundLabel) x(looping) x(is3D) x(stopwhenoutofrange) x(fadeInRate) x(fadeOutRate) end
---@param soundLabel string
---@param fadeInRate number
---@param fadeOutRate number
---@return jsound
function CreateMIDISound(soundLabel, fadeInRate, fadeOutRate) x(soundLabel) x(fadeInRate) x(fadeOutRate) end
---@param soundHandle jsound
---@param soundLabel string
function SetSoundParamsFromLabel(soundHandle, soundLabel) x(soundHandle) x(soundLabel) end
---@param soundHandle jsound
---@param cutoff number
function SetSoundDistanceCutoff(soundHandle, cutoff) x(soundHandle) x(cutoff) end
---@param soundHandle jsound
---@param channel number
function SetSoundChannel(soundHandle, channel) x(soundHandle) x(channel) end
---@param soundHandle jsound
---@param volume number
function SetSoundVolume(soundHandle, volume) x(soundHandle) x(volume) end
---@param soundHandle jsound
---@param pitch number
function SetSoundPitch(soundHandle, pitch) x(soundHandle) x(pitch) end
---@param soundHandle jsound
---@param millisecs number
function SetSoundPlayPosition(soundHandle, millisecs) x(soundHandle) x(millisecs) end
---@param soundHandle jsound
---@param minDist number
---@param maxDist number
function SetSoundDistances(soundHandle, minDist, maxDist) x(soundHandle) x(minDist) x(maxDist) end
---@param soundHandle jsound
---@param inside number
---@param outside number
---@param outsideVolume number
function SetSoundConeAngles(soundHandle, inside, outside, outsideVolume) x(soundHandle) x(inside) x(outside) x(outsideVolume) end
---@param soundHandle jsound
---@param x number
---@param y number
---@param z number
function SetSoundConeOrientation(soundHandle, x, y, z) x(soundHandle) x(x) x(y) x(z) end
---@param soundHandle jsound
---@param x number
---@param y number
---@param z number
function SetSoundPosition(soundHandle, x, y, z) x(soundHandle) x(x) x(y) x(z) end
---@param soundHandle jsound
---@param x number
---@param y number
---@param z number
function SetSoundVelocity(soundHandle, x, y, z) x(soundHandle) x(x) x(y) x(z) end
---@param soundHandle jsound
---@param whichUnit junit
function AttachSoundToUnit(soundHandle, whichUnit) x(soundHandle) x(whichUnit) end
---@param soundHandle jsound
function StartSound(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@param killWhenDone boolean
---@param fadeOut boolean
function StopSound(soundHandle, killWhenDone, fadeOut) x(soundHandle) x(killWhenDone) x(fadeOut) end
---@param soundHandle jsound
function KillSoundWhenDone(soundHandle) x(soundHandle) end
---@param musicName string
---@param random boolean
---@param index number
function SetMapMusic(musicName, random, index) x(musicName) x(random) x(index) end
function ClearMapMusic()  end
---@param musicName string
function PlayMusic(musicName) x(musicName) end
---@param musicName string
---@param frommsecs number
---@param fadeinmsecs number
function PlayMusicEx(musicName, frommsecs, fadeinmsecs) x(musicName) x(frommsecs) x(fadeinmsecs) end
---@param fadeOut boolean
function StopMusic(fadeOut) x(fadeOut) end
function ResumeMusic()  end
---@param musicFileName string
function PlayThematicMusic(musicFileName) x(musicFileName) end
---@param musicFileName string
---@param frommsecs number
function PlayThematicMusicEx(musicFileName, frommsecs) x(musicFileName) x(frommsecs) end
function EndThematicMusic()  end
---@param volume number
function SetMusicVolume(volume) x(volume) end
---@param millisecs number
function SetMusicPlayPosition(millisecs) x(millisecs) end
---@param millisecs number
function SetThematicMusicPlayPosition(millisecs) x(millisecs) end
---@param soundHandle jsound
---@param duration number
function SetSoundDuration(soundHandle, duration) x(soundHandle) x(duration) end
---@param soundHandle jsound
---@return number
function GetSoundDuration(soundHandle) x(soundHandle) end
---@param musicFileName string
---@return number
function GetSoundFileDuration(musicFileName) x(musicFileName) end
---@param vgroup jvolumegroup
---@param scale number
function VolumeGroupSetVolume(vgroup, scale) x(vgroup) x(scale) end
function VolumeGroupReset()  end
---@param soundHandle jsound
---@return boolean
function GetSoundIsPlaying(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@return boolean
function GetSoundIsLoading(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@param byPosition boolean
---@param rectwidth number
---@param rectheight number
function RegisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) x(soundHandle) x(byPosition) x(rectwidth) x(rectheight) end
---@param soundHandle jsound
---@param byPosition boolean
---@param rectwidth number
---@param rectheight number
function UnregisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) x(soundHandle) x(byPosition) x(rectwidth) x(rectheight) end
---@param where jrect
---@param effectID number
---@return jweathereffect
function AddWeatherEffect(where, effectID) x(where) x(effectID) end
---@param whichEffect jweathereffect
function RemoveWeatherEffect(whichEffect) x(whichEffect) end
---@param whichEffect jweathereffect
---@param enable boolean
function EnableWeatherEffect(whichEffect, enable) x(whichEffect) x(enable) end
---@param x number
---@param y number
---@param radius number
---@param depth number
---@param duration number
---@param permanent boolean
---@return jterraindeformation
function TerrainDeformCrater(x, y, radius, depth, duration, permanent) x(x) x(y) x(radius) x(depth) x(duration) x(permanent) end
---@param x number
---@param y number
---@param radius number
---@param depth number
---@param duration number
---@param count number
---@param spaceWaves number
---@param timeWaves number
---@param radiusStartPct number
---@param limitNeg boolean
---@return jterraindeformation
function TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg) x(x) x(y) x(radius) x(depth) x(duration) x(count) x(spaceWaves) x(timeWaves) x(radiusStartPct) x(limitNeg) end
---@param x number
---@param y number
---@param dirX number
---@param dirY number
---@param distance number
---@param speed number
---@param radius number
---@param depth number
---@param trailTime number
---@param count number
---@return jterraindeformation
function TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count) x(x) x(y) x(dirX) x(dirY) x(distance) x(speed) x(radius) x(depth) x(trailTime) x(count) end
---@param x number
---@param y number
---@param radius number
---@param minDelta number
---@param maxDelta number
---@param duration number
---@param updateInterval number
---@return jterraindeformation
function TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval) x(x) x(y) x(radius) x(minDelta) x(maxDelta) x(duration) x(updateInterval) end
---@param deformation jterraindeformation
---@param duration number
function TerrainDeformStop(deformation, duration) x(deformation) x(duration) end
function TerrainDeformStopAll()  end
---@param modelName string
---@param x number
---@param y number
---@return jeffect
function AddSpecialEffect(modelName, x, y) x(modelName) x(x) x(y) end
---@param modelName string
---@param where jlocation
---@return jeffect
function AddSpecialEffectLoc(modelName, where) x(modelName) x(where) end
---@param modelName string
---@param targetWidget jwidget
---@param attachPointName string
---@return jeffect
function AddSpecialEffectTarget(modelName, targetWidget, attachPointName) x(modelName) x(targetWidget) x(attachPointName) end
---@param whichEffect jeffect
function DestroyEffect(whichEffect) x(whichEffect) end
---@param abilityString string
---@param t jeffecttype
---@param x number
---@param y number
---@return jeffect
function AddSpellEffect(abilityString, t, x, y) x(abilityString) x(t) x(x) x(y) end
---@param abilityString string
---@param t jeffecttype
---@param where jlocation
---@return jeffect
function AddSpellEffectLoc(abilityString, t, where) x(abilityString) x(t) x(where) end
---@param abilityId number
---@param t jeffecttype
---@param x number
---@param y number
---@return jeffect
function AddSpellEffectById(abilityId, t, x, y) x(abilityId) x(t) x(x) x(y) end
---@param abilityId number
---@param t jeffecttype
---@param where jlocation
---@return jeffect
function AddSpellEffectByIdLoc(abilityId, t, where) x(abilityId) x(t) x(where) end
---@param modelName string
---@param t jeffecttype
---@param targetWidget jwidget
---@param attachPoint string
---@return jeffect
function AddSpellEffectTarget(modelName, t, targetWidget, attachPoint) x(modelName) x(t) x(targetWidget) x(attachPoint) end
---@param abilityId number
---@param t jeffecttype
---@param targetWidget jwidget
---@param attachPoint string
---@return jeffect
function AddSpellEffectTargetById(abilityId, t, targetWidget, attachPoint) x(abilityId) x(t) x(targetWidget) x(attachPoint) end
---@param codeName string
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return jlightning
function AddLightning(codeName, checkVisibility, x1, y1, x2, y2) x(codeName) x(checkVisibility) x(x1) x(y1) x(x2) x(y2) end
---@param codeName string
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return jlightning
function AddLightningEx(codeName, checkVisibility, x1, y1, z1, x2, y2, z2) x(codeName) x(checkVisibility) x(x1) x(y1) x(z1) x(x2) x(y2) x(z2) end
---@param whichBolt jlightning
---@return boolean
function DestroyLightning(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return boolean
function MoveLightning(whichBolt, checkVisibility, x1, y1, x2, y2) x(whichBolt) x(checkVisibility) x(x1) x(y1) x(x2) x(y2) end
---@param whichBolt jlightning
---@param checkVisibility boolean
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@return boolean
function MoveLightningEx(whichBolt, checkVisibility, x1, y1, z1, x2, y2, z2) x(whichBolt) x(checkVisibility) x(x1) x(y1) x(z1) x(x2) x(y2) x(z2) end
---@param whichBolt jlightning
---@return number
function GetLightningColorA(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorR(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorG(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorB(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@param r number
---@param g number
---@param b number
---@param a number
---@return boolean
function SetLightningColor(whichBolt, r, g, b, a) x(whichBolt) x(r) x(g) x(b) x(a) end
---@param abilityString string
---@param t jeffecttype
---@param index number
---@return string
function GetAbilityEffect(abilityString, t, index) x(abilityString) x(t) x(index) end
---@param abilityId number
---@param t jeffecttype
---@param index number
---@return string
function GetAbilityEffectById(abilityId, t, index) x(abilityId) x(t) x(index) end
---@param abilityString string
---@param t jsoundtype
---@return string
function GetAbilitySound(abilityString, t) x(abilityString) x(t) end
---@param abilityId number
---@param t jsoundtype
---@return string
function GetAbilitySoundById(abilityId, t) x(abilityId) x(t) end
---@param x number
---@param y number
---@return number
function GetTerrainCliffLevel(x, y) x(x) x(y) end
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetWaterBaseColor(red, green, blue, alpha) x(red) x(green) x(blue) x(alpha) end
---@param val boolean
function SetWaterDeforms(val) x(val) end
---@param x number
---@param y number
---@return number
function GetTerrainType(x, y) x(x) x(y) end
---@param x number
---@param y number
---@return number
function GetTerrainVariance(x, y) x(x) x(y) end
---@param x number
---@param y number
---@param terrainType number
---@param variation number
---@param area number
---@param shape number
function SetTerrainType(x, y, terrainType, variation, area, shape) x(x) x(y) x(terrainType) x(variation) x(area) x(shape) end
---@param x number
---@param y number
---@param t jpathingtype
---@return boolean
function IsTerrainPathable(x, y, t) x(x) x(y) x(t) end
---@param x number
---@param y number
---@param t jpathingtype
---@param flag boolean
function SetTerrainPathable(x, y, t, flag) x(x) x(y) x(t) x(flag) end
---@param file string
---@param sizeX number
---@param sizeY number
---@param sizeZ number
---@param posX number
---@param posY number
---@param posZ number
---@param originX number
---@param originY number
---@param originZ number
---@param imageType number
---@return jimage
function CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType) x(file) x(sizeX) x(sizeY) x(sizeZ) x(posX) x(posY) x(posZ) x(originX) x(originY) x(originZ) x(imageType) end
---@param whichImage jimage
function DestroyImage(whichImage) x(whichImage) end
---@param whichImage jimage
---@param flag boolean
function ShowImage(whichImage, flag) x(whichImage) x(flag) end
---@param whichImage jimage
---@param flag boolean
---@param height number
function SetImageConstantHeight(whichImage, flag, height) x(whichImage) x(flag) x(height) end
---@param whichImage jimage
---@param x number
---@param y number
---@param z number
function SetImagePosition(whichImage, x, y, z) x(whichImage) x(x) x(y) x(z) end
---@param whichImage jimage
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetImageColor(whichImage, red, green, blue, alpha) x(whichImage) x(red) x(green) x(blue) x(alpha) end
---@param whichImage jimage
---@param flag boolean
function SetImageRender(whichImage, flag) x(whichImage) x(flag) end
---@param whichImage jimage
---@param flag boolean
function SetImageRenderAlways(whichImage, flag) x(whichImage) x(flag) end
---@param whichImage jimage
---@param flag boolean
---@param useWaterAlpha boolean
function SetImageAboveWater(whichImage, flag, useWaterAlpha) x(whichImage) x(flag) x(useWaterAlpha) end
---@param whichImage jimage
---@param imageType number
function SetImageType(whichImage, imageType) x(whichImage) x(imageType) end
---@param x number
---@param y number
---@param name string
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param forcePaused boolean
---@param noBirthTime boolean
---@return jubersplat
function CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime) x(x) x(y) x(name) x(red) x(green) x(blue) x(alpha) x(forcePaused) x(noBirthTime) end
---@param whichSplat jubersplat
function DestroyUbersplat(whichSplat) x(whichSplat) end
---@param whichSplat jubersplat
function ResetUbersplat(whichSplat) x(whichSplat) end
---@param whichSplat jubersplat
function FinishUbersplat(whichSplat) x(whichSplat) end
---@param whichSplat jubersplat
---@param flag boolean
function ShowUbersplat(whichSplat, flag) x(whichSplat) x(flag) end
---@param whichSplat jubersplat
---@param flag boolean
function SetUbersplatRender(whichSplat, flag) x(whichSplat) x(flag) end
---@param whichSplat jubersplat
---@param flag boolean
function SetUbersplatRenderAlways(whichSplat, flag) x(whichSplat) x(flag) end
---@param whichPlayer jplayer
---@param x number
---@param y number
---@param radius number
---@param addBlight boolean
function SetBlight(whichPlayer, x, y, radius, addBlight) x(whichPlayer) x(x) x(y) x(radius) x(addBlight) end
---@param whichPlayer jplayer
---@param r jrect
---@param addBlight boolean
function SetBlightRect(whichPlayer, r, addBlight) x(whichPlayer) x(r) x(addBlight) end
---@param whichPlayer jplayer
---@param x number
---@param y number
---@param addBlight boolean
function SetBlightPoint(whichPlayer, x, y, addBlight) x(whichPlayer) x(x) x(y) x(addBlight) end
---@param whichPlayer jplayer
---@param whichLocation jlocation
---@param radius number
---@param addBlight boolean
function SetBlightLoc(whichPlayer, whichLocation, radius, addBlight) x(whichPlayer) x(whichLocation) x(radius) x(addBlight) end
---@param id jplayer
---@param x number
---@param y number
---@param face number
---@return junit
function CreateBlightedGoldmine(id, x, y, face) x(id) x(x) x(y) x(face) end
---@param x number
---@param y number
---@return boolean
function IsPointBlighted(x, y) x(x) x(y) end
---@param x number
---@param y number
---@param radius number
---@param doodadID number
---@param nearestOnly boolean
---@param animName string
---@param animRandom boolean
function SetDoodadAnimation(x, y, radius, doodadID, nearestOnly, animName, animRandom) x(x) x(y) x(radius) x(doodadID) x(nearestOnly) x(animName) x(animRandom) end
---@param r jrect
---@param doodadID number
---@param animName string
---@param animRandom boolean
function SetDoodadAnimationRect(r, doodadID, animName, animRandom) x(r) x(doodadID) x(animName) x(animRandom) end
---@param num jplayer
---@param script string
function StartMeleeAI(num, script) x(num) x(script) end
---@param num jplayer
---@param script string
function StartCampaignAI(num, script) x(num) x(script) end
---@param num jplayer
---@param command number
---@param data number
function CommandAI(num, command, data) x(num) x(command) x(data) end
---@param p jplayer
---@param pause boolean
function PauseCompAI(p, pause) x(p) x(pause) end
---@param num jplayer
---@return jaidifficulty
function GetAIDifficulty(num) x(num) end
---@param hUnit junit
function RemoveGuardPosition(hUnit) x(hUnit) end
---@param hUnit junit
function RecycleGuardPosition(hUnit) x(hUnit) end
---@param num jplayer
function RemoveAllGuardPositions(num) x(num) end
---@param cheatStr string
function Cheat(cheatStr) x(cheatStr) end
---@return boolean
function IsNoVictoryCheat()  end
---@return boolean
function IsNoDefeatCheat()  end
---@param filename string
function Preload(filename) x(filename) end
---@param timeout number
function PreloadEnd(timeout) x(timeout) end
function PreloadStart()  end
function PreloadRefresh()  end
function PreloadEndEx()  end
function PreloadGenClear()  end
function PreloadGenStart()  end
---@param filename string
function PreloadGenEnd(filename) x(filename) end
---@param filename string
function Preloader(filename) x(filename) end
---@param testType string
function AutomationSetTestType(testType) x(testType) end
---@param testName string
function AutomationTestStart(testName) x(testName) end
function AutomationTestEnd()  end
function AutomationTestingFinished()  end
---@return number
function BlzGetTriggerPlayerMouseX()  end
---@return number
function BlzGetTriggerPlayerMouseY()  end
---@return jlocation
function BlzGetTriggerPlayerMousePosition()  end
---@return jmousebuttontype
function BlzGetTriggerPlayerMouseButton()  end
---@param abilCode number
---@param tooltip string
---@param level number
function BlzSetAbilityTooltip(abilCode, tooltip, level) x(abilCode) x(tooltip) x(level) end
---@param abilCode number
---@param tooltip string
---@param level number
function BlzSetAbilityActivatedTooltip(abilCode, tooltip, level) x(abilCode) x(tooltip) x(level) end
---@param abilCode number
---@param extendedTooltip string
---@param level number
function BlzSetAbilityExtendedTooltip(abilCode, extendedTooltip, level) x(abilCode) x(extendedTooltip) x(level) end
---@param abilCode number
---@param extendedTooltip string
---@param level number
function BlzSetAbilityActivatedExtendedTooltip(abilCode, extendedTooltip, level) x(abilCode) x(extendedTooltip) x(level) end
---@param abilCode number
---@param researchTooltip string
---@param level number
function BlzSetAbilityResearchTooltip(abilCode, researchTooltip, level) x(abilCode) x(researchTooltip) x(level) end
---@param abilCode number
---@param researchExtendedTooltip string
---@param level number
function BlzSetAbilityResearchExtendedTooltip(abilCode, researchExtendedTooltip, level) x(abilCode) x(researchExtendedTooltip) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityActivatedTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityExtendedTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityActivatedExtendedTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityResearchTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param level number
---@return string
function BlzGetAbilityResearchExtendedTooltip(abilCode, level) x(abilCode) x(level) end
---@param abilCode number
---@param iconPath string
function BlzSetAbilityIcon(abilCode, iconPath) x(abilCode) x(iconPath) end
---@param abilCode number
---@return string
function BlzGetAbilityIcon(abilCode) x(abilCode) end
---@param abilCode number
---@param iconPath string
function BlzSetAbilityActivatedIcon(abilCode, iconPath) x(abilCode) x(iconPath) end
---@param abilCode number
---@return string
function BlzGetAbilityActivatedIcon(abilCode) x(abilCode) end
---@param abilCode number
---@return number
function BlzGetAbilityPosX(abilCode) x(abilCode) end
---@param abilCode number
---@return number
function BlzGetAbilityPosY(abilCode) x(abilCode) end
---@param abilCode number
---@param x number
function BlzSetAbilityPosX(abilCode, x) x(abilCode) x(x) end
---@param abilCode number
---@param y number
function BlzSetAbilityPosY(abilCode, y) x(abilCode) x(y) end
---@param abilCode number
---@return number
function BlzGetAbilityActivatedPosX(abilCode) x(abilCode) end
---@param abilCode number
---@return number
function BlzGetAbilityActivatedPosY(abilCode) x(abilCode) end
---@param abilCode number
---@param x number
function BlzSetAbilityActivatedPosX(abilCode, x) x(abilCode) x(x) end
---@param abilCode number
---@param y number
function BlzSetAbilityActivatedPosY(abilCode, y) x(abilCode) x(y) end
---@param whichUnit junit
---@return number
function BlzGetUnitMaxHP(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param hp number
function BlzSetUnitMaxHP(whichUnit, hp) x(whichUnit) x(hp) end
---@param whichUnit junit
---@return number
function BlzGetUnitMaxMana(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param mana number
function BlzSetUnitMaxMana(whichUnit, mana) x(whichUnit) x(mana) end
---@param whichItem jitem
---@param name string
function BlzSetItemName(whichItem, name) x(whichItem) x(name) end
---@param whichItem jitem
---@param description string
function BlzSetItemDescription(whichItem, description) x(whichItem) x(description) end
---@param whichItem jitem
---@return string
function BlzGetItemDescription(whichItem) x(whichItem) end
---@param whichItem jitem
---@param tooltip string
function BlzSetItemTooltip(whichItem, tooltip) x(whichItem) x(tooltip) end
---@param whichItem jitem
---@return string
function BlzGetItemTooltip(whichItem) x(whichItem) end
---@param whichItem jitem
---@param extendedTooltip string
function BlzSetItemExtendedTooltip(whichItem, extendedTooltip) x(whichItem) x(extendedTooltip) end
---@param whichItem jitem
---@return string
function BlzGetItemExtendedTooltip(whichItem) x(whichItem) end
---@param whichItem jitem
---@param iconPath string
function BlzSetItemIconPath(whichItem, iconPath) x(whichItem) x(iconPath) end
---@param whichItem jitem
---@return string
function BlzGetItemIconPath(whichItem) x(whichItem) end
---@param whichUnit junit
---@param name string
function BlzSetUnitName(whichUnit, name) x(whichUnit) x(name) end
---@param whichUnit junit
---@param heroProperName string
function BlzSetHeroProperName(whichUnit, heroProperName) x(whichUnit) x(heroProperName) end
---@param whichUnit junit
---@param weaponIndex number
---@return number
function BlzGetUnitBaseDamage(whichUnit, weaponIndex) x(whichUnit) x(weaponIndex) end
---@param whichUnit junit
---@param baseDamage number
---@param weaponIndex number
function BlzSetUnitBaseDamage(whichUnit, baseDamage, weaponIndex) x(whichUnit) x(baseDamage) x(weaponIndex) end
---@param whichUnit junit
---@param weaponIndex number
---@return number
function BlzGetUnitDiceNumber(whichUnit, weaponIndex) x(whichUnit) x(weaponIndex) end
---@param whichUnit junit
---@param diceNumber number
---@param weaponIndex number
function BlzSetUnitDiceNumber(whichUnit, diceNumber, weaponIndex) x(whichUnit) x(diceNumber) x(weaponIndex) end
---@param whichUnit junit
---@param weaponIndex number
---@return number
function BlzGetUnitDiceSides(whichUnit, weaponIndex) x(whichUnit) x(weaponIndex) end
---@param whichUnit junit
---@param diceSides number
---@param weaponIndex number
function BlzSetUnitDiceSides(whichUnit, diceSides, weaponIndex) x(whichUnit) x(diceSides) x(weaponIndex) end
---@param whichUnit junit
---@param weaponIndex number
---@return number
function BlzGetUnitAttackCooldown(whichUnit, weaponIndex) x(whichUnit) x(weaponIndex) end
---@param whichUnit junit
---@param cooldown number
---@param weaponIndex number
function BlzSetUnitAttackCooldown(whichUnit, cooldown, weaponIndex) x(whichUnit) x(cooldown) x(weaponIndex) end
---@param whichEffect jeffect
---@param whichPlayer jplayer
function BlzSetSpecialEffectColorByPlayer(whichEffect, whichPlayer) x(whichEffect) x(whichPlayer) end
---@param whichEffect jeffect
---@param r number
---@param g number
---@param b number
function BlzSetSpecialEffectColor(whichEffect, r, g, b) x(whichEffect) x(r) x(g) x(b) end
---@param whichEffect jeffect
---@param alpha number
function BlzSetSpecialEffectAlpha(whichEffect, alpha) x(whichEffect) x(alpha) end
---@param whichEffect jeffect
---@param scale number
function BlzSetSpecialEffectScale(whichEffect, scale) x(whichEffect) x(scale) end
---@param whichEffect jeffect
---@param x number
---@param y number
---@param z number
function BlzSetSpecialEffectPosition(whichEffect, x, y, z) x(whichEffect) x(x) x(y) x(z) end
---@param whichEffect jeffect
---@param height number
function BlzSetSpecialEffectHeight(whichEffect, height) x(whichEffect) x(height) end
---@param whichEffect jeffect
---@param timeScale number
function BlzSetSpecialEffectTimeScale(whichEffect, timeScale) x(whichEffect) x(timeScale) end
---@param whichEffect jeffect
---@param time number
function BlzSetSpecialEffectTime(whichEffect, time) x(whichEffect) x(time) end
---@param whichEffect jeffect
---@param yaw number
---@param pitch number
---@param roll number
function BlzSetSpecialEffectOrientation(whichEffect, yaw, pitch, roll) x(whichEffect) x(yaw) x(pitch) x(roll) end
---@param whichEffect jeffect
---@param yaw number
function BlzSetSpecialEffectYaw(whichEffect, yaw) x(whichEffect) x(yaw) end
---@param whichEffect jeffect
---@param pitch number
function BlzSetSpecialEffectPitch(whichEffect, pitch) x(whichEffect) x(pitch) end
---@param whichEffect jeffect
---@param roll number
function BlzSetSpecialEffectRoll(whichEffect, roll) x(whichEffect) x(roll) end
---@param whichEffect jeffect
---@param x number
function BlzSetSpecialEffectX(whichEffect, x) x(whichEffect) x(x) end
---@param whichEffect jeffect
---@param y number
function BlzSetSpecialEffectY(whichEffect, y) x(whichEffect) x(y) end
---@param whichEffect jeffect
---@param z number
function BlzSetSpecialEffectZ(whichEffect, z) x(whichEffect) x(z) end
---@param whichEffect jeffect
---@param loc jlocation
function BlzSetSpecialEffectPositionLoc(whichEffect, loc) x(whichEffect) x(loc) end
---@param whichEffect jeffect
---@return number
function BlzGetLocalSpecialEffectX(whichEffect) x(whichEffect) end
---@param whichEffect jeffect
---@return number
function BlzGetLocalSpecialEffectY(whichEffect) x(whichEffect) end
---@param whichEffect jeffect
---@return number
function BlzGetLocalSpecialEffectZ(whichEffect) x(whichEffect) end
---@param whichEffect jeffect
function BlzSpecialEffectClearSubAnimations(whichEffect) x(whichEffect) end
---@param whichEffect jeffect
---@param whichSubAnim jsubanimtype
function BlzSpecialEffectRemoveSubAnimation(whichEffect, whichSubAnim) x(whichEffect) x(whichSubAnim) end
---@param whichEffect jeffect
---@param whichSubAnim jsubanimtype
function BlzSpecialEffectAddSubAnimation(whichEffect, whichSubAnim) x(whichEffect) x(whichSubAnim) end
---@param whichEffect jeffect
---@param whichAnim janimtype
function BlzPlaySpecialEffect(whichEffect, whichAnim) x(whichEffect) x(whichAnim) end
---@param whichEffect jeffect
---@param whichAnim janimtype
---@param timeScale number
function BlzPlaySpecialEffectWithTimeScale(whichEffect, whichAnim, timeScale) x(whichEffect) x(whichAnim) x(timeScale) end
---@param whichAnim janimtype
---@return string
function BlzGetAnimName(whichAnim) x(whichAnim) end
---@param whichUnit junit
---@return number
function BlzGetUnitArmor(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param armorAmount number
function BlzSetUnitArmor(whichUnit, armorAmount) x(whichUnit) x(armorAmount) end
---@param whichUnit junit
---@param abilId number
---@param flag boolean
function BlzUnitHideAbility(whichUnit, abilId, flag) x(whichUnit) x(abilId) x(flag) end
---@param whichUnit junit
---@param abilId number
---@param flag boolean
---@param hideUI boolean
function BlzUnitDisableAbility(whichUnit, abilId, flag, hideUI) x(whichUnit) x(abilId) x(flag) x(hideUI) end
---@param whichUnit junit
function BlzUnitCancelTimedLife(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function BlzIsUnitSelectable(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function BlzIsUnitInvulnerable(whichUnit) x(whichUnit) end
---@param whichUnit junit
function BlzUnitInterruptAttack(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function BlzGetUnitCollisionSize(whichUnit) x(whichUnit) end
---@param abilId number
---@param level number
---@return number
function BlzGetAbilityManaCost(abilId, level) x(abilId) x(level) end
---@param abilId number
---@param level number
---@return number
function BlzGetAbilityCooldown(abilId, level) x(abilId) x(level) end
---@param whichUnit junit
---@param abilId number
---@param level number
---@param cooldown number
function BlzSetUnitAbilityCooldown(whichUnit, abilId, level, cooldown) x(whichUnit) x(abilId) x(level) x(cooldown) end
---@param whichUnit junit
---@param abilId number
---@param level number
---@return number
function BlzGetUnitAbilityCooldown(whichUnit, abilId, level) x(whichUnit) x(abilId) x(level) end
---@param whichUnit junit
---@param abilId number
---@return number
function BlzGetUnitAbilityCooldownRemaining(whichUnit, abilId) x(whichUnit) x(abilId) end
---@param whichUnit junit
---@param abilCode number
function BlzEndUnitAbilityCooldown(whichUnit, abilCode) x(whichUnit) x(abilCode) end
---@param whichUnit junit
---@param abilId number
---@param level number
---@return number
function BlzGetUnitAbilityManaCost(whichUnit, abilId, level) x(whichUnit) x(abilId) x(level) end
---@param whichUnit junit
---@param abilId number
---@param level number
---@param manaCost number
function BlzSetUnitAbilityManaCost(whichUnit, abilId, level, manaCost) x(whichUnit) x(abilId) x(level) x(manaCost) end
---@param whichUnit junit
---@return number
function BlzGetLocalUnitZ(whichUnit) x(whichUnit) end
---@param whichPlayer jplayer
---@param techid number
---@param levels number
function BlzDecPlayerTechResearched(whichPlayer, techid, levels) x(whichPlayer) x(techid) x(levels) end
---@param damage number
function BlzSetEventDamage(damage) x(damage) end
---@return junit
function BlzGetEventDamageTarget()  end
---@return jattacktype
function BlzGetEventAttackType()  end
---@return jdamagetype
function BlzGetEventDamageType()  end
---@return jweapontype
function BlzGetEventWeaponType()  end
---@param attackType jattacktype
---@return boolean
function BlzSetEventAttackType(attackType) x(attackType) end
---@param damageType jdamagetype
---@return boolean
function BlzSetEventDamageType(damageType) x(damageType) end
---@param weaponType jweapontype
---@return boolean
function BlzSetEventWeaponType(weaponType) x(weaponType) end
---@param dataType number
---@param whichPlayer jplayer
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 number
---@param param5 number
---@param param6 number
---@return number
function RequestExtraIntegerData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) x(dataType) x(whichPlayer) x(param1) x(param2) x(param3) x(param4) x(param5) x(param6) end
---@param dataType number
---@param whichPlayer jplayer
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 number
---@param param5 number
---@param param6 number
---@return boolean
function RequestExtraBooleanData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) x(dataType) x(whichPlayer) x(param1) x(param2) x(param3) x(param4) x(param5) x(param6) end
---@param dataType number
---@param whichPlayer jplayer
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 number
---@param param5 number
---@param param6 number
---@return string
function RequestExtraStringData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) x(dataType) x(whichPlayer) x(param1) x(param2) x(param3) x(param4) x(param5) x(param6) end
---@param dataType number
---@param whichPlayer jplayer
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 number
---@param param5 number
---@param param6 number
---@return number
function RequestExtraRealData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) x(dataType) x(whichPlayer) x(param1) x(param2) x(param3) x(param4) x(param5) x(param6) end
---@param whichUnit junit
---@return number
function BlzGetUnitZ(whichUnit) x(whichUnit) end
---@param enableSelection boolean
---@param enableSelectionCircle boolean
function BlzEnableSelections(enableSelection, enableSelectionCircle) x(enableSelection) x(enableSelectionCircle) end
---@return boolean
function BlzIsSelectionEnabled()  end
---@return boolean
function BlzIsSelectionCircleEnabled()  end
---@param whichSetup jcamerasetup
---@param doPan boolean
---@param forcedDuration number
---@param easeInDuration number
---@param easeOutDuration number
---@param smoothFactor number
function BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) x(whichSetup) x(doPan) x(forcedDuration) x(easeInDuration) x(easeOutDuration) x(smoothFactor) end
---@param enable boolean
function BlzEnableTargetIndicator(enable) x(enable) end
---@return boolean
function BlzIsTargetIndicatorEnabled()  end
---@param frameType joriginframetype
---@param index number
---@return jframehandle
function BlzGetOriginFrame(frameType, index) x(frameType) x(index) end
---@param enable boolean
function BlzEnableUIAutoPosition(enable) x(enable) end
---@param enable boolean
function BlzHideOriginFrames(enable) x(enable) end
---@param a number
---@param r number
---@param g number
---@param b number
---@return number
function BlzConvertColor(a, r, g, b) x(a) x(r) x(g) x(b) end
---@param TOCFile string
---@return boolean
function BlzLoadTOCFile(TOCFile) x(TOCFile) end
---@param name string
---@param owner jframehandle
---@param priority number
---@param createContext number
---@return jframehandle
function BlzCreateFrame(name, owner, priority, createContext) x(name) x(owner) x(priority) x(createContext) end
---@param name string
---@param owner jframehandle
---@param createContext number
---@return jframehandle
function BlzCreateSimpleFrame(name, owner, createContext) x(name) x(owner) x(createContext) end
---@param typeName string
---@param name string
---@param owner jframehandle
---@param inherits string
---@param createContext number
---@return jframehandle
function BlzCreateFrameByType(typeName, name, owner, inherits, createContext) x(typeName) x(name) x(owner) x(inherits) x(createContext) end
---@param frame jframehandle
function BlzDestroyFrame(frame) x(frame) end
---@param frame jframehandle
---@param point jframepointtype
---@param relative jframehandle
---@param relativePoint jframepointtype
---@param x number
---@param y number
function BlzFrameSetPoint(frame, point, relative, relativePoint, x, y) x(frame) x(point) x(relative) x(relativePoint) x(x) x(y) end
---@param frame jframehandle
---@param point jframepointtype
---@param x number
---@param y number
function BlzFrameSetAbsPoint(frame, point, x, y) x(frame) x(point) x(x) x(y) end
---@param frame jframehandle
function BlzFrameClearAllPoints(frame) x(frame) end
---@param frame jframehandle
---@param relative jframehandle
function BlzFrameSetAllPoints(frame, relative) x(frame) x(relative) end
---@param frame jframehandle
---@param visible boolean
function BlzFrameSetVisible(frame, visible) x(frame) x(visible) end
---@param frame jframehandle
---@return boolean
function BlzFrameIsVisible(frame) x(frame) end
---@param name string
---@param createContext number
---@return jframehandle
function BlzGetFrameByName(name, createContext) x(name) x(createContext) end
---@param frame jframehandle
---@return string
function BlzFrameGetName(frame) x(frame) end
---@param frame jframehandle
function BlzFrameClick(frame) x(frame) end
---@param frame jframehandle
---@param text string
function BlzFrameSetText(frame, text) x(frame) x(text) end
---@param frame jframehandle
---@return string
function BlzFrameGetText(frame) x(frame) end
---@param frame jframehandle
---@param text string
function BlzFrameAddText(frame, text) x(frame) x(text) end
---@param frame jframehandle
---@param size number
function BlzFrameSetTextSizeLimit(frame, size) x(frame) x(size) end
---@param frame jframehandle
---@return number
function BlzFrameGetTextSizeLimit(frame) x(frame) end
---@param frame jframehandle
---@param color number
function BlzFrameSetTextColor(frame, color) x(frame) x(color) end
---@param frame jframehandle
---@param flag boolean
function BlzFrameSetFocus(frame, flag) x(frame) x(flag) end
---@param frame jframehandle
---@param modelFile string
---@param cameraIndex number
function BlzFrameSetModel(frame, modelFile, cameraIndex) x(frame) x(modelFile) x(cameraIndex) end
---@param frame jframehandle
---@param enabled boolean
function BlzFrameSetEnable(frame, enabled) x(frame) x(enabled) end
---@param frame jframehandle
---@return boolean
function BlzFrameGetEnable(frame) x(frame) end
---@param frame jframehandle
---@param alpha number
function BlzFrameSetAlpha(frame, alpha) x(frame) x(alpha) end
---@param frame jframehandle
---@return number
function BlzFrameGetAlpha(frame) x(frame) end
---@param frame jframehandle
---@param primaryProp number
---@param flags number
function BlzFrameSetSpriteAnimate(frame, primaryProp, flags) x(frame) x(primaryProp) x(flags) end
---@param frame jframehandle
---@param texFile string
---@param flag number
---@param blend boolean
function BlzFrameSetTexture(frame, texFile, flag, blend) x(frame) x(texFile) x(flag) x(blend) end
---@param frame jframehandle
---@param scale number
function BlzFrameSetScale(frame, scale) x(frame) x(scale) end
---@param frame jframehandle
---@param tooltip jframehandle
function BlzFrameSetTooltip(frame, tooltip) x(frame) x(tooltip) end
---@param frame jframehandle
---@param enable boolean
function BlzFrameCageMouse(frame, enable) x(frame) x(enable) end
---@param frame jframehandle
---@param value number
function BlzFrameSetValue(frame, value) x(frame) x(value) end
---@param frame jframehandle
---@return number
function BlzFrameGetValue(frame) x(frame) end
---@param frame jframehandle
---@param minValue number
---@param maxValue number
function BlzFrameSetMinMaxValue(frame, minValue, maxValue) x(frame) x(minValue) x(maxValue) end
---@param frame jframehandle
---@param stepSize number
function BlzFrameSetStepSize(frame, stepSize) x(frame) x(stepSize) end
---@param frame jframehandle
---@param width number
---@param height number
function BlzFrameSetSize(frame, width, height) x(frame) x(width) x(height) end
---@param frame jframehandle
---@param color number
function BlzFrameSetVertexColor(frame, color) x(frame) x(color) end
---@param frame jframehandle
---@param level number
function BlzFrameSetLevel(frame, level) x(frame) x(level) end
---@param frame jframehandle
---@param parent jframehandle
function BlzFrameSetParent(frame, parent) x(frame) x(parent) end
---@param frame jframehandle
---@return jframehandle
function BlzFrameGetParent(frame) x(frame) end
---@param frame jframehandle
---@return number
function BlzFrameGetHeight(frame) x(frame) end
---@param frame jframehandle
---@return number
function BlzFrameGetWidth(frame) x(frame) end
---@param frame jframehandle
---@param fileName string
---@param height number
---@param flags number
function BlzFrameSetFont(frame, fileName, height, flags) x(frame) x(fileName) x(height) x(flags) end
---@param frame jframehandle
---@param vert jtextaligntype
---@param horz jtextaligntype
function BlzFrameSetTextAlignment(frame, vert, horz) x(frame) x(vert) x(horz) end
---@param whichTrigger jtrigger
---@param frame jframehandle
---@param eventId jframeeventtype
---@return jevent
function BlzTriggerRegisterFrameEvent(whichTrigger, frame, eventId) x(whichTrigger) x(frame) x(eventId) end
---@return jframehandle
function BlzGetTriggerFrame()  end
---@return jframeeventtype
function BlzGetTriggerFrameEvent()  end
---@return number
function BlzGetTriggerFrameValue()  end
---@return string
function BlzGetTriggerFrameText()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param prefix string
---@param fromServer boolean
---@return jevent
function BlzTriggerRegisterPlayerSyncEvent(whichTrigger, whichPlayer, prefix, fromServer) x(whichTrigger) x(whichPlayer) x(prefix) x(fromServer) end
---@param prefix string
---@param data string
---@return boolean
function BlzSendSyncData(prefix, data) x(prefix) x(data) end
---@return string
function BlzGetTriggerSyncPrefix()  end
---@return string
function BlzGetTriggerSyncData()  end
---@param whichTrigger jtrigger
---@param whichPlayer jplayer
---@param key joskeytype
---@param metaKey number
---@param keyDown boolean
---@return jevent
function BlzTriggerRegisterPlayerKeyEvent(whichTrigger, whichPlayer, key, metaKey, keyDown) x(whichTrigger) x(whichPlayer) x(key) x(metaKey) x(keyDown) end
---@return joskeytype
function BlzGetTriggerPlayerKey()  end
---@return number
function BlzGetTriggerPlayerMetaKey()  end
---@return boolean
function BlzGetTriggerPlayerIsKeyDown()  end
---@param enable boolean
function BlzEnableCursor(enable) x(enable) end
---@param x number
---@param y number
function BlzSetMousePos(x, y) x(x) x(y) end
---@return number
function BlzGetLocalClientWidth()  end
---@return number
function BlzGetLocalClientHeight()  end
---@return boolean
function BlzIsLocalClientActive()  end
---@return junit
function BlzGetMouseFocusUnit()  end
---@param texFile string
---@return boolean
function BlzChangeMinimapTerrainTex(texFile) x(texFile) end
---@return string
function BlzGetLocale()  end
---@param whichEffect jeffect
---@return number
function BlzGetSpecialEffectScale(whichEffect) x(whichEffect) end
---@param whichEffect jeffect
---@param x number
---@param y number
---@param z number
function BlzSetSpecialEffectMatrixScale(whichEffect, x, y, z) x(whichEffect) x(x) x(y) x(z) end
---@param whichEffect jeffect
function BlzResetSpecialEffectMatrix(whichEffect) x(whichEffect) end
---@param whichUnit junit
---@param abilId number
---@return jability
function BlzGetUnitAbility(whichUnit, abilId) x(whichUnit) x(abilId) end
---@param whichUnit junit
---@param index number
---@return jability
function BlzGetUnitAbilityByIndex(whichUnit, index) x(whichUnit) x(index) end
---@param whichPlayer jplayer
---@param recipient number
---@param message string
function BlzDisplayChatMessage(whichPlayer, recipient, message) x(whichPlayer) x(recipient) x(message) end
---@param whichUnit junit
---@param flag boolean
function BlzPauseUnitEx(whichUnit, flag) x(whichUnit) x(flag) end
---@param x number
---@param y number
---@return number
function BlzBitOr(x, y) x(x) x(y) end
---@param x number
---@param y number
---@return number
function BlzBitAnd(x, y) x(x) x(y) end
---@param x number
---@param y number
---@return number
function BlzBitXor(x, y) x(x) x(y) end
---@param whichAbility jability
---@param whichField jabilitybooleanfield
---@return boolean
function BlzGetAbilityBooleanField(whichAbility, whichField) x(whichAbility) x(whichField) end
---@param whichAbility jability
---@param whichField jabilityintegerfield
---@return number
function BlzGetAbilityIntegerField(whichAbility, whichField) x(whichAbility) x(whichField) end
---@param whichAbility jability
---@param whichField jabilityrealfield
---@return number
function BlzGetAbilityRealField(whichAbility, whichField) x(whichAbility) x(whichField) end
---@param whichAbility jability
---@param whichField jabilitystringfield
---@return string
function BlzGetAbilityStringField(whichAbility, whichField) x(whichAbility) x(whichField) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelfield
---@param level number
---@return boolean
function BlzGetAbilityBooleanLevelField(whichAbility, whichField, level) x(whichAbility) x(whichField) x(level) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelfield
---@param level number
---@return number
function BlzGetAbilityIntegerLevelField(whichAbility, whichField, level) x(whichAbility) x(whichField) x(level) end
---@param whichAbility jability
---@param whichField jabilityreallevelfield
---@param level number
---@return number
function BlzGetAbilityRealLevelField(whichAbility, whichField, level) x(whichAbility) x(whichField) x(level) end
---@param whichAbility jability
---@param whichField jabilitystringlevelfield
---@param level number
---@return string
function BlzGetAbilityStringLevelField(whichAbility, whichField, level) x(whichAbility) x(whichField) x(level) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param index number
---@return boolean
function BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index) x(whichAbility) x(whichField) x(level) x(index) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param index number
---@return number
function BlzGetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index) x(whichAbility) x(whichField) x(level) x(index) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param index number
---@return number
function BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index) x(whichAbility) x(whichField) x(level) x(index) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param index number
---@return string
function BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index) x(whichAbility) x(whichField) x(level) x(index) end
---@param whichAbility jability
---@param whichField jabilitybooleanfield
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanField(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerfield
---@param value number
---@return boolean
function BlzSetAbilityIntegerField(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilityrealfield
---@param value number
---@return boolean
function BlzSetAbilityRealField(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringfield
---@param value string
---@return boolean
function BlzSetAbilityStringField(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelfield
---@param level number
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelfield
---@param level number
---@param value number
---@return boolean
function BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelfield
---@param level number
---@param value number
---@return boolean
function BlzSetAbilityRealLevelField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelfield
---@param level number
---@param value string
---@return boolean
function BlzSetAbilityStringLevelField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param index number
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param index number
---@param value number
---@return boolean
function BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param index number
---@param value number
---@return boolean
function BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param index number
---@param value string
---@return boolean
function BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param value boolean
---@return boolean
function BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param value number
---@return boolean
function BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param value number
---@return boolean
function BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param value string
---@return boolean
function BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param value boolean
---@return boolean
function BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param value number
---@return boolean
function BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param value number
---@return boolean
function BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param value string
---@return boolean
function BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichItem jitem
---@param index number
---@return jability
function BlzGetItemAbilityByIndex(whichItem, index) x(whichItem) x(index) end
---@param whichItem jitem
---@param abilCode number
---@return jability
function BlzGetItemAbility(whichItem, abilCode) x(whichItem) x(abilCode) end
---@param whichItem jitem
---@param abilCode number
---@return boolean
function BlzItemAddAbility(whichItem, abilCode) x(whichItem) x(abilCode) end
---@param whichItem jitem
---@param whichField jitembooleanfield
---@return boolean
function BlzGetItemBooleanField(whichItem, whichField) x(whichItem) x(whichField) end
---@param whichItem jitem
---@param whichField jitemintegerfield
---@return number
function BlzGetItemIntegerField(whichItem, whichField) x(whichItem) x(whichField) end
---@param whichItem jitem
---@param whichField jitemrealfield
---@return number
function BlzGetItemRealField(whichItem, whichField) x(whichItem) x(whichField) end
---@param whichItem jitem
---@param whichField jitemstringfield
---@return string
function BlzGetItemStringField(whichItem, whichField) x(whichItem) x(whichField) end
---@param whichItem jitem
---@param whichField jitembooleanfield
---@param value boolean
---@return boolean
function BlzSetItemBooleanField(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemintegerfield
---@param value number
---@return boolean
function BlzSetItemIntegerField(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemrealfield
---@param value number
---@return boolean
function BlzSetItemRealField(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemstringfield
---@param value string
---@return boolean
function BlzSetItemStringField(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param abilCode number
---@return boolean
function BlzItemRemoveAbility(whichItem, abilCode) x(whichItem) x(abilCode) end
---@param whichUnit junit
---@param whichField junitbooleanfield
---@return boolean
function BlzGetUnitBooleanField(whichUnit, whichField) x(whichUnit) x(whichField) end
---@param whichUnit junit
---@param whichField junitintegerfield
---@return number
function BlzGetUnitIntegerField(whichUnit, whichField) x(whichUnit) x(whichField) end
---@param whichUnit junit
---@param whichField junitrealfield
---@return number
function BlzGetUnitRealField(whichUnit, whichField) x(whichUnit) x(whichField) end
---@param whichUnit junit
---@param whichField junitstringfield
---@return string
function BlzGetUnitStringField(whichUnit, whichField) x(whichUnit) x(whichField) end
---@param whichUnit junit
---@param whichField junitbooleanfield
---@param value boolean
---@return boolean
function BlzSetUnitBooleanField(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitintegerfield
---@param value number
---@return boolean
function BlzSetUnitIntegerField(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitrealfield
---@param value number
---@return boolean
function BlzSetUnitRealField(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitstringfield
---@param value string
---@return boolean
function BlzSetUnitStringField(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitweaponbooleanfield
---@param index number
---@return boolean
function BlzGetUnitWeaponBooleanField(whichUnit, whichField, index) x(whichUnit) x(whichField) x(index) end
---@param whichUnit junit
---@param whichField junitweaponintegerfield
---@param index number
---@return number
function BlzGetUnitWeaponIntegerField(whichUnit, whichField, index) x(whichUnit) x(whichField) x(index) end
---@param whichUnit junit
---@param whichField junitweaponrealfield
---@param index number
---@return number
function BlzGetUnitWeaponRealField(whichUnit, whichField, index) x(whichUnit) x(whichField) x(index) end
---@param whichUnit junit
---@param whichField junitweaponstringfield
---@param index number
---@return string
function BlzGetUnitWeaponStringField(whichUnit, whichField, index) x(whichUnit) x(whichField) x(index) end
---@param whichUnit junit
---@param whichField junitweaponbooleanfield
---@param index number
---@param value boolean
---@return boolean
function BlzSetUnitWeaponBooleanField(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponintegerfield
---@param index number
---@param value number
---@return boolean
function BlzSetUnitWeaponIntegerField(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponrealfield
---@param index number
---@param value number
---@return boolean
function BlzSetUnitWeaponRealField(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponstringfield
---@param index number
---@param value string
---@return boolean
function BlzSetUnitWeaponStringField(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@type number
_G.bj_PI = nil
---@type number
_G.bj_E = nil
---@type number
_G.bj_CELLWIDTH = nil
---@type number
_G.bj_CLIFFHEIGHT = nil
---@type number
_G.bj_UNIT_FACING = nil
---@type number
_G.bj_RADTODEG = nil
---@type number
_G.bj_DEGTORAD = nil
---@type number
_G.bj_TEXT_DELAY_QUEST = nil
---@type number
_G.bj_TEXT_DELAY_QUESTUPDATE = nil
---@type number
_G.bj_TEXT_DELAY_QUESTDONE = nil
---@type number
_G.bj_TEXT_DELAY_QUESTFAILED = nil
---@type number
_G.bj_TEXT_DELAY_QUESTREQUIREMENT = nil
---@type number
_G.bj_TEXT_DELAY_MISSIONFAILED = nil
---@type number
_G.bj_TEXT_DELAY_ALWAYSHINT = nil
---@type number
_G.bj_TEXT_DELAY_HINT = nil
---@type number
_G.bj_TEXT_DELAY_SECRET = nil
---@type number
_G.bj_TEXT_DELAY_UNITACQUIRED = nil
---@type number
_G.bj_TEXT_DELAY_UNITAVAILABLE = nil
---@type number
_G.bj_TEXT_DELAY_ITEMACQUIRED = nil
---@type number
_G.bj_TEXT_DELAY_WARNING = nil
---@type number
_G.bj_QUEUE_DELAY_QUEST = nil
---@type number
_G.bj_QUEUE_DELAY_HINT = nil
---@type number
_G.bj_QUEUE_DELAY_SECRET = nil
---@type number
_G.bj_HANDICAP_EASY = nil
---@type number
_G.bj_GAME_STARTED_THRESHOLD = nil
---@type number
_G.bj_WAIT_FOR_COND_MIN_INTERVAL = nil
---@type number
_G.bj_POLLED_WAIT_INTERVAL = nil
---@type number
_G.bj_POLLED_WAIT_SKIP_THRESHOLD = nil
---@type number
_G.bj_MAX_INVENTORY = nil
---@type number
_G.bj_MAX_PLAYERS = nil
---@type number
_G.bj_PLAYER_NEUTRAL_VICTIM = nil
---@type number
_G.bj_PLAYER_NEUTRAL_EXTRA = nil
---@type number
_G.bj_MAX_PLAYER_SLOTS = nil
---@type number
_G.bj_MAX_SKELETONS = nil
---@type number
_G.bj_MAX_STOCK_ITEM_SLOTS = nil
---@type number
_G.bj_MAX_STOCK_UNIT_SLOTS = nil
---@type number
_G.bj_MAX_ITEM_LEVEL = nil
---@type number
_G.bj_TOD_DAWN = nil
---@type number
_G.bj_TOD_DUSK = nil
---@type number
_G.bj_MELEE_STARTING_TOD = nil
---@type number
_G.bj_MELEE_STARTING_GOLD_V0 = nil
---@type number
_G.bj_MELEE_STARTING_GOLD_V1 = nil
---@type number
_G.bj_MELEE_STARTING_LUMBER_V0 = nil
---@type number
_G.bj_MELEE_STARTING_LUMBER_V1 = nil
---@type number
_G.bj_MELEE_STARTING_HERO_TOKENS = nil
---@type number
_G.bj_MELEE_HERO_LIMIT = nil
---@type number
_G.bj_MELEE_HERO_TYPE_LIMIT = nil
---@type number
_G.bj_MELEE_MINE_SEARCH_RADIUS = nil
---@type number
_G.bj_MELEE_CLEAR_UNITS_RADIUS = nil
---@type number
_G.bj_MELEE_CRIPPLE_TIMEOUT = nil
---@type number
_G.bj_MELEE_CRIPPLE_MSG_DURATION = nil
---@type number
_G.bj_MELEE_MAX_TWINKED_HEROES_V0 = nil
---@type number
_G.bj_MELEE_MAX_TWINKED_HEROES_V1 = nil
---@type number
_G.bj_CREEP_ITEM_DELAY = nil
---@type number
_G.bj_STOCK_RESTOCK_INITIAL_DELAY = nil
---@type number
_G.bj_STOCK_RESTOCK_INTERVAL = nil
---@type number
_G.bj_STOCK_MAX_ITERATIONS = nil
---@type number
_G.bj_MAX_DEST_IN_REGION_EVENTS = nil
---@type number
_G.bj_CAMERA_MIN_FARZ = nil
---@type number
_G.bj_CAMERA_DEFAULT_DISTANCE = nil
---@type number
_G.bj_CAMERA_DEFAULT_FARZ = nil
---@type number
_G.bj_CAMERA_DEFAULT_AOA = nil
---@type number
_G.bj_CAMERA_DEFAULT_FOV = nil
---@type number
_G.bj_CAMERA_DEFAULT_ROLL = nil
---@type number
_G.bj_CAMERA_DEFAULT_ROTATION = nil
---@type number
_G.bj_RESCUE_PING_TIME = nil
---@type number
_G.bj_NOTHING_SOUND_DURATION = nil
---@type number
_G.bj_TRANSMISSION_PING_TIME = nil
---@type number
_G.bj_TRANSMISSION_IND_RED = nil
---@type number
_G.bj_TRANSMISSION_IND_BLUE = nil
---@type number
_G.bj_TRANSMISSION_IND_GREEN = nil
---@type number
_G.bj_TRANSMISSION_IND_ALPHA = nil
---@type number
_G.bj_TRANSMISSION_PORT_HANGTIME = nil
---@type number
_G.bj_CINEMODE_INTERFACEFADE = nil
---@type jgamespeed
_G.bj_CINEMODE_GAMESPEED = nil
---@type number
_G.bj_CINEMODE_VOLUME_UNITMOVEMENT = nil
---@type number
_G.bj_CINEMODE_VOLUME_UNITSOUNDS = nil
---@type number
_G.bj_CINEMODE_VOLUME_COMBAT = nil
---@type number
_G.bj_CINEMODE_VOLUME_SPELLS = nil
---@type number
_G.bj_CINEMODE_VOLUME_UI = nil
---@type number
_G.bj_CINEMODE_VOLUME_MUSIC = nil
---@type number
_G.bj_CINEMODE_VOLUME_AMBIENTSOUNDS = nil
---@type number
_G.bj_CINEMODE_VOLUME_FIRE = nil
---@type number
_G.bj_SPEECH_VOLUME_UNITMOVEMENT = nil
---@type number
_G.bj_SPEECH_VOLUME_UNITSOUNDS = nil
---@type number
_G.bj_SPEECH_VOLUME_COMBAT = nil
---@type number
_G.bj_SPEECH_VOLUME_SPELLS = nil
---@type number
_G.bj_SPEECH_VOLUME_UI = nil
---@type number
_G.bj_SPEECH_VOLUME_MUSIC = nil
---@type number
_G.bj_SPEECH_VOLUME_AMBIENTSOUNDS = nil
---@type number
_G.bj_SPEECH_VOLUME_FIRE = nil
---@type number
_G.bj_SMARTPAN_TRESHOLD_PAN = nil
---@type number
_G.bj_SMARTPAN_TRESHOLD_SNAP = nil
---@type number
_G.bj_MAX_QUEUED_TRIGGERS = nil
---@type number
_G.bj_QUEUED_TRIGGER_TIMEOUT = nil
---@type number
_G.bj_CAMPAIGN_INDEX_T = nil
---@type number
_G.bj_CAMPAIGN_INDEX_H = nil
---@type number
_G.bj_CAMPAIGN_INDEX_U = nil
---@type number
_G.bj_CAMPAIGN_INDEX_O = nil
---@type number
_G.bj_CAMPAIGN_INDEX_N = nil
---@type number
_G.bj_CAMPAIGN_INDEX_XN = nil
---@type number
_G.bj_CAMPAIGN_INDEX_XH = nil
---@type number
_G.bj_CAMPAIGN_INDEX_XU = nil
---@type number
_G.bj_CAMPAIGN_INDEX_XO = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_T = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_H = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_U = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_O = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_N = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_XN = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_XH = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_XU = nil
---@type number
_G.bj_CAMPAIGN_OFFSET_XO = nil
---@type number
_G.bj_MISSION_INDEX_T00 = nil
---@type number
_G.bj_MISSION_INDEX_T01 = nil
---@type number
_G.bj_MISSION_INDEX_H00 = nil
---@type number
_G.bj_MISSION_INDEX_H01 = nil
---@type number
_G.bj_MISSION_INDEX_H02 = nil
---@type number
_G.bj_MISSION_INDEX_H03 = nil
---@type number
_G.bj_MISSION_INDEX_H04 = nil
---@type number
_G.bj_MISSION_INDEX_H05 = nil
---@type number
_G.bj_MISSION_INDEX_H06 = nil
---@type number
_G.bj_MISSION_INDEX_H07 = nil
---@type number
_G.bj_MISSION_INDEX_H08 = nil
---@type number
_G.bj_MISSION_INDEX_H09 = nil
---@type number
_G.bj_MISSION_INDEX_H10 = nil
---@type number
_G.bj_MISSION_INDEX_H11 = nil
---@type number
_G.bj_MISSION_INDEX_U00 = nil
---@type number
_G.bj_MISSION_INDEX_U01 = nil
---@type number
_G.bj_MISSION_INDEX_U02 = nil
---@type number
_G.bj_MISSION_INDEX_U03 = nil
---@type number
_G.bj_MISSION_INDEX_U05 = nil
---@type number
_G.bj_MISSION_INDEX_U07 = nil
---@type number
_G.bj_MISSION_INDEX_U08 = nil
---@type number
_G.bj_MISSION_INDEX_U09 = nil
---@type number
_G.bj_MISSION_INDEX_U10 = nil
---@type number
_G.bj_MISSION_INDEX_U11 = nil
---@type number
_G.bj_MISSION_INDEX_O00 = nil
---@type number
_G.bj_MISSION_INDEX_O01 = nil
---@type number
_G.bj_MISSION_INDEX_O02 = nil
---@type number
_G.bj_MISSION_INDEX_O03 = nil
---@type number
_G.bj_MISSION_INDEX_O04 = nil
---@type number
_G.bj_MISSION_INDEX_O05 = nil
---@type number
_G.bj_MISSION_INDEX_O06 = nil
---@type number
_G.bj_MISSION_INDEX_O07 = nil
---@type number
_G.bj_MISSION_INDEX_O08 = nil
---@type number
_G.bj_MISSION_INDEX_O09 = nil
---@type number
_G.bj_MISSION_INDEX_O10 = nil
---@type number
_G.bj_MISSION_INDEX_N00 = nil
---@type number
_G.bj_MISSION_INDEX_N01 = nil
---@type number
_G.bj_MISSION_INDEX_N02 = nil
---@type number
_G.bj_MISSION_INDEX_N03 = nil
---@type number
_G.bj_MISSION_INDEX_N04 = nil
---@type number
_G.bj_MISSION_INDEX_N05 = nil
---@type number
_G.bj_MISSION_INDEX_N06 = nil
---@type number
_G.bj_MISSION_INDEX_N07 = nil
---@type number
_G.bj_MISSION_INDEX_N08 = nil
---@type number
_G.bj_MISSION_INDEX_N09 = nil
---@type number
_G.bj_MISSION_INDEX_XN00 = nil
---@type number
_G.bj_MISSION_INDEX_XN01 = nil
---@type number
_G.bj_MISSION_INDEX_XN02 = nil
---@type number
_G.bj_MISSION_INDEX_XN03 = nil
---@type number
_G.bj_MISSION_INDEX_XN04 = nil
---@type number
_G.bj_MISSION_INDEX_XN05 = nil
---@type number
_G.bj_MISSION_INDEX_XN06 = nil
---@type number
_G.bj_MISSION_INDEX_XN07 = nil
---@type number
_G.bj_MISSION_INDEX_XN08 = nil
---@type number
_G.bj_MISSION_INDEX_XN09 = nil
---@type number
_G.bj_MISSION_INDEX_XN10 = nil
---@type number
_G.bj_MISSION_INDEX_XH00 = nil
---@type number
_G.bj_MISSION_INDEX_XH01 = nil
---@type number
_G.bj_MISSION_INDEX_XH02 = nil
---@type number
_G.bj_MISSION_INDEX_XH03 = nil
---@type number
_G.bj_MISSION_INDEX_XH04 = nil
---@type number
_G.bj_MISSION_INDEX_XH05 = nil
---@type number
_G.bj_MISSION_INDEX_XH06 = nil
---@type number
_G.bj_MISSION_INDEX_XH07 = nil
---@type number
_G.bj_MISSION_INDEX_XH08 = nil
---@type number
_G.bj_MISSION_INDEX_XH09 = nil
---@type number
_G.bj_MISSION_INDEX_XU00 = nil
---@type number
_G.bj_MISSION_INDEX_XU01 = nil
---@type number
_G.bj_MISSION_INDEX_XU02 = nil
---@type number
_G.bj_MISSION_INDEX_XU03 = nil
---@type number
_G.bj_MISSION_INDEX_XU04 = nil
---@type number
_G.bj_MISSION_INDEX_XU05 = nil
---@type number
_G.bj_MISSION_INDEX_XU06 = nil
---@type number
_G.bj_MISSION_INDEX_XU07 = nil
---@type number
_G.bj_MISSION_INDEX_XU08 = nil
---@type number
_G.bj_MISSION_INDEX_XU09 = nil
---@type number
_G.bj_MISSION_INDEX_XU10 = nil
---@type number
_G.bj_MISSION_INDEX_XU11 = nil
---@type number
_G.bj_MISSION_INDEX_XU12 = nil
---@type number
_G.bj_MISSION_INDEX_XU13 = nil
---@type number
_G.bj_MISSION_INDEX_XO00 = nil
---@type number
_G.bj_MISSION_INDEX_XO01 = nil
---@type number
_G.bj_MISSION_INDEX_XO02 = nil
---@type number
_G.bj_MISSION_INDEX_XO03 = nil
---@type number
_G.bj_CINEMATICINDEX_TOP = nil
---@type number
_G.bj_CINEMATICINDEX_HOP = nil
---@type number
_G.bj_CINEMATICINDEX_HED = nil
---@type number
_G.bj_CINEMATICINDEX_OOP = nil
---@type number
_G.bj_CINEMATICINDEX_OED = nil
---@type number
_G.bj_CINEMATICINDEX_UOP = nil
---@type number
_G.bj_CINEMATICINDEX_UED = nil
---@type number
_G.bj_CINEMATICINDEX_NOP = nil
---@type number
_G.bj_CINEMATICINDEX_NED = nil
---@type number
_G.bj_CINEMATICINDEX_XOP = nil
---@type number
_G.bj_CINEMATICINDEX_XED = nil
---@type number
_G.bj_ALLIANCE_UNALLIED = nil
---@type number
_G.bj_ALLIANCE_UNALLIED_VISION = nil
---@type number
_G.bj_ALLIANCE_ALLIED = nil
---@type number
_G.bj_ALLIANCE_ALLIED_VISION = nil
---@type number
_G.bj_ALLIANCE_ALLIED_UNITS = nil
---@type number
_G.bj_ALLIANCE_ALLIED_ADVUNITS = nil
---@type number
_G.bj_ALLIANCE_NEUTRAL = nil
---@type number
_G.bj_ALLIANCE_NEUTRAL_VISION = nil
---@type number
_G.bj_KEYEVENTTYPE_DEPRESS = nil
---@type number
_G.bj_KEYEVENTTYPE_RELEASE = nil
---@type number
_G.bj_KEYEVENTKEY_LEFT = nil
---@type number
_G.bj_KEYEVENTKEY_RIGHT = nil
---@type number
_G.bj_KEYEVENTKEY_DOWN = nil
---@type number
_G.bj_KEYEVENTKEY_UP = nil
---@type number
_G.bj_MOUSEEVENTTYPE_DOWN = nil
---@type number
_G.bj_MOUSEEVENTTYPE_UP = nil
---@type number
_G.bj_MOUSEEVENTTYPE_MOVE = nil
---@type number
_G.bj_TIMETYPE_ADD = nil
---@type number
_G.bj_TIMETYPE_SET = nil
---@type number
_G.bj_TIMETYPE_SUB = nil
---@type number
_G.bj_CAMERABOUNDS_ADJUST_ADD = nil
---@type number
_G.bj_CAMERABOUNDS_ADJUST_SUB = nil
---@type number
_G.bj_QUESTTYPE_REQ_DISCOVERED = nil
---@type number
_G.bj_QUESTTYPE_REQ_UNDISCOVERED = nil
---@type number
_G.bj_QUESTTYPE_OPT_DISCOVERED = nil
---@type number
_G.bj_QUESTTYPE_OPT_UNDISCOVERED = nil
---@type number
_G.bj_QUESTMESSAGE_DISCOVERED = nil
---@type number
_G.bj_QUESTMESSAGE_UPDATED = nil
---@type number
_G.bj_QUESTMESSAGE_COMPLETED = nil
---@type number
_G.bj_QUESTMESSAGE_FAILED = nil
---@type number
_G.bj_QUESTMESSAGE_REQUIREMENT = nil
---@type number
_G.bj_QUESTMESSAGE_MISSIONFAILED = nil
---@type number
_G.bj_QUESTMESSAGE_ALWAYSHINT = nil
---@type number
_G.bj_QUESTMESSAGE_HINT = nil
---@type number
_G.bj_QUESTMESSAGE_SECRET = nil
---@type number
_G.bj_QUESTMESSAGE_UNITACQUIRED = nil
---@type number
_G.bj_QUESTMESSAGE_UNITAVAILABLE = nil
---@type number
_G.bj_QUESTMESSAGE_ITEMACQUIRED = nil
---@type number
_G.bj_QUESTMESSAGE_WARNING = nil
---@type number
_G.bj_SORTTYPE_SORTBYVALUE = nil
---@type number
_G.bj_SORTTYPE_SORTBYPLAYER = nil
---@type number
_G.bj_SORTTYPE_SORTBYLABEL = nil
---@type number
_G.bj_CINEFADETYPE_FADEIN = nil
---@type number
_G.bj_CINEFADETYPE_FADEOUT = nil
---@type number
_G.bj_CINEFADETYPE_FADEOUTIN = nil
---@type number
_G.bj_REMOVEBUFFS_POSITIVE = nil
---@type number
_G.bj_REMOVEBUFFS_NEGATIVE = nil
---@type number
_G.bj_REMOVEBUFFS_ALL = nil
---@type number
_G.bj_REMOVEBUFFS_NONTLIFE = nil
---@type number
_G.bj_BUFF_POLARITY_POSITIVE = nil
---@type number
_G.bj_BUFF_POLARITY_NEGATIVE = nil
---@type number
_G.bj_BUFF_POLARITY_EITHER = nil
---@type number
_G.bj_BUFF_RESIST_MAGIC = nil
---@type number
_G.bj_BUFF_RESIST_PHYSICAL = nil
---@type number
_G.bj_BUFF_RESIST_EITHER = nil
---@type number
_G.bj_BUFF_RESIST_BOTH = nil
---@type number
_G.bj_HEROSTAT_STR = nil
---@type number
_G.bj_HEROSTAT_AGI = nil
---@type number
_G.bj_HEROSTAT_INT = nil
---@type number
_G.bj_MODIFYMETHOD_ADD = nil
---@type number
_G.bj_MODIFYMETHOD_SUB = nil
---@type number
_G.bj_MODIFYMETHOD_SET = nil
---@type number
_G.bj_UNIT_STATE_METHOD_ABSOLUTE = nil
---@type number
_G.bj_UNIT_STATE_METHOD_RELATIVE = nil
---@type number
_G.bj_UNIT_STATE_METHOD_DEFAULTS = nil
---@type number
_G.bj_UNIT_STATE_METHOD_MAXIMUM = nil
---@type number
_G.bj_GATEOPERATION_CLOSE = nil
---@type number
_G.bj_GATEOPERATION_OPEN = nil
---@type number
_G.bj_GATEOPERATION_DESTROY = nil
---@type number
_G.bj_GAMECACHE_BOOLEAN = nil
---@type number
_G.bj_GAMECACHE_INTEGER = nil
---@type number
_G.bj_GAMECACHE_REAL = nil
---@type number
_G.bj_GAMECACHE_UNIT = nil
---@type number
_G.bj_GAMECACHE_STRING = nil
---@type number
_G.bj_HASHTABLE_BOOLEAN = nil
---@type number
_G.bj_HASHTABLE_INTEGER = nil
---@type number
_G.bj_HASHTABLE_REAL = nil
---@type number
_G.bj_HASHTABLE_STRING = nil
---@type number
_G.bj_HASHTABLE_HANDLE = nil
---@type number
_G.bj_ITEM_STATUS_HIDDEN = nil
---@type number
_G.bj_ITEM_STATUS_OWNED = nil
---@type number
_G.bj_ITEM_STATUS_INVULNERABLE = nil
---@type number
_G.bj_ITEM_STATUS_POWERUP = nil
---@type number
_G.bj_ITEM_STATUS_SELLABLE = nil
---@type number
_G.bj_ITEM_STATUS_PAWNABLE = nil
---@type number
_G.bj_ITEMCODE_STATUS_POWERUP = nil
---@type number
_G.bj_ITEMCODE_STATUS_SELLABLE = nil
---@type number
_G.bj_ITEMCODE_STATUS_PAWNABLE = nil
---@type number
_G.bj_MINIMAPPINGSTYLE_SIMPLE = nil
---@type number
_G.bj_MINIMAPPINGSTYLE_FLASHY = nil
---@type number
_G.bj_MINIMAPPINGSTYLE_ATTACK = nil
---@type number
_G.bj_CORPSE_MAX_DEATH_TIME = nil
---@type number
_G.bj_CORPSETYPE_FLESH = nil
---@type number
_G.bj_CORPSETYPE_BONE = nil
---@type number
_G.bj_ELEVATOR_BLOCKER_CODE = nil
---@type number
_G.bj_ELEVATOR_CODE01 = nil
---@type number
_G.bj_ELEVATOR_CODE02 = nil
---@type number
_G.bj_ELEVATOR_WALL_TYPE_ALL = nil
---@type number
_G.bj_ELEVATOR_WALL_TYPE_EAST = nil
---@type number
_G.bj_ELEVATOR_WALL_TYPE_NORTH = nil
---@type number
_G.bj_ELEVATOR_WALL_TYPE_SOUTH = nil
---@type number
_G.bj_ELEVATOR_WALL_TYPE_WEST = nil
---@type jforce
_G.bj_FORCE_ALL_PLAYERS = nil
---@type jforce
_G.bj_FORCE_PLAYER = nil
---@type number
_G.bj_MELEE_MAX_TWINKED_HEROES = nil
---@type jrect
_G.bj_mapInitialPlayableArea = nil
---@type jrect
_G.bj_mapInitialCameraBounds = nil
---@type number
_G.bj_forLoopAIndex = nil
---@type number
_G.bj_forLoopBIndex = nil
---@type number
_G.bj_forLoopAIndexEnd = nil
---@type number
_G.bj_forLoopBIndexEnd = nil
---@type boolean
_G.bj_slotControlReady = nil
---@type boolean
_G.bj_slotControlUsed = nil
---@type jmapcontrol
_G.bj_slotControl = nil
---@type jtimer
_G.bj_gameStartedTimer = nil
---@type boolean
_G.bj_gameStarted = nil
---@type jtimer
_G.bj_volumeGroupsTimer = nil
---@type boolean
_G.bj_isSinglePlayer = nil
---@type jtrigger
_G.bj_dncSoundsDay = nil
---@type jtrigger
_G.bj_dncSoundsNight = nil
---@type jsound
_G.bj_dayAmbientSound = nil
---@type jsound
_G.bj_nightAmbientSound = nil
---@type jtrigger
_G.bj_dncSoundsDawn = nil
---@type jtrigger
_G.bj_dncSoundsDusk = nil
---@type jsound
_G.bj_dawnSound = nil
---@type jsound
_G.bj_duskSound = nil
---@type boolean
_G.bj_useDawnDuskSounds = nil
---@type boolean
_G.bj_dncIsDaytime = nil
---@type jsound
_G.bj_rescueSound = nil
---@type jsound
_G.bj_questDiscoveredSound = nil
---@type jsound
_G.bj_questUpdatedSound = nil
---@type jsound
_G.bj_questCompletedSound = nil
---@type jsound
_G.bj_questFailedSound = nil
---@type jsound
_G.bj_questHintSound = nil
---@type jsound
_G.bj_questSecretSound = nil
---@type jsound
_G.bj_questItemAcquiredSound = nil
---@type jsound
_G.bj_questWarningSound = nil
---@type jsound
_G.bj_victoryDialogSound = nil
---@type jsound
_G.bj_defeatDialogSound = nil
---@type jtrigger
_G.bj_stockItemPurchased = nil
---@type jtimer
_G.bj_stockUpdateTimer = nil
---@type boolean
_G.bj_stockAllowedPermanent = nil
---@type boolean
_G.bj_stockAllowedCharged = nil
---@type boolean
_G.bj_stockAllowedArtifact = nil
---@type number
_G.bj_stockPickedItemLevel = nil
---@type jitemtype
_G.bj_stockPickedItemType = nil
---@type jtrigger
_G.bj_meleeVisibilityTrained = nil
---@type boolean
_G.bj_meleeVisibilityIsDay = nil
---@type boolean
_G.bj_meleeGrantHeroItems = nil
---@type jlocation
_G.bj_meleeNearestMineToLoc = nil
---@type junit
_G.bj_meleeNearestMine = nil
---@type number
_G.bj_meleeNearestMineDist = nil
---@type boolean
_G.bj_meleeGameOver = nil
---@type boolean
_G.bj_meleeDefeated = nil
---@type boolean
_G.bj_meleeVictoried = nil
---@type junit
_G.bj_ghoul = nil
---@type jtimer
_G.bj_crippledTimer = nil
---@type jtimerdialog
_G.bj_crippledTimerWindows = nil
---@type boolean
_G.bj_playerIsCrippled = nil
---@type boolean
_G.bj_playerIsExposed = nil
---@type boolean
_G.bj_finishSoonAllExposed = nil
---@type jtimerdialog
_G.bj_finishSoonTimerDialog = nil
---@type number
_G.bj_meleeTwinkedHeroes = nil
---@type jtrigger
_G.bj_rescueUnitBehavior = nil
---@type boolean
_G.bj_rescueChangeColorUnit = nil
---@type boolean
_G.bj_rescueChangeColorBldg = nil
---@type jtimer
_G.bj_cineSceneEndingTimer = nil
---@type jsound
_G.bj_cineSceneLastSound = nil
---@type jtrigger
_G.bj_cineSceneBeingSkipped = nil
---@type jgamespeed
_G.bj_cineModePriorSpeed = nil
---@type boolean
_G.bj_cineModePriorFogSetting = nil
---@type boolean
_G.bj_cineModePriorMaskSetting = nil
---@type boolean
_G.bj_cineModeAlreadyIn = nil
---@type boolean
_G.bj_cineModePriorDawnDusk = nil
---@type number
_G.bj_cineModeSavedSeed = nil
---@type jtimer
_G.bj_cineFadeFinishTimer = nil
---@type jtimer
_G.bj_cineFadeContinueTimer = nil
---@type number
_G.bj_cineFadeContinueRed = nil
---@type number
_G.bj_cineFadeContinueGreen = nil
---@type number
_G.bj_cineFadeContinueBlue = nil
---@type number
_G.bj_cineFadeContinueTrans = nil
---@type number
_G.bj_cineFadeContinueDuration = nil
---@type string
_G.bj_cineFadeContinueTex = nil
---@type number
_G.bj_queuedExecTotal = nil
---@type jtrigger
_G.bj_queuedExecTriggers = nil
---@type boolean
_G.bj_queuedExecUseConds = nil
---@type jtimer
_G.bj_queuedExecTimeoutTimer = nil
---@type jtrigger
_G.bj_queuedExecTimeout = nil
---@type number
_G.bj_destInRegionDiesCount = nil
---@type jtrigger
_G.bj_destInRegionDiesTrig = nil
---@type number
_G.bj_groupCountUnits = nil
---@type number
_G.bj_forceCountPlayers = nil
---@type number
_G.bj_groupEnumTypeId = nil
---@type jplayer
_G.bj_groupEnumOwningPlayer = nil
---@type jgroup
_G.bj_groupAddGroupDest = nil
---@type jgroup
_G.bj_groupRemoveGroupDest = nil
---@type number
_G.bj_groupRandomConsidered = nil
---@type junit
_G.bj_groupRandomCurrentPick = nil
---@type jgroup
_G.bj_groupLastCreatedDest = nil
---@type jgroup
_G.bj_randomSubGroupGroup = nil
---@type number
_G.bj_randomSubGroupWant = nil
---@type number
_G.bj_randomSubGroupTotal = nil
---@type number
_G.bj_randomSubGroupChance = nil
---@type number
_G.bj_destRandomConsidered = nil
---@type jdestructable
_G.bj_destRandomCurrentPick = nil
---@type jdestructable
_G.bj_elevatorWallBlocker = nil
---@type jdestructable
_G.bj_elevatorNeighbor = nil
---@type number
_G.bj_itemRandomConsidered = nil
---@type jitem
_G.bj_itemRandomCurrentPick = nil
---@type number
_G.bj_forceRandomConsidered = nil
---@type jplayer
_G.bj_forceRandomCurrentPick = nil
---@type junit
_G.bj_makeUnitRescuableUnit = nil
---@type boolean
_G.bj_makeUnitRescuableFlag = nil
---@type boolean
_G.bj_pauseAllUnitsFlag = nil
---@type jlocation
_G.bj_enumDestructableCenter = nil
---@type number
_G.bj_enumDestructableRadius = nil
---@type jplayercolor
_G.bj_setPlayerTargetColor = nil
---@type boolean
_G.bj_isUnitGroupDeadResult = nil
---@type boolean
_G.bj_isUnitGroupEmptyResult = nil
---@type boolean
_G.bj_isUnitGroupInRectResult = nil
---@type jrect
_G.bj_isUnitGroupInRectRect = nil
---@type boolean
_G.bj_changeLevelShowScores = nil
---@type string
_G.bj_changeLevelMapName = nil
---@type jgroup
_G.bj_suspendDecayFleshGroup = nil
---@type jgroup
_G.bj_suspendDecayBoneGroup = nil
---@type jtimer
_G.bj_delayedSuspendDecayTimer = nil
---@type jtrigger
_G.bj_delayedSuspendDecayTrig = nil
---@type number
_G.bj_livingPlayerUnitsTypeId = nil
---@type jwidget
_G.bj_lastDyingWidget = nil
---@type number
_G.bj_randDistCount = nil
---@type number
_G.bj_randDistID = nil
---@type number
_G.bj_randDistChance = nil
---@type junit
_G.bj_lastCreatedUnit = nil
---@type jitem
_G.bj_lastCreatedItem = nil
---@type jitem
_G.bj_lastRemovedItem = nil
---@type junit
_G.bj_lastHauntedGoldMine = nil
---@type jdestructable
_G.bj_lastCreatedDestructable = nil
---@type jgroup
_G.bj_lastCreatedGroup = nil
---@type jfogmodifier
_G.bj_lastCreatedFogModifier = nil
---@type jeffect
_G.bj_lastCreatedEffect = nil
---@type jweathereffect
_G.bj_lastCreatedWeatherEffect = nil
---@type jterraindeformation
_G.bj_lastCreatedTerrainDeformation = nil
---@type jquest
_G.bj_lastCreatedQuest = nil
---@type jquestitem
_G.bj_lastCreatedQuestItem = nil
---@type jdefeatcondition
_G.bj_lastCreatedDefeatCondition = nil
---@type jtimer
_G.bj_lastStartedTimer = nil
---@type jtimerdialog
_G.bj_lastCreatedTimerDialog = nil
---@type jleaderboard
_G.bj_lastCreatedLeaderboard = nil
---@type jmultiboard
_G.bj_lastCreatedMultiboard = nil
---@type jsound
_G.bj_lastPlayedSound = nil
---@type string
_G.bj_lastPlayedMusic = nil
---@type number
_G.bj_lastTransmissionDuration = nil
---@type jgamecache
_G.bj_lastCreatedGameCache = nil
---@type jhashtable
_G.bj_lastCreatedHashtable = nil
---@type junit
_G.bj_lastLoadedUnit = nil
---@type jbutton
_G.bj_lastCreatedButton = nil
---@type junit
_G.bj_lastReplacedUnit = nil
---@type jtexttag
_G.bj_lastCreatedTextTag = nil
---@type jlightning
_G.bj_lastCreatedLightning = nil
---@type jimage
_G.bj_lastCreatedImage = nil
---@type jubersplat
_G.bj_lastCreatedUbersplat = nil
---@type jboolexpr
_G.filterIssueHauntOrderAtLocBJ = nil
---@type jboolexpr
_G.filterEnumDestructablesInCircleBJ = nil
---@type jboolexpr
_G.filterGetUnitsInRectOfPlayer = nil
---@type jboolexpr
_G.filterGetUnitsOfTypeIdAll = nil
---@type jboolexpr
_G.filterGetUnitsOfPlayerAndTypeId = nil
---@type jboolexpr
_G.filterMeleeTrainedUnitIsHeroBJ = nil
---@type jboolexpr
_G.filterLivingPlayerUnitsOfTypeId = nil
---@type boolean
_G.bj_wantDestroyGroup = nil
---@type boolean
_G.bj_lastInstObjFuncSuccessful = nil
---@param msg string
function BJDebugMsg(msg) x(msg) end
---@param a number
---@param b number
---@return number
function RMinBJ(a, b) x(a) x(b) end
---@param a number
---@param b number
---@return number
function RMaxBJ(a, b) x(a) x(b) end
---@param a number
---@return number
function RAbsBJ(a) x(a) end
---@param a number
---@return number
function RSignBJ(a) x(a) end
---@param a number
---@param b number
---@return number
function IMinBJ(a, b) x(a) x(b) end
---@param a number
---@param b number
---@return number
function IMaxBJ(a, b) x(a) x(b) end
---@param a number
---@return number
function IAbsBJ(a) x(a) end
---@param a number
---@return number
function ISignBJ(a) x(a) end
---@param degrees number
---@return number
function SinBJ(degrees) x(degrees) end
---@param degrees number
---@return number
function CosBJ(degrees) x(degrees) end
---@param degrees number
---@return number
function TanBJ(degrees) x(degrees) end
---@param degrees number
---@return number
function AsinBJ(degrees) x(degrees) end
---@param degrees number
---@return number
function AcosBJ(degrees) x(degrees) end
---@param degrees number
---@return number
function AtanBJ(degrees) x(degrees) end
---@param y number
---@param x number
---@return number
function Atan2BJ(y, x) x(y) x(x) end
---@param locA jlocation
---@param locB jlocation
---@return number
function AngleBetweenPoints(locA, locB) x(locA) x(locB) end
---@param locA jlocation
---@param locB jlocation
---@return number
function DistanceBetweenPoints(locA, locB) x(locA) x(locB) end
---@param source jlocation
---@param dist number
---@param angle number
---@return jlocation
function PolarProjectionBJ(source, dist, angle) x(source) x(dist) x(angle) end
---@return number
function GetRandomDirectionDeg()  end
---@return number
function GetRandomPercentageBJ()  end
---@param whichRect jrect
---@return jlocation
function GetRandomLocInRect(whichRect) x(whichRect) end
---@param dividend number
---@param divisor number
---@return number
function ModuloInteger(dividend, divisor) x(dividend) x(divisor) end
---@param dividend number
---@param divisor number
---@return number
function ModuloReal(dividend, divisor) x(dividend) x(divisor) end
---@param loc jlocation
---@param dx number
---@param dy number
---@return jlocation
function OffsetLocation(loc, dx, dy) x(loc) x(dx) x(dy) end
---@param r jrect
---@param dx number
---@param dy number
---@return jrect
function OffsetRectBJ(r, dx, dy) x(r) x(dx) x(dy) end
---@param center jlocation
---@param width number
---@param height number
---@return jrect
function RectFromCenterSizeBJ(center, width, height) x(center) x(width) x(height) end
---@param r jrect
---@param x number
---@param y number
---@return boolean
function RectContainsCoords(r, x, y) x(r) x(x) x(y) end
---@param r jrect
---@param loc jlocation
---@return boolean
function RectContainsLoc(r, loc) x(r) x(loc) end
---@param r jrect
---@param whichUnit junit
---@return boolean
function RectContainsUnit(r, whichUnit) x(r) x(whichUnit) end
---@param whichItem jitem
---@param r jrect
---@return boolean
function RectContainsItem(whichItem, r) x(whichItem) x(r) end
---@param trig jtrigger
function ConditionalTriggerExecute(trig) x(trig) end
---@param trig jtrigger
---@param checkConditions boolean
---@return boolean
function TriggerExecuteBJ(trig, checkConditions) x(trig) x(checkConditions) end
---@param trig jtrigger
---@param checkConditions boolean
---@return boolean
function PostTriggerExecuteBJ(trig, checkConditions) x(trig) x(checkConditions) end
function QueuedTriggerCheck()  end
---@param trig jtrigger
---@return number
function QueuedTriggerGetIndex(trig) x(trig) end
---@param trigIndex number
---@return boolean
function QueuedTriggerRemoveByIndex(trigIndex) x(trigIndex) end
---@return boolean
function QueuedTriggerAttemptExec()  end
---@param trig jtrigger
---@param checkConditions boolean
---@return boolean
function QueuedTriggerAddBJ(trig, checkConditions) x(trig) x(checkConditions) end
---@param trig jtrigger
function QueuedTriggerRemoveBJ(trig) x(trig) end
function QueuedTriggerDoneBJ()  end
function QueuedTriggerClearBJ()  end
function QueuedTriggerClearInactiveBJ()  end
---@return number
function QueuedTriggerCountBJ()  end
---@return boolean
function IsTriggerQueueEmptyBJ()  end
---@param trig jtrigger
---@return boolean
function IsTriggerQueuedBJ(trig) x(trig) end
---@return number
function GetForLoopIndexA()  end
---@param newIndex number
function SetForLoopIndexA(newIndex) x(newIndex) end
---@return number
function GetForLoopIndexB()  end
---@param newIndex number
function SetForLoopIndexB(newIndex) x(newIndex) end
---@param duration number
function PolledWait(duration) x(duration) end
---@param flag boolean
---@param valueA number
---@param valueB number
---@return number
function IntegerTertiaryOp(flag, valueA, valueB) x(flag) x(valueA) x(valueB) end
function DoNothing()  end
---@param commentString string
function CommentString(commentString) x(commentString) end
---@param theString string
---@return string
function StringIdentity(theString) x(theString) end
---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanAnd(valueA, valueB) x(valueA) x(valueB) end
---@param valueA boolean
---@param valueB boolean
---@return boolean
function GetBooleanOr(valueA, valueB) x(valueA) x(valueB) end
---@param percentage number
---@param max number
---@return number
function PercentToInt(percentage, max) x(percentage) x(max) end
---@param percentage number
---@return number
function PercentTo255(percentage) x(percentage) end
---@return number
function GetTimeOfDay()  end
---@param whatTime number
function SetTimeOfDay(whatTime) x(whatTime) end
---@param scalePercent number
function SetTimeOfDayScalePercentBJ(scalePercent) x(scalePercent) end
---@return number
function GetTimeOfDayScalePercentBJ()  end
---@param soundName string
function PlaySound(soundName) x(soundName) end
---@param A jlocation
---@param B jlocation
---@return boolean
function CompareLocationsBJ(A, B) x(A) x(B) end
---@param A jrect
---@param B jrect
---@return boolean
function CompareRectsBJ(A, B) x(A) x(B) end
---@param center jlocation
---@param radius number
---@return jrect
function GetRectFromCircleBJ(center, radius) x(center) x(radius) end
---@return jcamerasetup
function GetCurrentCameraSetup()  end
---@param doPan boolean
---@param whichSetup jcamerasetup
---@param whichPlayer jplayer
---@param duration number
function CameraSetupApplyForPlayer(doPan, whichSetup, whichPlayer, duration) x(doPan) x(whichSetup) x(whichPlayer) x(duration) end
---@param whichField jcamerafield
---@param whichSetup jcamerasetup
---@return number
function CameraSetupGetFieldSwap(whichField, whichSetup) x(whichField) x(whichSetup) end
---@param whichPlayer jplayer
---@param whichField jcamerafield
---@param value number
---@param duration number
function SetCameraFieldForPlayer(whichPlayer, whichField, value, duration) x(whichPlayer) x(whichField) x(value) x(duration) end
---@param whichPlayer jplayer
---@param whichUnit junit
---@param xoffset number
---@param yoffset number
---@param inheritOrientation boolean
function SetCameraTargetControllerNoZForPlayer(whichPlayer, whichUnit, xoffset, yoffset, inheritOrientation) x(whichPlayer) x(whichUnit) x(xoffset) x(yoffset) x(inheritOrientation) end
---@param whichPlayer jplayer
---@param x number
---@param y number
function SetCameraPositionForPlayer(whichPlayer, x, y) x(whichPlayer) x(x) x(y) end
---@param whichPlayer jplayer
---@param loc jlocation
function SetCameraPositionLocForPlayer(whichPlayer, loc) x(whichPlayer) x(loc) end
---@param degrees number
---@param loc jlocation
---@param whichPlayer jplayer
---@param duration number
function RotateCameraAroundLocBJ(degrees, loc, whichPlayer, duration) x(degrees) x(loc) x(whichPlayer) x(duration) end
---@param whichPlayer jplayer
---@param x number
---@param y number
function PanCameraToForPlayer(whichPlayer, x, y) x(whichPlayer) x(x) x(y) end
---@param whichPlayer jplayer
---@param loc jlocation
function PanCameraToLocForPlayer(whichPlayer, loc) x(whichPlayer) x(loc) end
---@param whichPlayer jplayer
---@param x number
---@param y number
---@param duration number
function PanCameraToTimedForPlayer(whichPlayer, x, y, duration) x(whichPlayer) x(x) x(y) x(duration) end
---@param whichPlayer jplayer
---@param loc jlocation
---@param duration number
function PanCameraToTimedLocForPlayer(whichPlayer, loc, duration) x(whichPlayer) x(loc) x(duration) end
---@param whichPlayer jplayer
---@param loc jlocation
---@param zOffset number
---@param duration number
function PanCameraToTimedLocWithZForPlayer(whichPlayer, loc, zOffset, duration) x(whichPlayer) x(loc) x(zOffset) x(duration) end
---@param whichPlayer jplayer
---@param loc jlocation
---@param duration number
function SmartCameraPanBJ(whichPlayer, loc, duration) x(whichPlayer) x(loc) x(duration) end
---@param whichPlayer jplayer
---@param cameraModelFile string
function SetCinematicCameraForPlayer(whichPlayer, cameraModelFile) x(whichPlayer) x(cameraModelFile) end
---@param whichPlayer jplayer
---@param duration number
function ResetToGameCameraForPlayer(whichPlayer, duration) x(whichPlayer) x(duration) end
---@param whichPlayer jplayer
---@param magnitude number
---@param velocity number
function CameraSetSourceNoiseForPlayer(whichPlayer, magnitude, velocity) x(whichPlayer) x(magnitude) x(velocity) end
---@param whichPlayer jplayer
---@param magnitude number
---@param velocity number
function CameraSetTargetNoiseForPlayer(whichPlayer, magnitude, velocity) x(whichPlayer) x(magnitude) x(velocity) end
---@param whichPlayer jplayer
---@param magnitude number
function CameraSetEQNoiseForPlayer(whichPlayer, magnitude) x(whichPlayer) x(magnitude) end
---@param whichPlayer jplayer
function CameraClearNoiseForPlayer(whichPlayer) x(whichPlayer) end
---@return jrect
function GetCurrentCameraBoundsMapRectBJ()  end
---@return jrect
function GetCameraBoundsMapRect()  end
---@return jrect
function GetPlayableMapRect()  end
---@return jrect
function GetEntireMapRect()  end
---@param r jrect
function SetCameraBoundsToRect(r) x(r) end
---@param whichPlayer jplayer
---@param r jrect
function SetCameraBoundsToRectForPlayerBJ(whichPlayer, r) x(whichPlayer) x(r) end
---@param adjustMethod number
---@param dxWest number
---@param dxEast number
---@param dyNorth number
---@param dySouth number
function AdjustCameraBoundsBJ(adjustMethod, dxWest, dxEast, dyNorth, dySouth) x(adjustMethod) x(dxWest) x(dxEast) x(dyNorth) x(dySouth) end
---@param adjustMethod number
---@param whichPlayer jplayer
---@param dxWest number
---@param dxEast number
---@param dyNorth number
---@param dySouth number
function AdjustCameraBoundsForPlayerBJ(adjustMethod, whichPlayer, dxWest, dxEast, dyNorth, dySouth) x(adjustMethod) x(whichPlayer) x(dxWest) x(dxEast) x(dyNorth) x(dySouth) end
---@param whichPlayer jplayer
---@param x number
---@param y number
function SetCameraQuickPositionForPlayer(whichPlayer, x, y) x(whichPlayer) x(x) x(y) end
---@param whichPlayer jplayer
---@param loc jlocation
function SetCameraQuickPositionLocForPlayer(whichPlayer, loc) x(whichPlayer) x(loc) end
---@param loc jlocation
function SetCameraQuickPositionLoc(loc) x(loc) end
---@param whichPlayer jplayer
function StopCameraForPlayerBJ(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param whichUnit junit
---@param xoffset number
---@param yoffset number
function SetCameraOrientControllerForPlayerBJ(whichPlayer, whichUnit, xoffset, yoffset) x(whichPlayer) x(whichUnit) x(xoffset) x(yoffset) end
---@param factor number
function CameraSetSmoothingFactorBJ(factor) x(factor) end
function CameraResetSmoothingFactorBJ()  end
---@param toForce jforce
---@param message string
function DisplayTextToForce(toForce, message) x(toForce) x(message) end
---@param toForce jforce
---@param duration number
---@param message string
function DisplayTimedTextToForce(toForce, duration, message) x(toForce) x(duration) x(message) end
---@param toForce jforce
function ClearTextMessagesBJ(toForce) x(toForce) end
---@param source string
---@param start number
---@param _end number
---@return string
function SubStringBJ(source, start, _end) x(source) x(start) x(_end) end
---@param h jhandle
---@return number
function GetHandleIdBJ(h) x(h) end
---@param s string
---@return number
function StringHashBJ(s) x(s) end
---@param trig jtrigger
---@param timeout number
---@return jevent
function TriggerRegisterTimerEventPeriodic(trig, timeout) x(trig) x(timeout) end
---@param trig jtrigger
---@param timeout number
---@return jevent
function TriggerRegisterTimerEventSingle(trig, timeout) x(trig) x(timeout) end
---@param trig jtrigger
---@param t jtimer
---@return jevent
function TriggerRegisterTimerExpireEventBJ(trig, t) x(trig) x(t) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@param whichEvent jplayerunitevent
---@return jevent
function TriggerRegisterPlayerUnitEventSimple(trig, whichPlayer, whichEvent) x(trig) x(whichPlayer) x(whichEvent) end
---@param trig jtrigger
---@param whichEvent jplayerunitevent
function TriggerRegisterAnyUnitEventBJ(trig, whichEvent) x(trig) x(whichEvent) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@param selected boolean
---@return jevent
function TriggerRegisterPlayerSelectionEventBJ(trig, whichPlayer, selected) x(trig) x(whichPlayer) x(selected) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@param keType number
---@param keKey number
---@return jevent
function TriggerRegisterPlayerKeyEventBJ(trig, whichPlayer, keType, keKey) x(trig) x(whichPlayer) x(keType) x(keKey) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@param meType number
---@return jevent
function TriggerRegisterPlayerMouseEventBJ(trig, whichPlayer, meType) x(trig) x(whichPlayer) x(meType) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@return jevent
function TriggerRegisterPlayerEventVictory(trig, whichPlayer) x(trig) x(whichPlayer) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@return jevent
function TriggerRegisterPlayerEventDefeat(trig, whichPlayer) x(trig) x(whichPlayer) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@return jevent
function TriggerRegisterPlayerEventLeave(trig, whichPlayer) x(trig) x(whichPlayer) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@return jevent
function TriggerRegisterPlayerEventAllianceChanged(trig, whichPlayer) x(trig) x(whichPlayer) end
---@param trig jtrigger
---@param whichPlayer jplayer
---@return jevent
function TriggerRegisterPlayerEventEndCinematic(trig, whichPlayer) x(trig) x(whichPlayer) end
---@param trig jtrigger
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterGameStateEventTimeOfDay(trig, opcode, limitval) x(trig) x(opcode) x(limitval) end
---@param trig jtrigger
---@param whichRegion jregion
---@return jevent
function TriggerRegisterEnterRegionSimple(trig, whichRegion) x(trig) x(whichRegion) end
---@param trig jtrigger
---@param whichRegion jregion
---@return jevent
function TriggerRegisterLeaveRegionSimple(trig, whichRegion) x(trig) x(whichRegion) end
---@param trig jtrigger
---@param r jrect
---@return jevent
function TriggerRegisterEnterRectSimple(trig, r) x(trig) x(r) end
---@param trig jtrigger
---@param r jrect
---@return jevent
function TriggerRegisterLeaveRectSimple(trig, r) x(trig) x(r) end
---@param trig jtrigger
---@param whichUnit junit
---@param condition jboolexpr
---@param range number
---@return jevent
function TriggerRegisterDistanceBetweenUnits(trig, whichUnit, condition, range) x(trig) x(whichUnit) x(condition) x(range) end
---@param trig jtrigger
---@param range number
---@param whichUnit junit
---@return jevent
function TriggerRegisterUnitInRangeSimple(trig, range, whichUnit) x(trig) x(range) x(whichUnit) end
---@param trig jtrigger
---@param whichUnit junit
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterUnitLifeEvent(trig, whichUnit, opcode, limitval) x(trig) x(whichUnit) x(opcode) x(limitval) end
---@param trig jtrigger
---@param whichUnit junit
---@param opcode jlimitop
---@param limitval number
---@return jevent
function TriggerRegisterUnitManaEvent(trig, whichUnit, opcode, limitval) x(trig) x(whichUnit) x(opcode) x(limitval) end
---@param trig jtrigger
---@param whichDialog jdialog
---@return jevent
function TriggerRegisterDialogEventBJ(trig, whichDialog) x(trig) x(whichDialog) end
---@param trig jtrigger
---@return jevent
function TriggerRegisterShowSkillEventBJ(trig) x(trig) end
---@param trig jtrigger
---@return jevent
function TriggerRegisterBuildSubmenuEventBJ(trig) x(trig) end
---@param trig jtrigger
---@return jevent
function TriggerRegisterGameLoadedEventBJ(trig) x(trig) end
---@param trig jtrigger
---@return jevent
function TriggerRegisterGameSavedEventBJ(trig) x(trig) end
function RegisterDestDeathInRegionEnum()  end
---@param trig jtrigger
---@param r jrect
function TriggerRegisterDestDeathInRegionEvent(trig, r) x(trig) x(r) end
---@param where jrect
---@param effectID number
---@return jweathereffect
function AddWeatherEffectSaveLast(where, effectID) x(where) x(effectID) end
---@return jweathereffect
function GetLastCreatedWeatherEffect()  end
---@param whichWeatherEffect jweathereffect
function RemoveWeatherEffectBJ(whichWeatherEffect) x(whichWeatherEffect) end
---@param duration number
---@param permanent boolean
---@param where jlocation
---@param radius number
---@param depth number
---@return jterraindeformation
function TerrainDeformationCraterBJ(duration, permanent, where, radius, depth) x(duration) x(permanent) x(where) x(radius) x(depth) end
---@param duration number
---@param limitNeg boolean
---@param where jlocation
---@param startRadius number
---@param endRadius number
---@param depth number
---@param wavePeriod number
---@param waveWidth number
---@return jterraindeformation
function TerrainDeformationRippleBJ(duration, limitNeg, where, startRadius, endRadius, depth, wavePeriod, waveWidth) x(duration) x(limitNeg) x(where) x(startRadius) x(endRadius) x(depth) x(wavePeriod) x(waveWidth) end
---@param duration number
---@param source jlocation
---@param target jlocation
---@param radius number
---@param depth number
---@param trailDelay number
---@return jterraindeformation
function TerrainDeformationWaveBJ(duration, source, target, radius, depth, trailDelay) x(duration) x(source) x(target) x(radius) x(depth) x(trailDelay) end
---@param duration number
---@param where jlocation
---@param radius number
---@param minDelta number
---@param maxDelta number
---@param updateInterval number
---@return jterraindeformation
function TerrainDeformationRandomBJ(duration, where, radius, minDelta, maxDelta, updateInterval) x(duration) x(where) x(radius) x(minDelta) x(maxDelta) x(updateInterval) end
---@param deformation jterraindeformation
---@param duration number
function TerrainDeformationStopBJ(deformation, duration) x(deformation) x(duration) end
---@return jterraindeformation
function GetLastCreatedTerrainDeformation()  end
---@param codeName string
---@param where1 jlocation
---@param where2 jlocation
---@return jlightning
function AddLightningLoc(codeName, where1, where2) x(codeName) x(where1) x(where2) end
---@param whichBolt jlightning
---@return boolean
function DestroyLightningBJ(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@param where1 jlocation
---@param where2 jlocation
---@return boolean
function MoveLightningLoc(whichBolt, where1, where2) x(whichBolt) x(where1) x(where2) end
---@param whichBolt jlightning
---@return number
function GetLightningColorABJ(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorRBJ(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorGBJ(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@return number
function GetLightningColorBBJ(whichBolt) x(whichBolt) end
---@param whichBolt jlightning
---@param r number
---@param g number
---@param b number
---@param a number
---@return boolean
function SetLightningColorBJ(whichBolt, r, g, b, a) x(whichBolt) x(r) x(g) x(b) x(a) end
---@return jlightning
function GetLastCreatedLightningBJ()  end
---@param abilcode number
---@param t jeffecttype
---@param index number
---@return string
function GetAbilityEffectBJ(abilcode, t, index) x(abilcode) x(t) x(index) end
---@param abilcode number
---@param t jsoundtype
---@return string
function GetAbilitySoundBJ(abilcode, t) x(abilcode) x(t) end
---@param where jlocation
---@return number
function GetTerrainCliffLevelBJ(where) x(where) end
---@param where jlocation
---@return number
function GetTerrainTypeBJ(where) x(where) end
---@param where jlocation
---@return number
function GetTerrainVarianceBJ(where) x(where) end
---@param where jlocation
---@param terrainType number
---@param variation number
---@param area number
---@param shape number
function SetTerrainTypeBJ(where, terrainType, variation, area, shape) x(where) x(terrainType) x(variation) x(area) x(shape) end
---@param where jlocation
---@param t jpathingtype
---@return boolean
function IsTerrainPathableBJ(where, t) x(where) x(t) end
---@param where jlocation
---@param t jpathingtype
---@param flag boolean
function SetTerrainPathableBJ(where, t, flag) x(where) x(t) x(flag) end
---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetWaterBaseColorBJ(red, green, blue, transparency) x(red) x(green) x(blue) x(transparency) end
---@param whichPlayer jplayer
---@param whichFogState jfogstate
---@param r jrect
---@param afterUnits boolean
---@return jfogmodifier
function CreateFogModifierRectSimple(whichPlayer, whichFogState, r, afterUnits) x(whichPlayer) x(whichFogState) x(r) x(afterUnits) end
---@param whichPlayer jplayer
---@param whichFogState jfogstate
---@param center jlocation
---@param radius number
---@param afterUnits boolean
---@return jfogmodifier
function CreateFogModifierRadiusLocSimple(whichPlayer, whichFogState, center, radius, afterUnits) x(whichPlayer) x(whichFogState) x(center) x(radius) x(afterUnits) end
---@param enabled boolean
---@param whichPlayer jplayer
---@param whichFogState jfogstate
---@param r jrect
---@return jfogmodifier
function CreateFogModifierRectBJ(enabled, whichPlayer, whichFogState, r) x(enabled) x(whichPlayer) x(whichFogState) x(r) end
---@param enabled boolean
---@param whichPlayer jplayer
---@param whichFogState jfogstate
---@param center jlocation
---@param radius number
---@return jfogmodifier
function CreateFogModifierRadiusLocBJ(enabled, whichPlayer, whichFogState, center, radius) x(enabled) x(whichPlayer) x(whichFogState) x(center) x(radius) end
---@return jfogmodifier
function GetLastCreatedFogModifier()  end
function FogEnableOn()  end
function FogEnableOff()  end
function FogMaskEnableOn()  end
function FogMaskEnableOff()  end
---@param flag boolean
function UseTimeOfDayBJ(flag) x(flag) end
---@param style number
---@param zstart number
---@param zend number
---@param density number
---@param red number
---@param green number
---@param blue number
function SetTerrainFogExBJ(style, zstart, zend, density, red, green, blue) x(style) x(zstart) x(zend) x(density) x(red) x(green) x(blue) end
function ResetTerrainFogBJ()  end
---@param animName string
---@param doodadID number
---@param radius number
---@param center jlocation
function SetDoodadAnimationBJ(animName, doodadID, radius, center) x(animName) x(doodadID) x(radius) x(center) end
---@param animName string
---@param doodadID number
---@param r jrect
function SetDoodadAnimationRectBJ(animName, doodadID, r) x(animName) x(doodadID) x(r) end
---@param add boolean
---@param animProperties string
---@param whichUnit junit
function AddUnitAnimationPropertiesBJ(add, animProperties, whichUnit) x(add) x(animProperties) x(whichUnit) end
---@param file string
---@param size number
---@param where jlocation
---@param zOffset number
---@param imageType number
---@return jimage
function CreateImageBJ(file, size, where, zOffset, imageType) x(file) x(size) x(where) x(zOffset) x(imageType) end
---@param flag boolean
---@param whichImage jimage
function ShowImageBJ(flag, whichImage) x(flag) x(whichImage) end
---@param whichImage jimage
---@param where jlocation
---@param zOffset number
function SetImagePositionBJ(whichImage, where, zOffset) x(whichImage) x(where) x(zOffset) end
---@param whichImage jimage
---@param red number
---@param green number
---@param blue number
---@param alpha number
function SetImageColorBJ(whichImage, red, green, blue, alpha) x(whichImage) x(red) x(green) x(blue) x(alpha) end
---@return jimage
function GetLastCreatedImage()  end
---@param where jlocation
---@param name string
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param forcePaused boolean
---@param noBirthTime boolean
---@return jubersplat
function CreateUbersplatBJ(where, name, red, green, blue, alpha, forcePaused, noBirthTime) x(where) x(name) x(red) x(green) x(blue) x(alpha) x(forcePaused) x(noBirthTime) end
---@param flag boolean
---@param whichSplat jubersplat
function ShowUbersplatBJ(flag, whichSplat) x(flag) x(whichSplat) end
---@return jubersplat
function GetLastCreatedUbersplat()  end
---@param soundHandle jsound
function PlaySoundBJ(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@param fadeOut boolean
function StopSoundBJ(soundHandle, fadeOut) x(soundHandle) x(fadeOut) end
---@param soundHandle jsound
---@param volumePercent number
function SetSoundVolumeBJ(soundHandle, volumePercent) x(soundHandle) x(volumePercent) end
---@param newOffset number
---@param soundHandle jsound
function SetSoundOffsetBJ(newOffset, soundHandle) x(newOffset) x(soundHandle) end
---@param soundHandle jsound
---@param cutoff number
function SetSoundDistanceCutoffBJ(soundHandle, cutoff) x(soundHandle) x(cutoff) end
---@param soundHandle jsound
---@param pitch number
function SetSoundPitchBJ(soundHandle, pitch) x(soundHandle) x(pitch) end
---@param soundHandle jsound
---@param loc jlocation
---@param z number
function SetSoundPositionLocBJ(soundHandle, loc, z) x(soundHandle) x(loc) x(z) end
---@param soundHandle jsound
---@param whichUnit junit
function AttachSoundToUnitBJ(soundHandle, whichUnit) x(soundHandle) x(whichUnit) end
---@param soundHandle jsound
---@param inside number
---@param outside number
---@param outsideVolumePercent number
function SetSoundConeAnglesBJ(soundHandle, inside, outside, outsideVolumePercent) x(soundHandle) x(inside) x(outside) x(outsideVolumePercent) end
---@param soundHandle jsound
function KillSoundWhenDoneBJ(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@param volumePercent number
---@param loc jlocation
---@param z number
function PlaySoundAtPointBJ(soundHandle, volumePercent, loc, z) x(soundHandle) x(volumePercent) x(loc) x(z) end
---@param soundHandle jsound
---@param volumePercent number
---@param whichUnit junit
function PlaySoundOnUnitBJ(soundHandle, volumePercent, whichUnit) x(soundHandle) x(volumePercent) x(whichUnit) end
---@param soundHandle jsound
---@param volumePercent number
---@param startingOffset number
function PlaySoundFromOffsetBJ(soundHandle, volumePercent, startingOffset) x(soundHandle) x(volumePercent) x(startingOffset) end
---@param musicFileName string
function PlayMusicBJ(musicFileName) x(musicFileName) end
---@param musicFileName string
---@param startingOffset number
---@param fadeInTime number
function PlayMusicExBJ(musicFileName, startingOffset, fadeInTime) x(musicFileName) x(startingOffset) x(fadeInTime) end
---@param newOffset number
function SetMusicOffsetBJ(newOffset) x(newOffset) end
---@param musicName string
function PlayThematicMusicBJ(musicName) x(musicName) end
---@param musicName string
---@param startingOffset number
function PlayThematicMusicExBJ(musicName, startingOffset) x(musicName) x(startingOffset) end
---@param newOffset number
function SetThematicMusicOffsetBJ(newOffset) x(newOffset) end
function EndThematicMusicBJ()  end
---@param fadeOut boolean
function StopMusicBJ(fadeOut) x(fadeOut) end
function ResumeMusicBJ()  end
---@param volumePercent number
function SetMusicVolumeBJ(volumePercent) x(volumePercent) end
---@param soundHandle jsound
---@return number
function GetSoundDurationBJ(soundHandle) x(soundHandle) end
---@param musicFileName string
---@return number
function GetSoundFileDurationBJ(musicFileName) x(musicFileName) end
---@return jsound
function GetLastPlayedSound()  end
---@return string
function GetLastPlayedMusic()  end
---@param vgroup jvolumegroup
---@param percent number
function VolumeGroupSetVolumeBJ(vgroup, percent) x(vgroup) x(percent) end
function SetCineModeVolumeGroupsImmediateBJ()  end
function SetCineModeVolumeGroupsBJ()  end
function SetSpeechVolumeGroupsImmediateBJ()  end
function SetSpeechVolumeGroupsBJ()  end
function VolumeGroupResetImmediateBJ()  end
function VolumeGroupResetBJ()  end
---@param soundHandle jsound
---@return boolean
function GetSoundIsPlayingBJ(soundHandle) x(soundHandle) end
---@param soundHandle jsound
---@param offset number
function WaitForSoundBJ(soundHandle, offset) x(soundHandle) x(offset) end
---@param musicName string
---@param index number
function SetMapMusicIndexedBJ(musicName, index) x(musicName) x(index) end
---@param musicName string
function SetMapMusicRandomBJ(musicName) x(musicName) end
function ClearMapMusicBJ()  end
---@param add boolean
---@param soundHandle jsound
---@param r jrect
function SetStackedSoundBJ(add, soundHandle, r) x(add) x(soundHandle) x(r) end
---@param whichPlayer jplayer
---@param soundHandle jsound
function StartSoundForPlayerBJ(whichPlayer, soundHandle) x(whichPlayer) x(soundHandle) end
---@param whichPlayer jplayer
---@param vgroup jvolumegroup
---@param scale number
function VolumeGroupSetVolumeForPlayerBJ(whichPlayer, vgroup, scale) x(whichPlayer) x(vgroup) x(scale) end
---@param flag boolean
function EnableDawnDusk(flag) x(flag) end
---@return boolean
function IsDawnDuskEnabled()  end
---@param inLabel string
function SetAmbientDaySound(inLabel) x(inLabel) end
---@param inLabel string
function SetAmbientNightSound(inLabel) x(inLabel) end
---@param where jlocation
---@param modelName string
---@return jeffect
function AddSpecialEffectLocBJ(where, modelName) x(where) x(modelName) end
---@param attachPointName string
---@param targetWidget jwidget
---@param modelName string
---@return jeffect
function AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName) x(attachPointName) x(targetWidget) x(modelName) end
---@param whichEffect jeffect
function DestroyEffectBJ(whichEffect) x(whichEffect) end
---@return jeffect
function GetLastCreatedEffectBJ()  end
---@param whichItem jitem
---@return jlocation
function GetItemLoc(whichItem) x(whichItem) end
---@param whichWidget jwidget
---@return number
function GetItemLifeBJ(whichWidget) x(whichWidget) end
---@param whichWidget jwidget
---@param life number
function SetItemLifeBJ(whichWidget, life) x(whichWidget) x(life) end
---@param xpToAdd number
---@param whichHero junit
---@param showEyeCandy boolean
function AddHeroXPSwapped(xpToAdd, whichHero, showEyeCandy) x(xpToAdd) x(whichHero) x(showEyeCandy) end
---@param whichHero junit
---@param newLevel number
---@param showEyeCandy boolean
function SetHeroLevelBJ(whichHero, newLevel, showEyeCandy) x(whichHero) x(newLevel) x(showEyeCandy) end
---@param abilcode number
---@param whichUnit junit
---@return number
function DecUnitAbilityLevelSwapped(abilcode, whichUnit) x(abilcode) x(whichUnit) end
---@param abilcode number
---@param whichUnit junit
---@return number
function IncUnitAbilityLevelSwapped(abilcode, whichUnit) x(abilcode) x(whichUnit) end
---@param abilcode number
---@param whichUnit junit
---@param level number
---@return number
function SetUnitAbilityLevelSwapped(abilcode, whichUnit, level) x(abilcode) x(whichUnit) x(level) end
---@param abilcode number
---@param whichUnit junit
---@return number
function GetUnitAbilityLevelSwapped(abilcode, whichUnit) x(abilcode) x(whichUnit) end
---@param whichUnit junit
---@param buffcode number
---@return boolean
function UnitHasBuffBJ(whichUnit, buffcode) x(whichUnit) x(buffcode) end
---@param buffcode number
---@param whichUnit junit
---@return boolean
function UnitRemoveBuffBJ(buffcode, whichUnit) x(buffcode) x(whichUnit) end
---@param whichItem jitem
---@param whichHero junit
---@return boolean
function UnitAddItemSwapped(whichItem, whichHero) x(whichItem) x(whichHero) end
---@param itemId number
---@param whichHero junit
---@return jitem
function UnitAddItemByIdSwapped(itemId, whichHero) x(itemId) x(whichHero) end
---@param whichItem jitem
---@param whichHero junit
function UnitRemoveItemSwapped(whichItem, whichHero) x(whichItem) x(whichHero) end
---@param itemSlot number
---@param whichHero junit
---@return jitem
function UnitRemoveItemFromSlotSwapped(itemSlot, whichHero) x(itemSlot) x(whichHero) end
---@param itemId number
---@param loc jlocation
---@return jitem
function CreateItemLoc(itemId, loc) x(itemId) x(loc) end
---@return jitem
function GetLastCreatedItem()  end
---@return jitem
function GetLastRemovedItem()  end
---@param whichItem jitem
---@param loc jlocation
function SetItemPositionLoc(whichItem, loc) x(whichItem) x(loc) end
---@return number
function GetLearnedSkillBJ()  end
---@param flag boolean
---@param whichHero junit
function SuspendHeroXPBJ(flag, whichHero) x(flag) x(whichHero) end
---@param whichPlayer jplayer
---@param handicapPercent number
function SetPlayerHandicapXPBJ(whichPlayer, handicapPercent) x(whichPlayer) x(handicapPercent) end
---@param whichPlayer jplayer
---@return number
function GetPlayerHandicapXPBJ(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param handicapPercent number
function SetPlayerHandicapBJ(whichPlayer, handicapPercent) x(whichPlayer) x(handicapPercent) end
---@param whichPlayer jplayer
---@return number
function GetPlayerHandicapBJ(whichPlayer) x(whichPlayer) end
---@param whichStat number
---@param whichHero junit
---@param includeBonuses boolean
---@return number
function GetHeroStatBJ(whichStat, whichHero, includeBonuses) x(whichStat) x(whichHero) x(includeBonuses) end
---@param whichHero junit
---@param whichStat number
---@param value number
function SetHeroStat(whichHero, whichStat, value) x(whichHero) x(whichStat) x(value) end
---@param whichStat number
---@param whichHero junit
---@param modifyMethod number
---@param value number
function ModifyHeroStat(whichStat, whichHero, modifyMethod, value) x(whichStat) x(whichHero) x(modifyMethod) x(value) end
---@param whichHero junit
---@param modifyMethod number
---@param value number
---@return boolean
function ModifyHeroSkillPoints(whichHero, modifyMethod, value) x(whichHero) x(modifyMethod) x(value) end
---@param whichUnit junit
---@param whichItem jitem
---@param x number
---@param y number
---@return boolean
function UnitDropItemPointBJ(whichUnit, whichItem, x, y) x(whichUnit) x(whichItem) x(x) x(y) end
---@param whichUnit junit
---@param whichItem jitem
---@param loc jlocation
---@return boolean
function UnitDropItemPointLoc(whichUnit, whichItem, loc) x(whichUnit) x(whichItem) x(loc) end
---@param whichUnit junit
---@param whichItem jitem
---@param slot number
---@return boolean
function UnitDropItemSlotBJ(whichUnit, whichItem, slot) x(whichUnit) x(whichItem) x(slot) end
---@param whichUnit junit
---@param whichItem jitem
---@param target jwidget
---@return boolean
function UnitDropItemTargetBJ(whichUnit, whichItem, target) x(whichUnit) x(whichItem) x(target) end
---@param whichUnit junit
---@param whichItem jitem
---@param target jwidget
---@return boolean
function UnitUseItemDestructable(whichUnit, whichItem, target) x(whichUnit) x(whichItem) x(target) end
---@param whichUnit junit
---@param whichItem jitem
---@param loc jlocation
---@return boolean
function UnitUseItemPointLoc(whichUnit, whichItem, loc) x(whichUnit) x(whichItem) x(loc) end
---@param whichUnit junit
---@param itemSlot number
---@return jitem
function UnitItemInSlotBJ(whichUnit, itemSlot) x(whichUnit) x(itemSlot) end
---@param whichUnit junit
---@param itemId number
---@return number
function GetInventoryIndexOfItemTypeBJ(whichUnit, itemId) x(whichUnit) x(itemId) end
---@param whichUnit junit
---@param itemId number
---@return jitem
function GetItemOfTypeFromUnitBJ(whichUnit, itemId) x(whichUnit) x(itemId) end
---@param whichUnit junit
---@param itemId number
---@return boolean
function UnitHasItemOfTypeBJ(whichUnit, itemId) x(whichUnit) x(itemId) end
---@param whichUnit junit
---@return number
function UnitInventoryCount(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function UnitInventorySizeBJ(whichUnit) x(whichUnit) end
---@param whichItem jitem
---@param flag boolean
function SetItemInvulnerableBJ(whichItem, flag) x(whichItem) x(flag) end
---@param whichItem jitem
---@param flag boolean
function SetItemDropOnDeathBJ(whichItem, flag) x(whichItem) x(flag) end
---@param whichItem jitem
---@param flag boolean
function SetItemDroppableBJ(whichItem, flag) x(whichItem) x(flag) end
---@param whichItem jitem
---@param whichPlayer jplayer
---@param changeColor boolean
function SetItemPlayerBJ(whichItem, whichPlayer, changeColor) x(whichItem) x(whichPlayer) x(changeColor) end
---@param show boolean
---@param whichItem jitem
function SetItemVisibleBJ(show, whichItem) x(show) x(whichItem) end
---@param whichItem jitem
---@return boolean
function IsItemHiddenBJ(whichItem) x(whichItem) end
---@param level number
---@return number
function ChooseRandomItemBJ(level) x(level) end
---@param level number
---@param whichType jitemtype
---@return number
function ChooseRandomItemExBJ(level, whichType) x(level) x(whichType) end
---@return number
function ChooseRandomNPBuildingBJ()  end
---@param level number
---@return number
function ChooseRandomCreepBJ(level) x(level) end
---@param r jrect
---@param actionFunc function
function EnumItemsInRectBJ(r, actionFunc) x(r) x(actionFunc) end
function RandomItemInRectBJEnum()  end
---@param r jrect
---@param filter jboolexpr
---@return jitem
function RandomItemInRectBJ(r, filter) x(r) x(filter) end
---@param r jrect
---@return jitem
function RandomItemInRectSimpleBJ(r) x(r) end
---@param whichItem jitem
---@param status number
---@return boolean
function CheckItemStatus(whichItem, status) x(whichItem) x(status) end
---@param itemId number
---@param status number
---@return boolean
function CheckItemcodeStatus(itemId, status) x(itemId) x(status) end
---@param unitId number
---@return number
function UnitId2OrderIdBJ(unitId) x(unitId) end
---@param unitIdString string
---@return number
function String2UnitIdBJ(unitIdString) x(unitIdString) end
---@param unitId number
---@return string
function UnitId2StringBJ(unitId) x(unitId) end
---@param orderIdString string
---@return number
function String2OrderIdBJ(orderIdString) x(orderIdString) end
---@param orderId number
---@return string
function OrderId2StringBJ(orderId) x(orderId) end
---@return number
function GetIssuedOrderIdBJ()  end
---@return junit
function GetKillingUnitBJ()  end
---@param id jplayer
---@param unitid number
---@param loc jlocation
---@param face number
---@return junit
function CreateUnitAtLocSaveLast(id, unitid, loc, face) x(id) x(unitid) x(loc) x(face) end
---@return junit
function GetLastCreatedUnit()  end
---@param count number
---@param unitId number
---@param whichPlayer jplayer
---@param loc jlocation
---@param face number
---@return jgroup
function CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, face) x(count) x(unitId) x(whichPlayer) x(loc) x(face) end
---@param count number
---@param unitId number
---@param whichPlayer jplayer
---@param loc jlocation
---@param lookAt jlocation
---@return jgroup
function CreateNUnitsAtLocFacingLocBJ(count, unitId, whichPlayer, loc, lookAt) x(count) x(unitId) x(whichPlayer) x(loc) x(lookAt) end
function GetLastCreatedGroupEnum()  end
---@return jgroup
function GetLastCreatedGroup()  end
---@param unitid number
---@param whichPlayer jplayer
---@param loc jlocation
---@return junit
function CreateCorpseLocBJ(unitid, whichPlayer, loc) x(unitid) x(whichPlayer) x(loc) end
---@param suspend boolean
---@param whichUnit junit
function UnitSuspendDecayBJ(suspend, whichUnit) x(suspend) x(whichUnit) end
function DelayedSuspendDecayStopAnimEnum()  end
function DelayedSuspendDecayBoneEnum()  end
function DelayedSuspendDecayFleshEnum()  end
function DelayedSuspendDecay()  end
function DelayedSuspendDecayCreate()  end
---@param style number
---@param unitid number
---@param whichPlayer jplayer
---@param loc jlocation
---@param facing number
---@return junit
function CreatePermanentCorpseLocBJ(style, unitid, whichPlayer, loc, facing) x(style) x(unitid) x(whichPlayer) x(loc) x(facing) end
---@param whichState junitstate
---@param whichUnit junit
---@return number
function GetUnitStateSwap(whichState, whichUnit) x(whichState) x(whichUnit) end
---@param whichUnit junit
---@param whichState junitstate
---@param whichMaxState junitstate
---@return number
function GetUnitStatePercent(whichUnit, whichState, whichMaxState) x(whichUnit) x(whichState) x(whichMaxState) end
---@param whichUnit junit
---@return number
function GetUnitLifePercent(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitManaPercent(whichUnit) x(whichUnit) end
---@param whichUnit junit
function SelectUnitSingle(whichUnit) x(whichUnit) end
function SelectGroupBJEnum()  end
---@param g jgroup
function SelectGroupBJ(g) x(g) end
---@param whichUnit junit
function SelectUnitAdd(whichUnit) x(whichUnit) end
---@param whichUnit junit
function SelectUnitRemove(whichUnit) x(whichUnit) end
---@param whichPlayer jplayer
function ClearSelectionForPlayer(whichPlayer) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
function SelectUnitForPlayerSingle(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param g jgroup
---@param whichPlayer jplayer
function SelectGroupForPlayerBJ(g, whichPlayer) x(g) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
function SelectUnitAddForPlayer(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param whichPlayer jplayer
function SelectUnitRemoveForPlayer(whichUnit, whichPlayer) x(whichUnit) x(whichPlayer) end
---@param whichUnit junit
---@param newValue number
function SetUnitLifeBJ(whichUnit, newValue) x(whichUnit) x(newValue) end
---@param whichUnit junit
---@param newValue number
function SetUnitManaBJ(whichUnit, newValue) x(whichUnit) x(newValue) end
---@param whichUnit junit
---@param percent number
function SetUnitLifePercentBJ(whichUnit, percent) x(whichUnit) x(percent) end
---@param whichUnit junit
---@param percent number
function SetUnitManaPercentBJ(whichUnit, percent) x(whichUnit) x(percent) end
---@param whichUnit junit
---@return boolean
function IsUnitDeadBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function IsUnitAliveBJ(whichUnit) x(whichUnit) end
function IsUnitGroupDeadBJEnum()  end
---@param g jgroup
---@return boolean
function IsUnitGroupDeadBJ(g) x(g) end
function IsUnitGroupEmptyBJEnum()  end
---@param g jgroup
---@return boolean
function IsUnitGroupEmptyBJ(g) x(g) end
function IsUnitGroupInRectBJEnum()  end
---@param g jgroup
---@param r jrect
---@return boolean
function IsUnitGroupInRectBJ(g, r) x(g) x(r) end
---@param whichUnit junit
---@return boolean
function IsUnitHiddenBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
function ShowUnitHide(whichUnit) x(whichUnit) end
---@param whichUnit junit
function ShowUnitShow(whichUnit) x(whichUnit) end
---@return boolean
function IssueHauntOrderAtLocBJFilter()  end
---@param whichPeon junit
---@param loc jlocation
---@return boolean
function IssueHauntOrderAtLocBJ(whichPeon, loc) x(whichPeon) x(loc) end
---@param whichPeon junit
---@param unitId number
---@param loc jlocation
---@return boolean
function IssueBuildOrderByIdLocBJ(whichPeon, unitId, loc) x(whichPeon) x(unitId) x(loc) end
---@param whichUnit junit
---@param unitId number
---@return boolean
function IssueTrainOrderByIdBJ(whichUnit, unitId) x(whichUnit) x(unitId) end
---@param g jgroup
---@param unitId number
---@return boolean
function GroupTrainOrderByIdBJ(g, unitId) x(g) x(unitId) end
---@param whichUnit junit
---@param techId number
---@return boolean
function IssueUpgradeOrderByIdBJ(whichUnit, techId) x(whichUnit) x(techId) end
---@return junit
function GetAttackedUnitBJ()  end
---@param whichUnit junit
---@param newHeight number
---@param rate number
function SetUnitFlyHeightBJ(whichUnit, newHeight, rate) x(whichUnit) x(newHeight) x(rate) end
---@param whichUnit junit
---@param turnSpeed number
function SetUnitTurnSpeedBJ(whichUnit, turnSpeed) x(whichUnit) x(turnSpeed) end
---@param whichUnit junit
---@param propWindow number
function SetUnitPropWindowBJ(whichUnit, propWindow) x(whichUnit) x(propWindow) end
---@param whichUnit junit
---@return number
function GetUnitPropWindowBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return number
function GetUnitDefaultPropWindowBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param blendTime number
function SetUnitBlendTimeBJ(whichUnit, blendTime) x(whichUnit) x(blendTime) end
---@param whichUnit junit
---@param acquireRange number
function SetUnitAcquireRangeBJ(whichUnit, acquireRange) x(whichUnit) x(acquireRange) end
---@param whichUnit junit
---@param canSleep boolean
function UnitSetCanSleepBJ(whichUnit, canSleep) x(whichUnit) x(canSleep) end
---@param whichUnit junit
---@return boolean
function UnitCanSleepBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
function UnitWakeUpBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function UnitIsSleepingBJ(whichUnit) x(whichUnit) end
function WakePlayerUnitsEnum()  end
---@param whichPlayer jplayer
function WakePlayerUnits(whichPlayer) x(whichPlayer) end
---@param enable boolean
function EnableCreepSleepBJ(enable) x(enable) end
---@param whichUnit junit
---@param generate boolean
---@return boolean
function UnitGenerateAlarms(whichUnit, generate) x(whichUnit) x(generate) end
---@param whichUnit junit
---@return boolean
function DoesUnitGenerateAlarms(whichUnit) x(whichUnit) end
function PauseAllUnitsBJEnum()  end
---@param pause boolean
function PauseAllUnitsBJ(pause) x(pause) end
---@param pause boolean
---@param whichUnit junit
function PauseUnitBJ(pause, whichUnit) x(pause) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function IsUnitPausedBJ(whichUnit) x(whichUnit) end
---@param flag boolean
---@param whichUnit junit
function UnitPauseTimedLifeBJ(flag, whichUnit) x(flag) x(whichUnit) end
---@param duration number
---@param buffId number
---@param whichUnit junit
function UnitApplyTimedLifeBJ(duration, buffId, whichUnit) x(duration) x(buffId) x(whichUnit) end
---@param share boolean
---@param whichUnit junit
---@param whichPlayer jplayer
function UnitShareVisionBJ(share, whichUnit, whichPlayer) x(share) x(whichUnit) x(whichPlayer) end
---@param buffType number
---@param whichUnit junit
function UnitRemoveBuffsBJ(buffType, whichUnit) x(buffType) x(whichUnit) end
---@param polarity number
---@param resist number
---@param whichUnit junit
---@param bTLife boolean
---@param bAura boolean
function UnitRemoveBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura) x(polarity) x(resist) x(whichUnit) x(bTLife) x(bAura) end
---@param polarity number
---@param resist number
---@param whichUnit junit
---@param bTLife boolean
---@param bAura boolean
---@return number
function UnitCountBuffsExBJ(polarity, resist, whichUnit, bTLife, bAura) x(polarity) x(resist) x(whichUnit) x(bTLife) x(bAura) end
---@param abilityId number
---@param whichUnit junit
---@return boolean
function UnitRemoveAbilityBJ(abilityId, whichUnit) x(abilityId) x(whichUnit) end
---@param abilityId number
---@param whichUnit junit
---@return boolean
function UnitAddAbilityBJ(abilityId, whichUnit) x(abilityId) x(whichUnit) end
---@param whichType junittype
---@param whichUnit junit
---@return boolean
function UnitRemoveTypeBJ(whichType, whichUnit) x(whichType) x(whichUnit) end
---@param whichType junittype
---@param whichUnit junit
---@return boolean
function UnitAddTypeBJ(whichType, whichUnit) x(whichType) x(whichUnit) end
---@param permanent boolean
---@param abilityId number
---@param whichUnit junit
---@return boolean
function UnitMakeAbilityPermanentBJ(permanent, abilityId, whichUnit) x(permanent) x(abilityId) x(whichUnit) end
---@param whichUnit junit
---@param exploded boolean
function SetUnitExplodedBJ(whichUnit, exploded) x(whichUnit) x(exploded) end
---@param whichUnit junit
function ExplodeUnitBJ(whichUnit) x(whichUnit) end
---@return junit
function GetTransportUnitBJ()  end
---@return junit
function GetLoadedUnitBJ()  end
---@param whichUnit junit
---@param whichTransport junit
---@return boolean
function IsUnitInTransportBJ(whichUnit, whichTransport) x(whichUnit) x(whichTransport) end
---@param whichUnit junit
---@return boolean
function IsUnitLoadedBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@return boolean
function IsUnitIllusionBJ(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param newUnitId number
---@param unitStateMethod number
---@return junit
function ReplaceUnitBJ(whichUnit, newUnitId, unitStateMethod) x(whichUnit) x(newUnitId) x(unitStateMethod) end
---@return junit
function GetLastReplacedUnitBJ()  end
---@param whichUnit junit
---@param loc jlocation
---@param facing number
function SetUnitPositionLocFacingBJ(whichUnit, loc, facing) x(whichUnit) x(loc) x(facing) end
---@param whichUnit junit
---@param loc jlocation
---@param lookAt jlocation
function SetUnitPositionLocFacingLocBJ(whichUnit, loc, lookAt) x(whichUnit) x(loc) x(lookAt) end
---@param itemId number
---@param whichUnit junit
---@param currentStock number
---@param stockMax number
function AddItemToStockBJ(itemId, whichUnit, currentStock, stockMax) x(itemId) x(whichUnit) x(currentStock) x(stockMax) end
---@param unitId number
---@param whichUnit junit
---@param currentStock number
---@param stockMax number
function AddUnitToStockBJ(unitId, whichUnit, currentStock, stockMax) x(unitId) x(whichUnit) x(currentStock) x(stockMax) end
---@param itemId number
---@param whichUnit junit
function RemoveItemFromStockBJ(itemId, whichUnit) x(itemId) x(whichUnit) end
---@param unitId number
---@param whichUnit junit
function RemoveUnitFromStockBJ(unitId, whichUnit) x(unitId) x(whichUnit) end
---@param enable boolean
---@param whichUnit junit
function SetUnitUseFoodBJ(enable, whichUnit) x(enable) x(whichUnit) end
---@param whichUnit junit
---@param delay number
---@param radius number
---@param loc jlocation
---@param amount number
---@param whichAttack jattacktype
---@param whichDamage jdamagetype
---@return boolean
function UnitDamagePointLoc(whichUnit, delay, radius, loc, amount, whichAttack, whichDamage) x(whichUnit) x(delay) x(radius) x(loc) x(amount) x(whichAttack) x(whichDamage) end
---@param whichUnit junit
---@param target junit
---@param amount number
---@param whichAttack jattacktype
---@param whichDamage jdamagetype
---@return boolean
function UnitDamageTargetBJ(whichUnit, target, amount, whichAttack, whichDamage) x(whichUnit) x(target) x(amount) x(whichAttack) x(whichDamage) end
---@param objectid number
---@param loc jlocation
---@param facing number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDestructableLoc(objectid, loc, facing, scale, variation) x(objectid) x(loc) x(facing) x(scale) x(variation) end
---@param objectid number
---@param loc jlocation
---@param facing number
---@param scale number
---@param variation number
---@return jdestructable
function CreateDeadDestructableLocBJ(objectid, loc, facing, scale, variation) x(objectid) x(loc) x(facing) x(scale) x(variation) end
---@return jdestructable
function GetLastCreatedDestructable()  end
---@param flag boolean
---@param d jdestructable
function ShowDestructableBJ(flag, d) x(flag) x(d) end
---@param d jdestructable
---@param flag boolean
function SetDestructableInvulnerableBJ(d, flag) x(d) x(flag) end
---@param d jdestructable
---@return boolean
function IsDestructableInvulnerableBJ(d) x(d) end
---@param whichDestructable jdestructable
---@return jlocation
function GetDestructableLoc(whichDestructable) x(whichDestructable) end
---@param r jrect
---@param actionFunc function
function EnumDestructablesInRectAll(r, actionFunc) x(r) x(actionFunc) end
---@return boolean
function EnumDestructablesInCircleBJFilter()  end
---@param d jdestructable
---@return boolean
function IsDestructableDeadBJ(d) x(d) end
---@param d jdestructable
---@return boolean
function IsDestructableAliveBJ(d) x(d) end
function RandomDestructableInRectBJEnum()  end
---@param r jrect
---@param filter jboolexpr
---@return jdestructable
function RandomDestructableInRectBJ(r, filter) x(r) x(filter) end
---@param r jrect
---@return jdestructable
function RandomDestructableInRectSimpleBJ(r) x(r) end
---@param radius number
---@param loc jlocation
---@param actionFunc function
function EnumDestructablesInCircleBJ(radius, loc, actionFunc) x(radius) x(loc) x(actionFunc) end
---@param d jdestructable
---@param percent number
function SetDestructableLifePercentBJ(d, percent) x(d) x(percent) end
---@param d jdestructable
---@param max number
function SetDestructableMaxLifeBJ(d, max) x(d) x(max) end
---@param gateOperation number
---@param d jdestructable
function ModifyGateBJ(gateOperation, d) x(gateOperation) x(d) end
---@param d jdestructable
---@return number
function GetElevatorHeight(d) x(d) end
---@param d jdestructable
---@param newHeight number
function ChangeElevatorHeight(d, newHeight) x(d) x(newHeight) end
function NudgeUnitsInRectEnum()  end
function NudgeItemsInRectEnum()  end
---@param nudgeArea jrect
function NudgeObjectsInRect(nudgeArea) x(nudgeArea) end
function NearbyElevatorExistsEnum()  end
---@param x number
---@param y number
---@return boolean
function NearbyElevatorExists(x, y) x(x) x(y) end
function FindElevatorWallBlockerEnum()  end
---@param x number
---@param y number
---@param facing number
---@param open boolean
function ChangeElevatorWallBlocker(x, y, facing, open) x(x) x(y) x(facing) x(open) end
---@param open boolean
---@param walls number
---@param d jdestructable
function ChangeElevatorWalls(open, walls, d) x(open) x(walls) x(d) end
---@param activate boolean
---@param waygate junit
function WaygateActivateBJ(activate, waygate) x(activate) x(waygate) end
---@param waygate junit
---@return boolean
function WaygateIsActiveBJ(waygate) x(waygate) end
---@param waygate junit
---@param loc jlocation
function WaygateSetDestinationLocBJ(waygate, loc) x(waygate) x(loc) end
---@param waygate junit
---@return jlocation
function WaygateGetDestinationLocBJ(waygate) x(waygate) end
---@param flag boolean
---@param whichUnit junit
function UnitSetUsesAltIconBJ(flag, whichUnit) x(flag) x(whichUnit) end
---@param whichPlayer jplayer
---@param key string
function ForceUIKeyBJ(whichPlayer, key) x(whichPlayer) x(key) end
---@param whichPlayer jplayer
function ForceUICancelBJ(whichPlayer) x(whichPlayer) end
---@param whichGroup jgroup
---@param callback function
function ForGroupBJ(whichGroup, callback) x(whichGroup) x(callback) end
---@param whichUnit junit
---@param whichGroup jgroup
function GroupAddUnitSimple(whichUnit, whichGroup) x(whichUnit) x(whichGroup) end
---@param whichUnit junit
---@param whichGroup jgroup
function GroupRemoveUnitSimple(whichUnit, whichGroup) x(whichUnit) x(whichGroup) end
function GroupAddGroupEnum()  end
---@param sourceGroup jgroup
---@param destGroup jgroup
function GroupAddGroup(sourceGroup, destGroup) x(sourceGroup) x(destGroup) end
function GroupRemoveGroupEnum()  end
---@param sourceGroup jgroup
---@param destGroup jgroup
function GroupRemoveGroup(sourceGroup, destGroup) x(sourceGroup) x(destGroup) end
---@param whichPlayer jplayer
---@param whichForce jforce
function ForceAddPlayerSimple(whichPlayer, whichForce) x(whichPlayer) x(whichForce) end
---@param whichPlayer jplayer
---@param whichForce jforce
function ForceRemovePlayerSimple(whichPlayer, whichForce) x(whichPlayer) x(whichForce) end
function GroupPickRandomUnitEnum()  end
---@param whichGroup jgroup
---@return junit
function GroupPickRandomUnit(whichGroup) x(whichGroup) end
function ForcePickRandomPlayerEnum()  end
---@param whichForce jforce
---@return jplayer
function ForcePickRandomPlayer(whichForce) x(whichForce) end
---@param whichPlayer jplayer
---@param enumFilter jboolexpr
---@param enumAction function
function EnumUnitsSelected(whichPlayer, enumFilter, enumAction) x(whichPlayer) x(enumFilter) x(enumAction) end
---@param r jrect
---@param filter jboolexpr
---@return jgroup
function GetUnitsInRectMatching(r, filter) x(r) x(filter) end
---@param r jrect
---@return jgroup
function GetUnitsInRectAll(r) x(r) end
---@return boolean
function GetUnitsInRectOfPlayerFilter()  end
---@param r jrect
---@param whichPlayer jplayer
---@return jgroup
function GetUnitsInRectOfPlayer(r, whichPlayer) x(r) x(whichPlayer) end
---@param radius number
---@param whichLocation jlocation
---@param filter jboolexpr
---@return jgroup
function GetUnitsInRangeOfLocMatching(radius, whichLocation, filter) x(radius) x(whichLocation) x(filter) end
---@param radius number
---@param whichLocation jlocation
---@return jgroup
function GetUnitsInRangeOfLocAll(radius, whichLocation) x(radius) x(whichLocation) end
---@return boolean
function GetUnitsOfTypeIdAllFilter()  end
---@param unitid number
---@return jgroup
function GetUnitsOfTypeIdAll(unitid) x(unitid) end
---@param whichPlayer jplayer
---@param filter jboolexpr
---@return jgroup
function GetUnitsOfPlayerMatching(whichPlayer, filter) x(whichPlayer) x(filter) end
---@param whichPlayer jplayer
---@return jgroup
function GetUnitsOfPlayerAll(whichPlayer) x(whichPlayer) end
---@return boolean
function GetUnitsOfPlayerAndTypeIdFilter()  end
---@param whichPlayer jplayer
---@param unitid number
---@return jgroup
function GetUnitsOfPlayerAndTypeId(whichPlayer, unitid) x(whichPlayer) x(unitid) end
---@param whichPlayer jplayer
---@return jgroup
function GetUnitsSelectedAll(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jforce
function GetForceOfPlayer(whichPlayer) x(whichPlayer) end
---@return jforce
function GetPlayersAll()  end
---@param whichControl jmapcontrol
---@return jforce
function GetPlayersByMapControl(whichControl) x(whichControl) end
---@param whichPlayer jplayer
---@return jforce
function GetPlayersAllies(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jforce
function GetPlayersEnemies(whichPlayer) x(whichPlayer) end
---@param filter jboolexpr
---@return jforce
function GetPlayersMatching(filter) x(filter) end
function CountUnitsInGroupEnum()  end
---@param g jgroup
---@return number
function CountUnitsInGroup(g) x(g) end
function CountPlayersInForceEnum()  end
---@param f jforce
---@return number
function CountPlayersInForceBJ(f) x(f) end
function GetRandomSubGroupEnum()  end
---@param count number
---@param sourceGroup jgroup
---@return jgroup
function GetRandomSubGroup(count, sourceGroup) x(count) x(sourceGroup) end
---@return boolean
function LivingPlayerUnitsOfTypeIdFilter()  end
---@param unitId number
---@param whichPlayer jplayer
---@return number
function CountLivingPlayerUnitsOfTypeId(unitId, whichPlayer) x(unitId) x(whichPlayer) end
---@param whichUnit junit
function ResetUnitAnimation(whichUnit) x(whichUnit) end
---@param whichUnit junit
---@param percentScale number
function SetUnitTimeScalePercent(whichUnit, percentScale) x(whichUnit) x(percentScale) end
---@param whichUnit junit
---@param percentScaleX number
---@param percentScaleY number
---@param percentScaleZ number
function SetUnitScalePercent(whichUnit, percentScaleX, percentScaleY, percentScaleZ) x(whichUnit) x(percentScaleX) x(percentScaleY) x(percentScaleZ) end
---@param whichUnit junit
---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetUnitVertexColorBJ(whichUnit, red, green, blue, transparency) x(whichUnit) x(red) x(green) x(blue) x(transparency) end
---@param whichUnit junit
---@param red number
---@param green number
---@param blue number
---@param transparency number
function UnitAddIndicatorBJ(whichUnit, red, green, blue, transparency) x(whichUnit) x(red) x(green) x(blue) x(transparency) end
---@param whichDestructable jdestructable
---@param red number
---@param green number
---@param blue number
---@param transparency number
function DestructableAddIndicatorBJ(whichDestructable, red, green, blue, transparency) x(whichDestructable) x(red) x(green) x(blue) x(transparency) end
---@param whichItem jitem
---@param red number
---@param green number
---@param blue number
---@param transparency number
function ItemAddIndicatorBJ(whichItem, red, green, blue, transparency) x(whichItem) x(red) x(green) x(blue) x(transparency) end
---@param whichUnit junit
---@param target jlocation
---@param duration number
function SetUnitFacingToFaceLocTimed(whichUnit, target, duration) x(whichUnit) x(target) x(duration) end
---@param whichUnit junit
---@param target junit
---@param duration number
function SetUnitFacingToFaceUnitTimed(whichUnit, target, duration) x(whichUnit) x(target) x(duration) end
---@param whichUnit junit
---@param whichAnimation string
function QueueUnitAnimationBJ(whichUnit, whichAnimation) x(whichUnit) x(whichAnimation) end
---@param d jdestructable
---@param whichAnimation string
function SetDestructableAnimationBJ(d, whichAnimation) x(d) x(whichAnimation) end
---@param d jdestructable
---@param whichAnimation string
function QueueDestructableAnimationBJ(d, whichAnimation) x(d) x(whichAnimation) end
---@param d jdestructable
---@param percentScale number
function SetDestAnimationSpeedPercent(d, percentScale) x(d) x(percentScale) end
---@param flag boolean
---@param whichDialog jdialog
---@param whichPlayer jplayer
function DialogDisplayBJ(flag, whichDialog, whichPlayer) x(flag) x(whichDialog) x(whichPlayer) end
---@param whichDialog jdialog
---@param message string
function DialogSetMessageBJ(whichDialog, message) x(whichDialog) x(message) end
---@param whichDialog jdialog
---@param buttonText string
---@return jbutton
function DialogAddButtonBJ(whichDialog, buttonText) x(whichDialog) x(buttonText) end
---@param whichDialog jdialog
---@param buttonText string
---@param hotkey number
---@return jbutton
function DialogAddButtonWithHotkeyBJ(whichDialog, buttonText, hotkey) x(whichDialog) x(buttonText) x(hotkey) end
---@param whichDialog jdialog
function DialogClearBJ(whichDialog) x(whichDialog) end
---@return jbutton
function GetLastCreatedButtonBJ()  end
---@return jbutton
function GetClickedButtonBJ()  end
---@return jdialog
function GetClickedDialogBJ()  end
---@param sourcePlayer jplayer
---@param whichAllianceSetting jalliancetype
---@param value boolean
---@param otherPlayer jplayer
function SetPlayerAllianceBJ(sourcePlayer, whichAllianceSetting, value, otherPlayer) x(sourcePlayer) x(whichAllianceSetting) x(value) x(otherPlayer) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param flag boolean
function SetPlayerAllianceStateAllyBJ(sourcePlayer, otherPlayer, flag) x(sourcePlayer) x(otherPlayer) x(flag) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param flag boolean
function SetPlayerAllianceStateVisionBJ(sourcePlayer, otherPlayer, flag) x(sourcePlayer) x(otherPlayer) x(flag) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param flag boolean
function SetPlayerAllianceStateControlBJ(sourcePlayer, otherPlayer, flag) x(sourcePlayer) x(otherPlayer) x(flag) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param flag boolean
function SetPlayerAllianceStateFullControlBJ(sourcePlayer, otherPlayer, flag) x(sourcePlayer) x(otherPlayer) x(flag) end
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@param allianceState number
function SetPlayerAllianceStateBJ(sourcePlayer, otherPlayer, allianceState) x(sourcePlayer) x(otherPlayer) x(allianceState) end
---@param sourceForce jforce
---@param targetForce jforce
---@param allianceState number
function SetForceAllianceStateBJ(sourceForce, targetForce, allianceState) x(sourceForce) x(targetForce) x(allianceState) end
---@param playerA jplayer
---@param playerB jplayer
---@return boolean
function PlayersAreCoAllied(playerA, playerB) x(playerA) x(playerB) end
---@param whichPlayer jplayer
function ShareEverythingWithTeamAI(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
function ShareEverythingWithTeam(whichPlayer) x(whichPlayer) end
function ConfigureNeutralVictim()  end
function MakeUnitsPassiveForPlayerEnum()  end
---@param whichPlayer jplayer
function MakeUnitsPassiveForPlayer(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
function MakeUnitsPassiveForTeam(whichPlayer) x(whichPlayer) end
---@param gameResult jplayergameresult
---@return boolean
function AllowVictoryDefeat(gameResult) x(gameResult) end
function EndGameBJ()  end
---@param whichPlayer jplayer
---@param leftGame boolean
function MeleeVictoryDialogBJ(whichPlayer, leftGame) x(whichPlayer) x(leftGame) end
---@param whichPlayer jplayer
---@param leftGame boolean
function MeleeDefeatDialogBJ(whichPlayer, leftGame) x(whichPlayer) x(leftGame) end
---@param whichPlayer jplayer
---@param leftGame boolean
function GameOverDialogBJ(whichPlayer, leftGame) x(whichPlayer) x(leftGame) end
---@param whichPlayer jplayer
---@param gameResult jplayergameresult
---@param leftGame boolean
function RemovePlayerPreserveUnitsBJ(whichPlayer, gameResult, leftGame) x(whichPlayer) x(gameResult) x(leftGame) end
function CustomVictoryOkBJ()  end
function CustomVictoryQuitBJ()  end
---@param whichPlayer jplayer
function CustomVictoryDialogBJ(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
function CustomVictorySkipBJ(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param showDialog boolean
---@param showScores boolean
function CustomVictoryBJ(whichPlayer, showDialog, showScores) x(whichPlayer) x(showDialog) x(showScores) end
function CustomDefeatRestartBJ()  end
function CustomDefeatReduceDifficultyBJ()  end
function CustomDefeatLoadBJ()  end
function CustomDefeatQuitBJ()  end
---@param whichPlayer jplayer
---@param message string
function CustomDefeatDialogBJ(whichPlayer, message) x(whichPlayer) x(message) end
---@param whichPlayer jplayer
---@param message string
function CustomDefeatBJ(whichPlayer, message) x(whichPlayer) x(message) end
---@param nextLevel string
function SetNextLevelBJ(nextLevel) x(nextLevel) end
---@param flag boolean
---@param whichPlayer jplayer
function SetPlayerOnScoreScreenBJ(flag, whichPlayer) x(flag) x(whichPlayer) end
---@param questType number
---@param title string
---@param description string
---@param iconPath string
---@return jquest
function CreateQuestBJ(questType, title, description, iconPath) x(questType) x(title) x(description) x(iconPath) end
---@param whichQuest jquest
function DestroyQuestBJ(whichQuest) x(whichQuest) end
---@param enabled boolean
---@param whichQuest jquest
function QuestSetEnabledBJ(enabled, whichQuest) x(enabled) x(whichQuest) end
---@param whichQuest jquest
---@param title string
function QuestSetTitleBJ(whichQuest, title) x(whichQuest) x(title) end
---@param whichQuest jquest
---@param description string
function QuestSetDescriptionBJ(whichQuest, description) x(whichQuest) x(description) end
---@param whichQuest jquest
---@param completed boolean
function QuestSetCompletedBJ(whichQuest, completed) x(whichQuest) x(completed) end
---@param whichQuest jquest
---@param failed boolean
function QuestSetFailedBJ(whichQuest, failed) x(whichQuest) x(failed) end
---@param whichQuest jquest
---@param discovered boolean
function QuestSetDiscoveredBJ(whichQuest, discovered) x(whichQuest) x(discovered) end
---@return jquest
function GetLastCreatedQuestBJ()  end
---@param whichQuest jquest
---@param description string
---@return jquestitem
function CreateQuestItemBJ(whichQuest, description) x(whichQuest) x(description) end
---@param whichQuestItem jquestitem
---@param description string
function QuestItemSetDescriptionBJ(whichQuestItem, description) x(whichQuestItem) x(description) end
---@param whichQuestItem jquestitem
---@param completed boolean
function QuestItemSetCompletedBJ(whichQuestItem, completed) x(whichQuestItem) x(completed) end
---@return jquestitem
function GetLastCreatedQuestItemBJ()  end
---@param description string
---@return jdefeatcondition
function CreateDefeatConditionBJ(description) x(description) end
---@param whichCondition jdefeatcondition
function DestroyDefeatConditionBJ(whichCondition) x(whichCondition) end
---@param whichCondition jdefeatcondition
---@param description string
function DefeatConditionSetDescriptionBJ(whichCondition, description) x(whichCondition) x(description) end
---@return jdefeatcondition
function GetLastCreatedDefeatConditionBJ()  end
function FlashQuestDialogButtonBJ()  end
---@param f jforce
---@param messageType number
---@param message string
function QuestMessageBJ(f, messageType, message) x(f) x(messageType) x(message) end
---@param t jtimer
---@param periodic boolean
---@param timeout number
---@return jtimer
function StartTimerBJ(t, periodic, timeout) x(t) x(periodic) x(timeout) end
---@param periodic boolean
---@param timeout number
---@return jtimer
function CreateTimerBJ(periodic, timeout) x(periodic) x(timeout) end
---@param whichTimer jtimer
function DestroyTimerBJ(whichTimer) x(whichTimer) end
---@param pause boolean
---@param whichTimer jtimer
function PauseTimerBJ(pause, whichTimer) x(pause) x(whichTimer) end
---@return jtimer
function GetLastCreatedTimerBJ()  end
---@param t jtimer
---@param title string
---@return jtimerdialog
function CreateTimerDialogBJ(t, title) x(t) x(title) end
---@param td jtimerdialog
function DestroyTimerDialogBJ(td) x(td) end
---@param td jtimerdialog
---@param title string
function TimerDialogSetTitleBJ(td, title) x(td) x(title) end
---@param td jtimerdialog
---@param red number
---@param green number
---@param blue number
---@param transparency number
function TimerDialogSetTitleColorBJ(td, red, green, blue, transparency) x(td) x(red) x(green) x(blue) x(transparency) end
---@param td jtimerdialog
---@param red number
---@param green number
---@param blue number
---@param transparency number
function TimerDialogSetTimeColorBJ(td, red, green, blue, transparency) x(td) x(red) x(green) x(blue) x(transparency) end
---@param td jtimerdialog
---@param speedMultFactor number
function TimerDialogSetSpeedBJ(td, speedMultFactor) x(td) x(speedMultFactor) end
---@param show boolean
---@param td jtimerdialog
---@param whichPlayer jplayer
function TimerDialogDisplayForPlayerBJ(show, td, whichPlayer) x(show) x(td) x(whichPlayer) end
---@param show boolean
---@param td jtimerdialog
function TimerDialogDisplayBJ(show, td) x(show) x(td) end
---@return jtimerdialog
function GetLastCreatedTimerDialogBJ()  end
---@param lb jleaderboard
function LeaderboardResizeBJ(lb) x(lb) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param val number
function LeaderboardSetPlayerItemValueBJ(whichPlayer, lb, val) x(whichPlayer) x(lb) x(val) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param val string
function LeaderboardSetPlayerItemLabelBJ(whichPlayer, lb, val) x(whichPlayer) x(lb) x(val) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
function LeaderboardSetPlayerItemStyleBJ(whichPlayer, lb, showLabel, showValue, showIcon) x(whichPlayer) x(lb) x(showLabel) x(showValue) x(showIcon) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetPlayerItemLabelColorBJ(whichPlayer, lb, red, green, blue, transparency) x(whichPlayer) x(lb) x(red) x(green) x(blue) x(transparency) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetPlayerItemValueColorBJ(whichPlayer, lb, red, green, blue, transparency) x(whichPlayer) x(lb) x(red) x(green) x(blue) x(transparency) end
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetLabelColorBJ(lb, red, green, blue, transparency) x(lb) x(red) x(green) x(blue) x(transparency) end
---@param lb jleaderboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function LeaderboardSetValueColorBJ(lb, red, green, blue, transparency) x(lb) x(red) x(green) x(blue) x(transparency) end
---@param lb jleaderboard
---@param label string
function LeaderboardSetLabelBJ(lb, label) x(lb) x(label) end
---@param lb jleaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
function LeaderboardSetStyleBJ(lb, showLabel, showNames, showValues, showIcons) x(lb) x(showLabel) x(showNames) x(showValues) x(showIcons) end
---@param lb jleaderboard
---@return number
function LeaderboardGetItemCountBJ(lb) x(lb) end
---@param lb jleaderboard
---@param whichPlayer jplayer
---@return boolean
function LeaderboardHasPlayerItemBJ(lb, whichPlayer) x(lb) x(whichPlayer) end
---@param lb jleaderboard
---@param toForce jforce
function ForceSetLeaderboardBJ(lb, toForce) x(lb) x(toForce) end
---@param toForce jforce
---@param label string
---@return jleaderboard
function CreateLeaderboardBJ(toForce, label) x(toForce) x(label) end
---@param lb jleaderboard
function DestroyLeaderboardBJ(lb) x(lb) end
---@param show boolean
---@param lb jleaderboard
function LeaderboardDisplayBJ(show, lb) x(show) x(lb) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@param label string
---@param value number
function LeaderboardAddItemBJ(whichPlayer, lb, label, value) x(whichPlayer) x(lb) x(label) x(value) end
---@param whichPlayer jplayer
---@param lb jleaderboard
function LeaderboardRemovePlayerItemBJ(whichPlayer, lb) x(whichPlayer) x(lb) end
---@param lb jleaderboard
---@param sortType number
---@param ascending boolean
function LeaderboardSortItemsBJ(lb, sortType, ascending) x(lb) x(sortType) x(ascending) end
---@param lb jleaderboard
---@param ascending boolean
function LeaderboardSortItemsByPlayerBJ(lb, ascending) x(lb) x(ascending) end
---@param lb jleaderboard
---@param ascending boolean
function LeaderboardSortItemsByLabelBJ(lb, ascending) x(lb) x(ascending) end
---@param whichPlayer jplayer
---@param lb jleaderboard
---@return number
function LeaderboardGetPlayerIndexBJ(whichPlayer, lb) x(whichPlayer) x(lb) end
---@param position number
---@param lb jleaderboard
---@return jplayer
function LeaderboardGetIndexedPlayerBJ(position, lb) x(position) x(lb) end
---@param whichPlayer jplayer
---@return jleaderboard
function PlayerGetLeaderboardBJ(whichPlayer) x(whichPlayer) end
---@return jleaderboard
function GetLastCreatedLeaderboard()  end
---@param cols number
---@param rows number
---@param title string
---@return jmultiboard
function CreateMultiboardBJ(cols, rows, title) x(cols) x(rows) x(title) end
---@param mb jmultiboard
function DestroyMultiboardBJ(mb) x(mb) end
---@return jmultiboard
function GetLastCreatedMultiboard()  end
---@param show boolean
---@param mb jmultiboard
function MultiboardDisplayBJ(show, mb) x(show) x(mb) end
---@param minimize boolean
---@param mb jmultiboard
function MultiboardMinimizeBJ(minimize, mb) x(minimize) x(mb) end
---@param mb jmultiboard
---@param red number
---@param green number
---@param blue number
---@param transparency number
function MultiboardSetTitleTextColorBJ(mb, red, green, blue, transparency) x(mb) x(red) x(green) x(blue) x(transparency) end
---@param flag boolean
function MultiboardAllowDisplayBJ(flag) x(flag) end
---@param mb jmultiboard
---@param col number
---@param row number
---@param showValue boolean
---@param showIcon boolean
function MultiboardSetItemStyleBJ(mb, col, row, showValue, showIcon) x(mb) x(col) x(row) x(showValue) x(showIcon) end
---@param mb jmultiboard
---@param col number
---@param row number
---@param val string
function MultiboardSetItemValueBJ(mb, col, row, val) x(mb) x(col) x(row) x(val) end
---@param mb jmultiboard
---@param col number
---@param row number
---@param red number
---@param green number
---@param blue number
---@param transparency number
function MultiboardSetItemColorBJ(mb, col, row, red, green, blue, transparency) x(mb) x(col) x(row) x(red) x(green) x(blue) x(transparency) end
---@param mb jmultiboard
---@param col number
---@param row number
---@param width number
function MultiboardSetItemWidthBJ(mb, col, row, width) x(mb) x(col) x(row) x(width) end
---@param mb jmultiboard
---@param col number
---@param row number
---@param iconFileName string
function MultiboardSetItemIconBJ(mb, col, row, iconFileName) x(mb) x(col) x(row) x(iconFileName) end
---@param size number
---@return number
function TextTagSize2Height(size) x(size) end
---@param speed number
---@return number
function TextTagSpeed2Velocity(speed) x(speed) end
---@param tt jtexttag
---@param red number
---@param green number
---@param blue number
---@param transparency number
function SetTextTagColorBJ(tt, red, green, blue, transparency) x(tt) x(red) x(green) x(blue) x(transparency) end
---@param tt jtexttag
---@param speed number
---@param angle number
function SetTextTagVelocityBJ(tt, speed, angle) x(tt) x(speed) x(angle) end
---@param tt jtexttag
---@param s string
---@param size number
function SetTextTagTextBJ(tt, s, size) x(tt) x(s) x(size) end
---@param tt jtexttag
---@param loc jlocation
---@param zOffset number
function SetTextTagPosBJ(tt, loc, zOffset) x(tt) x(loc) x(zOffset) end
---@param tt jtexttag
---@param whichUnit junit
---@param zOffset number
function SetTextTagPosUnitBJ(tt, whichUnit, zOffset) x(tt) x(whichUnit) x(zOffset) end
---@param tt jtexttag
---@param flag boolean
function SetTextTagSuspendedBJ(tt, flag) x(tt) x(flag) end
---@param tt jtexttag
---@param flag boolean
function SetTextTagPermanentBJ(tt, flag) x(tt) x(flag) end
---@param tt jtexttag
---@param age number
function SetTextTagAgeBJ(tt, age) x(tt) x(age) end
---@param tt jtexttag
---@param lifespan number
function SetTextTagLifespanBJ(tt, lifespan) x(tt) x(lifespan) end
---@param tt jtexttag
---@param fadepoint number
function SetTextTagFadepointBJ(tt, fadepoint) x(tt) x(fadepoint) end
---@param s string
---@param loc jlocation
---@param zOffset number
---@param size number
---@param red number
---@param green number
---@param blue number
---@param transparency number
---@return jtexttag
function CreateTextTagLocBJ(s, loc, zOffset, size, red, green, blue, transparency) x(s) x(loc) x(zOffset) x(size) x(red) x(green) x(blue) x(transparency) end
---@param s string
---@param whichUnit junit
---@param zOffset number
---@param size number
---@param red number
---@param green number
---@param blue number
---@param transparency number
---@return jtexttag
function CreateTextTagUnitBJ(s, whichUnit, zOffset, size, red, green, blue, transparency) x(s) x(whichUnit) x(zOffset) x(size) x(red) x(green) x(blue) x(transparency) end
---@param tt jtexttag
function DestroyTextTagBJ(tt) x(tt) end
---@param show boolean
---@param tt jtexttag
---@param whichForce jforce
function ShowTextTagForceBJ(show, tt, whichForce) x(show) x(tt) x(whichForce) end
---@return jtexttag
function GetLastCreatedTextTag()  end
function PauseGameOn()  end
function PauseGameOff()  end
---@param whichForce jforce
function SetUserControlForceOn(whichForce) x(whichForce) end
---@param whichForce jforce
function SetUserControlForceOff(whichForce) x(whichForce) end
---@param whichForce jforce
---@param fadeDuration number
function ShowInterfaceForceOn(whichForce, fadeDuration) x(whichForce) x(fadeDuration) end
---@param whichForce jforce
---@param fadeDuration number
function ShowInterfaceForceOff(whichForce, fadeDuration) x(whichForce) x(fadeDuration) end
---@param whichForce jforce
---@param x number
---@param y number
---@param duration number
function PingMinimapForForce(whichForce, x, y, duration) x(whichForce) x(x) x(y) x(duration) end
---@param whichForce jforce
---@param loc jlocation
---@param duration number
function PingMinimapLocForForce(whichForce, loc, duration) x(whichForce) x(loc) x(duration) end
---@param whichPlayer jplayer
---@param x number
---@param y number
---@param duration number
function PingMinimapForPlayer(whichPlayer, x, y, duration) x(whichPlayer) x(x) x(y) x(duration) end
---@param whichPlayer jplayer
---@param loc jlocation
---@param duration number
function PingMinimapLocForPlayer(whichPlayer, loc, duration) x(whichPlayer) x(loc) x(duration) end
---@param whichForce jforce
---@param x number
---@param y number
---@param duration number
---@param style number
---@param red number
---@param green number
---@param blue number
function PingMinimapForForceEx(whichForce, x, y, duration, style, red, green, blue) x(whichForce) x(x) x(y) x(duration) x(style) x(red) x(green) x(blue) end
---@param whichForce jforce
---@param loc jlocation
---@param duration number
---@param style number
---@param red number
---@param green number
---@param blue number
function PingMinimapLocForForceEx(whichForce, loc, duration, style, red, green, blue) x(whichForce) x(loc) x(duration) x(style) x(red) x(green) x(blue) end
---@param enable boolean
---@param f jforce
function EnableWorldFogBoundaryBJ(enable, f) x(enable) x(f) end
---@param enable boolean
---@param f jforce
function EnableOcclusionBJ(enable, f) x(enable) x(f) end
function CancelCineSceneBJ()  end
function TryInitCinematicBehaviorBJ()  end
---@param soundHandle jsound
---@param portraitUnitId number
---@param color jplayercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration number
---@param voiceoverDuration number
function SetCinematicSceneBJ(soundHandle, portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) x(soundHandle) x(portraitUnitId) x(color) x(speakerTitle) x(text) x(sceneDuration) x(voiceoverDuration) end
---@param soundHandle jsound
---@param timeType number
---@param timeVal number
---@return number
function GetTransmissionDuration(soundHandle, timeType, timeVal) x(soundHandle) x(timeType) x(timeVal) end
---@param soundHandle jsound
---@param timeType number
---@param timeVal number
function WaitTransmissionDuration(soundHandle, timeType, timeVal) x(soundHandle) x(timeType) x(timeVal) end
---@param unitId number
---@param color jplayercolor
---@param x number
---@param y number
---@param soundHandle jsound
---@param unitName string
---@param message string
---@param duration number
function DoTransmissionBasicsXYBJ(unitId, color, x, y, soundHandle, unitName, message, duration) x(unitId) x(color) x(x) x(y) x(soundHandle) x(unitName) x(message) x(duration) end
---@param toForce jforce
---@param whichUnit junit
---@param unitName string
---@param soundHandle jsound
---@param message string
---@param timeType number
---@param timeVal number
---@param wait boolean
function TransmissionFromUnitWithNameBJ(toForce, whichUnit, unitName, soundHandle, message, timeType, timeVal, wait) x(toForce) x(whichUnit) x(unitName) x(soundHandle) x(message) x(timeType) x(timeVal) x(wait) end
---@param toForce jforce
---@param fromPlayer jplayer
---@param unitId number
---@param unitName string
---@param loc jlocation
---@param soundHandle jsound
---@param message string
---@param timeType number
---@param timeVal number
---@param wait boolean
function TransmissionFromUnitTypeWithNameBJ(toForce, fromPlayer, unitId, unitName, loc, soundHandle, message, timeType, timeVal, wait) x(toForce) x(fromPlayer) x(unitId) x(unitName) x(loc) x(soundHandle) x(message) x(timeType) x(timeVal) x(wait) end
---@return number
function GetLastTransmissionDurationBJ()  end
---@param flag boolean
function ForceCinematicSubtitlesBJ(flag) x(flag) end
---@param cineMode boolean
---@param forForce jforce
---@param interfaceFadeTime number
function CinematicModeExBJ(cineMode, forForce, interfaceFadeTime) x(cineMode) x(forForce) x(interfaceFadeTime) end
---@param cineMode boolean
---@param forForce jforce
function CinematicModeBJ(cineMode, forForce) x(cineMode) x(forForce) end
---@param flag boolean
function DisplayCineFilterBJ(flag) x(flag) end
---@param red number
---@param green number
---@param blue number
---@param duration number
---@param tex string
---@param startTrans number
---@param endTrans number
function CinematicFadeCommonBJ(red, green, blue, duration, tex, startTrans, endTrans) x(red) x(green) x(blue) x(duration) x(tex) x(startTrans) x(endTrans) end
function FinishCinematicFadeBJ()  end
---@param duration number
function FinishCinematicFadeAfterBJ(duration) x(duration) end
function ContinueCinematicFadeBJ()  end
---@param duration number
---@param red number
---@param green number
---@param blue number
---@param trans number
---@param tex string
function ContinueCinematicFadeAfterBJ(duration, red, green, blue, trans, tex) x(duration) x(red) x(green) x(blue) x(trans) x(tex) end
function AbortCinematicFadeBJ()  end
---@param fadetype number
---@param duration number
---@param tex string
---@param red number
---@param green number
---@param blue number
---@param trans number
function CinematicFadeBJ(fadetype, duration, tex, red, green, blue, trans) x(fadetype) x(duration) x(tex) x(red) x(green) x(blue) x(trans) end
---@param duration number
---@param bmode jblendmode
---@param tex string
---@param red0 number
---@param green0 number
---@param blue0 number
---@param trans0 number
---@param red1 number
---@param green1 number
---@param blue1 number
---@param trans1 number
function CinematicFilterGenericBJ(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1) x(duration) x(bmode) x(tex) x(red0) x(green0) x(blue0) x(trans0) x(red1) x(green1) x(blue1) x(trans1) end
---@param whichUnit junit
---@param rescuer jplayer
---@param changeColor boolean
function RescueUnitBJ(whichUnit, rescuer, changeColor) x(whichUnit) x(rescuer) x(changeColor) end
function TriggerActionUnitRescuedBJ()  end
function TryInitRescuableTriggersBJ()  end
---@param changeColor boolean
function SetRescueUnitColorChangeBJ(changeColor) x(changeColor) end
---@param changeColor boolean
function SetRescueBuildingColorChangeBJ(changeColor) x(changeColor) end
function MakeUnitRescuableToForceBJEnum()  end
---@param whichUnit junit
---@param isRescuable boolean
---@param whichForce jforce
function MakeUnitRescuableToForceBJ(whichUnit, isRescuable, whichForce) x(whichUnit) x(isRescuable) x(whichForce) end
function InitRescuableBehaviorBJ()  end
---@param techid number
---@param levels number
---@param whichPlayer jplayer
function SetPlayerTechResearchedSwap(techid, levels, whichPlayer) x(techid) x(levels) x(whichPlayer) end
---@param techid number
---@param maximum number
---@param whichPlayer jplayer
function SetPlayerTechMaxAllowedSwap(techid, maximum, whichPlayer) x(techid) x(maximum) x(whichPlayer) end
---@param maximum number
---@param whichPlayer jplayer
function SetPlayerMaxHeroesAllowed(maximum, whichPlayer) x(maximum) x(whichPlayer) end
---@param techid number
---@param whichPlayer jplayer
---@return number
function GetPlayerTechCountSimple(techid, whichPlayer) x(techid) x(whichPlayer) end
---@param techid number
---@param whichPlayer jplayer
---@return number
function GetPlayerTechMaxAllowedSwap(techid, whichPlayer) x(techid) x(whichPlayer) end
---@param avail boolean
---@param abilid number
---@param whichPlayer jplayer
function SetPlayerAbilityAvailableBJ(avail, abilid, whichPlayer) x(avail) x(abilid) x(whichPlayer) end
---@param campaignNumber number
function SetCampaignMenuRaceBJ(campaignNumber) x(campaignNumber) end
---@param available boolean
---@param missionIndex number
function SetMissionAvailableBJ(available, missionIndex) x(available) x(missionIndex) end
---@param available boolean
---@param campaignNumber number
function SetCampaignAvailableBJ(available, campaignNumber) x(available) x(campaignNumber) end
---@param available boolean
---@param cinematicIndex number
function SetCinematicAvailableBJ(available, cinematicIndex) x(available) x(cinematicIndex) end
---@param campaignFile string
---@return jgamecache
function InitGameCacheBJ(campaignFile) x(campaignFile) end
---@param cache jgamecache
---@return boolean
function SaveGameCacheBJ(cache) x(cache) end
---@return jgamecache
function GetLastCreatedGameCacheBJ()  end
---@return jhashtable
function InitHashtableBJ()  end
---@return jhashtable
function GetLastCreatedHashtableBJ()  end
---@param value number
---@param key string
---@param missionKey string
---@param cache jgamecache
function StoreRealBJ(value, key, missionKey, cache) x(value) x(key) x(missionKey) x(cache) end
---@param value number
---@param key string
---@param missionKey string
---@param cache jgamecache
function StoreIntegerBJ(value, key, missionKey, cache) x(value) x(key) x(missionKey) x(cache) end
---@param value boolean
---@param key string
---@param missionKey string
---@param cache jgamecache
function StoreBooleanBJ(value, key, missionKey, cache) x(value) x(key) x(missionKey) x(cache) end
---@param value string
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return boolean
function StoreStringBJ(value, key, missionKey, cache) x(value) x(key) x(missionKey) x(cache) end
---@param whichUnit junit
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return boolean
function StoreUnitBJ(whichUnit, key, missionKey, cache) x(whichUnit) x(key) x(missionKey) x(cache) end
---@param value number
---@param key number
---@param missionKey number
---@param table jhashtable
function SaveRealBJ(value, key, missionKey, table) x(value) x(key) x(missionKey) x(table) end
---@param value number
---@param key number
---@param missionKey number
---@param table jhashtable
function SaveIntegerBJ(value, key, missionKey, table) x(value) x(key) x(missionKey) x(table) end
---@param value boolean
---@param key number
---@param missionKey number
---@param table jhashtable
function SaveBooleanBJ(value, key, missionKey, table) x(value) x(key) x(missionKey) x(table) end
---@param value string
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveStringBJ(value, key, missionKey, table) x(value) x(key) x(missionKey) x(table) end
---@param whichPlayer jplayer
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SavePlayerHandleBJ(whichPlayer, key, missionKey, table) x(whichPlayer) x(key) x(missionKey) x(table) end
---@param whichWidget jwidget
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveWidgetHandleBJ(whichWidget, key, missionKey, table) x(whichWidget) x(key) x(missionKey) x(table) end
---@param whichDestructable jdestructable
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveDestructableHandleBJ(whichDestructable, key, missionKey, table) x(whichDestructable) x(key) x(missionKey) x(table) end
---@param whichItem jitem
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveItemHandleBJ(whichItem, key, missionKey, table) x(whichItem) x(key) x(missionKey) x(table) end
---@param whichUnit junit
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveUnitHandleBJ(whichUnit, key, missionKey, table) x(whichUnit) x(key) x(missionKey) x(table) end
---@param whichAbility jability
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveAbilityHandleBJ(whichAbility, key, missionKey, table) x(whichAbility) x(key) x(missionKey) x(table) end
---@param whichTimer jtimer
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTimerHandleBJ(whichTimer, key, missionKey, table) x(whichTimer) x(key) x(missionKey) x(table) end
---@param whichTrigger jtrigger
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTriggerHandleBJ(whichTrigger, key, missionKey, table) x(whichTrigger) x(key) x(missionKey) x(table) end
---@param whichTriggercondition jtriggercondition
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTriggerConditionHandleBJ(whichTriggercondition, key, missionKey, table) x(whichTriggercondition) x(key) x(missionKey) x(table) end
---@param whichTriggeraction jtriggeraction
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTriggerActionHandleBJ(whichTriggeraction, key, missionKey, table) x(whichTriggeraction) x(key) x(missionKey) x(table) end
---@param whichEvent jevent
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTriggerEventHandleBJ(whichEvent, key, missionKey, table) x(whichEvent) x(key) x(missionKey) x(table) end
---@param whichForce jforce
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveForceHandleBJ(whichForce, key, missionKey, table) x(whichForce) x(key) x(missionKey) x(table) end
---@param whichGroup jgroup
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveGroupHandleBJ(whichGroup, key, missionKey, table) x(whichGroup) x(key) x(missionKey) x(table) end
---@param whichLocation jlocation
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveLocationHandleBJ(whichLocation, key, missionKey, table) x(whichLocation) x(key) x(missionKey) x(table) end
---@param whichRect jrect
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveRectHandleBJ(whichRect, key, missionKey, table) x(whichRect) x(key) x(missionKey) x(table) end
---@param whichBoolexpr jboolexpr
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveBooleanExprHandleBJ(whichBoolexpr, key, missionKey, table) x(whichBoolexpr) x(key) x(missionKey) x(table) end
---@param whichSound jsound
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveSoundHandleBJ(whichSound, key, missionKey, table) x(whichSound) x(key) x(missionKey) x(table) end
---@param whichEffect jeffect
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveEffectHandleBJ(whichEffect, key, missionKey, table) x(whichEffect) x(key) x(missionKey) x(table) end
---@param whichUnitpool junitpool
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveUnitPoolHandleBJ(whichUnitpool, key, missionKey, table) x(whichUnitpool) x(key) x(missionKey) x(table) end
---@param whichItempool jitempool
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveItemPoolHandleBJ(whichItempool, key, missionKey, table) x(whichItempool) x(key) x(missionKey) x(table) end
---@param whichQuest jquest
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveQuestHandleBJ(whichQuest, key, missionKey, table) x(whichQuest) x(key) x(missionKey) x(table) end
---@param whichQuestitem jquestitem
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveQuestItemHandleBJ(whichQuestitem, key, missionKey, table) x(whichQuestitem) x(key) x(missionKey) x(table) end
---@param whichDefeatcondition jdefeatcondition
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveDefeatConditionHandleBJ(whichDefeatcondition, key, missionKey, table) x(whichDefeatcondition) x(key) x(missionKey) x(table) end
---@param whichTimerdialog jtimerdialog
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTimerDialogHandleBJ(whichTimerdialog, key, missionKey, table) x(whichTimerdialog) x(key) x(missionKey) x(table) end
---@param whichLeaderboard jleaderboard
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveLeaderboardHandleBJ(whichLeaderboard, key, missionKey, table) x(whichLeaderboard) x(key) x(missionKey) x(table) end
---@param whichMultiboard jmultiboard
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveMultiboardHandleBJ(whichMultiboard, key, missionKey, table) x(whichMultiboard) x(key) x(missionKey) x(table) end
---@param whichMultiboarditem jmultiboarditem
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveMultiboardItemHandleBJ(whichMultiboarditem, key, missionKey, table) x(whichMultiboarditem) x(key) x(missionKey) x(table) end
---@param whichTrackable jtrackable
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTrackableHandleBJ(whichTrackable, key, missionKey, table) x(whichTrackable) x(key) x(missionKey) x(table) end
---@param whichDialog jdialog
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveDialogHandleBJ(whichDialog, key, missionKey, table) x(whichDialog) x(key) x(missionKey) x(table) end
---@param whichButton jbutton
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveButtonHandleBJ(whichButton, key, missionKey, table) x(whichButton) x(key) x(missionKey) x(table) end
---@param whichTexttag jtexttag
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveTextTagHandleBJ(whichTexttag, key, missionKey, table) x(whichTexttag) x(key) x(missionKey) x(table) end
---@param whichLightning jlightning
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveLightningHandleBJ(whichLightning, key, missionKey, table) x(whichLightning) x(key) x(missionKey) x(table) end
---@param whichImage jimage
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveImageHandleBJ(whichImage, key, missionKey, table) x(whichImage) x(key) x(missionKey) x(table) end
---@param whichUbersplat jubersplat
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveUbersplatHandleBJ(whichUbersplat, key, missionKey, table) x(whichUbersplat) x(key) x(missionKey) x(table) end
---@param whichRegion jregion
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveRegionHandleBJ(whichRegion, key, missionKey, table) x(whichRegion) x(key) x(missionKey) x(table) end
---@param whichFogState jfogstate
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveFogStateHandleBJ(whichFogState, key, missionKey, table) x(whichFogState) x(key) x(missionKey) x(table) end
---@param whichFogModifier jfogmodifier
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveFogModifierHandleBJ(whichFogModifier, key, missionKey, table) x(whichFogModifier) x(key) x(missionKey) x(table) end
---@param whichAgent jagent
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveAgentHandleBJ(whichAgent, key, missionKey, table) x(whichAgent) x(key) x(missionKey) x(table) end
---@param whichHashtable jhashtable
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function SaveHashtableHandleBJ(whichHashtable, key, missionKey, table) x(whichHashtable) x(key) x(missionKey) x(table) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return number
function GetStoredRealBJ(key, missionKey, cache) x(key) x(missionKey) x(cache) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return number
function GetStoredIntegerBJ(key, missionKey, cache) x(key) x(missionKey) x(cache) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return boolean
function GetStoredBooleanBJ(key, missionKey, cache) x(key) x(missionKey) x(cache) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@return string
function GetStoredStringBJ(key, missionKey, cache) x(key) x(missionKey) x(cache) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return number
function LoadRealBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return number
function LoadIntegerBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return boolean
function LoadBooleanBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return string
function LoadStringBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jplayer
function LoadPlayerHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jwidget
function LoadWidgetHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jdestructable
function LoadDestructableHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jitem
function LoadItemHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return junit
function LoadUnitHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jability
function LoadAbilityHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtimer
function LoadTimerHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtrigger
function LoadTriggerHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtriggercondition
function LoadTriggerConditionHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtriggeraction
function LoadTriggerActionHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jevent
function LoadTriggerEventHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jforce
function LoadForceHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jgroup
function LoadGroupHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jlocation
function LoadLocationHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jrect
function LoadRectHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jboolexpr
function LoadBooleanExprHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jsound
function LoadSoundHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jeffect
function LoadEffectHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return junitpool
function LoadUnitPoolHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jitempool
function LoadItemPoolHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jquest
function LoadQuestHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jquestitem
function LoadQuestItemHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jdefeatcondition
function LoadDefeatConditionHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtimerdialog
function LoadTimerDialogHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jleaderboard
function LoadLeaderboardHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jmultiboard
function LoadMultiboardHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jmultiboarditem
function LoadMultiboardItemHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtrackable
function LoadTrackableHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jdialog
function LoadDialogHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jbutton
function LoadButtonHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jtexttag
function LoadTextTagHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jlightning
function LoadLightningHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jimage
function LoadImageHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jubersplat
function LoadUbersplatHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jregion
function LoadRegionHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jfogstate
function LoadFogStateHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jfogmodifier
function LoadFogModifierHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key number
---@param missionKey number
---@param table jhashtable
---@return jhashtable
function LoadHashtableHandleBJ(key, missionKey, table) x(key) x(missionKey) x(table) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@param forWhichPlayer jplayer
---@param loc jlocation
---@param facing number
---@return junit
function RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, facing) x(key) x(missionKey) x(cache) x(forWhichPlayer) x(loc) x(facing) end
---@param key string
---@param missionKey string
---@param cache jgamecache
---@param forWhichPlayer jplayer
---@param loc jlocation
---@param lookAt jlocation
---@return junit
function RestoreUnitLocFacingPointBJ(key, missionKey, cache, forWhichPlayer, loc, lookAt) x(key) x(missionKey) x(cache) x(forWhichPlayer) x(loc) x(lookAt) end
---@return junit
function GetLastRestoredUnitBJ()  end
---@param cache jgamecache
function FlushGameCacheBJ(cache) x(cache) end
---@param missionKey string
---@param cache jgamecache
function FlushStoredMissionBJ(missionKey, cache) x(missionKey) x(cache) end
---@param table jhashtable
function FlushParentHashtableBJ(table) x(table) end
---@param missionKey number
---@param table jhashtable
function FlushChildHashtableBJ(missionKey, table) x(missionKey) x(table) end
---@param key string
---@param valueType number
---@param missionKey string
---@param cache jgamecache
---@return boolean
function HaveStoredValue(key, valueType, missionKey, cache) x(key) x(valueType) x(missionKey) x(cache) end
---@param key number
---@param valueType number
---@param missionKey number
---@param table jhashtable
---@return boolean
function HaveSavedValue(key, valueType, missionKey, table) x(key) x(valueType) x(missionKey) x(table) end
---@param show boolean
---@param whichButton number
function ShowCustomCampaignButton(show, whichButton) x(show) x(whichButton) end
---@param whichButton number
---@return boolean
function IsCustomCampaignButtonVisibile(whichButton) x(whichButton) end
---@param loadFileName string
---@param doScoreScreen boolean
function LoadGameBJ(loadFileName, doScoreScreen) x(loadFileName) x(doScoreScreen) end
---@param saveFileName string
---@param newLevel string
---@param doScoreScreen boolean
function SaveAndChangeLevelBJ(saveFileName, newLevel, doScoreScreen) x(saveFileName) x(newLevel) x(doScoreScreen) end
---@param saveFileName string
---@param loadFileName string
---@param doScoreScreen boolean
function SaveAndLoadGameBJ(saveFileName, loadFileName, doScoreScreen) x(saveFileName) x(loadFileName) x(doScoreScreen) end
---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectoryBJ(sourceDirName, destDirName) x(sourceDirName) x(destDirName) end
---@param sourceDirName string
---@return boolean
function RemoveSaveDirectoryBJ(sourceDirName) x(sourceDirName) end
---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGameBJ(sourceSaveName, destSaveName) x(sourceSaveName) x(destSaveName) end
---@param whichPlayer jplayer
---@return number
function GetPlayerStartLocationX(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function GetPlayerStartLocationY(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return jlocation
function GetPlayerStartLocationLoc(whichPlayer) x(whichPlayer) end
---@param whichRect jrect
---@return jlocation
function GetRectCenter(whichRect) x(whichRect) end
---@param whichPlayer jplayer
---@param whichState jplayerslotstate
---@return boolean
function IsPlayerSlotState(whichPlayer, whichState) x(whichPlayer) x(whichState) end
---@param seconds number
---@return number
function GetFadeFromSeconds(seconds) x(seconds) end
---@param seconds number
---@return number
function GetFadeFromSecondsAsReal(seconds) x(seconds) end
---@param whichPlayer jplayer
---@param whichPlayerState jplayerstate
---@param delta number
function AdjustPlayerStateSimpleBJ(whichPlayer, whichPlayerState, delta) x(whichPlayer) x(whichPlayerState) x(delta) end
---@param delta number
---@param whichPlayer jplayer
---@param whichPlayerState jplayerstate
function AdjustPlayerStateBJ(delta, whichPlayer, whichPlayerState) x(delta) x(whichPlayer) x(whichPlayerState) end
---@param whichPlayer jplayer
---@param whichPlayerState jplayerstate
---@param value number
function SetPlayerStateBJ(whichPlayer, whichPlayerState, value) x(whichPlayer) x(whichPlayerState) x(value) end
---@param whichPlayerFlag jplayerstate
---@param flag boolean
---@param whichPlayer jplayer
function SetPlayerFlagBJ(whichPlayerFlag, flag, whichPlayer) x(whichPlayerFlag) x(flag) x(whichPlayer) end
---@param rate number
---@param whichResource jplayerstate
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
function SetPlayerTaxRateBJ(rate, whichResource, sourcePlayer, otherPlayer) x(rate) x(whichResource) x(sourcePlayer) x(otherPlayer) end
---@param whichResource jplayerstate
---@param sourcePlayer jplayer
---@param otherPlayer jplayer
---@return number
function GetPlayerTaxRateBJ(whichResource, sourcePlayer, otherPlayer) x(whichResource) x(sourcePlayer) x(otherPlayer) end
---@param whichPlayerFlag jplayerstate
---@param whichPlayer jplayer
---@return boolean
function IsPlayerFlagSetBJ(whichPlayerFlag, whichPlayer) x(whichPlayerFlag) x(whichPlayer) end
---@param delta number
---@param whichUnit junit
function AddResourceAmountBJ(delta, whichUnit) x(delta) x(whichUnit) end
---@param whichPlayer jplayer
---@return number
function GetConvertedPlayerId(whichPlayer) x(whichPlayer) end
---@param convertedPlayerId number
---@return jplayer
function ConvertedPlayer(convertedPlayerId) x(convertedPlayerId) end
---@param r jrect
---@return number
function GetRectWidthBJ(r) x(r) end
---@param r jrect
---@return number
function GetRectHeightBJ(r) x(r) end
---@param goldMine junit
---@param whichPlayer jplayer
---@return junit
function BlightGoldMineForPlayerBJ(goldMine, whichPlayer) x(goldMine) x(whichPlayer) end
---@param goldMine junit
---@param whichPlayer jplayer
---@return junit
function BlightGoldMineForPlayer(goldMine, whichPlayer) x(goldMine) x(whichPlayer) end
---@return junit
function GetLastHauntedGoldMine()  end
---@param where jlocation
---@return boolean
function IsPointBlightedBJ(where) x(where) end
function SetPlayerColorBJEnum()  end
---@param whichPlayer jplayer
---@param color jplayercolor
---@param changeExisting boolean
function SetPlayerColorBJ(whichPlayer, color, changeExisting) x(whichPlayer) x(color) x(changeExisting) end
---@param unitId number
---@param allowed boolean
---@param whichPlayer jplayer
function SetPlayerUnitAvailableBJ(unitId, allowed, whichPlayer) x(unitId) x(allowed) x(whichPlayer) end
function LockGameSpeedBJ()  end
function UnlockGameSpeedBJ()  end
---@param whichUnit junit
---@param order string
---@param targetWidget jwidget
---@return boolean
function IssueTargetOrderBJ(whichUnit, order, targetWidget) x(whichUnit) x(order) x(targetWidget) end
---@param whichUnit junit
---@param order string
---@param whichLocation jlocation
---@return boolean
function IssuePointOrderLocBJ(whichUnit, order, whichLocation) x(whichUnit) x(order) x(whichLocation) end
---@param whichUnit junit
---@param order string
---@param targetWidget jwidget
---@return boolean
function IssueTargetDestructableOrder(whichUnit, order, targetWidget) x(whichUnit) x(order) x(targetWidget) end
---@param whichUnit junit
---@param order string
---@param targetWidget jwidget
---@return boolean
function IssueTargetItemOrder(whichUnit, order, targetWidget) x(whichUnit) x(order) x(targetWidget) end
---@param whichUnit junit
---@param order string
---@return boolean
function IssueImmediateOrderBJ(whichUnit, order) x(whichUnit) x(order) end
---@param whichGroup jgroup
---@param order string
---@param targetWidget jwidget
---@return boolean
function GroupTargetOrderBJ(whichGroup, order, targetWidget) x(whichGroup) x(order) x(targetWidget) end
---@param whichGroup jgroup
---@param order string
---@param whichLocation jlocation
---@return boolean
function GroupPointOrderLocBJ(whichGroup, order, whichLocation) x(whichGroup) x(order) x(whichLocation) end
---@param whichGroup jgroup
---@param order string
---@return boolean
function GroupImmediateOrderBJ(whichGroup, order) x(whichGroup) x(order) end
---@param whichGroup jgroup
---@param order string
---@param targetWidget jwidget
---@return boolean
function GroupTargetDestructableOrder(whichGroup, order, targetWidget) x(whichGroup) x(order) x(targetWidget) end
---@param whichGroup jgroup
---@param order string
---@param targetWidget jwidget
---@return boolean
function GroupTargetItemOrder(whichGroup, order, targetWidget) x(whichGroup) x(order) x(targetWidget) end
---@return jdestructable
function GetDyingDestructable()  end
---@param whichUnit junit
---@param targPos jlocation
function SetUnitRallyPoint(whichUnit, targPos) x(whichUnit) x(targPos) end
---@param whichUnit junit
---@param targUnit junit
function SetUnitRallyUnit(whichUnit, targUnit) x(whichUnit) x(targUnit) end
---@param whichUnit junit
---@param targDest jdestructable
function SetUnitRallyDestructable(whichUnit, targDest) x(whichUnit) x(targDest) end
function SaveDyingWidget()  end
---@param addBlight boolean
---@param whichPlayer jplayer
---@param r jrect
function SetBlightRectBJ(addBlight, whichPlayer, r) x(addBlight) x(whichPlayer) x(r) end
---@param addBlight boolean
---@param whichPlayer jplayer
---@param loc jlocation
---@param radius number
function SetBlightRadiusLocBJ(addBlight, whichPlayer, loc, radius) x(addBlight) x(whichPlayer) x(loc) x(radius) end
---@param abilcode number
---@return string
function GetAbilityName(abilcode) x(abilcode) end
function MeleeStartingVisibility()  end
function MeleeStartingResources()  end
---@param whichPlayer jplayer
---@param techId number
---@param limit number
function ReducePlayerTechMaxAllowed(whichPlayer, techId, limit) x(whichPlayer) x(techId) x(limit) end
function MeleeStartingHeroLimit()  end
---@return boolean
function MeleeTrainedUnitIsHeroBJFilter()  end
---@param whichUnit junit
function MeleeGrantItemsToHero(whichUnit) x(whichUnit) end
function MeleeGrantItemsToTrainedHero()  end
function MeleeGrantItemsToHiredHero()  end
function MeleeGrantHeroItems()  end
function MeleeClearExcessUnit()  end
---@param x number
---@param y number
---@param range number
function MeleeClearNearbyUnits(x, y, range) x(x) x(y) x(range) end
function MeleeClearExcessUnits()  end
function MeleeEnumFindNearestMine()  end
---@param src jlocation
---@param range number
---@return junit
function MeleeFindNearestMine(src, range) x(src) x(range) end
---@param p jplayer
---@param id1 number
---@param id2 number
---@param id3 number
---@param id4 number
---@param loc jlocation
---@return junit
function MeleeRandomHeroLoc(p, id1, id2, id3, id4, loc) x(p) x(id1) x(id2) x(id3) x(id4) x(loc) end
---@param src jlocation
---@param targ jlocation
---@param distance number
---@param deltaAngle number
---@return jlocation
function MeleeGetProjectedLoc(src, targ, distance, deltaAngle) x(src) x(targ) x(distance) x(deltaAngle) end
---@param val number
---@param minVal number
---@param maxVal number
---@return number
function MeleeGetNearestValueWithin(val, minVal, maxVal) x(val) x(minVal) x(maxVal) end
---@param src jlocation
---@param r jrect
---@return jlocation
function MeleeGetLocWithinRect(src, r) x(src) x(r) end
---@param whichPlayer jplayer
---@param startLoc jlocation
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsHuman(whichPlayer, startLoc, doHeroes, doCamera, doPreload) x(whichPlayer) x(startLoc) x(doHeroes) x(doCamera) x(doPreload) end
---@param whichPlayer jplayer
---@param startLoc jlocation
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsOrc(whichPlayer, startLoc, doHeroes, doCamera, doPreload) x(whichPlayer) x(startLoc) x(doHeroes) x(doCamera) x(doPreload) end
---@param whichPlayer jplayer
---@param startLoc jlocation
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsUndead(whichPlayer, startLoc, doHeroes, doCamera, doPreload) x(whichPlayer) x(startLoc) x(doHeroes) x(doCamera) x(doPreload) end
---@param whichPlayer jplayer
---@param startLoc jlocation
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsNightElf(whichPlayer, startLoc, doHeroes, doCamera, doPreload) x(whichPlayer) x(startLoc) x(doHeroes) x(doCamera) x(doPreload) end
---@param whichPlayer jplayer
---@param startLoc jlocation
---@param doHeroes boolean
---@param doCamera boolean
---@param doPreload boolean
function MeleeStartingUnitsUnknownRace(whichPlayer, startLoc, doHeroes, doCamera, doPreload) x(whichPlayer) x(startLoc) x(doHeroes) x(doCamera) x(doPreload) end
function MeleeStartingUnits()  end
---@param whichRace jrace
---@param whichPlayer jplayer
---@param loc jlocation
---@param doHeroes boolean
function MeleeStartingUnitsForPlayer(whichRace, whichPlayer, loc, doHeroes) x(whichRace) x(whichPlayer) x(loc) x(doHeroes) end
---@param num jplayer
---@param s1 string
---@param s2 string
---@param s3 string
function PickMeleeAI(num, s1, s2, s3) x(num) x(s1) x(s2) x(s3) end
function MeleeStartingAI()  end
---@param targ junit
function LockGuardPosition(targ) x(targ) end
---@param playerIndex number
---@param opponentIndex number
---@return boolean
function MeleePlayerIsOpponent(playerIndex, opponentIndex) x(playerIndex) x(opponentIndex) end
---@param whichPlayer jplayer
---@return number
function MeleeGetAllyStructureCount(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function MeleeGetAllyCount(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return number
function MeleeGetAllyKeyStructureCount(whichPlayer) x(whichPlayer) end
function MeleeDoDrawEnum()  end
function MeleeDoVictoryEnum()  end
---@param whichPlayer jplayer
function MeleeDoDefeat(whichPlayer) x(whichPlayer) end
function MeleeDoDefeatEnum()  end
---@param whichPlayer jplayer
function MeleeDoLeave(whichPlayer) x(whichPlayer) end
function MeleeRemoveObservers()  end
---@return jforce
function MeleeCheckForVictors()  end
function MeleeCheckForLosersAndVictors()  end
---@param whichPlayer jplayer
---@return string
function MeleeGetCrippledWarningMessage(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return string
function MeleeGetCrippledTimerMessage(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@return string
function MeleeGetCrippledRevealedMessage(whichPlayer) x(whichPlayer) end
---@param whichPlayer jplayer
---@param expose boolean
function MeleeExposePlayer(whichPlayer, expose) x(whichPlayer) x(expose) end
function MeleeExposeAllPlayers()  end
function MeleeCrippledPlayerTimeout()  end
---@param whichPlayer jplayer
---@return boolean
function MeleePlayerIsCrippled(whichPlayer) x(whichPlayer) end
function MeleeCheckForCrippledPlayers()  end
---@param lostUnit junit
function MeleeCheckLostUnit(lostUnit) x(lostUnit) end
---@param addedUnit junit
function MeleeCheckAddedUnit(addedUnit) x(addedUnit) end
function MeleeTriggerActionConstructCancel()  end
function MeleeTriggerActionUnitDeath()  end
function MeleeTriggerActionUnitConstructionStart()  end
function MeleeTriggerActionPlayerDefeated()  end
function MeleeTriggerActionPlayerLeft()  end
function MeleeTriggerActionAllianceChange()  end
function MeleeTriggerTournamentFinishSoon()  end
---@param whichPlayer jplayer
---@return boolean
function MeleeWasUserPlayer(whichPlayer) x(whichPlayer) end
---@param multiplier number
function MeleeTournamentFinishNowRuleA(multiplier) x(multiplier) end
function MeleeTriggerTournamentFinishNow()  end
function MeleeInitVictoryDefeat()  end
function CheckInitPlayerSlotAvailability()  end
---@param whichPlayer jplayer
---@param control jmapcontrol
function SetPlayerSlotAvailable(whichPlayer, control) x(whichPlayer) x(control) end
---@param teamCount number
function TeamInitPlayerSlots(teamCount) x(teamCount) end
function MeleeInitPlayerSlots()  end
function FFAInitPlayerSlots()  end
function OneOnOneInitPlayerSlots()  end
function InitGenericPlayerSlots()  end
function SetDNCSoundsDawn()  end
function SetDNCSoundsDusk()  end
function SetDNCSoundsDay()  end
function SetDNCSoundsNight()  end
function InitDNCSounds()  end
function InitBlizzardGlobals()  end
function InitQueuedTriggers()  end
function InitMapRects()  end
function InitSummonableCaps()  end
---@param whichItem jitem
function UpdateStockAvailability(whichItem) x(whichItem) end
function UpdateEachStockBuildingEnum()  end
---@param iType jitemtype
---@param iLevel number
function UpdateEachStockBuilding(iType, iLevel) x(iType) x(iLevel) end
function PerformStockUpdates()  end
function StartStockUpdates()  end
function RemovePurchasedItem()  end
function InitNeutralBuildings()  end
function MarkGameStarted()  end
function DetectGameStarted()  end
function InitBlizzard()  end
function RandomDistReset()  end
---@param inID number
---@param inChance number
function RandomDistAddItem(inID, inChance) x(inID) x(inChance) end
---@return number
function RandomDistChoose()  end
---@param inUnit junit
---@param inItemID number
---@return jitem
function UnitDropItem(inUnit, inItemID) x(inUnit) x(inItemID) end
---@param inWidget jwidget
---@param inItemID number
---@return jitem
function WidgetDropItem(inWidget, inItemID) x(inWidget) x(inItemID) end
---@return boolean
function BlzIsLastInstanceObjectFunctionSuccessful()  end
---@param whichAbility jability
---@param whichField jabilitybooleanfield
---@param value boolean
function BlzSetAbilityBooleanFieldBJ(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerfield
---@param value number
function BlzSetAbilityIntegerFieldBJ(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilityrealfield
---@param value number
function BlzSetAbilityRealFieldBJ(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringfield
---@param value string
function BlzSetAbilityStringFieldBJ(whichAbility, whichField, value) x(whichAbility) x(whichField) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelfield
---@param level number
---@param value boolean
function BlzSetAbilityBooleanLevelFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelfield
---@param level number
---@param value number
function BlzSetAbilityIntegerLevelFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelfield
---@param level number
---@param value number
function BlzSetAbilityRealLevelFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelfield
---@param level number
---@param value string
function BlzSetAbilityStringLevelFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param index number
---@param value boolean
function BlzSetAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param index number
---@param value number
function BlzSetAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param index number
---@param value number
function BlzSetAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param index number
---@param value string
function BlzSetAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, index, value) x(whichAbility) x(whichField) x(level) x(index) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param value boolean
function BlzAddAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param value number
function BlzAddAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param value number
function BlzAddAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param value string
function BlzAddAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitybooleanlevelarrayfield
---@param level number
---@param value boolean
function BlzRemoveAbilityBooleanLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityintegerlevelarrayfield
---@param level number
---@param value number
function BlzRemoveAbilityIntegerLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilityreallevelarrayfield
---@param level number
---@param value number
function BlzRemoveAbilityRealLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichAbility jability
---@param whichField jabilitystringlevelarrayfield
---@param level number
---@param value string
function BlzRemoveAbilityStringLevelArrayFieldBJ(whichAbility, whichField, level, value) x(whichAbility) x(whichField) x(level) x(value) end
---@param whichItem jitem
---@param abilCode number
function BlzItemAddAbilityBJ(whichItem, abilCode) x(whichItem) x(abilCode) end
---@param whichItem jitem
---@param abilCode number
function BlzItemRemoveAbilityBJ(whichItem, abilCode) x(whichItem) x(abilCode) end
---@param whichItem jitem
---@param whichField jitembooleanfield
---@param value boolean
function BlzSetItemBooleanFieldBJ(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemintegerfield
---@param value number
function BlzSetItemIntegerFieldBJ(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemrealfield
---@param value number
function BlzSetItemRealFieldBJ(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichItem jitem
---@param whichField jitemstringfield
---@param value string
function BlzSetItemStringFieldBJ(whichItem, whichField, value) x(whichItem) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitbooleanfield
---@param value boolean
function BlzSetUnitBooleanFieldBJ(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitintegerfield
---@param value number
function BlzSetUnitIntegerFieldBJ(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitrealfield
---@param value number
function BlzSetUnitRealFieldBJ(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitstringfield
---@param value string
function BlzSetUnitStringFieldBJ(whichUnit, whichField, value) x(whichUnit) x(whichField) x(value) end
---@param whichUnit junit
---@param whichField junitweaponbooleanfield
---@param index number
---@param value boolean
function BlzSetUnitWeaponBooleanFieldBJ(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponintegerfield
---@param index number
---@param value number
function BlzSetUnitWeaponIntegerFieldBJ(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponrealfield
---@param index number
---@param value number
function BlzSetUnitWeaponRealFieldBJ(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
---@param whichUnit junit
---@param whichField junitweaponstringfield
---@param index number
---@param value string
function BlzSetUnitWeaponStringFieldBJ(whichUnit, whichField, index, value) x(whichUnit) x(whichField) x(index) x(value) end
