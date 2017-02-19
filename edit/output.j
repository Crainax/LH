globals
//globals from YDWEBaseCommon:
constant boolean LIBRARY_YDWEBaseCommon=true
trigger array AbilityCastingOverEventQueue
integer array AbilityCastingOverEventType
integer AbilityCastingOverEventNumber= 0
//endglobals from YDWEBaseCommon
//globals from YDWEBaseHashtable:
constant boolean LIBRARY_YDWEBaseHashtable=true
//ȫ�ֹ�ϣ�� 
hashtable YDHT= null
//endglobals from YDWEBaseHashtable
//globals from YDWESetGuard:
constant boolean LIBRARY_YDWESetGuard=true
//endglobals from YDWESetGuard
//globals from YDWETimerPattern:
constant boolean LIBRARY_YDWETimerPattern=true
boolexpr YDWETimerPattern___Bexpr= null
rect YDWETimerPattern___Area= null
integer YDWETimerPattern___tmp_data
location YDWETimerPattern___yd_loc= Location(0.0, 0.0)
//endglobals from YDWETimerPattern
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem___CurrentTime
integer YDWETimerSystem___CurrentIndex
integer YDWETimerSystem___TaskListHead
integer YDWETimerSystem___TaskListIdleHead
integer YDWETimerSystem___TaskListIdleMax
integer array YDWETimerSystem___TaskListIdle
integer array YDWETimerSystem___TaskListNext
integer array YDWETimerSystem___TaskListTime
trigger array YDWETimerSystem___TaskListProc
trigger YDWETimerSystem___fnRemoveUnit
trigger YDWETimerSystem___fnDestroyTimer
trigger YDWETimerSystem___fnRemoveItem
trigger YDWETimerSystem___fnDestroyEffect
trigger YDWETimerSystem___fnDestroyLightning
trigger YDWETimerSystem___fnRunTrigger
timer YDWETimerSystem___Timer
integer YDWETimerSystem___TimerHandle

integer YDWETimerSystem___TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger array YDWETriggerEvent___DamageEventQueue
integer YDWETriggerEvent___DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent___MoveItemEventTrigger= null
trigger array YDWETriggerEvent___MoveItemEventQueue
integer YDWETriggerEvent___MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from Test:
constant boolean LIBRARY_Test=true
		
	//主基地的区域
rect gg_rct________1
	//难度等级，最高7
integer udg_Nandu_JJJ
	//冥王
unit gg_unit_Nkjx_0241
        //左
unit gg_unit_Uear_0242
        //右
unit gg_unit_Npld_0253
        //英雄
unit array udg_H
        //技能伤害
real array udg_I_Jinengjiacheng
        //增益
real array udg_I_Xianglian
        //触发,属性刷新
trigger gg_trg_D7
        //波数
integer udg_Bo
        //排行榜
integer array udg_Paihangbang
        //基地
unit gg_unit_haro_0030

        
rect gg_rct_Arena_1
rect gg_rct_Arena_2
rect gg_rct_Arena_all
rect gg_rct_Arena_forbit

        
sound gg_snd_GoodJob
sound gg_snd_Jidibeida

        
unit gg_unit_nmgv_0193
unit gg_unit_nmgv_0194
unit gg_unit_nmgv_0195
unit gg_unit_nmgv_0196
unit gg_unit_nmgv_0197
unit gg_unit_nmgv_0198

        
integer array udg_gold
real array udg_I_Jinqianhuodelv

        
integer udg_RENSHU

        
multiboard udg_D

        
integer array udg_I_Lianyu
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero
        
unit array UDepot
//endglobals from LHBase
//globals from Exercise:
constant boolean LIBRARY_Exercise=true
rect array regionAll
		//怪物的区域
rect array regionM1
rect array regionM2
rect array regionM3
rect array regionM4
rect array regionM5
rect array regionM6
timer array Exercise___TiExercise
//endglobals from Exercise
//globals from Multiboard:
constant boolean LIBRARY_Multiboard=true
		
integer array centerCredit

//endglobals from Multiboard
//globals from PIV:
constant boolean LIBRARY_PIV=true
boolean array sPIV
//endglobals from PIV
//globals from CenterCredit:
constant boolean LIBRARY_CenterCredit=true
constant integer CenterCredit___CREDIT_SOLIDER_1= 2500
constant integer CenterCredit___CREDIT_SOLIDER_2= 5000
constant integer CenterCredit___CREDIT_SOLIDER_3= 8000
constant integer CenterCredit___CREDIT_SOLIDER_4= 15000
//endglobals from CenterCredit
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
//全局系统变量
unit bj_lastAbilityCastingUnit=null
unit bj_lastAbilityTargetUnit=null
unit bj_lastPoolAbstractedUnit=null
unitpool bj_lastCreatedUnitPool=null
item bj_lastPoolAbstractedItem=null
itempool bj_lastCreatedItemPool=null
attacktype bj_lastSetAttackType= ATTACK_TYPE_NORMAL
damagetype bj_lastSetDamageType= DAMAGE_TYPE_NORMAL
weapontype bj_lastSetWeaponType= WEAPON_TYPE_WHOKNOWS
real yd_MapMaxX= 0
real yd_MapMinX= 0
real yd_MapMaxY= 0
real yd_MapMinY= 0
string array yd_PlayerColor

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library YDWEBaseCommon:

function YDWECoordinateX takes real x returns real
    return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
endfunction

function YDWECoordinateY takes real y returns real
    return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
endfunction
//两个单位之间的距离
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
endfunction
//两个单位之间的角度
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
//生成区域
function YDWEGetRect takes real x,real y,real width,real height returns rect
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
endfunction

//===========================================================================
//设置单位可以飞行
//===========================================================================
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, 'Amrf')
    call UnitRemoveAbility(u, 'Amrf')
endfunction

//===========================================================================
//字符窜与ID转换
//===========================================================================
function YDWEId2S takes integer value returns string
    local string charMap=bj_AllString
    local string result= ""
    local integer remainingValue= value
    local integer charValue
    local integer byteno
    set byteno=0
    loop
        set charValue=ModuloInteger(remainingValue, 256)
        set remainingValue=remainingValue / 256
        set result=SubString(charMap, charValue, charValue + 1) + result
        set byteno=byteno + 1
        exitwhen byteno == 4
    endloop
    return result
endfunction

function YDWES2Id takes string targetstr returns integer
    local string originstr=bj_AllString
    local integer strlength=StringLength(targetstr)
    local integer a=0
    local integer b=0
    local integer numx=1
    local integer result=0
    loop
    exitwhen b > strlength - 1
        set numx=R2I(Pow(256, strlength - 1 - b))
        set a=1
        loop
            exitwhen a > 255
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                set result=result + a * numx
                set a=256
            endif
            set a=a + 1
        endloop
        set b=b + 1
    endloop
    return result
endfunction

function YDWES2UnitId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction

function YDWES2ItemId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction

function GetLastAbilityCastingUnit takes nothing returns unit
    return bj_lastAbilityCastingUnit
endfunction

function GetLastAbilityTargetUnit takes nothing returns unit
    return bj_lastAbilityTargetUnit
endfunction

function YDWESetMapLimitCoordinate takes real MinX,real MaxX,real MinY,real MaxY returns nothing
    set yd_MapMaxX=MaxX
    set yd_MapMinX=MinX
    set yd_MapMaxY=MaxY
    set yd_MapMinY=MinY
endfunction

//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================


//YDWE特殊技能结束事件 

function YDWESyStemAbilityCastingOverTriggerAction takes unit hero,integer index returns nothing
    local integer i= 0
    loop
        exitwhen i >= AbilityCastingOverEventNumber
        if AbilityCastingOverEventType[i] == index then
            set bj_lastAbilityCastingUnit=hero
            if AbilityCastingOverEventQueue[i] != null and TriggerEvaluate(AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(AbilityCastingOverEventQueue[i]) then
                call TriggerExecute(AbilityCastingOverEventQueue[i])
            endif
        endif
        set i=i + 1
    endloop
endfunction

//===========================================================================  
//YDWE技能捕捉事件 
//===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
    set AbilityCastingOverEventQueue[AbilityCastingOverEventNumber]=trg
    set AbilityCastingOverEventType[AbilityCastingOverEventNumber]=index
    set AbilityCastingOverEventNumber=AbilityCastingOverEventNumber + 1
endfunction  

//===========================================================================
//系统函数完善
//===========================================================================
function YDWECreateUnitPool takes nothing returns nothing
    set bj_lastCreatedUnitPool=CreateUnitPool()
endfunction

function YDWEPlaceRandomUnit takes unitpool up,player p,real x,real y,real face returns nothing
    set bj_lastPoolAbstractedUnit=PlaceRandomUnit(up, p, x, y, face)
endfunction

function YDWEGetLastUnitPool takes nothing returns unitpool
    return bj_lastCreatedUnitPool
endfunction

function YDWEGetLastPoolAbstractedUnit takes nothing returns unit
    return bj_lastPoolAbstractedUnit
endfunction

function YDWECreateItemPool takes nothing returns nothing
    set bj_lastCreatedItemPool=CreateItemPool()
endfunction

function YDWEPlaceRandomItem takes itempool ip,real x,real y returns nothing
    set bj_lastPoolAbstractedItem=PlaceRandomItem(ip, x, y)
endfunction

function YDWEGetLastItemPool takes nothing returns itempool
    return bj_lastCreatedItemPool
endfunction

function YDWEGetLastPoolAbstractedItem takes nothing returns item
    return bj_lastPoolAbstractedItem
endfunction

function YDWESetAttackDamageWeaponType takes attacktype at,damagetype dt,weapontype wt returns nothing
    set bj_lastSetAttackType=at
    set bj_lastSetDamageType=dt
    set bj_lastSetWeaponType=wt
endfunction
//unitpool bj_lastCreatedPool=null
//unit bj_lastPoolAbstractedUnit=null

function YDWEGetPlayerColorString takes player p,string s returns string
    return yd_PlayerColor[GetHandleId(GetPlayerColor(p))] + s + "|r"
endfunction

//===========================================================================
//===========================================================================
//系统函数补充
//===========================================================================
//===========================================================================
function YDWEGetUnitItemSoftId takes unit hero,item it returns integer
    local integer i= 0
    loop
         exitwhen i > 5
         if UnitItemInSlot(hero, i) == it then
            return i + 1
         endif
         set i=i + 1
    endloop
    return 0
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//===========================================================================

//显示版本
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE sdf")
    return false
endfunction

function YDWEVersion_Init takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    loop
        exitwhen i == 12
        call TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        set i=i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEVersion_Display))
    set t=null
endfunction

function InitializeYD takes nothing returns nothing
     set YDHT=InitHashtable()

    //=================设置变量=====================
    set yd_MapMinX=GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
    set yd_MapMinY=GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    set yd_MapMaxX=GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
    set yd_MapMaxY=GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)

    
    set yd_PlayerColor[0]="|cFFFF0303"
    set yd_PlayerColor[1]="|cFF0042FF"
    set yd_PlayerColor[2]="|cFF1CE6B9"
    set yd_PlayerColor[3]="|cFF540081"
    set yd_PlayerColor[4]="|cFFFFFC01"
    set yd_PlayerColor[5]="|cFFFE8A0E"
    set yd_PlayerColor[6]="|cFF20C000"
    set yd_PlayerColor[7]="|cFFE55BB0"
    set yd_PlayerColor[8]="|cFF959697"
    set yd_PlayerColor[9]="|cFF7EBFF1"
    set yd_PlayerColor[10]="|cFF106246"
    set yd_PlayerColor[11]="|cFF4E2A04"
    set yd_PlayerColor[12]="|cFF282828"
    set yd_PlayerColor[13]="|cFF282828"
    set yd_PlayerColor[14]="|cFF282828"
    set yd_PlayerColor[15]="|cFF282828"
    //=================显示版本=====================
    call YDWEVersion_Init()
endfunction

    

//library YDWEBaseCommon ends
//library YDWEBaseHashtable:
   
//===========================================================================
//HashTable
//===========================================================================

//===========================================================================
//Return bug
//===========================================================================
function YDWEH2I takes handle h returns integer
    return GetHandleId(h)
endfunction


//���
function YDWEFlushAllData takes nothing returns nothing
    call FlushParentHashtable(YDHT)
endfunction

function YDWEFlushMissionByInteger takes integer i returns nothing
    call FlushChildHashtable(YDHT, i)
endfunction

function YDWEFlushMissionByString takes string s returns nothing
    call FlushChildHashtable(YDHT, StringHash(s))
endfunction

function YDWEFlushStoredIntegerByInteger takes integer i,integer j returns nothing
    call RemoveSavedInteger(YDHT, i, j)
endfunction

function YDWEFlushStoredIntegerByString takes string s1,string s2 returns nothing
    call RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction

function YDWEHaveSavedIntegerByInteger takes integer i,integer j returns boolean
    return HaveSavedInteger(YDHT, i, j)
endfunction

function YDWEHaveSavedIntegerByString takes string s1,string s2 returns boolean
    return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction

//store and get integer
function YDWESaveIntegerByInteger takes integer pTable,integer pKey,integer i returns nothing
    call SaveInteger(YDHT, pTable, pKey, i)
endfunction

function YDWESaveIntegerByString takes string pTable,string pKey,integer i returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
endfunction

function YDWEGetIntegerByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetIntegerByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get real
function YDWESaveRealByInteger takes integer pTable,integer pKey,real r returns nothing
    call SaveReal(YDHT, pTable, pKey, r)
endfunction

function YDWESaveRealByString takes string pTable,string pKey,real r returns nothing
    call SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
endfunction

function YDWEGetRealByInteger takes integer pTable,integer pKey returns real
    return LoadReal(YDHT, pTable, pKey)
endfunction

function YDWEGetRealByString takes string pTable,string pKey returns real
    return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get string
function YDWESaveStringByInteger takes integer pTable,integer pKey,string s returns nothing
    call SaveStr(YDHT, pTable, pKey, s)
endfunction

function YDWESaveStringByString takes string pTable,string pKey,string s returns nothing
    call SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
endfunction

function YDWEGetStringByInteger takes integer pTable,integer pKey returns string
    return LoadStr(YDHT, pTable, pKey)
endfunction

function YDWEGetStringByString takes string pTable,string pKey returns string
    return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get boolean
function YDWESaveBooleanByInteger takes integer pTable,integer pKey,boolean b returns nothing
    call SaveBoolean(YDHT, pTable, pKey, b)
endfunction

function YDWESaveBooleanByString takes string pTable,string pKey,boolean b returns nothing
    call SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
endfunction

function YDWEGetBooleanByInteger takes integer pTable,integer pKey returns boolean
    return LoadBoolean(YDHT, pTable, pKey)
endfunction

function YDWEGetBooleanByString takes string pTable,string pKey returns boolean
    return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Unit
function YDWESaveUnitByInteger takes integer pTable,integer pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, pTable, pKey, u)
endfunction

function YDWESaveUnitByString takes string pTable,string pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
endfunction

function YDWEGetUnitByInteger takes integer pTable,integer pKey returns unit
    return LoadUnitHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetUnitByString takes string pTable,string pKey returns unit
    return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert UnitID
function YDWESaveUnitIDByInteger takes integer pTable,integer pKey,integer uid returns nothing
    call SaveInteger(YDHT, pTable, pKey, uid)
endfunction

function YDWESaveUnitIDByString takes string pTable,string pKey,integer uid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
endfunction

function YDWEGetUnitIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetUnitIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert AbilityID
function YDWESaveAbilityIDByInteger takes integer pTable,integer pKey,integer abid returns nothing
    call SaveInteger(YDHT, pTable, pKey, abid)
endfunction

function YDWESaveAbilityIDByString takes string pTable,string pKey,integer abid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
endfunction

function YDWEGetAbilityIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetAbilityIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Player
function YDWESavePlayerByInteger takes integer pTable,integer pKey,player p returns nothing
    call SavePlayerHandle(YDHT, pTable, pKey, p)
endfunction

function YDWESavePlayerByString takes string pTable,string pKey,player p returns nothing
    call SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
endfunction

function YDWEGetPlayerByInteger takes integer pTable,integer pKey returns player
    return LoadPlayerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetPlayerByString takes string pTable,string pKey returns player
    return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Item
function YDWESaveItemByInteger takes integer pTable,integer pKey,item it returns nothing
    call SaveItemHandle(YDHT, pTable, pKey, it)
endfunction

function YDWESaveItemByString takes string pTable,string pKey,item it returns nothing
    call SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
endfunction

function YDWEGetItemByInteger takes integer pTable,integer pKey returns item
    return LoadItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetItemByString takes string pTable,string pKey returns item
    return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert ItemID
function YDWESaveItemIDByInteger takes integer pTable,integer pKey,integer itid returns nothing
    call SaveInteger(YDHT, pTable, pKey, itid)
endfunction

function YDWESaveItemIDByString takes string pTable,string pKey,integer itid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
endfunction

function YDWEGetItemIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetItemIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Timer
function YDWESaveTimerByInteger takes integer pTable,integer pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, pTable, pKey, t)
endfunction

function YDWESaveTimerByString takes string pTable,string pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
endfunction

function YDWEGetTimerByInteger takes integer pTable,integer pKey returns timer
    return LoadTimerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTimerByString takes string pTable,string pKey returns timer
    return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Trigger
function YDWESaveTriggerByInteger takes integer pTable,integer pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, pTable, pKey, trg)
endfunction

function YDWESaveTriggerByString takes string pTable,string pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
endfunction

function YDWEGetTriggerByInteger takes integer pTable,integer pKey returns trigger
    return LoadTriggerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerByString takes string pTable,string pKey returns trigger
    return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Location
function YDWESaveLocationByInteger takes integer pTable,integer pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, pTable, pKey, pt)
endfunction

function YDWESaveLocationByString takes string pTable,string pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
endfunction

function YDWEGetLocationByInteger takes integer pTable,integer pKey returns location
    return LoadLocationHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLocationByString takes string pTable,string pKey returns location
    return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Group
function YDWESaveGroupByInteger takes integer pTable,integer pKey,group g returns nothing
    call SaveGroupHandle(YDHT, pTable, pKey, g)
endfunction

function YDWESaveGroupByString takes string pTable,string pKey,group g returns nothing
    call SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
endfunction

function YDWEGetGroupByInteger takes integer pTable,integer pKey returns group
    return LoadGroupHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetGroupByString takes string pTable,string pKey returns group
    return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Multiboard
function YDWESaveMultiboardByInteger takes integer pTable,integer pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, pTable, pKey, m)
endfunction

function YDWESaveMultiboardByString takes string pTable,string pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
endfunction

function YDWEGetMultiboardByInteger takes integer pTable,integer pKey returns multiboard
    return LoadMultiboardHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetMultiboardByString takes string pTable,string pKey returns multiboard
    return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert MultiboardItem
function YDWESaveMultiboardItemByInteger takes integer pTable,integer pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
endfunction

function YDWESaveMultiboardItemByString takes string pTable,string pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
endfunction

function YDWEGetMultiboardItemByInteger takes integer pTable,integer pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetMultiboardItemByString takes string pTable,string pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert TextTag
function YDWESaveTextTagByInteger takes integer pTable,integer pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, pTable, pKey, tt)
endfunction

function YDWESaveTextTagByString takes string pTable,string pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
endfunction

function YDWEGetTextTagByInteger takes integer pTable,integer pKey returns texttag
    return LoadTextTagHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTextTagByString takes string pTable,string pKey returns texttag
    return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Lightning
function YDWESaveLightningByInteger takes integer pTable,integer pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, pTable, pKey, ln)
endfunction

function YDWESaveLightningByString takes string pTable,string pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
endfunction

function YDWEGetLightningByInteger takes integer pTable,integer pKey returns lightning
    return LoadLightningHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLightningByString takes string pTable,string pKey returns lightning
    return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Region
function YDWESaveRegionByInteger takes integer pTable,integer pKey,region rn returns nothing
    call SaveRegionHandle(YDHT, pTable, pKey, rn)
endfunction

function YDWESaveRegionByString takes string pTable,string pKey,region rt returns nothing
    call SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction

function YDWEGetRegionByInteger takes integer pTable,integer pKey returns region
    return LoadRegionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetRegionByString takes string pTable,string pKey returns region
    return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Rect
function YDWESaveRectByInteger takes integer pTable,integer pKey,rect rn returns nothing
    call SaveRectHandle(YDHT, pTable, pKey, rn)
endfunction

function YDWESaveRectByString takes string pTable,string pKey,rect rt returns nothing
    call SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction

function YDWEGetRectByInteger takes integer pTable,integer pKey returns rect
    return LoadRectHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetRectByString takes string pTable,string pKey returns rect
    return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Leaderboard
