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
boolexpr YDWETimerPattern__Bexpr= null
rect YDWETimerPattern__Area= null
integer YDWETimerPattern__tmp_data
location YDWETimerPattern__yd_loc= Location(0.0, 0.0)
//endglobals from YDWETimerPattern
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem__CurrentTime
integer YDWETimerSystem__CurrentIndex
integer YDWETimerSystem__TaskListHead
integer YDWETimerSystem__TaskListIdleHead
integer YDWETimerSystem__TaskListIdleMax
integer array YDWETimerSystem__TaskListIdle
integer array YDWETimerSystem__TaskListNext
integer array YDWETimerSystem__TaskListTime
trigger array YDWETimerSystem__TaskListProc
trigger YDWETimerSystem__fnRemoveUnit
trigger YDWETimerSystem__fnDestroyTimer
trigger YDWETimerSystem__fnRemoveItem
trigger YDWETimerSystem__fnDestroyEffect
trigger YDWETimerSystem__fnDestroyLightning
trigger YDWETimerSystem__fnRunTrigger
timer YDWETimerSystem__Timer
integer YDWETimerSystem__TimerHandle

integer YDWETimerSystem__TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger array YDWETriggerEvent__DamageEventQueue
integer YDWETriggerEvent__DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent__MoveItemEventTrigger= null
trigger array YDWETriggerEvent__MoveItemEventQueue
integer YDWETriggerEvent__MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from Test:
constant boolean LIBRARY_Test=true
		
    //复活
location udg_Point_Fuhuo
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
sound gg_snd_Chenggong
sound gg_snd_Shibai
        
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

        
rect gg_rct______________095

        
unit array udg_U_Zhuansheng_Dantiao
integer array udg_Z
        
rect gg_rct_QuitRegion
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero
        
unit array UDepot
//endglobals from LHBase
//globals from Beast:
constant boolean LIBRARY_Beast=true

hashtable beastTable
		
constant integer Beast__kU=3
constant integer Beast__kr=5
constant integer Beast__kg=7
constant integer Beast__kb=9
constant integer Beast__ksr=11
constant integer Beast__ksg=13
constant integer Beast__ksb=15
constant integer Beast__kBeastItem=17

		
unit array Unit_Beast

constant integer DAMAGE_BEAST_00= 30000
constant integer DAMAGE_BEAST_01= 160000
constant integer DAMAGE_BEAST_02= 500000
constant integer DAMAGE_BEAST_03= 1300000
constant integer DAMAGE_BEAST_04= 3500000
constant integer DAMAGE_BEAST_05= 8000000
constant integer DAMAGE_BEAST_06= 20000000
constant integer DAMAGE_BEAST_07= 40000000
constant integer DAMAGE_BEAST_08= 60000000
constant integer DAMAGE_BEAST_09= 120000000
		
constant integer CHARGES_BEAST= 100
//endglobals from Beast
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
hashtable spellTable= InitHashtable()
constant integer kUImmuteDamage=19
//endglobals from SpellBase
//globals from Lingxue:
constant boolean LIBRARY_Lingxue=true
unit lingxue= null
//endglobals from Lingxue
//globals from Revive:
constant boolean LIBRARY_Revive=true
//endglobals from Revive
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
constant integer si__Attract=1
integer si__Attract_F=0
integer si__Attract_I=0
integer array si__Attract_V
unit array s__Attract_caster
real array s__Attract_radius
real array s__Attract_interval
real array s__Attract_speed
timer array s__Attract_t
constant integer si__Missile=2
integer si__Missile_F=0
integer si__Missile_I=0
integer array si__Missile_V
unit array s__Missile_caster
string array s__Missile_effx
real array s__Missile_radius
real array s__Missile_interval1
real array s__Missile_interval2
real array s__Missile_damage
real array s__Missile_x
real array s__Missile_y
timer array s__Missile_t
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
trigger st__Missile__staticgetindex
trigger st__Missile_onDestroy
trigger st__Missile_destroy
handle f__arg_handle1
integer f__arg_this
integer f__result_integer

endglobals


//Generated method caller for Attract._staticgetindex
function sc__Attract__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__Attract__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for Attract.onDestroy
function sc__Attract_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Attract_onDestroy)
endfunction

//Generated allocator of Attract
function s__Attract__allocate takes nothing returns integer
 local integer this=si__Attract_F
    if (this!=0) then
        set si__Attract_F=si__Attract_V[this]
    else
        set si__Attract_I=si__Attract_I+1
        set this=si__Attract_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Attract_V[this]=-1
 return this
endfunction

//Generated destructor of Attract
function sc__Attract_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Attract_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Attract_onDestroy)
    set si__Attract_V[this]=si__Attract_F
    set si__Attract_F=this
endfunction

//Generated method caller for Missile._staticgetindex
function sc__Missile__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__Missile__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for Missile.onDestroy
function sc__Missile_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Missile_onDestroy)
endfunction

//Generated allocator of Missile
function s__Missile__allocate takes nothing returns integer
 local integer this=si__Missile_F
    if (this!=0) then
        set si__Missile_F=si__Missile_V[this]
    else
        set si__Missile_I=si__Missile_I+1
        set this=si__Missile_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Missile_V[this]=-1
 return this
endfunction

//Generated destructor of Missile
function sc__Missile_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Missile_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Missile_onDestroy)
    set si__Missile_V[this]=si__Missile_F
    set si__Missile_F=this
endfunction

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
function YDWESetGuard__IsUnitIdle takes unit u returns boolean
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

    function CreateBoom takes unit source,real angle,real distance,real speed,real interval,real damage,real radius,string geff returns nothing
    endfunction

//library YDWETimerPattern ends
//library YDWETimerSystem:


function YDWETimerSystemNewTask takes real time,trigger proc returns integer
    return 1
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
    return YDWETimerSystem__CurrentIndex
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
    return YDWETimerSystem__TimerSystem_RunIndex
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


 function Test__InitTest takes nothing returns nothing
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

    

    function CreateUnitEffectSpecifyTime takes player whichPlayer,integer unitType,real x,real y,real facing,real time returns nothing
        call UnitApplyTimedLifeBJ(time, 'BHwe', CreateUnit(whichPlayer, unitType, x, y, facing))
    endfunction

 function CreateUnitEffect takes player whichPlayer,integer unitType,real x,real y,real facing returns nothing
        call CreateUnitEffectSpecifyTime(whichPlayer , unitType , x , y , facing , 5)
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
    
    function HasLiuli takes unit u returns boolean
        return ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IXU1')) == 'IXU1' )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function KillSelf takes unit u returns nothing
        call UnitDamageTarget(u, u, GetUnitState(u, UNIT_STATE_MAX_LIFE) * 2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
    endfunction
//---------------------------------------------------------------------------------------------------
    function LHBase__InitLHBase takes nothing returns nothing
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

    endfunction

//library LHBase ends
//library Beast:
	

//---------------------------------------------------------------------------------------------------
	

 function Beast__isOutOfRange takes integer i returns boolean
		return ( ( i > 255 ) or ( i < 0 ) )
	endfunction

 function Beast__GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i), 255)
	endfunction

 function Beast__DiscolorTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(beastTable, id, Beast__kU)
  local integer r= LoadInteger(beastTable, id, Beast__kr)
  local integer g= LoadInteger(beastTable, id, Beast__kg)
  local integer b= LoadInteger(beastTable, id, Beast__kb)
  local integer sr= LoadInteger(beastTable, id, Beast__ksr)
  local integer sg= LoadInteger(beastTable, id, Beast__ksg)
  local integer sb= LoadInteger(beastTable, id, Beast__ksb)
		if ( IsUnitAliveBJ(u) == true ) then


//textmacro instance: ChangeColor("r")
				
			if ( sr > 0 ) then
				set r=r + GetRandomInt(0, sr)
			else
				set r=r + GetRandomInt(sr, 0)
			endif
			if ( Beast__isOutOfRange(r) ) then
				set r=(IMinBJ(IAbsBJ((r)), 255)) // INLINED!!
				if ( sr > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksr, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksr, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast__kr, r)
//end of: ChangeColor("r")
//textmacro instance: ChangeColor("g")
				
			if ( sg > 0 ) then
				set g=g + GetRandomInt(0, sg)
			else
				set g=g + GetRandomInt(sg, 0)
			endif
			if ( Beast__isOutOfRange(g) ) then
				set g=(IMinBJ(IAbsBJ((g)), 255)) // INLINED!!
				if ( sg > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksg, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksg, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast__kg, g)
//end of: ChangeColor("g")
//textmacro instance: ChangeColor("b")
				
			if ( sb > 0 ) then
				set b=b + GetRandomInt(0, sb)
			else
				set b=b + GetRandomInt(sb, 0)
			endif
			if ( Beast__isOutOfRange(b) ) then
				set b=(IMinBJ(IAbsBJ((b)), 255)) // INLINED!!
				if ( sb > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksb, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast__ksb, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast__kb, b)
//end of: ChangeColor("b")
    		call SetUnitVertexColor(u, r, g, b, 255)

		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(beastTable, id)
		endif
		set t=null
		set u=null
	endfunction

 function Discolor takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(beastTable, GetHandleId(t), Beast__kU, u)
		call SaveInteger(beastTable, GetHandleId(t), Beast__kr, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast__kg, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast__kb, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast__ksr, GetRandomInt(20, 60))
		call SaveInteger(beastTable, GetHandleId(t), Beast__ksg, GetRandomInt(20, 60))
		call SaveInteger(beastTable, GetHandleId(t), Beast__ksb, GetRandomInt(20, 60))

		call TimerStart(t, 0.1, true, function Beast__DiscolorTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Beast__CreateBeast takes unit captain,integer itemId returns nothing
  local integer unitID= LoadInteger(beastTable, Beast__kBeastItem, itemId)
  local unit u= CreateUnit(GetOwningPlayer(captain), unitID, GetUnitX(captain), GetUnitY(captain), 0)
		//变色
		if ( ( unitID == 'ub08' ) or ( unitID == 'ub09' ) ) then
			call Discolor(u)
		endif
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))]=u
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(captain), GetUnitY(captain)))
		call YDWESetGuard(u , captain , 1 , 600 , 600 , 600 , 100)
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast__IsBeast takes item i returns boolean
		return GetItemTypeId(i) == 'IB00' or GetItemTypeId(i) == 'IB01' or GetItemTypeId(i) == 'IB02' or GetItemTypeId(i) == 'IB03' or GetItemTypeId(i) == 'IB04' or GetItemTypeId(i) == 'IB05' or GetItemTypeId(i) == 'IB06' or GetItemTypeId(i) == 'IB07' or GetItemTypeId(i) == 'IB08' or GetItemTypeId(i) == 'IB09'
	endfunction
	
 function Beast__UnitHasBeastInSlot takes unit u,integer slot returns boolean
		return Beast__IsBeast(UnitItemInSlotBJ(u, slot))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast__GetBeastInUnit takes unit u returns item

  local integer i= 1
		loop
			exitwhen i > 6
			if ( (Beast__IsBeast(UnitItemInSlotBJ((u ), ( i)))) ) then // INLINED!!
				return UnitItemInSlotBJ(u, i)
			endif
			set i=i + 1
		endloop
		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast__TBeastEquitAct takes nothing returns nothing
  local integer i= 1
  local integer beastCount= 0
		loop
			exitwhen i > 6
			if ( (Beast__IsBeast(UnitItemInSlotBJ((GetTriggerUnit() ), ( i)))) ) then // INLINED!!
				set beastCount=beastCount + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( beastCount > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时装备上一个魔兽！")
			return
		elseif ( beastCount == 1 ) then
		//产生相对应的魔兽操作
			call Beast__CreateBeast(GetTriggerUnit() , GetItemTypeId(GetManipulatedItem()))
		endif

	endfunction

 function Beast__TBeastEquitCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true ) and ( Beast__IsBeast(GetManipulatedItem()) == true )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RemoveBeast takes unit u returns nothing
		call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))])
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))]=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ReviveBeast takes unit u returns nothing
		if ( Beast__GetBeastInUnit(u) != null ) then
			call Beast__CreateBeast(u , GetItemTypeId(Beast__GetBeastInUnit(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast__TBeastDropAct takes nothing returns nothing

  local integer i= 1
  local integer beastCount= 0
		loop
			exitwhen i > 6
			if ( (Beast__IsBeast(UnitItemInSlotBJ((GetTriggerUnit() ), ( i)))) ) then // INLINED!!
				set beastCount=beastCount + 1
			endif
			set i=i + 1
		endloop
		if ( beastCount != 2 ) then
			call RemoveBeast(GetManipulatingUnit())
		endif
	endfunction

 function Beast__TBeastDropCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true ) and ( Beast__IsBeast(GetManipulatedItem()) == true )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast__TBeastDamageAct takes nothing returns nothing
  local integer unitID= GetUnitTypeId(GetEventDamageSource())
  local integer playerID= GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
  local item beast= Beast__GetBeastInUnit(udg_H[playerID])


		//魔兽怒吼
		if ( GetUnitAbilityLevel(Unit_Beast[playerID], 'ABe9') >= 1 ) then
			
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
			if ( GetItemCharges(beast) > CHARGES_BEAST ) then
					call CreateTextTagA(("魔兽怒吼!" ) , ( Unit_Beast[playerID] ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
 					call SimulateSpell(Unit_Beast[playerID] , Unit_Beast[playerID] , 'A0CR' , 1 , 5 , "stomp" , false , true , false)
					call SetItemCharges(beast, 0)
			endif
		endif

		

//textmacro instance: DamageBeast1("00")
		if ( unitID == 'ub00' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_00, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("00")
//textmacro instance: DamageBeast1("01")
		if ( unitID == 'ub01' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_01, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("01")
//textmacro instance: DamageBeast1("02")
		if ( unitID == 'ub02' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_02, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("02")
//textmacro instance: DamageBeast1("03")
		if ( unitID == 'ub03' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_03, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("03")
//textmacro instance: DamageBeast1("04")
		if ( unitID == 'ub04' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_04, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("04")
//textmacro instance: DamageBeast1("05")
		if ( unitID == 'ub05' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_05, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("05")
//textmacro instance: DamageBeast1("06")
		if ( unitID == 'ub06' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_06, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("06")
//textmacro instance: DamageBeast1("07")
		if ( unitID == 'ub07' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_07, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("07")
//textmacro instance: DamageBeast1("08")
		if ( unitID == 'ub08' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_08, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("08")
//textmacro instance: DamageBeast1("09")
		if ( unitID == 'ub09' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_09, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("09")

	endfunction

 function Beast__TBeastDamageCon takes nothing returns boolean
		return ( ( GetEventDamage() > 0 ) and ( IsUnitIllusion(GetEventDamageSource()) == false ) and ( GetEventDamageSource() == Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))] ) )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CombineBeast takes unit u returns nothing

		
//textmacro instance: SummonBeast("IB00","IMJ1","IB01")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB00')) == 'IB00' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ1')) == 'IMJ1' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB00')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ1')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ1'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB00'))
            call UnitAddItemById(u, 'IB01')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB00","IMJ1","IB01")
//textmacro instance: SummonBeast("IB01","IMJ2","IB02")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB01')) == 'IB01' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ2')) == 'IMJ2' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB01')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ2')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ2'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB01'))
            call UnitAddItemById(u, 'IB02')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB01","IMJ2","IB02")
//textmacro instance: SummonBeast("IB02","IMJ3","IB03")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB02')) == 'IB02' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ3')) == 'IMJ3' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB02')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ3')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ3'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB02'))
            call UnitAddItemById(u, 'IB03')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB02","IMJ3","IB03")
//textmacro instance: SummonBeast("IB03","IMJ4","IB04")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB03')) == 'IB03' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ4')) == 'IMJ4' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB03')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ4')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ4'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB03'))
            call UnitAddItemById(u, 'IB04')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB03","IMJ4","IB04")
//textmacro instance: SummonBeast("IB04","IMJ5","IB05")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB04')) == 'IB04' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ5')) == 'IMJ5' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB04')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ5')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ5'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB04'))
            call UnitAddItemById(u, 'IB05')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB04","IMJ5","IB05")
//textmacro instance: SummonBeast("IB05","IMJ6","IB06")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB05')) == 'IB05' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ6')) == 'IMJ6' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB05')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ6')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ6'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB05'))
            call UnitAddItemById(u, 'IB06')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB05","IMJ6","IB06")
//textmacro instance: SummonBeast("IB06","IMJ7","IB07")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB06')) == 'IB06' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ7')) == 'IMJ7' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB06')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ7')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ7'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB06'))
            call UnitAddItemById(u, 'IB07')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB06","IMJ7","IB07")
//textmacro instance: SummonBeast("IB07","IMJ8","IB08")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB07')) == 'IB07' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ8')) == 'IMJ8' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB07')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ8')) == true ) ) then
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ8'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB07'))
            call UnitAddItemById(u, 'IB08')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB07","IMJ8","IB08")
	endfunction        
     
//---------------------------------------------------------------------------------------------------

	
 function Beast__initBeastItem takes nothing returns nothing
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB00', 'ub00')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB01', 'ub01')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB02', 'ub02')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB03', 'ub03')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB04', 'ub04')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB05', 'ub05')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB06', 'ub06')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB07', 'ub07')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB08', 'ub08')
		call SaveInteger(beastTable, Beast__kBeastItem, 'IB09', 'ub09')
	endfunction
//---------------------------------------------------------------------------------------------------

 function Beast__InitBeast takes nothing returns nothing
		//初始化
  local trigger t= CreateTrigger()
		set beastTable=InitHashtable()
		call Beast__initBeastItem()

		//只能同时装备一个魔兽
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function Beast__TBeastEquitCon))
		call TriggerAddAction(t, function Beast__TBeastEquitAct)

		//魔兽伤害事件
		set t=CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddCondition(t, Condition(function Beast__TBeastDamageCon))
		call TriggerAddAction(t, function Beast__TBeastDamageAct)

		//丢弃魔兽事件
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function Beast__TBeastDropCon))
		call TriggerAddAction(t, function Beast__TBeastDropAct)
		set t=null
	endfunction

//library Beast ends
//library SpellBase:


//---------------------------------------------------------------------------------------------------


  function s__Attract_attract takes nothing returns nothing
   local real x1
   local real y1
   local real x2
   local real y2
   local real facing
   local real distance
   local integer this= sc__Attract__staticgetindex(GetExpiredTimer())
   local group l_group= CreateGroup()
   local unit l_unit
			if ( IsUnitAliveBJ(s__Attract_caster[this]) ) then
				call GroupEnumUnitsInRange(l_group, GetUnitX(s__Attract_caster[this]), GetUnitY(s__Attract_caster[this]), s__Attract_radius[this], null)
				loop
				    set l_unit=FirstOfGroup(l_group)
				    exitwhen l_unit == null
				    call GroupRemoveUnit(l_group, l_unit)
				    if ( IsEnemy(l_unit , s__Attract_caster[this]) ) then
				    	set x2=GetUnitX(l_unit)
				    	set y2=GetUnitY(l_unit)
				    	set x1=GetUnitX(s__Attract_caster[this])
				    	set y1=GetUnitY(s__Attract_caster[this])
				    	set distance=SquareRoot(( x1 - x2 ) * ( x1 - x2 ) + ( y1 - y2 ) * ( y1 - y2 ))
				    	if ( distance > 80 ) then
				    	set facing=Atan2BJ(y1 - y2, x1 - x2)
				    	call SetUnitX(l_unit, (RMinBJ(RMaxBJ(((x2 + CosBJ(facing) * s__Attract_speed[this])*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
				    	call SetUnitY(l_unit, (RMinBJ(RMaxBJ(((y2 + SinBJ(facing) * s__Attract_speed[this])*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
				    	endif
				    endif
				endloop
				call DestroyGroup(l_group)
			else
				call sc__Attract_deallocate(this)
			endif
			set l_group=null
			set l_unit=null
  endfunction

        function s__Attract__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__Attract__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__Attract_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__Attract_create takes unit caster,real radius,real interval,real speed returns integer
      local integer this= s__Attract__allocate()
      local timer t
			set s__Attract_caster[this]=caster
			set s__Attract_radius[this]=radius
			set s__Attract_interval[this]=interval
			set s__Attract_speed[this]=speed
			return this
  endfunction

  function s__Attract_start takes integer this returns nothing
			set s__Attract_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Attract_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__Attract_t[this], s__Attract_interval[this], true, function s__Attract_attract)
  endfunction

  function s__Attract_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Attract_t[this])))))))) // INLINED!!
			set s__Attract_caster[this]=null
			call PauseTimer(s__Attract_t[this])
			call DestroyTimer(s__Attract_t[this])
			set s__Attract_t[this]=null
  endfunction

//Generated destructor of Attract
function s__Attract_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Attract_V[this]!=-1) then
        return
    endif
    call s__Attract_onDestroy(this)
    set si__Attract_V[this]=si__Attract_F
    set si__Attract_F=this
endfunction

//---------------------------------------------------------------------------------------------------



  function s__Missile_explode takes nothing returns nothing
   local integer this= sc__Missile__staticgetindex(GetExpiredTimer())
   local group l_group= CreateGroup()
   local unit l_unit
			call GroupEnumUnitsInRange(l_group, s__Missile_x[this], s__Missile_y[this], s__Missile_radius[this], null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsEnemy(l_unit , s__Missile_caster[this]) == true ) then
			    	call UnitDamageTarget(s__Missile_caster[this], l_unit, s__Missile_damage[this], false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null
			call sc__Missile_deallocate(this)
  endfunction

  function s__Missile_launch takes nothing returns nothing
   local integer this= sc__Missile__staticgetindex(GetExpiredTimer())
			call DestroyEffect(AddSpecialEffect(s__Missile_effx[this], s__Missile_x[this], s__Missile_y[this]))
			call PauseTimer(s__Missile_t[this])
			call TimerStart(s__Missile_t[this], s__Missile_interval2[this], false, function s__Missile_explode)

  endfunction


        function s__Missile__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__Missile__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__Missile_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__Missile_create takes unit caster,integer preview,string effx,real radius,real range,real interval1,real interval2,real damage returns integer
      local integer this= s__Missile__allocate()
      local real Rangel= GetRandomReal(- 180, 180)
      local real Rradius= GetRandomReal(radius, range)
		   	set s__Missile_x[this]=GetUnitX(caster) + Rradius * CosBJ(Rangel)
		   	set s__Missile_y[this]=GetUnitY(caster) + Rradius * SinBJ(Rangel)
			set s__Missile_caster[this]=caster
			set s__Missile_effx[this]=effx
			set s__Missile_radius[this]=radius
			set s__Missile_interval1[this]=interval1
			set s__Missile_interval2[this]=interval2
			set s__Missile_damage[this]=damage

			set s__Missile_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Missile_t[this]))))) )), ( ( (this)))) // INLINED!!
			call UnitApplyTimedLifeBJ(interval1 + interval2, 'BHwe', CreateUnit(GetOwningPlayer(s__Missile_caster[this]), preview, s__Missile_x[this], s__Missile_y[this], 0))
			call TimerStart(s__Missile_t[this], s__Missile_interval1[this], false, function s__Missile_launch)
			return this
  endfunction


  function s__Missile_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Missile_t[this])))))))) // INLINED!!
			set s__Missile_caster[this]=null
			call PauseTimer(s__Missile_t[this])
			call DestroyTimer(s__Missile_t[this])
			set s__Missile_t[this]=null
  endfunction

//Generated destructor of Missile
function s__Missile_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Missile_V[this]!=-1) then
        return
    endif
    call s__Missile_onDestroy(this)
    set si__Missile_V[this]=si__Missile_F
    set si__Missile_F=this
endfunction


	
 function SpellBase___ImmuteDamageTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, kUImmuteDamage)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(spellTable, id)
		call SetUnitInvulnerable(u, false)
		set u=null
		set t=null
	endfunction

 function ImmuteDamageInterval takes unit u,real time returns nothing
  local timer t= CreateTimer()
		call SetUnitInvulnerable(u, true)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUImmuteDamage, u)
		call TimerStart(t, time, false, function SpellBase___ImmuteDamageTimer)
		set t=null
	endfunction

 function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u , 0)
	endfunction

//---------------------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------------------

	
 function GetDamageStr takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) * 1.80 ) + ( GetHeroAgi(uH, true) ) + ( GetHeroInt(uH, true) * 1.20 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH=null
		return damage
	endfunction
	
 function GetDamageAgi takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) ) + ( GetHeroAgi(uH, true) * 1.80 ) + ( GetHeroInt(uH, true) * 1.20 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH=null
		return damage
	endfunction

	
 function GetDamageInt takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) ) + ( GetHeroAgi(uH, true) ) + ( GetHeroInt(uH, true) * 2.0 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH=null
		return damage
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsSecondSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R006', GetOwningPlayer(hero)) == 1
	endfunction

	
 function IsThirdSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R007', GetOwningPlayer(hero)) == 1
	endfunction

	
 function IsFourthSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R008', GetOwningPlayer(hero)) == 1
	endfunction

	
 function IsFifthSpellOK takes unit hero returns boolean
		return ( GetPlayerTechCountSimple('R009', GetOwningPlayer(hero)) == 1 ) and ( GetPlayerTechCountSimple('R00A', GetOwningPlayer(hero)) == 1 ) and ( GetPlayerTechCountSimple('R00B', GetOwningPlayer(hero)) == 1 )
	endfunction
//---------------------------------------------------------------------------------------------------



//library SpellBase ends
//library Lingxue:
	
//---------------------------------------------------------------------------------------------------
	
 function AfterReviveLingxue takes unit u returns nothing
		if ( u == lingxue ) then
    		call SetUnitPathing(lingxue, false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function InitLingxue takes unit u returns nothing

		set lingxue=u
	endfunction


//library Lingxue ends
//library Revive:
	

//---------------------------------------------------------------------------------------------------
	
function TReviveHeroCon takes nothing returns boolean
    return ( ( IsUnitIllusionBJ(GetRevivingUnit()) == false ) and ( GetRevivingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))] ) )
endfunction

function TReviveHeroAct takes nothing returns nothing
	call ReviveBeast(GetRevivingUnit())
	call AfterReviveLingxue(GetRevivingUnit())
	if ( GetPlayerSlotState(GetOwningPlayer(GetRevivingUnit())) == PLAYER_SLOT_STATE_LEFT ) then
		call SetUnitPosition(GetRevivingUnit(), GetRectCenterX(gg_rct_QuitRegion), GetRectCenterY(gg_rct_QuitRegion))
	    call SetUnitInvulnerable(GetRevivingUnit(), true)
	    call PauseUnitBJ(true, GetRevivingUnit())
	endif
endfunction

//---------------------------------------------------------------------------------------------------

 function Revive___InitRevive takes nothing returns nothing
  local trigger t= CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_HERO_REVIVE_FINISH)
	    call TriggerAddCondition(t, Condition(function TReviveHeroCon))
	    call TriggerAddAction(t, function TReviveHeroAct)
	endfunction

//library Revive ends


// BEGIN IMPORT OF Revive.j

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
// BEGIN IMPORT OF Beast.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Beast.j
// BEGIN IMPORT OF Lingxue.j
// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j

 
// END IMPORT OF SpellBase.j
// END IMPORT OF Lingxue.j
// END IMPORT OF Revive.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs5884718")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Beast__InitBeast")
call ExecuteFunc("Revive___InitRevive")

endfunction



//Struct method generated initializers/callers:
function sa__Attract__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Attract_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Attract_t[this])))))))) // INLINED!!
			set s__Attract_caster[this]=null
			call PauseTimer(s__Attract_t[this])
			call DestroyTimer(s__Attract_t[this])
			set s__Attract_t[this]=null
   return true
endfunction
function sa__Missile__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Missile_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Missile_t[this])))))))) // INLINED!!
			set s__Missile_caster[this]=null
			call PauseTimer(s__Missile_t[this])
			call DestroyTimer(s__Missile_t[this])
			set s__Missile_t[this]=null
   return true
endfunction

function jasshelper__initstructs5884718 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))



endfunction

