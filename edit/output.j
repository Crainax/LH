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
        //圣主分身
unit gg_unit_Ekgg_0259
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

        
integer array udg_I_Er_diansi
        
integer array udg_Laser

        
trigger gg_trg_papa8____________u
trigger gg_trg_papa9____________u
trigger gg_trg_papa10____________u
        
trigger gg_trg_____________800W
trigger gg_trg___________________4000______u
trigger gg_trg_HP_____________________u
unit udg_Unit
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero
        
unit array UDepot

hashtable itemTable= InitHashtable()
//endglobals from LHBase
//globals from Attr:
constant boolean LIBRARY_Attr=true
//endglobals from Attr
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
hashtable spellTable= InitHashtable()
constant integer kUImmuteDamage=4
//endglobals from SpellBase
//globals from Huanyi:
constant boolean LIBRARY_Huanyi=true
		
unit Huanyi= null

		
trigger Huanyi__TSpellHuanyi= null

		
boolean Huanyi__IsFire= false
boolean Huanyi__IsWater= false
boolean Huanyi__IsLumber= false
boolean Huanyi__IsWind= false
integer Huanyi__ICurrentSpell= 'AHH5'
		
integer Huanyi__IMoneng= 0

		
constant integer kNoneIntTimes=6
		
constant integer kUHuanyiQuan=8
		
constant integer kUGuCan=10
constant integer kIGuCan=12
		
constant integer kHuanyuTimes=14

		
texttag Huanyi__TTMoneng
effect Huanyi__ELowMoneng= null
//endglobals from Huanyi
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
    
    function IsAlly takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) and IsUnitAlly(u, GetOwningPlayer(caster))
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

    
    function SimulateSpell4 takes unit caster,real x,real y,integer spellId,integer spellLevel,real lifeTime,string orderId returns nothing
        local unit u= CreateUnit(GetOwningPlayer(caster), 'h01B', x, y, 0)
        call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ(spellId, u)
        call SetUnitAbilityLevel(u, spellId, spellLevel)
        call IssuePointOrder(u, orderId, x, y)
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
    
    function RecoverUnitHP takes unit u,real volume returns nothing
        call SetUnitLifeBJ(u, GetUnitState(u, UNIT_STATE_LIFE) + GetUnitState(u, UNIT_STATE_MAX_LIFE) * volume)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function RecoverUnitMP takes unit u,real volume returns nothing
        call SetUnitManaBJ(u, GetUnitState(u, UNIT_STATE_MANA) + volume)
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
//library Attr:
	
//---------------------------------------------------------------------------------------------------
	
 function AddHPPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID + 18 )]=udg_I_Xianglian[( playerID + 18 )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddAgiPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID + 6 )]=udg_I_Xianglian[( playerID + 6 )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddAgiPercentImme takes integer playerID,real value returns nothing
		call AddAgiPercent(playerID , value)
    	call TriggerExecute(gg_trg_papa9____________u)
	endfunction

	
 function GetAgiPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 6 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddStrPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID )]=udg_I_Xianglian[( playerID )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddStrPercentImme takes integer playerID,real value returns nothing
		call AddStrPercent(playerID , value)
    	call TriggerExecute(gg_trg_papa8____________u)
	endfunction

	
 function GetStrPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddIntPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID + 12 )]=udg_I_Xianglian[( playerID + 12 )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddIntPercentImme takes integer playerID,real value returns nothing
		call AddIntPercent(playerID , value)
    call TriggerExecute(gg_trg_papa10____________u)
	endfunction

	
 function GetIntPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 12 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddMoneyPercent takes integer playerID,real value returns nothing
		set udg_I_Jinqianhuodelv[playerID]=udg_I_Jinqianhuodelv[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddSpellPercent takes integer playerID,real value returns nothing
		set udg_I_Jinengjiacheng[playerID]=udg_I_Jinengjiacheng[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetAttack takes unit u,integer attack returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x5039AFFB, attack)
	    call TriggerExecute(gg_trg_____________800W)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function SetDefense takes unit u,integer defense returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x81FD3994, defense)
	    call TriggerExecute(gg_trg___________________4000______u)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetHP takes unit u,integer hp returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0xFCD961C9, hp)
    	call TriggerExecute(gg_trg_HP_____________________u)
	endfunction