function YDWESaveLeaderboardByInteger takes integer pTable,integer pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
endfunction

function YDWESaveLeaderboardByString takes string pTable,string pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
endfunction

function YDWEGetLeaderboardByInteger takes integer pTable,integer pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLeaderboardByString takes string pTable,string pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Effect
function YDWESaveEffectByInteger takes integer pTable,integer pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, pTable, pKey, e)
endfunction

function YDWESaveEffectByString takes string pTable,string pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
endfunction

function YDWEGetEffectByInteger takes integer pTable,integer pKey returns effect
    return LoadEffectHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetEffectByString takes string pTable,string pKey returns effect
    return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Destructable
function YDWESaveDestructableByInteger takes integer pTable,integer pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, pTable, pKey, da)
endfunction

function YDWESaveDestructableByString takes string pTable,string pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
endfunction

function YDWEGetDestructableByInteger takes integer pTable,integer pKey returns destructable
    return LoadDestructableHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetDestructableByString takes string pTable,string pKey returns destructable
    return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert triggercondition
function YDWESaveTriggerConditionByInteger takes integer pTable,integer pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
endfunction

function YDWESaveTriggerConditionByString takes string pTable,string pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
endfunction

function YDWEGetTriggerConditionByInteger takes integer pTable,integer pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerConditionByString takes string pTable,string pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert triggeraction
function YDWESaveTriggerActionByInteger takes integer pTable,integer pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
endfunction

function YDWESaveTriggerActionByString takes string pTable,string pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction

function YDWEGetTriggerActionByInteger takes integer pTable,integer pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerActionByString takes string pTable,string pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert event
function YDWESaveTriggerEventByInteger takes integer pTable,integer pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, pTable, pKey, et)
endfunction

function YDWESaveTriggerEventByString takes string pTable,string pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
endfunction

function YDWEGetTriggerEventByInteger takes integer pTable,integer pKey returns event
    return LoadTriggerEventHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerEventByString takes string pTable,string pKey returns event
    return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert force
function YDWESaveForceByInteger takes integer pTable,integer pKey,force fc returns nothing
    call SaveForceHandle(YDHT, pTable, pKey, fc)
endfunction

function YDWESaveForceByString takes string pTable,string pKey,force fc returns nothing
    call SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
endfunction

function YDWEGetForceByInteger takes integer pTable,integer pKey returns force
    return LoadForceHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetForceByString takes string pTable,string pKey returns force
    return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert boolexpr
function YDWESaveBoolexprByInteger takes integer pTable,integer pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, pTable, pKey, be)
endfunction

function YDWESaveBoolexprByString takes string pTable,string pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
endfunction

function YDWEGetBoolexprByInteger takes integer pTable,integer pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetBoolexprByString takes string pTable,string pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert sound
function YDWESaveSoundByInteger takes integer pTable,integer pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, pTable, pKey, sd)
endfunction

function YDWESaveSoundByString takes string pTable,string pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
endfunction

function YDWEGetSoundByInteger takes integer pTable,integer pKey returns sound
    return LoadSoundHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetSoundByString takes string pTable,string pKey returns sound
    return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert timerdialog
function YDWESaveTimerDialogByInteger takes integer pTable,integer pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, pTable, pKey, td)
endfunction

function YDWESaveTimerDialogByString takes string pTable,string pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
endfunction

function YDWEGetTimerDialogByInteger takes integer pTable,integer pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTimerDialogByString takes string pTable,string pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert trackable
function YDWESaveTrackableByInteger takes integer pTable,integer pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, pTable, pKey, ta)
endfunction

function YDWESaveTrackableByString takes string pTable,string pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction

function YDWEGetTrackableByInteger takes integer pTable,integer pKey returns trackable
    return LoadTrackableHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTrackableByString takes string pTable,string pKey returns trackable
    return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert dialog
function YDWESaveDialogByInteger takes integer pTable,integer pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, pTable, pKey, d)
endfunction

function YDWESaveDialogByString takes string pTable,string pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
endfunction

function YDWEGetDialogByInteger takes integer pTable,integer pKey returns dialog
    return LoadDialogHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetDialogByString takes string pTable,string pKey returns dialog
    return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert button
function YDWESaveButtonByInteger takes integer pTable,integer pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, pTable, pKey, bt)
endfunction

function YDWESaveButtonByString takes string pTable,string pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
endfunction

function YDWEGetButtonByInteger takes integer pTable,integer pKey returns button
    return LoadButtonHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetButtonByString takes string pTable,string pKey returns button
    return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert quest
function YDWESaveQuestByInteger takes integer pTable,integer pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, pTable, pKey, qt)
endfunction

function YDWESaveQuestByString takes string pTable,string pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
endfunction

function YDWEGetQuestByInteger takes integer pTable,integer pKey returns quest
    return LoadQuestHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetQuestByString takes string pTable,string pKey returns quest
    return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert questitem
function YDWESaveQuestItemByInteger takes integer pTable,integer pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, pTable, pKey, qi)
endfunction

function YDWESaveQuestItemByString takes string pTable,string pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
endfunction

function YDWEGetQuestItemByInteger takes integer pTable,integer pKey returns questitem
    return LoadQuestItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetQuestItemByString takes string pTable,string pKey returns questitem
    return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

function YDWES2I takes string s returns integer
    return StringHash(s)
endfunction

function YDWESaveAbilityHandleBJ takes integer AbilityID,integer key,integer missionKey,hashtable table returns nothing
    call SaveInteger(table, missionKey, key, AbilityID)
endfunction

function YDWESaveAbilityHandle takes hashtable table,integer parentKey,integer childKey,integer AbilityID returns nothing
    call SaveInteger(table, parentKey, childKey, AbilityID)
endfunction

function YDWELoadAbilityHandleBJ takes integer key,integer missionKey,hashtable table returns integer
    return LoadInteger(table, missionKey, key)
endfunction

function YDWELoadAbilityHandle takes hashtable table,integer parentKey,integer childKey returns integer
    return LoadInteger(table, parentKey, childKey)
endfunction



//library YDWEBaseHashtable ends
//library YDWESetGuard:
function YDWESetGuard___IsUnitIdle takes unit u returns boolean
    return true
endfunction

function YDWERemoveGuard takes unit pet returns nothing
endfunction

function SetGuardTimer takes nothing returns nothing
endfunction

function YDWESetGuard takes unit pet,unit captain,real timeout,real guardRanger,real returnRanger,real outRanger,integer percent returns nothing
endfunction

