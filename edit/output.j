globals
//globals from JBase:
constant boolean LIBRARY_JBase=true
//endglobals from JBase
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
//globals from Constant:
constant boolean LIBRARY_Constant=true
string diffculty= ""
		
constant integer HERO_COUNT= 15
		
constant boolean Huodong= false
		
constant integer PAGE_ACHIEVE= 5
		
integer renshu= 0

constant integer COUNT_WANJIE= 17
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
		
    //复活
location udg_Point_Fuhuo
	//主基地的区域
rect gg_rct________1
	//难度等级，最高7
integer udg_Nandu_JJJ
integer udg_Nandu
	//冥王
unit gg_unit_Nkjx_0241
        //左
unit gg_unit_Uear_0242
        //右
unit gg_unit_Npld_0253
        //战斗调整
unit gg_unit_ndrz_0019
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
rect gg_rct_Arena_Spell

        
sound gg_snd_GoodJob
sound gg_snd_Jidibeida
sound gg_snd_Chenggong
sound gg_snd_Shibai

        
rect gg_rct____1
rect gg_rct____2
rect gg_rct____3
rect gg_rct____4
rect gg_rct____5
rect gg_rct____6

        
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
rect gg_rct______________084
        
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
        
rect gg_rct________8
rect gg_rct_Diamond2
        
rect gg_rct_______a3
        
real array udg_I_Shanghai
        
integer array udg_Second
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero= null
        
unit array UDepot
string array playerName
        
unit Uwanjie
hashtable itemTable= InitHashtable()
hashtable LHTable= InitHashtable()
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
constant integer kUImmuteDamage=11
//endglobals from SpellBase
//globals from Seyu:
constant boolean LIBRARY_Seyu=true
unit seyu= null
unit array chongdongs
unit array shashous

integer Seyu__chongCount= 0
		
texttag Seyu__TTPower= null
integer Seyu__IPower
			
real Seyu__RAddtion

		
trigger Seyu__TSpellSeyu= null
trigger Seyu__TSpellSeyu2= null
trigger Seyu__TSpellSeyu3= null
trigger Seyu__TSpellSeyuUpdate= null
constant integer kAnShaCount=13

texttag array Seyu__TTCD
//endglobals from Seyu
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
boolean array s__Attract_forbitHero
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

//library JBase:
	
//---------------------------------------------------------------------------------------------------
    
    function S3 takes boolean b,string s1,string s2 returns string
        if ( b ) then
            return s1
        else
            return s2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function I3 takes boolean b,integer i1,integer i2 returns integer
        if ( b ) then
            return i1
        else
            return i2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function B3 takes boolean b,boolean b1,boolean b2 returns boolean
        if ( b ) then
            return b1
        else
            return b2
        endif
    endfunction
    

//library JBase ends
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

    function CreateBoom takes unit source,real angle,real distance,real speed,real interval,real damage,real radius,string geff returns nothing
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
//library Constant:
	
//---------------------------------------------------------------------------------------------------
	
 function GetVersion takes nothing returns string
		return "2.752"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroIndex takes integer heroType returns integer
		if ( heroType == 'Ocbh' ) then
			return 1
		elseif ( heroType == 'Eevi' ) then
			return 2
		elseif ( heroType == 'Hvwd' ) then
			return 3
		elseif ( heroType == 'Uktl' ) then
			return 4
		elseif ( heroType == 'Nbbc' ) then
			return 5
		elseif ( heroType == 'Ewrd' ) then
			return 6
		elseif ( heroType == 'Usyl' ) then
			return 7
		elseif ( heroType == 'Hjai' ) then
			return 8
		elseif ( heroType == 'Harf' ) then
			return 9
		elseif ( heroType == 'Nalc' ) then
			return 10
		elseif ( heroType == 'Etyr' ) then
			return 11
		elseif ( heroType == 'Othr' ) then
			return 12
		elseif ( heroType == 'Udea' ) then
			return 13
		elseif ( heroType == 'Hkal' ) then
			return 14
		elseif ( heroType == 'Hant' ) then
			return 15
		endif
		return 0
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function GetIndexHeroName takes integer i returns string
   local string result= ""
			if ( i == 1 ) then
				set result="凯撒"
			elseif ( i == 2 ) then
				set result="湮灭"
			elseif ( i == 3 ) then
				set result="莫琪"
			elseif ( i == 4 ) then
				set result="玄雪"
			elseif ( i == 5 ) then
				set result="霸绝"
			elseif ( i == 6 ) then
				set result="瑟雨"
			elseif ( i == 7 ) then
				set result="晓月"
			elseif ( i == 8 ) then
				set result="凌雪"
			elseif ( i == 9 ) then
				set result="辰寂"
			elseif ( i == 10 ) then
				set result="寒殇"
			elseif ( i == 11 ) then
				set result="泰雅"
			elseif ( i == 12 ) then
				set result="摄焱"
			elseif ( i == 13 ) then
				set result="黑阎"
			elseif ( i == 14 ) then
				set result="梦霁"
			elseif ( i == 15 ) then
				set result="幻逸"
			endif
			return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetIndexHeroColorName takes integer i returns string
  local string result= ""
		if ( i == 1 ) then
			set result="|cffff0000凯撒|r"
		elseif ( i == 2 ) then
			set result="|cFFFFCC66湮灭|r"
		elseif ( i == 3 ) then
			set result="|cFF999900莫琪|r"
		elseif ( i == 4 ) then
			set result="|cFF33FF33玄雪|r"
		elseif ( i == 5 ) then
			set result="|cFFCCFF66霸绝|r"
		elseif ( i == 6 ) then
			set result="|cFFCCFF33瑟雨|r"
		elseif ( i == 7 ) then
			set result="|cffff00ff晓月|r"
		elseif ( i == 8 ) then
			set result="|cFFFF3399凌雪|r"
		elseif ( i == 9 ) then
			set result="|cFFCCFF00辰寂|r"
		elseif ( i == 10 ) then
			set result="|cFF33FF33寒殇|r"
		elseif ( i == 11 ) then
			set result="|cFFFF3399泰雅|r"
		elseif ( i == 12 ) then
			set result="|cff00ccff摄焱|r"
		elseif ( i == 13 ) then
			set result="|cffff6800黑阎|r"
		elseif ( i == 14 ) then
			set result="|cffff99cc梦霁|r"
		elseif ( i == 15 ) then
			set result="|cff00ccff幻逸|r"
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
    
 function GetRandomColor takes nothing returns string
  local integer random= GetRandomInt(1, 8)
		if ( random == 1 ) then
			return "|cff0000ff"
		elseif ( random == 2 ) then
			return "|cffcc99ff"
		elseif ( random == 3 ) then
			return "|cff99cc00"
		elseif ( random == 4 ) then
			return "|cffff0000"
		elseif ( random == 5 ) then
			return "|cffff6600"
		elseif ( random == 6 ) then
			return "|cffff00ff"
		elseif ( random == 7 ) then
			return "|cff808000"
		else
			return "|cffffff00"
		endif
	endfunction
    
    function GetColorString takes string s returns string
  local integer length= StringLength(s)
  local string result= ""
  local integer i=1
		if ( length == 0 ) then
			return ""
		endif
		loop
			exitwhen i > length
			set result=result + GetRandomColor() + SubStringBJ(s, i, i + 2)
			set i=i + 3
		endloop
        return result + "|r"
    endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsAchieveColor takes integer achieveID returns boolean
		return achieveID == 19 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveWhite takes integer achieveID returns boolean
		return achieveID == 12 or achieveID == 216
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveLight takes integer achieveID returns boolean
		return IsAchieveColor(achieveID) or achieveID == 18 or achieveID == 210 or achieveID == 222
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementName takes integer achieveID returns string
		if ( achieveID == 19 ) then
			return GetColorString("【万劫录】")
		elseif ( achieveID == 18 ) then
			return "|cffff00ff【轮回舰】"
		elseif ( achieveID == 17 ) then
			return "|cffff0000【末日车】"
		elseif ( achieveID == 16 ) then
			return "|cffff6600【地狱使】"
		elseif ( achieveID == 15 ) then
			return "|cffffff00【灭炼狱】"
		elseif ( achieveID == 14 ) then
			return "|cff3366ff【定战争】"
		elseif ( achieveID == 13 ) then
			return "|cff99cc00【和谐世】"
		elseif ( achieveID == 12 ) then
			return "【太平源】"
		elseif ( achieveID == 11 ) then
			return "|cff999999【天国音】"
		elseif ( achieveID == 21 ) then
			return "|cff99cc00【定心魔】"
		elseif ( achieveID == 22 ) then
			return "|cffffff00【斩心魔】"
		elseif ( achieveID == 23 ) then
			return "|cffff0000【净心魔】"
		elseif ( achieveID == 24 ) then
			return GetColorString("【创心魔】")
		elseif ( achieveID == 25 ) then
			return "|cff99cc00【复世财】"
		elseif ( achieveID == 26 ) then
			return "|cffffff00【盛世财】"
		elseif ( achieveID == 27 ) then
			return "|cffff0000【灭世财】"
		elseif ( achieveID == 28 ) then
			return GetColorString("【造世财】")
		elseif ( achieveID == 29 ) then
			return GetColorString("【单轮回】")
		elseif ( achieveID == 210 ) then
			return "|cffff00ff【单末日】"
		elseif ( achieveID == 211 ) then
			return "|cffff0000【单地狱】"
		elseif ( achieveID == 212 ) then
			return "|cffff6600【单炼狱】"
		elseif ( achieveID == 213 ) then
			return "|cffffff00【单战争】"
		elseif ( achieveID == 214 ) then
			return "|cff3366ff【单和谐】"
		elseif ( achieveID == 215 ) then
			return "|cff99cc00【单太平】"
		elseif ( achieveID == 216 ) then
			return "【单天国】"
		elseif ( achieveID == 217 ) then
			return "|cff99cc00【知天地】"
		elseif ( achieveID == 218 ) then
			return "|cffffff00【探乾坤】"
		elseif ( achieveID == 219 ) then
			return "|cffff0000【五界主】"
		elseif ( achieveID == 220 ) then
			return GetColorString("【六界王】")
		elseif ( achieveID == 221 ) then
			return "|cff99cc00【千钧劫】"
		elseif ( achieveID == 222 ) then
			return "|cffff00ff【末世劫】"
		elseif ( achieveID == 223 ) then
			return "|cff99cc00【风驰者】"
		elseif ( achieveID == 224 ) then
			return "|cffffff00【电掣侠】"
		elseif ( achieveID == 225 ) then
			return "|cffff0000【无影客】"
		elseif ( achieveID == 226 ) then
			return GetColorString("【逆苍天】")
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementWhiteName takes integer achieveID returns string
		if ( achieveID == 19 ) then
			return "万劫录"
		elseif ( achieveID == 18 ) then
			return "轮回舰"
		elseif ( achieveID == 17 ) then
			return "末日车"
		elseif ( achieveID == 16 ) then
			return "地狱使"
		elseif ( achieveID == 15 ) then
			return "灭炼狱"
		elseif ( achieveID == 14 ) then
			return "定战争"
		elseif ( achieveID == 13 ) then
			return "和谐世"
		elseif ( achieveID == 12 ) then
			return "太平源"
		elseif ( achieveID == 11 ) then
			return "天国音"
		elseif ( achieveID == 21 ) then
			return "定心魔"
		elseif ( achieveID == 22 ) then
			return "斩心魔"
		elseif ( achieveID == 23 ) then
			return "净心魔"
		elseif ( achieveID == 24 ) then
			return "创心魔"
		elseif ( achieveID == 25 ) then
			return "复世财"
		elseif ( achieveID == 26 ) then
			return "盛世财"
		elseif ( achieveID == 27 ) then
			return "灭世财"
		elseif ( achieveID == 28 ) then
			return "造世财"
		elseif ( achieveID == 29 ) then
			return "单轮回"
		elseif ( achieveID == 210 ) then
			return "单末日"
		elseif ( achieveID == 211 ) then
			return "单地狱"
		elseif ( achieveID == 212 ) then
			return "单炼狱"
		elseif ( achieveID == 213 ) then
			return "单战争"
		elseif ( achieveID == 214 ) then
			return "单和谐"
		elseif ( achieveID == 215 ) then
			return "单太平"
		elseif ( achieveID == 216 ) then
			return "单天国"
		elseif ( achieveID == 217 ) then
			return "知天地"
		elseif ( achieveID == 218 ) then
			return "探乾坤"
		elseif ( achieveID == 219 ) then
			return "五界主"
		elseif ( achieveID == 220 ) then
			return "六界王"
		elseif ( achieveID == 221 ) then
			return "千钧劫"
		elseif ( achieveID == 222 ) then
			return "末世劫"
		elseif ( achieveID == 223 ) then
			return "风驰者"
		elseif ( achieveID == 224 ) then
			return "电掣侠"
		elseif ( achieveID == 225 ) then
			return "无影客"
		elseif ( achieveID == 226 ) then
			return "逆苍天"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementCondition takes integer achieveID returns string
		if ( achieveID == 19 ) then
			return "通关|cff008000\"万劫\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|r|cff99ccff若你通关了该难度可以加轮回之狱主群申请上|r|cff99cc00封帝万劫录|r|cff99ccff哦!|r"
		elseif ( achieveID == 18 ) then
			return "通关|cffff00ff\"轮回\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!|r"
		elseif ( achieveID == 17 ) then
			return "通关|cffff0000\"末日\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 16 ) then
			return "通关|cffff6600\"地狱\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 15 ) then
			return "通关|cffffff00\"炼狱\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 14 ) then
			return "通关|cff3366ff\"战争\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 13 ) then
			return "通关|cff99cc00\"和谐\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 12 ) then
			return "通关\"太平\"难度后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 11 ) then
			return "通关|cff999999\"天国\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 21 ) then
			return "完成20次转生即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 22 ) then
			return "完成50次转生即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 23 ) then
			return "完成100次转生即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 24 ) then
			return "完成150次转生即可自动获得该成就.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 25 ) then
			return "木材大于20000即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 26 ) then
			return "木材大于50000即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 27 ) then
			return "木材大于100000即可自动获得该成就.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 28 ) then
			return "木材大于200000即可自动获得该成就.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 29 ) then
			return "单通|cffff00ff\"轮回\"难度|r即可自动获得该成就.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 210 ) then
			return "单通|cffff0000\"末日\"难度|r即可自动获得该成就.\n\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 211 ) then
			return "单通|cffff6600\"地狱\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 212 ) then
			return "单通|cffffff00\"炼狱\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 213 ) then
			return "单通|cff3366ff\"战争\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 214 ) then
			return "单通|cff99cc00\"和谐\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 215 ) then
			return "单通\"太平\"难度后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 216 ) then
			return "单通|cff999999\"天国\"难度|r后可以自动获得该成就.\n\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 217 ) then
			return "使用至少12个英雄，每个进行至少1场游戏.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 218 ) then
			return "使用至少12个英雄，每个进行至少5场游戏.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 219 ) then
			return "使用至少12个英雄，每个进行至少10场游戏.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 220 ) then
			return "使用至少12个英雄，每个进行至少30场游戏.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 221 ) then
			return "在基地剩余0次防护罩时通关游戏.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 222 ) then
			return "在基地剩余0次防护罩,且生命低于25%时通关游戏.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 223 ) then
			return "在135分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 224 ) then
			return "在120分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 225 ) then
			return "在90分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 226 ) then
			return "在60分钟内击败冥刹.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementIndex takes integer page,integer index returns integer
		if ( page == 1 or page == 2 ) then
			return ( page * 10 + index )
		elseif ( page == 3 ) then
			return I3(index < 8 , 217 - index , 29)
		elseif ( page == 4 ) then
			return index + 216
		elseif ( page == 5 ) then
			return index + 224
		endif
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetWanjieluName takes nothing returns string
  local integer i= GetRandomInt(1, COUNT_WANJIE)
		if ( i == 1 ) then
			return "玩东方入魔的超"
		elseif ( i == 2 ) then
			return "吞雷天尸"
		elseif ( i == 3 ) then
			return "我很无聊TT"
		elseif ( i == 4 ) then
			return "大头三"
		elseif ( i == 5 ) then
			return "瑜丶宝宝"
		elseif ( i == 6 ) then
			return "逝丶无心丿"
		elseif ( i == 7 ) then
			return "小丨情兽"
		elseif ( i == 8 ) then
			return "猪食"
		elseif ( i == 9 ) then
			return "五老星"
		elseif ( i == 10 ) then
			return "刈祈"
		elseif ( i == 11 ) then
			return "未来死亡"
		elseif ( i == 12 ) then
			return "by325614"
		elseif ( i == 13 ) then
			return "啊啊啊大脑在颤抖"
		elseif ( i == 14 ) then
			return "绝对无双"
		elseif ( i == 15 ) then
			return "风萧兮兮易水寒"
		elseif ( i == 16 ) then
			return "种子哥"
		elseif ( i == 17 ) then
			return "你等到，小NB"
		endif
		return ""
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Constant__InitConstant takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				set renshu=renshu + 1
			endif
			set i=i + 1
		endloop
	endfunction

//library Constant ends
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
    
    function IsYuansu takes unit u returns boolean
        return GetUnitTypeId(u) == 'nlv3' or GetUnitTypeId(u) == 'hwat' or GetUnitTypeId(u) == 'nbal' or GetUnitTypeId(u) == 'nvde' or GetUnitTypeId(u) == 'ehpr' or GetUnitTypeId(u) == 'nsll' or GetUnitTypeId(u) == 'nadr' or GetUnitTypeId(u) == 'nitp' or GetUnitTypeId(u) == 'nsgg' or GetUnitTypeId(u) == 'nehy'
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsAlly takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) and IsUnitAlly(u, GetOwningPlayer(caster))
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsCanCopy takes item i returns boolean
        return ( ( GetItemTypeId(i) != 'mgtk' ) and ( GetItemTypeId(i) != 'k3m1' ) and ( GetItemTypeId(i) != 'pomn' ) and ( GetItemTypeId(i) != 'wild' ) and ( GetItemTypeId(i) != 'hlst' ) and ( GetItemTypeId(i) != 'totw' ) and ( GetItemTypeId(i) != 'sror' ) and ( GetItemTypeId(i) != 'fgrg' ) and ( GetItemTypeId(i) != 'wshs' ) and ( GetItemTypeId(i) != 'IXU1' ) and ( GetItemTypeId(i) != 'I049' ) and ( GetItemTypeId(i) != 'I04A' ) and ( GetItemTypeId(i) != 'I000' ) and ( GetItemTypeId(i) != 'I001' ) and ( GetItemTypeId(i) != 'I002' ) and ( GetItemTypeId(i) != 'I01D' ) and ( GetItemTypeId(i) != 'I02W' ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Is20Unit takes unit u returns boolean
        return ( ( ( GetUnitTypeId(GetDyingUnit()) == 'nanw' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nbld' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nbdo' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ncnk' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nenc' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ngnw' ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Is10Unit takes unit u returns boolean
        return ( ( ( GetUnitTypeId(GetDyingUnit()) == 'nano' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nenf' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nbda' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ncim' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ngns' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nhfp' ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetKillCount takes unit u returns integer
        if ( Is10Unit(u) ) then
            return 10
        elseif ( Is20Unit(u) ) then
            return 20
        else
            return 1
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetBasicRing takes unit u returns item
        if ( UnitHasItemOfTypeBJ(u, 'rat9') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rat9')
        elseif ( UnitHasItemOfTypeBJ(u, 'rlif') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rlif')
        elseif ( UnitHasItemOfTypeBJ(u, 'lgdh') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'lgdh')
        elseif ( UnitHasItemOfTypeBJ(u, 'clfm') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'clfm')
        elseif ( UnitHasItemOfTypeBJ(u, 'bgst') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'bgst')
        elseif ( UnitHasItemOfTypeBJ(u, 'belv') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'belv')
        elseif ( UnitHasItemOfTypeBJ(u, 'hcun') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'hcun')
        elseif ( UnitHasItemOfTypeBJ(u, 'rag1') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rag1')
        elseif ( UnitHasItemOfTypeBJ(u, 'penr') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'penr')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetMaxRing takes unit u returns item
        if ( UnitHasItemOfTypeBJ(u, 'brac') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'brac')
        elseif ( UnitHasItemOfTypeBJ(u, 'fgdg') ) then
            return GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'fgdg')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMaxRing takes item i returns boolean
        return GetItemTypeId(i) == 'brac' or GetItemTypeId(i) == 'fgdg'
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetRing takes unit u returns item
        if ( UnitHasItemOfTypeBJ(u, 'rat9') ) then
            return GetItemOfTypeFromUnitBJ(u, 'rat9')
        elseif ( UnitHasItemOfTypeBJ(u, 'rlif') ) then
            return GetItemOfTypeFromUnitBJ(u, 'rlif')
        elseif ( UnitHasItemOfTypeBJ(u, 'lgdh') ) then
            return GetItemOfTypeFromUnitBJ(u, 'lgdh')
        elseif ( UnitHasItemOfTypeBJ(u, 'clfm') ) then
            return GetItemOfTypeFromUnitBJ(u, 'clfm')
        elseif ( UnitHasItemOfTypeBJ(u, 'bgst') ) then
            return GetItemOfTypeFromUnitBJ(u, 'bgst')
        elseif ( UnitHasItemOfTypeBJ(u, 'belv') ) then
            return GetItemOfTypeFromUnitBJ(u, 'belv')
        elseif ( UnitHasItemOfTypeBJ(u, 'hcun') ) then
            return GetItemOfTypeFromUnitBJ(u, 'hcun')
        elseif ( UnitHasItemOfTypeBJ(u, 'rag1') ) then
            return GetItemOfTypeFromUnitBJ(u, 'rag1')
        elseif ( UnitHasItemOfTypeBJ(u, 'penr') ) then
            return GetItemOfTypeFromUnitBJ(u, 'penr')
        elseif ( UnitHasItemOfTypeBJ(u, 'fgdg') ) then
            return GetItemOfTypeFromUnitBJ(u, 'fgdg')
        elseif ( UnitHasItemOfTypeBJ(u, 'lhst') ) then
            return GetItemOfTypeFromUnitBJ(u, 'lhst')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsEnemyMP takes unit u,player p returns boolean
        return IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitAliveBJ(u) == true and IsUnitHidden(u) == false and IsUnitEnemy(u, p) and IsUnitVisible(u, p) and GetUnitAbilityLevel(u, 'Avul') < 1 and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction   
//---------------------------------------------------------------------------------------------------

    
    function IsEnemyM takes unit u,unit caster returns boolean
        return IsEnemyMP(u , GetOwningPlayer(caster))
    endfunction   
//---------------------------------------------------------------------------------------------------

    
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and (IsEnemyMP((u ) , GetOwningPlayer(( caster)))) and IsUnitType(u, UNIT_TYPE_RESISTANT) == false // INLINED!!
    endfunction
//---------------------------------------------------------------------------------------------------

    
   function IsEnemy2 takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) == true and IsUnitEnemy(u, GetOwningPlayer(caster)) and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsLoyalUnit takes unit u returns boolean
        return ( ( GetUnitTypeId(u) == 'owyv' ) or ( GetUnitTypeId(u) == 'nzom' ) or ( GetUnitTypeId(u) == 'nsog' ) or ( GetUnitTypeId(u) == 'nsoc' ) or ( GetUnitTypeId(u) == 'ninc' ) or ( GetUnitTypeId(u) == 'ninm' ) or ( GetUnitTypeId(u) == 'nsrn' ) or ( GetUnitTypeId(u) == 'nsrh' ) or ( GetUnitTypeId(u) == 'nmit' ) or ( GetUnitTypeId(u) == 'I049' ) or ( GetUnitTypeId(u) == 'I04A' ) )
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
    
    function IsUnitHasSlot takes unit u returns boolean
        local integer i= 1
        loop
            exitwhen i > 6
            if ( GetItemTypeId(UnitItemInSlotBJ(u, i)) == null ) then
                return true
            endif
            set i=i + 1
        endloop

        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsInRect takes real x,real y,rect reg returns boolean
        return ( GetRectMaxX(reg) >= x and GetRectMinX(reg) <= x and GetRectMaxY(reg) >= y and GetRectMinY(reg) <= y )
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function IsInForbitRegion takes real x,real y,unit u returns boolean
        return ( IsInRect(x , y , gg_rct_______a3) and ( not ( RectContainsUnit(gg_rct_______a3, u) ) ) ) or ( IsInRect(x , y , gg_rct_Arena_forbit) and ( not ( RectContainsUnit(gg_rct_Arena_forbit, u) ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetFirstPlayer takes nothing returns player
        local integer i= 1
        loop
            exitwhen i > 6
            if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
                return ConvertedPlayer(i)
            endif
            set i=i + 1
        endloop
        return ConvertedPlayer(1)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function LHBase__StartWanjieTimer takes nothing returns nothing
        local timer t= GetExpiredTimer()
        local integer id= GetHandleId(t)
        local integer value= LoadInteger(LHTable, id, 1)
        local texttag tt= null
        local location point= null
        if ( value <= 200 ) then
            call SaveInteger(LHTable, GetHandleId(t), 1, value + 1)
            set point=Location(GetUnitX(Uwanjie) - 100, GetUnitY(Uwanjie))
            set tt=CreateTextTagLocBJ("|cffFFD700【万劫录】" + GetWanjieluName(), point, 50.00, 12, 100, 100, 100, 0)
            call SetTextTagVelocityBJ(tt, 64, 90.00)
            call SetTextTagPermanent(tt, false)
            call SetTextTagLifespan(tt, 5)
            call SetTextTagFadepoint(tt, 5)
            call RemoveLocation(point)
            set point=null
            set tt=null
        else
            call PauseTimer(t)
            call FlushChildHashtable(LHTable, id)
            call DestroyTimer(t)
        endif
        set t=null
    endfunction
//---------------------------------------------------------------------------------------------------
    function LHBase__InitLHBase takes nothing returns nothing

        local timer t= CreateTimer()
        local trigger t1= CreateTrigger()
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

        set Uwanjie=CreateUnit(Player(6), 'n01F', - 14464.0, - 15552.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase__StartWanjieTimer)

        set t1=null
        set t=null
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
	
 function AddAttackPercent takes integer playerID,real value returns nothing
		set udg_I_Jinengjiacheng[playerID + 24]=udg_I_Jinengjiacheng[playerID + 24] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddSpellPercent takes integer playerID,real value returns nothing
		set udg_I_Jinengjiacheng[playerID]=udg_I_Jinengjiacheng[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddDamagePercent takes integer playerID,real value returns nothing
		set udg_I_Shanghai[playerID]=udg_I_Shanghai[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetAttack takes unit u,integer attack returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x5039AFFB, attack)
	    call TriggerExecute(gg_trg_____________800W)
	endfunction	

 function GetAttack takes unit u returns integer
		return LoadInteger(YDHT, GetHandleId(u), 0x5039AFFB)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function SetDefense takes unit u,integer defense returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x81FD3994, defense)
	    call TriggerExecute(gg_trg___________________4000______u)
	endfunction

 function GetDefense takes unit u returns integer
		return LoadInteger(YDHT, GetHandleId(u), 0x81FD3994)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function SetHP takes unit u,integer hp returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0xFCD961C9, hp)
    	call TriggerExecute(gg_trg_HP_____________________u)
	endfunction
	
 function GetHP takes unit u returns integer
		return LoadInteger(YDHT, GetHandleId(u), 0xFCD961C9)
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
				    if ( (IsEnemyMP((l_unit ) , GetOwningPlayer(( s__Attract_caster[this])))) and ( GetUnitMoveSpeed(l_unit) > 0 ) and not ( s__Attract_forbitHero[this] and IsUnitType(l_unit, UNIT_TYPE_HERO) ) ) then // INLINED!!
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
			set s__Attract_forbitHero[this]=false
			return this
  endfunction

  function s__Attract_SetForbitHero takes integer this returns nothing
			set s__Attract_forbitHero[this]=true
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
//library Seyu:
	
//---------------------------------------------------------------------------------------------------
	
 function Seyu__ShowChongdongHint takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Seyu__chongCount
			if ( chongdongs[i] != null ) then
	            call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(seyu)), GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]), 2.00)
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChongdongFilter takes nothing returns boolean
	    return ( ( GetUnitTypeId(GetFilterUnit()) == 'ndgt' ) )
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function TSpellSeyuUpdateAct takes nothing returns nothing
  local integer i= 1
	    loop
	    	exitwhen i > Seyu__chongCount
	    	if ( chongdongs[i] != null ) then
	            call SetUnitAbilityLevel(chongdongs[i], 'ACfu', IMinBJ(100, GetHeroLevel(seyu) / 2))
	    	endif
	    	set i=i + 1
	    endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateChongdong takes nothing returns nothing

  local integer i= 1

  local group l_group= CreateGroup()
  local unit l_unit= null
		call GroupEnumUnitsInRange(l_group, GetSpellTargetX(), GetSpellTargetY(), 900, Condition(function ChongdongFilter))
		if ( CountUnitsInGroup(l_group) > 0 ) then
			call DisplayTextToPlayer(GetOwningPlayer(seyu), 0., 0., "|cFFFF66CC【虫洞】|r周围900范围内存在一个虫洞，请在远点的位置释放。")
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null
			return
		endif
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null

		loop
			if ( i > Seyu__chongCount ) then
				//空洞满了就提示满了
				call Seyu__ShowChongdongHint()
				call DisplayTextToPlayer(GetOwningPlayer(seyu), 0., 0., "|cFFFF66CC【虫洞】|r虫洞可释放的数量已满,请手动取消多余的虫洞!")
				return
			endif
			if ( chongdongs[i] == null ) then
				set chongdongs[i]=CreateUnit(GetOwningPlayer(seyu), 'ndgt', GetSpellTargetX(), GetSpellTargetY(), 270)
				set Seyu__TTCD[i]=CreateTextTagUnitBJ("虫洞" + I2S(i) + "号", chongdongs[i], 0, 40.00, 100, 0, 0, 0)
	            call SelectUnitForPlayerSingle(chongdongs[i], GetOwningPlayer(seyu))
	            call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(seyu)), GetSpellTargetX(), GetSpellTargetY(), 2.00)
	            //冰甲技能的设定
	            call TSpellSeyuUpdateAct()
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CancelChongdong takes nothing returns nothing
  local integer i= 1
	    loop
	        exitwhen i > 8
	        if ( GetSpellAbilityUnit() == chongdongs[i] ) then
	        	call RemoveUnit(chongdongs[i])
	            call DestroyTextTag(Seyu__TTCD[i])
	            set chongdongs[i]=null
	            set Seyu__TTCD[i]=null
	            return
	        endif
	        set i=i + 1
	    endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__EnemyFilterSeyu takes nothing returns boolean
		return IsEnemy(GetFilterUnit() , seyu) == true
	endfunction

 function GetChongdongGroup takes real radius,integer count returns group
  local group result= CreateGroup()
  local group temp= null
  local group l_group= null
  local unit l_unit= null
  local integer i= 1
		loop
			exitwhen i > Seyu__chongCount
			if ( chongdongs[i] != null ) then
				set l_group=CreateGroup()
				call GroupEnumUnitsInRange(l_group, GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]), radius, Condition(function Seyu__EnemyFilterSeyu))
				set temp=GetRandomSubGroup(count, l_group)
				call GroupAddGroup(temp, result)
				call DestroyGroup(l_group)
				call DestroyGroup(temp)
				set i=i + 1
			endif
		endloop

		set l_group=null
		set l_unit=null
		set temp=null
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddChongdongGroup takes group p,real radius,integer count returns nothing
  local group g= GetChongdongGroup(radius , count)
		call GroupAddGroup(g, p)
		set g=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Mantuoluo takes unit speller,real damageRate,integer abilityID returns nothing
  local unit u= speller
  local real damage= GetDamageAgi(u) * damageRate
     local group l_group= CreateGroup()
     local unit l_unit= null
	    call GroupEnumUnitsInRange(l_group, GetUnitX(speller), GetUnitY(speller), 600, Condition(function Seyu__EnemyFilterSeyu))
	    call AddChongdongGroup(l_group , 600 , R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
	    
	    loop
	        set l_unit=FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
    		call UnitDamageTarget(u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleHitTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
	    endloop
	    //输出伤害
	    call PrintSpellAdd((GetOwningPlayer(u) ) , ( GetAbilityName(abilityID) ) , (( damage)*1.0) , "") // INLINED!!
	    call DestroyGroup(l_group)
	    set l_group=null
	    set l_unit=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function TSpellSeyu2Con takes nothing returns boolean
	    return ( ( ( GetAttacker() == seyu ) or ( GetUnitTypeId(GetAttacker()) == 'espv' ) ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true ) and ( GetRandomInt(1, 20) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, seyu) > 200.00 ) ) // INLINED!!
	endfunction

 function TSpellSeyu2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Mantuoluo(seyu , 1 , 'AUav')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	
	//位置刷新，0.05s
 function Seyu__FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(Seyu__TTPower, seyu, 25)
	endfunction

	
	//数值刷新,1秒1次
 function Seyu__FlashPowerData takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(seyu))
  local real delta
		//限制能量在0-105之间
		set Seyu__IPower=IMinBJ(IMaxBJ(Seyu__IPower - 1, 0), 105)
		call SetTextTagTextBJ(Seyu__TTPower, I2S(Seyu__IPower) + "%能量", 20)
		set delta=I2R(( Seyu__IPower / 10 ) * 10) / 100
		if ( Seyu__RAddtion != delta ) then

			call AddStrPercent(index , delta - Seyu__RAddtion)
			call AddIntPercent(index , delta - Seyu__RAddtion)
			call AddAgiPercent(index , delta - Seyu__RAddtion)
			set Seyu__RAddtion=delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(seyu), GetUnitY(seyu)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__TDeathAddPowerCon takes nothing returns boolean
		return ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu )
	endfunction
	
 function Seyu__TDeathAddPowerAct takes nothing returns nothing
		set Seyu__IPower=Seyu__IPower + 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__InitPower takes nothing returns nothing
  local timer ti= CreateTimer()
  local trigger t= CreateTrigger()

		//异界能量触发
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(t, Condition(function Seyu__TDeathAddPowerCon))
		call TriggerAddAction(t, function Seyu__TDeathAddPowerAct)

		set Seyu__IPower=0
		set Seyu__RAddtion=0
		set Seyu__TTPower=CreateTextTagUnitBJ(I2S(Seyu__IPower) + "%能量", seyu, 0, 20, 100, 0, 100, 0)
		call TimerStart(ti, 0.05, true, function Seyu__FlashPowerLocation)

		set ti=CreateTimer()
		call TimerStart(ti, 1, true, function Seyu__FlashPowerData)

		set ti=null
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__TSpellSeyu3Con takes nothing returns boolean
    	return GetAttackedUnitBJ() == seyu and GetRandomInt(1, 20) == 1 and GetUnitState(seyu, UNIT_STATE_MANA) >= 400
	endfunction
		
 function Seyu__TSpellSeyu3Act takes nothing returns nothing
  local real damage= GetDamageAgi(seyu) * 2.5
  local group g= CreateGroup()
     local unit l_unit
		call DisableTrigger(GetTriggeringTrigger())
		//初始化虫洞单位组
		call GroupAddUnit(g, GetAttacker())
		call AddChongdongGroup(g , 600 , 1)
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName('AEar') ) , (( damage)*1.0) , "") // INLINED!!
	    //局部单位组伤害
	    loop
	        set l_unit=FirstOfGroup(g)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(g, l_unit)
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'hh00' ) , (( GetUnitX(l_unit) )*1.0) , (( GetUnitY(l_unit) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	    	call CreateTextTagA(("冻" ) , ( l_unit ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	        call UnitDamageTarget(seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	    endloop
	    call DestroyGroup(g)
		set g=null
	    set l_unit=null
		call PolledWait(8)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Kongjianshashou takes nothing returns nothing
  local integer i= 1
  local integer ii= 1
  local integer attack= R2I(I2R(GetHeroAgi(seyu, true)) * SquareRoot(GetHeroLevel(seyu)))
		call DisplayTextToPlayer((GetOwningPlayer(seyu) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "攻击力" + I2S(attack) + ".") )) // INLINED!!

		loop
			exitwhen i > Seyu__chongCount
			if ( shashous[i] != null ) then
	        	call FlushChildHashtable(YDHT, GetHandleId(shashous[i]))
				call RemoveUnit(shashous[i])
			endif
			set i=i + 1
		endloop

		loop
			exitwhen ii > Seyu__chongCount
			if ( chongdongs[ii] != null ) then
				set shashous[ii]=CreateUnit(GetOwningPlayer(seyu), 'espv', GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]), 270)
				call SetAttack(shashous[ii] , attack)
			endif
			set ii=ii + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashShashouLocation takes nothing returns nothing
  local integer i= 1

		loop
			exitwhen i > Seyu__chongCount
			if ( IsUnitAliveBJ(shashous[i]) and shashous[i] != null ) then
				if not ( IsUnitInRange(shashous[i], chongdongs[i], 1800.00) ) then
					call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(shashous[i]), GetUnitY(shashous[i])))
					call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i])))
					call SetUnitPosition(shashous[i], GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]))

				endif
			else
				set shashous[i]=null
			endif
			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__AnShaZhiWuTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local group g= null
  local real damage= GetDamageAgi(seyu) * 0.5
  local integer value= LoadInteger(spellTable, id, kAnShaCount)
  local group l_group= null
  local unit l_unit= null
  local integer i
		if ( value < 30 ) then
			//++1
			call SaveInteger(spellTable, id, kAnShaCount, value + 1)
	    	set l_group=CreateGroup()
			call GroupEnumUnitsInRange(l_group, GetUnitX(seyu), GetUnitY(seyu), 600, Condition(function Seyu__EnemyFilterSeyu))
	    	call AddChongdongGroup(l_group , 600 , R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
    			call UnitDamageTarget(seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			endloop
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null

			//特效
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'h00E' ) , (( GetUnitX(seyu) )*1.0) , (( GetUnitY(seyu) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
			set i=1
			loop
				exitwhen i > 8
				if ( chongdongs[i] != null ) then
	       			call CreateUnitEffectSpecifyTime((GetOwningPlayer(chongdongs[i]) ) , ( 'h00E' ) , (( GetUnitX(chongdongs[i]) )*1.0) , (( GetUnitY(chongdongs[i]) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
				endif
				set i=i + 1
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable, id)
		endif
		set t=null
	endfunction

 function Seyu__AnShaZhiWu takes nothing returns nothing
  local timer t= CreateTimer()
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( GetDamageAgi(seyu))*1.0) , "") // INLINED!!
		call SaveInteger(spellTable, GetHandleId(t), kAnShaCount, 0)
		call TimerStart(t, 0.5, true, function Seyu__AnShaZhiWuTimer)
		set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Seyu__TSpellSeyuCon takes nothing returns boolean
	    return ( GetSpellAbilityUnit() == seyu )
	endfunction

 function Seyu__TSpellSeyuAct takes nothing returns nothing
		if ( ( GetSpellAbilityId() == 'AEfk' ) ) then
			call Mantuoluo(seyu , 1 , GetSpellAbilityId())
		//放虫洞
		elseif ( GetSpellAbilityId() == 'ACst' ) then
			call CreateChongdong()
		//取消虫洞
		elseif ( GetSpellAbilityId() == 'A0E6' ) then
			call CancelChongdong()
		//空间杀手
		elseif ( GetSpellAbilityId() == 'AEsv' ) then
			call Kongjianshashou()
		elseif ( ( GetSpellAbilityId() == 'AEst' ) ) then
			call Seyu__AnShaZhiWu()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == seyu ) then
			if ( whichSpell == 1 ) then
				set Seyu__chongCount=Seyu__chongCount + 1
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AUav') == 1 ) then // INLINED!!
				//技能2初始化
				call Seyu__InitPower()
				set Seyu__chongCount=Seyu__chongCount + 1
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEar') == 1 ) then // INLINED!!
				//技能3初始化
				call SetPlayerTechResearchedSwap('R00D', 1, GetOwningPlayer(seyu))
				set Seyu__chongCount=Seyu__chongCount + 1
				set i=1
       			loop
       				exitwhen i > 6
       				
		            if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
		                call AddAgiPercent(i , 0.4)
		            endif

       				set i=i + 1
       			endloop

			    //注册空间封冻技能
			    set Seyu__TSpellSeyu3=CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu3, EVENT_PLAYER_UNIT_ATTACKED)
			    call TriggerAddCondition(Seyu__TSpellSeyu3, Condition(function Seyu__TSpellSeyu3Con))
			    call TriggerAddAction(Seyu__TSpellSeyu3, function Seyu__TSpellSeyu3Act)
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEsv') == 1 ) then // INLINED!!
				//技能4初始化
				set Seyu__chongCount=Seyu__chongCount + 1
				//杀手位置刷新
				call TimerStart(CreateTimer(), 5, true, function FlashShashouLocation)
			elseif ( whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu, 'AEst') == 1 ) then
				//技能5初始化
				set Seyu__chongCount=Seyu__chongCount + 2
			endif
		endif
	endfunction

 function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if ( learner == seyu ) then
			if ( learnSpellID == 'AEfk' ) then
				call LearnSkillSeyuI(learner , 1)
			elseif ( learnSpellID == 'AUav' ) then
				call LearnSkillSeyuI(learner , 2)
			elseif ( learnSpellID == 'AEar' ) then
				call LearnSkillSeyuI(learner , 3)
			elseif ( learnSpellID == 'AEsv' ) then
				call LearnSkillSeyuI(learner , 4)
			elseif ( learnSpellID == 'AEst' ) then
				call LearnSkillSeyuI(learner , 5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSeyu takes unit u returns nothing
  local integer i= 1
		set seyu=u
		set Seyu__chongCount=2
		//1
	    set Seyu__TSpellSeyu=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(Seyu__TSpellSeyu, Condition(function Seyu__TSpellSeyuCon))
	    call TriggerAddAction(Seyu__TSpellSeyu, function Seyu__TSpellSeyuAct)

	    //2
	    set Seyu__TSpellSeyu2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Seyu__TSpellSeyu2, Condition(function TSpellSeyu2Con))
	    call TriggerAddAction(Seyu__TSpellSeyu2, function TSpellSeyu2Act)

	    //升级顺便提高虫洞技能等级
	    set Seyu__TSpellSeyuUpdate=CreateTrigger()
	    call DisableTrigger(Seyu__TSpellSeyuUpdate)
	    call TriggerRegisterUnitEvent(Seyu__TSpellSeyuUpdate, seyu, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(Seyu__TSpellSeyuUpdate, function TSpellSeyuUpdateAct)

	    loop
	    	exitwhen i > 8
	    	set chongdongs[i]=null
	    	set Seyu__TTCD[i]=null
	    	set i=i + 1
	    endloop

	endfunction

//library Seyu ends

// BEGIN IMPORT OF Seyu.j

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

/////! import "DzAPI.j"
// END IMPORT OF Test.j
// BEGIN IMPORT OF Constant.j

// BEGIN IMPORT OF JBase.j

// END IMPORT OF JBase.j

// END IMPORT OF Constant.j
// IGNORE DOUBLE IMPORT OF JBase.j

// END IMPORT OF LHBase.j

 
// END IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j


// END IMPORT OF Seyu.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs35803031")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test___InitTest")
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

function jasshelper__initstructs35803031 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))



endfunction