//---------------------------------------------------------------------------------------------------

 function Attr__InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library Printer:

//---------------------------------------------------------------------------------------------------
	

 function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r伤害加成" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage)) + addtional + "." ) ) ))
	endfunction

 function PrintSpell takes player whichPlayer,string spellName,real damage returns nothing
		call PrintSpellAdd(whichPlayer , spellName , damage , "")
	endfunction
	
 function PrintSpellContent takes player whichPlayer,string spellName,string content returns nothing
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r" + content ))
	endfunction

 function PrintSpellName takes player whichPlayer,string spellName returns nothing
		call DisplayTextToPlayer((whichPlayer ), 0, 0, ( "|cFFFF66CC【|r" + ( spellName ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

 function Printer__InitPrinter takes nothing returns nothing
		
	endfunction


//library Printer ends
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
      local real Rradius= GetRandomReal(0, range)
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

//---------------------------------------------------------------------------------------------------

	
 function SpellBase__ImmuteDamageTimer takes nothing returns nothing
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
		call TimerStart(t, time, false, function SpellBase__ImmuteDamageTimer)
		set t=null
	endfunction

 function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u , 0)
	endfunction

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
//library Huanyi:
	
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageHuanyi takes unit u returns boolean

		//风
		if ( GetUnitTypeId(u) == 'hhh3' ) then
			call UnitDamageTarget(Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		//冰火
		if ( GetUnitTypeId(u) == 'h01B' ) then
			call UnitDamageTarget(Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.6, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function SimulateDeathHuanyi takes unit u returns nothing
		
		if ( GetUnitTypeId(u) == 'hhh7' ) then
			call DamageArea(Huanyi , GetUnitX(u) , GetUnitY(u) , 300 , GetDamageInt(Huanyi) * 1.5)
	    	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u), GetUnitY(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__GetMultiSpell takes nothing returns integer
		if not ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH3') == 1 ) then // INLINED!!
			return 1
		endif

		return IMaxBJ(IMinBJ(Huanyi__IMoneng / 2, 5), 1)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__NoneTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real intTimes= LoadReal(spellTable, GetHandleId(t), kNoneIntTimes)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 1 * intTimes)
		call FlushChildHashtable(spellTable, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Huanyi__None takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real intTimes= times * 0.2
  local real time= times * 10
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), kNoneIntTimes, intTimes)
		call TimerStart(t, time, false, function Huanyi__NoneTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , intTimes)
		call YDWETimerDestroyEffect(time , AddSpecialEffectTargetUnitBJ("overhead", Huanyi, "war3mapImported\\music.mdx"))
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "成功增加" + I2S(times * 20) + "%的智力，持续" + I2S(times * 10) + "秒。") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function Huanyi__Fire takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(Huanyi) ) , ( 'hhh1' ) , (( x )*1.0) , (( y )*1.0) , (( 0)*1.0) , 5) // INLINED!!
			loop
				exitwhen i > 6
	        	call CreateUnitEffectSpecifyTime((GetOwningPlayer(Huanyi) ) , ( 'hhh1' ) , (( x + 400 * CosBJ(i * 60) )*1.0) , (( y + 400 * SinBJ(i * 60) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
				set i=i + 1
			endloop
			call DamageArea(Huanyi , x , y , 600 , damage)
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__Lumber takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local integer attack= GetHeroInt(Huanyi, true) + 0
  local integer defense= GetHeroAgi(Huanyi, true) / 100 + 0
  local integer hp= GetHeroStr(Huanyi, true) * 10 + 0
  local unit u
  local integer i= 1
		loop
			exitwhen i > times * 2
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh2', GetSpellTargetX(), GetSpellTargetY(), 0)
			call SetUnitAnimation(u, "birth")
			//todo 攻击防御
			call UnitApplyTimedLifeBJ(180.00, 'BHwe', u)
			call SetAttack(u , attack)
			call SetDefense(u , defense)
			call SetHP(u , hp)
			set i=i + 1
		endloop
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__Wind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local unit u
  local integer i= 1
		loop
			exitwhen i > times
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh3', (RMinBJ(RMaxBJ(((GetSpellTargetX() + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetSpellTargetY() + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
			call UnitApplyTimedLifeBJ(15.00, 'BHwe', u)
			set i=i + 1
		endloop
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWater takes nothing returns nothing

  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.6
  local integer i= 3 * times
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set i=i - 1
	 		call SimulateSpell4(Huanyi , (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinX), yd_MapMaxX)) , (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinY), yd_MapMaxY)) , 'AhhL' , 1 , 6 , "rainoffire") // INLINED!!
	 		call SimulateSpell4(Huanyi , (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinX), yd_MapMaxX)) , (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinY), yd_MapMaxY)) , 'AhhM' , 1 , 6 , "blizzard") // INLINED!!
			exitwhen i <= 0
			call PolledWait(1.0 / times)
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireLumber takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.8
  local integer i= 1
  local integer ii= 1
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
  local real range= 150 * times
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
		call SetUnitX(GetSpellAbilityUnit(), x)
		call SetUnitY(GetSpellAbilityUnit(), y)
		call IssueImmediateOrder(GetSpellAbilityUnit(), "stop")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y))
		loop
			exitwhen i > times - 1
			set ii=1
			loop
				exitwhen ii > i * 2 + 4
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", (RMinBJ(RMaxBJ(((x + 150 * CosBJ(360 * ii / ( i * 2 + 4 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((y + 150 * SinBJ(360 * ii / ( i * 2 + 4 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
				set ii=ii + 1
			endloop
			set i=i + 1
		endloop
		call DamageArea(Huanyi , x , y , range , damage)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWind takes nothing returns nothing


  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1

     local real x1
     local real y1
     local real x2
     local real y2
     local real facing
  local unit u

		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1

		    set x1=GetUnitX(Huanyi)
		    set y1=GetUnitY(Huanyi)
		    set x2=GetSpellTargetX()
		    set y2=GetSpellTargetY()
		    set facing=Atan2BJ(y2 - y1, x2 - x1)
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh4', x1, y1, facing)
	    	call UnitApplyTimedLifeBJ(2, 'BHwe', u)
		    call YDWETimerPatternRushSlide(u , facing , 1400 , 2 , 0.05 , damage , 300. , false , true , false , "origin" , "" , "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl")
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop

	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__WaterWindTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, kUHuanyiQuan)
  local group l_group= CreateGroup()
  local unit l_unit
		if ( IsUnitAliveBJ(u) ) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 600, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsAlly(l_unit , Huanyi) ) then
			    	call RecoverUnitHP(l_unit , 0.3)
			    	call RecoverUnitMP(l_unit , 20)
			    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null
		else
			call RemoveUnit(u)
			call FlushChildHashtable(spellTable, id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
		call DestroyGroup(l_group)
		set l_unit=null
		set l_group=null
	endfunction

 function Huanyi__WaterWind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local timer t= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh5', GetSpellTargetX(), GetSpellTargetY(), 0)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call UnitApplyTimedLifeBJ(15 * times, 'BHwe', u)
    	call SetUnitScalePercent(u, 100.00 + times * 50.00, 100.00 + times * 50.00, 100.00 + times * 50.00)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUHuanyiQuan, u)
		call TimerStart(t, 1, true, function Huanyi__WaterWindTimer)
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "持续" + I2S(15 * times) + "秒。") )) // INLINED!!
		set t=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Huanyi__WaterLumberWindTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, kUGuCan)
  local integer times= LoadInteger(spellTable, id, kIGuCan)
  local integer i= 1
  local integer ii= 1
		if ( IsUnitAliveBJ(Huanyi) ) then
			loop
				exitwhen i > times - 1
				set ii=1
				loop
					exitwhen ii > i * 2 + 4
					call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", (RMinBJ(RMaxBJ(((GetUnitX(u) + 150 * CosBJ(360 * ii / ( i * 2 + 4 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(u) + 150 * SinBJ(360 * ii / ( i * 2 + 4 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
					set ii=ii + 1
				endloop
				set i=i + 1
			endloop
			call DamageArea(Huanyi , GetUnitX(Huanyi) , GetUnitY(Huanyi) , times * 150 , GetDamageInt(Huanyi) * 0.4)
		else
			call RemoveUnit(u)
			call FlushChildHashtable(spellTable, id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
	endfunction

 function Huanyi__WaterLumberWind takes nothing returns nothing
		
  local integer times= Huanyi__GetMultiSpell()
  local timer t= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh6', GetSpellTargetX(), GetSpellTargetY(), 0)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call SetUnitScalePercent(u, 100.00 + times * 50.00, 100.00 + times * 50.00, 100.00 + times * 50.00)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUGuCan, u)
		call SaveInteger(spellTable, GetHandleId(t), kIGuCan, times)
		call TimerStart(t, 1, true, function Huanyi__WaterLumberWindTimer)
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
		set t=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireLumberWind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( ",眩晕" + I2S(times * 2) + "秒。") )) // INLINED!!
 		call SimulateSpell(Huanyi , Huanyi , 'AHHM' , times , 6 , "stomp" , false , true , false)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWaterWind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
  local real damage= GetDamageInt(Huanyi) * 1.5
  local unit u
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh7', x, y, 0)
    		call UnitApplyTimedLifeBJ(3, 'BHwe', u)
    		//todo 飞行高度变化3秒
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWaterLumber takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
  local real range= 900 * times
  local integer i= 1
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh8', GetSpellTargetX(), GetSpellTargetY(), 0)
     local integer attract= s__Attract_create(u , range , 0.05 , range / 20)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "吸引范围" + I2S(R2I(range))) )) // INLINED!!
		call UnitApplyTimedLifeBJ(5, 'BHwe', u)
	    call s__Attract_start(attract)
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWaterLumberWindTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real attrTimes= LoadReal(spellTable, GetHandleId(t), kHuanyuTimes)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 1 * attrTimes)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 1 * attrTimes)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 1 * attrTimes)
		call FlushChildHashtable(spellTable, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Huanyi__FireWaterLumberWind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real attrTimes= times * 0.2
  local real time= times * 10
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), kHuanyuTimes, attrTimes)
		call TimerStart(t, time, false, function Huanyi__FireWaterLumberWindTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call YDWETimerDestroyEffect(time , AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\blackbird.mdx"))
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "成功增加" + I2S(times * 20) + "%的三围属性，持续" + I2S(times * 10) + "秒。") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__Fusu takes nothing returns nothing
		// body...
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__TSpellHuanyi2Act takes nothing returns nothing
		call SetUnitAbilityLevel(Huanyi, 'AHH7', IMinBJ(100, GetHeroLevel(Huanyi) / 2))
	endfunction 
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__TSpellHuanyi3Con takes nothing returns boolean
		return (GetPlayerTechCountSimple('R007', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH2') == 1 and Huanyi__IMoneng <= 5 and GetRandomInt(1, 2) == 1 // INLINED!!
	endfunction
	
 function Huanyi__TSpellHuanyi3Act takes nothing returns nothing
		call SetUnitLifeBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_LIFE) + GetEventDamage())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FlashPowerData takes nothing returns nothing
		call SetTextTagPosUnitBJ(Huanyi__TTMoneng, Huanyi, 20)

		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) == GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) and Huanyi__IMoneng < 10 ) then
			call SetUnitManaPercentBJ(Huanyi, 50)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			set Huanyi__IMoneng=Huanyi__IMoneng + 1
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , 0.1)
			if ( Huanyi__ELowMoneng != null and Huanyi__IMoneng > 5 ) then
				call DestroyEffect(Huanyi__ELowMoneng)
				set Huanyi__ELowMoneng=null
			endif
		elseif ( ( GetUnitState(Huanyi, UNIT_STATE_MANA) < GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) / 2 ) and Huanyi__IMoneng > 0 ) then
			call SetUnitManaPercentBJ(Huanyi, 100)
			set Huanyi__IMoneng=Huanyi__IMoneng - 1
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 0.1)
			if ( Huanyi__ELowMoneng == null and Huanyi__IMoneng <= 5 ) then
				set Huanyi__ELowMoneng=AddSpecialEffectTargetUnitBJ("chest", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
			endif
	    else
	    	return
		endif

		call SetTextTagTextBJ(Huanyi__TTMoneng, I2S(Huanyi__IMoneng) + "级魔能", 20)
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Huanyi__InitPower takes nothing returns nothing
  local timer ti= CreateTimer()

		set Huanyi__IMoneng=0
		set Huanyi__TTMoneng=CreateTextTagUnitBJ("0级魔能", Huanyi, 0, 20, 0, 50, 100, 0)
		call TimerStart(ti, 0.05, true, function Huanyi__FlashPowerData)

		set Huanyi__ELowMoneng=AddSpecialEffectTargetUnitBJ("chest", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
		set ti=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), Huanyi__ICurrentSpell, false)
		//0排列
		if ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHH5'
		//1排列
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHH6'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHH7'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHH8'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHH9'
		//2排列
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHA'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHB'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHC'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHD'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHE'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHF'
		//1排列
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHG'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHH'
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHI'
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set Huanyi__ICurrentSpell='AHHJ'
		//0排列
		else
			set Huanyi__ICurrentSpell='AHHK'
		endif
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), Huanyi__ICurrentSpell, true)
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Huanyi__TSpellHuanyiAct takes nothing returns nothing
		//四相
		if ( GetSpellAbilityId() == 'AHH0' ) then
			set Huanyi__IsFire=not ( Huanyi__IsFire )
			call Huanyi__SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH1' ) then
			set Huanyi__IsWater=not ( Huanyi__IsWater )
			call Huanyi__SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH2' ) then
			set Huanyi__IsLumber=not ( Huanyi__IsLumber )
			call Huanyi__SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH3' ) then
			set Huanyi__IsWind=not ( Huanyi__IsWind )
			call Huanyi__SetHuanyiSpell()
		//复苏
		elseif ( GetSpellAbilityId() == 'AHH4' ) then
			call Huanyi__Fusu()
		//幻元伏心
		elseif ( GetSpellAbilityId() == 'AHH5' ) then
			call Huanyi__None()
		//七炎焚狱
		elseif ( GetSpellAbilityId() == 'AHH6' ) then
			call Huanyi__Fire()
		//天古木精
		elseif ( GetSpellAbilityId() == 'AHH8' ) then
			call Huanyi__Lumber()
		//幻化残卷
		elseif ( GetSpellAbilityId() == 'AHH9' ) then
			call Huanyi__Wind()
		//冰火双绝
		elseif ( GetSpellAbilityId() == 'AHHA' ) then
			call Huanyi__FireWater()
		//万象归影
		elseif ( GetSpellAbilityId() == 'AHHB' ) then
			call Huanyi__FireLumber()
		//火轮烁日
		elseif ( GetSpellAbilityId() == 'AHHC' ) then
			call Huanyi__FireWind()
		//幻冥天泉
		elseif ( GetSpellAbilityId() == 'AHHE' ) then
			call Huanyi__WaterWind()
		//沧怒古参
		elseif ( GetSpellAbilityId() == 'AHHG' ) then
			call Huanyi__WaterLumberWind()
		//雨玥千里
		elseif ( GetSpellAbilityId() == 'AHHH' ) then
			call Huanyi__FireLumberWind()
		//残月流星
		elseif ( GetSpellAbilityId() == 'AHHI' ) then
			call Huanyi__FireWaterWind()
		//引力界场
		elseif ( GetSpellAbilityId() == 'AHHJ' ) then
			call Huanyi__FireWaterLumber()
		//寰宇归一
		elseif ( GetSpellAbilityId() == 'AHHK' ) then
			call Huanyi__FireWaterLumberWind()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillHuanyiI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == Huanyi ) then
			if ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH1') == 1 ) then // INLINED!!
				//技能2初始化
				call Huanyi__InitPower()
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH2') == 1 ) then // INLINED!!
				//技能3初始化
				set i=1
				//增加技能伤害
				loop
					exitwhen i > 6
					call AddSpellPercent(i , 0.6)
					set i=i + 1
				endloop

				call AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\sichongjiejie_b.mdx")
			endif
		endif
	endfunction

 function LearnSkillHuanyi takes unit learner,integer learnSpellID returns nothing
		if ( learner == Huanyi ) then
			if ( learnSpellID == 'AHH0' ) then
				call LearnSkillHuanyiI(learner , 1)
			elseif ( learnSpellID == 'AHH1' ) then
				call LearnSkillHuanyiI(learner , 2)
			elseif ( learnSpellID == 'AHH2' ) then
				call LearnSkillHuanyiI(learner , 3)
			elseif ( learnSpellID == 'AHH3' ) then
				call LearnSkillHuanyiI(learner , 4)
			elseif ( learnSpellID == 'AHH4' ) then
				call LearnSkillHuanyiI(learner , 5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function InitHuanyi takes unit u returns nothing
  local trigger t= CreateTrigger()
		set Huanyi=u
		//主英雄技能
		set Huanyi__TSpellHuanyi=CreateTrigger()
	    call TriggerRegisterUnitEvent(Huanyi__TSpellHuanyi, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Huanyi__TSpellHuanyi, function Huanyi__TSpellHuanyiAct)

	    //魔能等级低于5则减少受到的50%伤害
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(t, Condition(function Huanyi__TSpellHuanyi3Con))
	    call TriggerAddAction(t, function Huanyi__TSpellHuanyi3Act)

	    //冰甲的等级刷新
	    set t=CreateTrigger()
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(t, function Huanyi__TSpellHuanyi2Act)
	    set t=null
	    //初始化技能状态
	    call UnitAddAbility(Huanyi, 'AHH6')
	    call UnitAddAbility(Huanyi, 'AHH7')
	    call UnitAddAbility(Huanyi, 'AHH8')
	    call UnitAddAbility(Huanyi, 'AHH9')
	    call UnitAddAbility(Huanyi, 'AHHA')
	    call UnitAddAbility(Huanyi, 'AHHB')
	    call UnitAddAbility(Huanyi, 'AHHC')
	    call UnitAddAbility(Huanyi, 'AHHD')
	    call UnitAddAbility(Huanyi, 'AHHE')
	    call UnitAddAbility(Huanyi, 'AHHF')
	    call UnitAddAbility(Huanyi, 'AHHG')
	    call UnitAddAbility(Huanyi, 'AHHH')
	    call UnitAddAbility(Huanyi, 'AHHI')
	    call UnitAddAbility(Huanyi, 'AHHJ')
	    call UnitAddAbility(Huanyi, 'AHHK')
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH6', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH7', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH8', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH9', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHA', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHB', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHC', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHD', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHE', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHF', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHG', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHH', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHI', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHJ', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHK', false)
	endfunction


//library Huanyi ends


// BEGIN IMPORT OF Huanyi.j

// BEGIN IMPORT OF SpellBase.j

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

 
// END IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j

// END IMPORT OF Huanyi.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs101843625")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Attr__InitAttr")
call ExecuteFunc("Printer__InitPrinter")

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

function jasshelper__initstructs101843625 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))



endfunction