//library YDWESetGuard ends
//library YDWETimerPattern:
//***************************************************
//* �� - Matrix ����ģ�庯��
//*--------------------
//* ���ߣ�Warft_TigerCN  �����Ż���Fetrix_sai
//***************************************************



    function YDWETimerPatternJumpAttack takes unit u,real face,real dis,real lasttime,real timeout,real high,real damage,string part,string dsfx returns nothing
     
    endfunction

    // Moon Priestess Arrow PUI
    function YDWETimerPatternMoonPriestessArrow takes unit u,real face,real dis,real lasttime,real timeout,integer lv,integer aid,integer uid,string order,string part,string dsfx returns nothing
    
    endfunction

    // Rush Slide PUI
    function YDWETimerPatternRushSlide takes unit u,real face,real dis,real lasttime,real timeout,real damage,real radius,boolean killtrees,boolean cycle,boolean path,string part,string gsfx,string wsfx returns nothing
       
    endfunction


    
    function DIYRushSlide takes unit u,real face,real dis,real lasttime,real timeout,real damage,real radius,boolean killtrees,boolean cycle,boolean path,string part,string gsfx,string wsfx returns nothing
    endfunction



//library YDWETimerPattern ends
//library YDWETimerSystem:


function YDWETimerSystemNewTask takes real time,trigger proc returns integer
    return 1
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
    return YDWETimerSystem___CurrentIndex
endfunction


function YDWETimerRemoveUnit takes real time,unit u returns nothing

endfunction

function YDWETimerDestroyTimer takes real time,timer t returns nothing
endfunction


function YDWETimerRemoveItem takes real time,item it returns nothing
endfunction


function YDWETimerDestroyEffect takes real time,effect e returns nothing
endfunction


function YDWETimerDestroyLightning takes real time,lightning lt returns nothing
endfunction


function YDWETimerRunTrigger takes real time,trigger trg returns nothing
endfunction
function YDWETimerDestroyTextTag takes real time,texttag tt returns nothing
endfunction

function YDWETimerSystemGetRunIndex takes nothing returns integer
    return YDWETimerSystem___TimerSystem_RunIndex
endfunction

function YDWETimerRunPeriodicTrigger takes real timeout,trigger trg,boolean b,integer times,integer data returns nothing
        
endfunction

function YDWETimerRunPeriodicTriggerOver takes trigger trg,integer data returns nothing
endfunction

//library YDWETimerSystem ends
//library YDWETriggerEvent:

 function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    return false
endfunction

function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
endfunction
    
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing

endfunction
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
endfunction

function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
        return
endfunction

function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction

//library YDWETriggerEvent ends
//library Test:


 function Test___InitTest takes nothing returns nothing
		// body...
	endfunction


//library Test ends
//library LHBase:

//---------------------------------------------------------------------------------------------------
	
 function IsXianSpell takes integer spell returns boolean
		return ( spell == 'Acht' ) or ( spell == 'A03A' ) or ( spell == 'A0BM' ) or ( spell == 'A07Z' ) or ( spell == 'A07T' ) or ( spell == 'A05Z' ) or ( spell == 'ACro' ) or ( spell == 'Acht' ) or ( spell == 'A07X' ) or ( spell == 'A05Y' ) or ( spell == 'AChv' ) or ( spell == 'A07V' ) or ( spell == 'Awrg' ) or ( spell == 'A05X' ) or ( spell == 'A07C' ) or ( spell == 'A07D' ) or ( spell == 'Awrh' ) or ( spell == 'A075' ) or ( spell == 'A06W' ) or ( spell == 'A06Y' ) or ( spell == 'A06Q' ) or ( spell == 'A07R' ) or ( spell == 'ACcl' ) or ( spell == 'AOhw' ) or ( spell == 'AIin' ) or ( spell == 'AIil' ) or ( spell == 'A07S' ) or ( spell == 'AChx' )
	endfunction
//---------------------------------------------------------------------------------------------------

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitAliveBJ(u) == true and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster)) and GetUnitAbilityLevel(u, 'Avul') < 1 and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction
//---------------------------------------------------------------------------------------------------

	
   function IsEnemy2 takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) == true and IsUnitEnemy(u, GetOwningPlayer(caster)) and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsLoyalUnit takes unit u returns boolean
        return ( ( GetUnitTypeId(u) == 'owyv' ) or ( GetUnitTypeId(u) == 'nzom' ) or ( GetUnitTypeId(u) == 'nsog' ) or ( GetUnitTypeId(u) == 'nsoc' ) or ( GetUnitTypeId(u) == 'ninc' ) or ( GetUnitTypeId(u) == 'ninm' ) or ( GetUnitTypeId(u) == 'nsrn' ) or ( GetUnitTypeId(u) == 'nsrh' ) or ( GetUnitTypeId(u) == 'nmit' ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
   function IsEnemy3 takes unit u,player p returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) == true and IsUnitEnemy(u, p) and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function DeleteGroup takes group g returns nothing
        
        local unit l_unit
        loop
            set l_unit=FirstOfGroup(g)
            exitwhen l_unit == null
            call GroupRemoveUnit(g, l_unit)
            call FlushChildHashtable(YDHT, GetHandleId(l_unit))
            call RemoveUnit(l_unit)
        endloop
        set l_unit=null
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function CreateTextTagA takes string name,unit u,real red,real green,real blue,real time,real size returns nothing

        local texttag t= CreateTextTagUnitBJ(name, u, 0, size, red, green, blue, 0)
        call SetTextTagVelocityBJ(t, 64, 90.00)
        if time <= 0 then
            set time=0.01
        endif
        call SetTextTagPermanent(t, false)
        call SetTextTagLifespan(t, time)
        call SetTextTagFadepoint(t, time)
    endfunction

    
    function CreateSpellTextTag takes string name,unit u,real red,real green,real blue,real time returns nothing
        call CreateTextTagA(name , u , red , green , blue , time , 16)
    endfunction

    	
    function SimulateSpell takes unit caster,unit target,integer spellId,integer spellLevel,real lifeTime,string orderId,boolean isPoint,boolean isImmediate,boolean isTarget returns nothing
     local unit u= CreateUnit(GetOwningPlayer(caster), 'h000', GetUnitX(target), GetUnitY(target), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ(spellId, u)
        call SetUnitAbilityLevel(u, spellId, spellLevel)
        if ( isPoint ) then
	    	call IssuePointOrder(u, orderId, GetUnitX(target), GetUnitY(target))
        elseif ( isImmediate ) then
	    	call IssueImmediateOrder(u, orderId)
	    elseif ( isTarget ) then
	    	call IssueTargetOrder(u, orderId, target)
        endif
	    set u=null

    endfunction

    
 function CreateUnitEffect takes player whichPlayer,integer unitType,real x,real y,real facing returns nothing
	    call UnitApplyTimedLifeBJ(1.8, 'BHwe', CreateUnit(whichPlayer, unitType, x, y, facing))
    endfunction

    
    function DamageArea takes unit attacker,real x,real y,real radius,real damage returns nothing
     local group l_group= CreateGroup()
     local unit l_unit
    	call GroupEnumUnitsInRange(l_group, x, y, radius, null)
    	loop
    	    set l_unit=FirstOfGroup(l_group)
    	    exitwhen l_unit == null
    	    call GroupRemoveUnit(l_group, l_unit)
    	    if ( IsEnemy(l_unit , attacker) ) then
    	    	call UnitDamageTarget(attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
    	    endif
    	endloop
    	call DestroyGroup(l_group)
    	set l_group=null
    	set l_unit=null
    endfunction

    
 function BuyerFilter takes unit buyer returns boolean
		return ( GetUnitTypeId(buyer) != 'N018' )
	endfunction
//---------------------------------------------------------------------------------------------------
    function LHBase___InitLHBase takes nothing returns nothing
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

    endfunction

//library LHBase ends
//library Exercise:

//---------------------------------------------------------------------------------------------------
	
	
 function TMonsterFilter1 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nano' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nanw' ) ) )
	endfunction

 function TMonsterFilter2 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nenf' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nbld' ) ) )
	endfunction

 function TMonsterFilter3 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nbda' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nbdo' ) ) )
	endfunction

 function TMonsterFilter4 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'ncim' ) or ( GetUnitTypeId(GetFilterUnit()) == 'ncnk' ) ) )
	endfunction

 function TMonsterFilter5 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'ngns' ) or ( GetUnitTypeId(GetFilterUnit()) == 'ngnw' ) ) )
	endfunction

 function TMonsterFilter6 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nhfp' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nenc' ) ) )
	endfunction

	
 function TMonsterPlayerFilter takes nothing returns boolean
	    return ( ( GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER ) and ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
	endfunction

//---------------------------------------------------------------------------------------------------
	
	
//textmacro instance: FlashMonster("1")
 function FlashMonsterPlayer1 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[1], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[1]), GetRectCenterY(regionM1[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[1]), GetRectCenterY(regionM1[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[1], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[1]), GetRectCenterY(regionM2[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[1]), GetRectCenterY(regionM2[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[1], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[1]), GetRectCenterY(regionM3[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[1]), GetRectCenterY(regionM3[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[1], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[1]), GetRectCenterY(regionM4[1]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[1]), GetRectCenterY(regionM4[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[1], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[1]), GetRectCenterY(regionM5[1]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[1]), GetRectCenterY(regionM5[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[1], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[1]), GetRectCenterY(regionM6[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[1]), GetRectCenterY(regionM6[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("1")
//textmacro instance: FlashMonster("2")
 function FlashMonsterPlayer2 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[2], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[2]), GetRectCenterY(regionM1[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[2]), GetRectCenterY(regionM1[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[2], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[2]), GetRectCenterY(regionM2[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[2]), GetRectCenterY(regionM2[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[2], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[2]), GetRectCenterY(regionM3[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[2]), GetRectCenterY(regionM3[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[2], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[2]), GetRectCenterY(regionM4[2]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[2]), GetRectCenterY(regionM4[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[2], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[2]), GetRectCenterY(regionM5[2]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[2]), GetRectCenterY(regionM5[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[2], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[2]), GetRectCenterY(regionM6[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[2]), GetRectCenterY(regionM6[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("2")
//textmacro instance: FlashMonster("3")
 function FlashMonsterPlayer3 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[3], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[3]), GetRectCenterY(regionM1[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[3]), GetRectCenterY(regionM1[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[3], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[3]), GetRectCenterY(regionM2[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[3]), GetRectCenterY(regionM2[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[3], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[3]), GetRectCenterY(regionM3[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[3]), GetRectCenterY(regionM3[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[3], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[3]), GetRectCenterY(regionM4[3]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[3]), GetRectCenterY(regionM4[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[3], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[3]), GetRectCenterY(regionM5[3]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[3]), GetRectCenterY(regionM5[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[3], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[3]), GetRectCenterY(regionM6[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[3]), GetRectCenterY(regionM6[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("3")
//textmacro instance: FlashMonster("4")
 function FlashMonsterPlayer4 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[4], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[4]), GetRectCenterY(regionM1[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[4]), GetRectCenterY(regionM1[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[4], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[4]), GetRectCenterY(regionM2[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[4]), GetRectCenterY(regionM2[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[4], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[4]), GetRectCenterY(regionM3[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[4]), GetRectCenterY(regionM3[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[4], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[4]), GetRectCenterY(regionM4[4]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[4]), GetRectCenterY(regionM4[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[4], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[4]), GetRectCenterY(regionM5[4]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[4]), GetRectCenterY(regionM5[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[4], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[4]), GetRectCenterY(regionM6[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[4]), GetRectCenterY(regionM6[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("4")
//textmacro instance: FlashMonster("5")
 function FlashMonsterPlayer5 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[5], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[5]), GetRectCenterY(regionM1[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[5]), GetRectCenterY(regionM1[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[5], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[5]), GetRectCenterY(regionM2[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[5]), GetRectCenterY(regionM2[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[5], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[5]), GetRectCenterY(regionM3[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[5]), GetRectCenterY(regionM3[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[5], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[5]), GetRectCenterY(regionM4[5]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[5]), GetRectCenterY(regionM4[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[5], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[5]), GetRectCenterY(regionM5[5]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[5]), GetRectCenterY(regionM5[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[5], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[5]), GetRectCenterY(regionM6[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[5]), GetRectCenterY(regionM6[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("5")
//textmacro instance: FlashMonster("6")
 function FlashMonsterPlayer6 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[6], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[6]), GetRectCenterY(regionM1[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[6]), GetRectCenterY(regionM1[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[6], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[6]), GetRectCenterY(regionM2[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[6]), GetRectCenterY(regionM2[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[6], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[6]), GetRectCenterY(regionM3[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[6]), GetRectCenterY(regionM3[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[6], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[6]), GetRectCenterY(regionM4[6]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[6]), GetRectCenterY(regionM4[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[6], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[6]), GetRectCenterY(regionM5[6]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[6]), GetRectCenterY(regionM5[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[6], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[6]), GetRectCenterY(regionM6[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[6]), GetRectCenterY(regionM6[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("6")
//---------------------------------------------------------------------------------------------------
		

//textmacro instance: TExerciseForbitCon("1")
  function Exercise___TExerciseForbitCon1 takes nothing returns boolean
			return ( ( ConvertedPlayer(1) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("1")
//textmacro instance: TExerciseForbitCon("2")
  function Exercise___TExerciseForbitCon2 takes nothing returns boolean
			return ( ( ConvertedPlayer(2) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("2")
//textmacro instance: TExerciseForbitCon("3")
  function Exercise___TExerciseForbitCon3 takes nothing returns boolean
			return ( ( ConvertedPlayer(3) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("3")
//textmacro instance: TExerciseForbitCon("4")
  function Exercise___TExerciseForbitCon4 takes nothing returns boolean
			return ( ( ConvertedPlayer(4) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("4")
//textmacro instance: TExerciseForbitCon("5")
  function Exercise___TExerciseForbitCon5 takes nothing returns boolean
			return ( ( ConvertedPlayer(5) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("5")
//textmacro instance: TExerciseForbitCon("6")
  function Exercise___TExerciseForbitCon6 takes nothing returns boolean
			return ( ( ConvertedPlayer(6) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("6")

 function Exercise___TExerciseForbitAct takes nothing returns nothing
		call SetUnitX(GetTriggerUnit(), GetUnitX(gg_unit_haro_0030))
		call SetUnitY(GetTriggerUnit(), GetUnitY(gg_unit_haro_0030))
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你不能进入其他玩家的房间！")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Exercise___InitExerciseTrigger takes nothing returns nothing
  local trigger t


//textmacro instance: CreateMonsterTrigger("1")
			if ( ( GetPlayerSlotState(ConvertedPlayer(1)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(1)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[1])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon1))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[1]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[1], 5, true, function FlashMonsterPlayer1)
			endif
//end of: CreateMonsterTrigger("1")
//textmacro instance: CreateMonsterTrigger("2")
			if ( ( GetPlayerSlotState(ConvertedPlayer(2)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(2)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[2])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon2))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[2]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[2], 5, true, function FlashMonsterPlayer2)
			endif
//end of: CreateMonsterTrigger("2")
//textmacro instance: CreateMonsterTrigger("3")
			if ( ( GetPlayerSlotState(ConvertedPlayer(3)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(3)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[3])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon3))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[3]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[3], 5, true, function FlashMonsterPlayer3)
			endif
//end of: CreateMonsterTrigger("3")
//textmacro instance: CreateMonsterTrigger("4")
			if ( ( GetPlayerSlotState(ConvertedPlayer(4)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(4)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[4])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon4))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[4]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[4], 5, true, function FlashMonsterPlayer4)
			endif
//end of: CreateMonsterTrigger("4")
//textmacro instance: CreateMonsterTrigger("5")
			if ( ( GetPlayerSlotState(ConvertedPlayer(5)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(5)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[5])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon5))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[5]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[5], 5, true, function FlashMonsterPlayer5)
			endif
//end of: CreateMonsterTrigger("5")
//textmacro instance: CreateMonsterTrigger("6")
			if ( ( GetPlayerSlotState(ConvertedPlayer(6)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(6)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[6])
			    call TriggerAddCondition(t, Condition(function Exercise___TExerciseForbitCon6))
			    call TriggerAddAction(t, function Exercise___TExerciseForbitAct)

			    set Exercise___TiExercise[6]=CreateTimer()
			    call TimerStart(Exercise___TiExercise[6], 5, true, function FlashMonsterPlayer6)
			endif
//end of: CreateMonsterTrigger("6")

		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CloseExerciseTimer takes player p returns nothing
		call PauseTimer(Exercise___TiExercise[GetConvertedPlayerId(p)])
		call DestroyTimer(Exercise___TiExercise[GetConvertedPlayerId(p)])
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function Exercise___InitExerciseRegions takes nothing returns nothing

		set regionM1[1]=Rect(- 15488.0, 13952.0, - 14240.0, 15232.0)
	    set regionM2[1]=Rect(- 13280.0, 13952.0, - 12096.0, 15232.0)
	    set regionM3[1]=Rect(- 15488.0, 12288.0, - 14208.0, 13536.0)
	    set regionM4[1]=Rect(- 13312.0, 12288.0, - 12064.0, 13568.0)
	    set regionM5[1]=Rect(- 15488.0, 10624.0, - 14208.0, 11904.0)
	    set regionM6[1]=Rect(- 13312.0, 10624.0, - 12032.0, 11904.0)
		
	    set regionM1[2]=Rect(- 15488.0, 8960.0, - 14240.0, 10240.0)
	    set regionM2[2]=Rect(- 13280.0, 8960.0, - 12096.0, 10240.0)
	    set regionM3[2]=Rect(- 15488.0, 7296.0, - 14208.0, 8544.0)
	    set regionM4[2]=Rect(- 13312.0, 7296.0, - 12064.0, 8576.0)
	    set regionM5[2]=Rect(- 15488.0, 5632.0, - 14208.0, 6912.0)
	    set regionM6[2]=Rect(- 13312.0, 5632.0, - 12032.0, 6912.0)

	    set regionM1[3]=Rect(- 11104.0, 13984.0, - 9888.0, 15232.0)
	    set regionM2[3]=Rect(- 8960.0, 13952.0, - 7680.0, 15232.0)
	    set regionM3[3]=Rect(- 11136.0, 12288.0, - 9888.0, 13536.0)
	    set regionM4[3]=Rect(- 8928.0, 12288.0, - 7680.0, 13568.0)
	    set regionM5[3]=Rect(- 11136.0, 10624.0, - 9856.0, 11904.0)
	    set regionM6[3]=Rect(- 8960.0, 10624.0, - 7680.0, 11904.0)
		
	    set regionM1[4]=Rect(- 11104.0, 8992.0, - 9888.0, 10240.0)
	    set regionM2[4]=Rect(- 8960.0, 8960.0, - 7680.0, 10240.0)
	    set regionM3[4]=Rect(- 11136.0, 7296.0, - 9888.0, 8544.0)
	    set regionM4[4]=Rect(- 8928.0, 7296.0, - 7680.0, 8576.0)
	    set regionM5[4]=Rect(- 11136.0, 5632.0, - 9856.0, 6912.0)
	    set regionM6[4]=Rect(- 8960.0, 5632.0, - 7680.0, 6912.0)
		
	    set regionM1[5]=Rect(- 6752.0, 13952.0, - 5536.0, 15200.0)
	    set regionM2[5]=Rect(- 4736.0, 13952.0, - 3456.0, 15232.0)
	    set regionM3[5]=Rect(- 6784.0, 12256.0, - 5536.0, 13504.0)
	    set regionM4[5]=Rect(- 4704.0, 12288.0, - 3456.0, 13568.0)
	    set regionM5[5]=Rect(- 6784.0, 10592.0, - 5504.0, 11872.0)
	    set regionM6[5]=Rect(- 4736.0, 10624.0, - 3456.0, 11904.0)

	    set regionM1[6]=Rect(- 6752.0, 8960.0, - 5536.0, 10208.0)
	    set regionM2[6]=Rect(- 4736.0, 8960.0, - 3456.0, 10240.0)
	    set regionM3[6]=Rect(- 6784.0, 7264.0, - 5536.0, 8512.0)
	    set regionM4[6]=Rect(- 4704.0, 7296.0, - 3456.0, 8576.0)
	    set regionM5[6]=Rect(- 6784.0, 5600.0, - 5504.0, 6880.0)
	    set regionM6[6]=Rect(- 4736.0, 5632.0, - 3456.0, 6912.0)

	    set regionAll[1]=Rect(- 15808.0, 10400.0, - 11744.0, 15456.0)
	    set regionAll[2]=Rect(- 15808.0, 5344.0, - 11712.0, 10400.0)
	    set regionAll[3]=Rect(- 11744.0, 10400.0, - 7232.0, 15456.0)
	    set regionAll[4]=Rect(- 11744.0, 5312.0, - 7232.0, 10400.0)
	    set regionAll[5]=Rect(- 7264.0, 10432.0, - 3136.0, 15456.0)
	    set regionAll[6]=Rect(- 7264.0, 5312.0, - 3136.0, 10432.0)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function EnterExerciseRegion takes nothing returns nothing
  local real x
  local real y


//textmacro instance: EnterSpecifyExercise("I05J","1")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I05J' ) ) then
			set x=GetRectCenterX(regionM1[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM1[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I05J","1")
//textmacro instance: EnterSpecifyExercise("I053","2")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I053' ) ) then
			set x=GetRectCenterX(regionM2[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM2[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I053","2")
//textmacro instance: EnterSpecifyExercise("I05K","3")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I05K' ) ) then
			set x=GetRectCenterX(regionM3[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM3[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I05K","3")
//textmacro instance: EnterSpecifyExercise("I06Y","4")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I06Y' ) ) then
			set x=GetRectCenterX(regionM4[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM4[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I06Y","4")
//textmacro instance: EnterSpecifyExercise("I06Z","5")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I06Z' ) ) then
			set x=GetRectCenterX(regionM5[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM5[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I06Z","5")
//textmacro instance: EnterSpecifyExercise("I03Z","6")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I03Z' ) ) then
			set x=GetRectCenterX(regionM6[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM6[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I03Z","6")
	endfunction
//---------------------------------------------------------------------------------------------------

 function Exercise___InitExercise takes nothing returns nothing
		call Exercise___InitExerciseRegions()
		call Exercise___InitExerciseTrigger()

	endfunction


//library Exercise ends
//library Multiboard:

//---------------------------------------------------------------------------------------------------
	
 function AddCenterCredit takes unit u returns nothing
  local integer index
		if ( udg_RENSHU > 1 ) then
			set index=GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index]=centerCredit[index] + udg_Bo
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
 function Multiboard___InitMultiboard takes nothing returns nothing
		
	endfunction

//library Multiboard ends
//library PIV:

//---------------------------------------------------------------------------------------------------
 function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction
	
//---------------------------------------------------------------------------------------------------
 function PIV___InitPIV takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6

			set sPIV[i]=false

			set i=i + 1
		endloop
	endfunction


//library PIV ends
//library CenterCredit:
	

//---------------------------------------------------------------------------------------------------
	
	
 function CenterCredit___TBuySoliderAct takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
  local real x
  local real y
		call BJDebugMsg("TBuySoliderActOut")

//textmacro instance: BuySoldier("uG01","1")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG01' ) then
			call BJDebugMsg("TBuySoliderActIn")
			if ( centerCredit[index] < CenterCredit___CREDIT_SOLIDER_1 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit___CREDIT_SOLIDER_1))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit___CREDIT_SOLIDER_1
			set x=GetRectCenterX(regionM1[index])
			set y=GetRectCenterX(regionM1[index])

			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG01","1")
//textmacro instance: BuySoldier("uG02","2")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG02' ) then
			call BJDebugMsg("TBuySoliderActIn")
			if ( centerCredit[index] < CenterCredit___CREDIT_SOLIDER_2 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit___CREDIT_SOLIDER_2))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit___CREDIT_SOLIDER_2
			set x=GetRectCenterX(regionM2[index])
			set y=GetRectCenterX(regionM2[index])

			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG02","2")
//textmacro instance: BuySoldier("uG03","3")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG03' ) then
			call BJDebugMsg("TBuySoliderActIn")
			if ( centerCredit[index] < CenterCredit___CREDIT_SOLIDER_3 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit___CREDIT_SOLIDER_3))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit___CREDIT_SOLIDER_3
			set x=GetRectCenterX(regionM3[index])
			set y=GetRectCenterX(regionM3[index])

			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG03","3")
//textmacro instance: BuySoldier("uG04","4")	
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG04' ) then
			call BJDebugMsg("TBuySoliderActIn")
			if ( centerCredit[index] < CenterCredit___CREDIT_SOLIDER_4 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit___CREDIT_SOLIDER_4))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit___CREDIT_SOLIDER_4
			set x=GetRectCenterX(regionM4[index])
			set y=GetRectCenterX(regionM4[index])

			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG04","4")	

		if ( GetUnitTypeId(GetSoldUnit()) == 'uG05' ) then
			if ( (sPIV[GetConvertedPlayerId((GetOwningPlayer(GetBuyingUnit())))]) == true ) then // INLINED!!
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if ( udg_Bo < 18 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到18波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x=GetRectCenterX(regionM5[index])
			set y=GetRectCenterX(regionM5[index])
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif

		if ( GetUnitTypeId(GetSoldUnit()) == 'uG06' ) then
			if ( (sPIV[GetConvertedPlayerId((GetOwningPlayer(GetBuyingUnit())))]) == true ) then // INLINED!!
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if ( udg_Bo < 22 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到22波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x=GetRectCenterX(regionM6[index])
			set y=GetRectCenterX(regionM6[index])
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CenterCredit___InitCenterCredit takes nothing returns nothing
  local integer i= 1
  local trigger t= CreateTrigger()
		call BJDebugMsg("初始化~")
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) then
				call TriggerRegisterUnitEvent(t, CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[i]) + 300, GetRectCenterY(regionM1[i]) - 300, 270), EVENT_UNIT_SELL)
			set i=i + 1
			endif
		endloop
		call TriggerAddAction(t, function CenterCredit___TBuySoliderAct)
		set t=null
	endfunction


//library CenterCredit ends


// BEGIN IMPORT OF CenterCredit.j

// BEGIN IMPORT OF LHBase.j


// BEGIN IMPORT OF Test.j

// BEGIN IMPORT OF dependency/YDWESetGuard.j

//===========================================================================
//Ӷ��ϵͳ 
//===========================================================================


// END IMPORT OF dependency/YDWESetGuard.j
// BEGIN IMPORT OF dependency/YDWETriggerEvent.j

//===========================================================================  
//===========================================================================  
//�Զ����¼� 
//===========================================================================
//===========================================================================   


// END IMPORT OF dependency/YDWETriggerEvent.j
// BEGIN IMPORT OF dependency/YDWETimerSystem.j
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================


// END IMPORT OF dependency/YDWETimerSystem.j
// BEGIN IMPORT OF dependency/YDWETimerPattern.j


// END IMPORT OF dependency/YDWETimerPattern.j
// BEGIN IMPORT OF dependency/YDWEBase_common.j

//===========================================================================
//返回参数
//===========================================================================
//地图边界判断

// END IMPORT OF dependency/YDWEBase_common.j
// BEGIN IMPORT OF dependency/YDWEBase_hashtable.j
// END IMPORT OF dependency/YDWEBase_hashtable.j
// END IMPORT OF Test.j
// END IMPORT OF LHBase.j
// BEGIN IMPORT OF PIV.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF PIV.j
// BEGIN IMPORT OF Multiboard.j

// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Multiboard.j
// BEGIN IMPORT OF Exercise.j
// IGNORE DOUBLE IMPORT OF LHBase.j
	



// END IMPORT OF Exercise.j

// END IMPORT OF CenterCredit.j
function main takes nothing returns nothing

call ExecuteFunc("Test___InitTest")
call ExecuteFunc("LHBase___InitLHBase")
call ExecuteFunc("Exercise___InitExercise")
call ExecuteFunc("Multiboard___InitMultiboard")
call ExecuteFunc("PIV___InitPIV")
call ExecuteFunc("CenterCredit___InitCenterCredit")

endfunction



//Struct method generated initializers/callers:

