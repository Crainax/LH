globals
//globals from Constant:
constant boolean LIBRARY_Constant=true
string diffculty= ""
//endglobals from Constant
//globals from Version:
constant boolean LIBRARY_Version=true
boolean Version__Bheiyan= false
boolean Version__Bhuanyi= false
//endglobals from Version
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
        
rect gg_rct________8
rect gg_rct_Diamond2
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero= null
        
unit array UDepot

hashtable itemTable= InitHashtable()
//endglobals from LHBase
//globals from Diamond:
constant boolean LIBRARY_Diamond=true
constant string DIAMOND_CANT_UPDATE= "|cFFFF66CC【消息】|r该宝石不能升级该物品。"

        
integer IAtleast1= 0
integer IAtleast2= 0
//endglobals from Diamond
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


//library Constant:
	
//---------------------------------------------------------------------------------------------------
	
 function GetVersion takes nothing returns string
		return "2.64"
	endfunction
//---------------------------------------------------------------------------------------------------



//library Constant ends
//library Version:
	

//---------------------------------------------------------------------------------------------------
	
 function GetHeiyanHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，获取密码请加群148199145|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，多人通关地狱及以上的难度后在结尾获取密码,\n		或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeiyanSelectedCon takes player p returns boolean
		return Version__Bheiyan
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiSelectedCon takes player p returns boolean
		return Version__Bhuanyi
	endfunction
//---------------------------------------------------------------------------------------------------\
    
    function Version__GetHuanyiCode takes string s returns integer
        local string result= s
        local integer i= 1
        loop
            exitwhen i > 3
            set result=I2S(StringHash(result))
            set i=i + 1
        endloop
        return S2I(SubStringBJ(result, IMaxBJ(StringLength(result) - 5, 1), StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------

	
 function TSpeakPassword takes nothing returns nothing
  local string chat= GetEventPlayerChatString()
		if ( chat == "hydtzyqysqz" ) then
			set Version__Bheiyan=true
		elseif ( chat == "hy" + I2S(Version__GetHuanyiCode(GetPlayerName(GetTriggerPlayer()))) ) then
			set Version__Bhuanyi=true
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

 function Version__InitVersion takes nothing returns nothing
     local trigger t= CreateTrigger()
	    call TriggerRegisterPlayerChatEvent(t, Player(0), "", false)
	    call TriggerRegisterPlayerChatEvent(t, Player(1), "", false)
	    call TriggerRegisterPlayerChatEvent(t, Player(2), "", false)
	    call TriggerRegisterPlayerChatEvent(t, Player(3), "", false)
	    call TriggerRegisterPlayerChatEvent(t, Player(4), "", false)
	    call TriggerRegisterPlayerChatEvent(t, Player(5), "", false)
	    call TriggerAddAction(t, function TSpeakPassword)
	endfunction


//library Version ends
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

    
    function IsEnemyM takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitAliveBJ(u) == true and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster)) and GetUnitAbilityLevel(u, 'Avul') < 1 and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction   
//---------------------------------------------------------------------------------------------------

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsEnemyM(u , caster) and IsUnitType(u, UNIT_TYPE_RESISTANT) == false
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
//library Diamond:


//---------------------------------------------------------------------------------------------------
    
    function Diamond__Diamond100 takes integer itemID,integer newItemID returns boolean

        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以100%的成功率成功地升级了" + GetItemName(GetSpellTargetItem()) + "！" ) ))
            call RemoveItem(GetSpellTargetItem())
            call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
            call PlaySoundBJ(gg_snd_Chenggong)
            return true
        endif
        return false
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function Diamond__DiamondA takes integer itemID,integer newItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond__Diamond100(itemID , newItemID)
        endif
        //非琉璃璞玉
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率成功地升级了" + GetItemName(GetSpellTargetItem()) + "！" ) ))
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率升级" + GetItemName(GetSpellTargetItem()) + "失败！" ) ))
                call PlaySoundBJ(gg_snd_Shibai)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__DiamondB takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond__Diamond100(itemID , newItemID)
        endif
        //非琉璃璞玉
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率成功地升级了" + GetItemName(GetSpellTargetItem()) + "！" ) ))
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率升级" + GetItemName(GetSpellTargetItem()) + "失败,等级降低！" ) ))
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(oldItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Shibai)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__DiamondC takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond__Diamond100(itemID , newItemID)
        endif
        //非琉璃璞玉
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call RemoveItem(GetSpellTargetItem())
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率成功地升级了" + GetItemName(GetSpellTargetItem()) + "！" ) ))
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call RemoveItem(GetSpellTargetItem())
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以" + I2S(poss) + "%的成功率升级" + GetItemName(GetSpellTargetItem()) + "失败,等级降低2级！" ) ))
                call UnitAddItemByIdSwapped(oldItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Shibai)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddOneDiamond takes nothing returns nothing
                //复制出来的不能升级
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('I02N', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond__Diamond100('I04Z' , 'nflg') == true ) then
            return
        endif
        if ( Diamond__Diamond100('I056' , 'spre') == true ) then
            return
        endif
        if ( Diamond__Diamond100('I057' , 'fwss') == true ) then
            return
        endif
        if ( Diamond__Diamond100('I050' , 'uflg') == true ) then
            return
        endif
        if ( Diamond__Diamond100('I055' , 'tgxp') == true ) then
            return
        endif
        if ( Diamond__Diamond100('I03Y' , 'dust') == true ) then
            return
        endif
        if ( Diamond__Diamond100('rej4' , 'drph') == true ) then
            return
        endif
        if ( Diamond__Diamond100('rej6' , 'dtsb') == true ) then
            return
        endif
        if ( Diamond__Diamond100('pgin' , 'gobm') == true ) then
            return
        endif
        call UnitAddItemByIdSwapped('I02N', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSecondDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('I04S', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond__DiamondA('nflg' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('spre' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('fwss' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('uflg' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('tgxp' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('dust' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('drph' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('dtsb' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondA('gobm' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('I04S', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddThirdDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('azhr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('esaz' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('asbl' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ram4' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ram3' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ram2' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ram1' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('oven' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('tels' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondA('gvsm' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('azhr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFourthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('gmfr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('sksh' , 'oslo' , 'esaz' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('ocor' , 'blba' , 'asbl' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rat3' , 'pams' , 'ram4' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('stre' , 'shrs' , 'ram3' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('lure' , 'thdm' , 'ram2' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rots' , 'tmmt' , 'ram1' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('frhg' , 'mlst' , 'oven' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('ofir' , 'soul' , 'tels' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('gldo' , 'gsou' , 'gvsm' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('gmfr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFourthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('wolg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('sksh' , 'oslo' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('ocor' , 'blba' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rat3' , 'pams' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('stre' , 'shrs' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('lure' , 'thdm' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rots' , 'tmmt' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('frhg' , 'mlst' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('ofir' , 'soul' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondB('gldo' , 'gsou' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('wolg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFourthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('skrt', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('sksh' , 'oslo' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ocor' , 'blba' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('rat3' , 'pams' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('stre' , 'shrs' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('lure' , 'thdm' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('rots' , 'tmmt' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('frhg' , 'mlst' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('ofir' , 'soul' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondA('gldo' , 'gsou' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('skrt', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFifthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('jpnt', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('oslo' , 'grsl' , 'sksh' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('blba' , 'cosl' , 'ocor' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('pams' , 'jdrn' , 'rat3' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('shrs' , 'kgal' , 'stre' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('thdm' , 'arsh' , 'lure' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('tmmt' , 'brag' , 'rots' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('mlst' , 'nspi' , 'frhg' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('soul' , 'sbok' , 'ofir' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('gsou' , 'envl' , 'gldo' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('jpnt', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFifthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ledg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('oslo' , 'grsl' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('blba' , 'cosl' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('pams' , 'jdrn' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('shrs' , 'kgal' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('thdm' , 'arsh' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('tmmt' , 'brag' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('mlst' , 'nspi' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('soul' , 'sbok' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondB('gsou' , 'envl' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('ledg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFifthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('wtlg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('oslo' , 'grsl' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('blba' , 'cosl' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('pams' , 'jdrn' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('shrs' , 'kgal' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('thdm' , 'arsh' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('tmmt' , 'brag' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('mlst' , 'nspi' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('soul' , 'sbok' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondA('gsou' , 'envl' , 50) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('wtlg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddFifthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('gopr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond__DiamondC('oslo' , 'grsl' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('blba' , 'cosl' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('pams' , 'jdrn' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('shrs' , 'kgal' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('thdm' , 'arsh' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('tmmt' , 'brag' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('mlst' , 'nspi' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('soul' , 'sbok' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond__DiamondC('gsou' , 'envl' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('gopr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSixthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('glsk', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('grsl' , 'flag' , 'oslo' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('cosl' , 'shhn' , 'blba' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('jdrn' , 'shcw' , 'pams' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('kgal' , 'shtm' , 'shrs' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('arsh' , 'srtl' , 'thdm' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('brag' , 'olig' , 'tmmt' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('nspi' , 'oli2' , 'mlst' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('sbok' , 'arsc' , 'soul' , 50) == true ) then
            return
        endif
        if ( Diamond__DiamondB('envl' , 'rugt' , 'gsou' , 50) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('glsk', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSixthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('dthb', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('grsl' , 'flag' , 'oslo' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('cosl' , 'shhn' , 'blba' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('jdrn' , 'shcw' , 'pams' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('kgal' , 'shtm' , 'shrs' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('arsh' , 'srtl' , 'thdm' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('brag' , 'olig' , 'tmmt' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('nspi' , 'oli2' , 'mlst' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('sbok' , 'arsc' , 'soul' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondB('envl' , 'rugt' , 'gsou' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('dthb', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSixthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('bzbe', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('grsl' , 'flag' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('cosl' , 'shhn' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('jdrn' , 'shcw' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('kgal' , 'shtm' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('arsh' , 'srtl' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('brag' , 'olig' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('nspi' , 'oli2' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('sbok' , 'arsc' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondA('envl' , 'rugt' , 40) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('bzbe', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSixthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('dphe', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondC('grsl' , 'flag' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('cosl' , 'shhn' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('jdrn' , 'shcw' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('kgal' , 'shtm' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('arsh' , 'srtl' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('brag' , 'olig' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('nspi' , 'oli2' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('sbok' , 'arsc' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond__DiamondC('envl' , 'rugt' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('dphe', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSeventhDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kygh', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('oli2' , 'rump' , 'nspi' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('arsc' , 'rde0' , 'sbok' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rugt' , 'shdt' , 'envl' , 40) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('kygh', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSeventhStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('mort', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('oli2' , 'rump' , 'nspi' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('arsc' , 'rde0' , 'sbok' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rugt' , 'shdt' , 'envl' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('mort', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSeventhBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ches', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('oli2' , 'rump' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('arsc' , 'rde0' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('rugt' , 'shdt' , 30) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('ches', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddSeventhCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondC('oli2' , 'rump' , 'mlst' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('arsc' , 'rde0' , 'soul' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('rugt' , 'shdt' , 'gsou' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddEighthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('sehr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('rump' , 'shen' , 'oli2' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rde0' , 'oflg' , 'arsc' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('shdt' , 'crdt' , 'rugt' , 40) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('sehr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddEighthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m3', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('rump' , 'shen' , 'oli2' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('rde0' , 'oflg' , 'arsc' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('shdt' , 'crdt' , 'rugt' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('k3m3', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddEighthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m2', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('rump' , 'shen' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('rde0' , 'oflg' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('shdt' , 'crdt' , 30) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('k3m2', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddEighthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kybl', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondC('rump' , 'shen' , 'nspi' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('rde0' , 'oflg' , 'sbok' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('shdt' , 'crdt' , 'envl' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('kybl', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddNinthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('bzbf', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('shen' , 'stpg' , 'rump' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('oflg' , 'frgd' , 'rde0' , 40) == true ) then
            return
        endif
        if ( Diamond__DiamondB('crdt' , 'pspd' , 'shdt' , 40) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('bzbf', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddNinthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kysn', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondB('shen' , 'stpg' , 'rump' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('oflg' , 'frgd' , 'rde0' , 60) == true ) then
            return
        endif
        if ( Diamond__DiamondB('crdt' , 'pspd' , 'shdt' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('kysn', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddNinthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ktrm', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondA('shen' , 'stpg' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('oflg' , 'frgd' , 30) == true ) then
            return
        endif
        if ( Diamond__DiamondA('crdt' , 'pspd' , 30) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('ktrm', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__AddNinthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('shwd', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__DiamondC('shen' , 'stpg' , 'oli2' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('oflg' , 'frgd' , 'arsc' , 70) == true ) then
            return
        endif
        if ( Diamond__DiamondC('crdt' , 'pspd' , 'rugt' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('shwd', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__XueJingDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m1', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond__Diamond100('oli2' , 'rump') == true ) then
            return
        endif
        if ( Diamond__Diamond100('arsc' , 'rde0') == true ) then
            return
        endif
        if ( Diamond__Diamond100('rugt' , 'shdt') == true ) then
            return
        endif
        if ( Diamond__Diamond100('shen' , 'stpg') == true ) then
            return
        endif
        if ( Diamond__Diamond100('oflg' , 'frgd') == true ) then
            return
        endif
        if ( Diamond__Diamond100('crdt' , 'pspd') == true ) then
            return
        endif
        if ( Diamond__Diamond100('rump' , 'shen') == true ) then
            return
        endif
        if ( Diamond__Diamond100('rde0' , 'oflg') == true ) then
            return
        endif
        if ( Diamond__Diamond100('shdt' , 'crdt') == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('k3m1', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction

//---------------------------------------------------------------------------------------------------

    
    function Diamond__TSpellDiamondAct takes nothing returns nothing
        if ( GetSpellAbilityId() == 'A02Z' ) then
            call Diamond__AddOneDiamond()
        elseif ( GetSpellAbilityId() == 'Amnb' ) then
            call Diamond__AddSecondDiamond()
        elseif ( GetSpellAbilityId() == 'Ambb' ) then
            call Diamond__AddThirdDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACfl' ) ) then
            call Diamond__AddFourthDiamond()
        elseif ( ( GetSpellAbilityId() == 'Aenw' ) ) then
            call Diamond__AddFourthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'Aenr' ) ) then
            call Diamond__AddFourthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACcy' ) ) then
            call Diamond__AddFifthDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACbn' ) ) then
            call Diamond__AddFifthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'SCc1' ) ) then
            call Diamond__AddFifthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACfb' ) ) then
            call Diamond__AddFifthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACls' ) ) then
            call Diamond__AddSixthDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACbf' ) ) then
            call Diamond__AddSixthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'Afod' ) ) then
            call Diamond__AddSixthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACdc' ) ) then
            call Diamond__AddSixthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DG' ) ) then
            call Diamond__AddSeventhDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DI' ) ) then
            call Diamond__AddSeventhStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DH' ) ) then
            call Diamond__AddSeventhBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DN' ) ) then
            call Diamond__AddSeventhCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DJ' ) ) then
            call Diamond__AddEighthDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DK' ) ) then
            call Diamond__AddEighthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DL' ) ) then
            call Diamond__AddEighthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DM' ) ) then
            call Diamond__AddEighthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DO' ) ) then
            call Diamond__AddNinthDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DR' ) ) then
            call Diamond__AddNinthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DQ' ) ) then
            call Diamond__AddNinthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DP' ) ) then
            call Diamond__AddNinthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0EK' ) ) then
            call Diamond__XueJingDiamond()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function DiamondMonsterFilter takes nothing returns boolean
        return ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function DiamondPlayerFilter takes nothing returns boolean
        return ( ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) and ( GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__CreateDiamonMonster takes integer whichType,integer aLevel returns nothing
        local real x= 0
        local real y= 0
        local unit u
        if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
            set x=GetRandomReal(GetRectMinX(gg_rct________8), GetRectMaxX(gg_rct________8))
            set y=GetRandomReal(GetRectMinY(gg_rct________8), GetRectMaxY(gg_rct________8))
        else
            set x=GetRandomReal(GetRectMinX(gg_rct_Diamond2), GetRectMaxX(gg_rct_Diamond2))
            set y=GetRandomReal(GetRectMinY(gg_rct_Diamond2), GetRectMaxY(gg_rct_Diamond2))
        endif
        set u=CreateUnit(Player(10), whichType, x, y, GetRandomDirectionDeg())
        call SetUnitAbilityLevel(u, 'AB01', aLevel)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", x, y))
        set u=null
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function TBuyDiamondStartCon takes nothing returns boolean
        return ( ( GetUnitTypeId(GetBuyingUnit()) != 'N018' ) and ( GetUnitTypeId(GetSellingUnit()) == 'nmr5' or GetUnitTypeId(GetSellingUnit()) == 'nmre' or GetUnitTypeId(GetSellingUnit()) == 'n01D' or GetUnitTypeId(GetSellingUnit()) == 'n01C' ) )
    endfunction

    function TBuyDiamondStartAct takes nothing returns nothing
        local group group1
        local group group2
        local integer i= 1

        if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
            set group1=GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondMonsterFilter))
            set group2=GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
        else
            set group1=GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondMonsterFilter))
            set group2=GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilter))
        endif


//textmacro instance: StartDiamondMonster("rre1","nnmg","1")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rre1' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nnmg' , 1)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("rre1","nnmg","1")
//textmacro instance: StartDiamondMonster("rhe1","nmyr","2")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rhe1' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nmyr' , 2)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("rhe1","nmyr","2")
//textmacro instance: StartDiamondMonster("guvi","nnsw","3")

        if ( ( GetItemTypeId(GetSoldItem()) == 'guvi' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nnsw' , 3)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("guvi","nnsw","3")
//textmacro instance: StartDiamondMonster("tpow","nsnp","4")

        if ( ( GetItemTypeId(GetSoldItem()) == 'tpow' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nsnp' , 4)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("tpow","nsnp","4")
//textmacro instance: StartDiamondMonster("rhe2","nhyc","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rhe2' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nhyc' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("rhe2","nhyc","5")
//textmacro instance: StartDiamondMonster("tint","nnrg","6")

        if ( ( GetItemTypeId(GetSoldItem()) == 'tint' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nnrg' , 6)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("tint","nnrg","6")
//textmacro instance: StartDiamondMonster("modt","nplb","7")

        if ( ( GetItemTypeId(GetSoldItem()) == 'modt' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nplb' , 7)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("modt","nplb","7")
//textmacro instance: StartDiamondMonster("sman","ntrv","8")

        if ( ( GetItemTypeId(GetSoldItem()) == 'sman' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('ntrv' , 8)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("sman","ntrv","8")
//textmacro instance: StartDiamondMonster("sorf","nmmu","9")

        if ( ( GetItemTypeId(GetSoldItem()) == 'sorf' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nmmu' , 9)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("sorf","nmmu","9")
//textmacro instance: StartDiamondMonster("ratf","nanb","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'ratf' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nanb' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("ratf","nanb","5")
//textmacro instance: StartDiamondMonster("rreb","nanm","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rreb' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nanm' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("rreb","nanm","5")
//textmacro instance: StartDiamondMonster("ckng","nane","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'ckng' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    else
                        set IAtleast2=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond__CreateDiamonMonster('nane' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!")
            endif
        endif

//end of: StartDiamondMonster("ckng","nane","5")

        call DestroyGroup(group1)
        call DestroyGroup(group2)
        set group1=null
        set group2=null

    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond__MonsterDropDiamond takes nothing returns nothing
        if ( ( GetUnitTypeId(GetDyingUnit()) == 'nnmg' ) ) then
            call CreateItem('I02N', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nmyr' ) ) then
            call CreateItem('I04S', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nnsw' ) ) then
            call CreateItem('azhr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nsnp' ) ) then
            call CreateItem('gmfr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nhyc' ) ) then
            call CreateItem('jpnt', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nnrg' ) ) then
            call CreateItem('glsk', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nplb' ) ) then
            call CreateItem('kygh', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'ntrv' ) ) then
            call CreateItem('sehr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nmmu' ) ) then
            call CreateItem('bzbf', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nanb' ) ) then
            call CreateItem('thle', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nanm' ) ) then
            call CreateItem('dkfw', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nane' ) ) then
            call CreateItem('phlt', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function TDropDiamondCon takes nothing returns boolean
        return ( ( IsUnitEnemy(GetKillingUnitBJ(), Player(10)) == true ) )
    endfunction
    
    function TDropDiamondAct takes nothing returns nothing
        if ( ( ( GetUnitTypeId(GetDyingUnit()) == 'nnmg' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nmyr' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nnsw' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsnp' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nhyc' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nnrg' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nplb' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ntrv' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nmmu' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nanb' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nanm' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nane' ) ) and ( GetPlayerController(GetOwningPlayer(GetDyingUnit())) == MAP_CONTROL_COMPUTER ) ) then
            if ( RectContainsUnit(gg_rct________8, GetDyingUnit()) ) then
                set IAtleast1=( IAtleast1 - 1 )
                if ( ( IAtleast1 == 2 ) ) then
                    set IAtleast1=100
                    call Diamond__MonsterDropDiamond()
                    return
                endif
            elseif ( RectContainsUnit(gg_rct_Diamond2, GetDyingUnit()) ) then
                set IAtleast2=( IAtleast2 - 1 )
                if ( ( IAtleast2 == 2 ) ) then
                    set IAtleast2=100
                    call Diamond__MonsterDropDiamond()
                    return
                endif
            endif
        endif
        if ( ( GetRandomInt(1, 20) == 1 ) ) then
            if ( RectContainsUnit(gg_rct________8, GetDyingUnit()) ) then
                set IAtleast1=100
            elseif ( RectContainsUnit(gg_rct_Diamond2, GetDyingUnit()) ) then
                set IAtleast2=100
            endif
            call Diamond__MonsterDropDiamond()
        endif
        
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function TLeaveDiamondRegionCon takes nothing returns boolean
        return ( ( GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER ) )
    endfunction

    function TLeaveDiamondRegion1Act takes nothing returns nothing
        local group group1= GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
        local group group2= null
        local unit l_unit= null
        if ( ( CountUnitsInGroup(group1) == 0 ) ) then
            set group2=GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondMonsterFilter))
            loop
                set l_unit=FirstOfGroup(group2)
                exitwhen l_unit == null
                call GroupRemoveUnit(group2, l_unit)
                call FlushChildHashtable(YDHT, GetHandleId(l_unit))
                call RemoveUnit(l_unit)
            endloop
            call DestroyGroup(group2)
        endif
        call DestroyGroup(group1)
        set group1=null
        set group2=null
        set l_unit=null
    endfunction

    function TLeaveDiamondRegion2Act takes nothing returns nothing
        local group group1= GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilter))
        local group group2= null
        local unit l_unit= null
        if ( ( CountUnitsInGroup(group1) == 0 ) ) then
            set group2=GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondMonsterFilter))
            loop
                set l_unit=FirstOfGroup(group2)
                exitwhen l_unit == null
                call GroupRemoveUnit(group2, l_unit)
                call FlushChildHashtable(YDHT, GetHandleId(l_unit))
                call RemoveUnit(l_unit)
            endloop
            call DestroyGroup(group2)
        endif
        call DestroyGroup(group1)
        set group1=null
        set group2=null
        set l_unit=null
    endfunction
//---------------------------------------------------------------------------------------------------

	
 function Diamond__InitDiamond takes nothing returns nothing
		
        local trigger t= CreateTrigger()

        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddAction(t, function Diamond__TSpellDiamondAct)

        //开始刷宝石
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
        call TriggerAddCondition(t, Condition(function TBuyDiamondStartCon))
        call TriggerAddAction(t, function TBuyDiamondStartAct)

        //宝石怪物掉落
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
        call TriggerAddCondition(t, Condition(function TDropDiamondCon))
        call TriggerAddAction(t, function TDropDiamondAct)

        //宝石区离开事件
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct________8)
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion1Act)
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct_Diamond2)
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion2Act)

        set t=null
	endfunction


//library Diamond ends

// BEGIN IMPORT OF Diamond.j
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
// BEGIN IMPORT OF Constant.j

// END IMPORT OF Constant.j
// BEGIN IMPORT OF CommonVersion.j

// END IMPORT OF CommonVersion.j

// END IMPORT OF LHBase.j


// END IMPORT OF Diamond.j
function main takes nothing returns nothing

call ExecuteFunc("Version__InitVersion")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Diamond__InitDiamond")

endfunction



//Struct method generated initializers/callers:

