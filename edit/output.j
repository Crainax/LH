globals
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
//endglobals from LHBase
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
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
//endglobals from SpellBase
//globals from Arena:
constant boolean LIBRARY_Arena=true

constant integer ARENA_MAX_LEVEL= 50

		
rect gg_rct_Arena_1
rect gg_rct_Arena_2
rect gg_rct_Arena_all
rect gg_rct_Arena_forbit

		
trigger Arena__TDieEvent

		
trigger Arena__TSpellLinger
trigger Arena__TSpellZhousi
trigger Arena__TSpellXuemo1
trigger Arena__TSpellXuemo2
trigger Arena__TSpellFuwang
trigger Arena__TSpellMeidusha1
trigger Arena__TSpellMeidusha2
trigger Arena__TSpellKiller1
trigger Arena__TSpellKiller2
trigger Arena__TSpellKiller3
trigger Arena__TSpellJinxuan1
trigger Arena__TSpellJinxuan2
trigger Arena__TSpellJinxuan3
trigger Arena__TSpellJinxuan4

		
integer Arena__currentArena= 0
		
integer Arena__currentLevel= 1
		
unit Arena__challenager= null
		
unit Arena__defier= null
		
texttag Arena__textTag_Level
//endglobals from Arena
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
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
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

//library LHBase:

	
 function IsXianSpell takes integer spell returns boolean
		return ( spell == 'Acht' ) or ( spell == 'A03A' ) or ( spell == 'A0BM' ) or ( spell == 'A07Z' ) or ( spell == 'A07T' ) or ( spell == 'A05Z' ) or ( spell == 'ACro' ) or ( spell == 'Acht' ) or ( spell == 'A07X' ) or ( spell == 'A05Y' ) or ( spell == 'AChv' ) or ( spell == 'A07V' ) or ( spell == 'Awrg' ) or ( spell == 'A05X' ) or ( spell == 'A07C' ) or ( spell == 'A07D' ) or ( spell == 'Awrh' ) or ( spell == 'A075' ) or ( spell == 'A06W' ) or ( spell == 'A06Y' ) or ( spell == 'A06Q' ) or ( spell == 'A07R' ) or ( spell == 'ACcl' ) or ( spell == 'AOhw' ) or ( spell == 'AIin' ) or ( spell == 'AIil' ) or ( spell == 'A07S' ) or ( spell == 'AChx' )
	endfunction

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitIllusion(u) == false and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster))
    endfunction

    
    function CreateSpellTextTag takes string name,unit u,real red,real green,real blue,real time returns nothing

     local texttag t= CreateTextTagUnitBJ(name, u, 0, 20.00, red, green, blue, 0)
	    call SetTextTagVelocityBJ(t, 64, 90.00)
	    if time <= 0 then
	        set time=0.01
	    endif
	    call SetTextTagPermanent(t, false)
	    call SetTextTagLifespan(t, time)
	    call SetTextTagFadepoint(t, time)
    endfunction

    
 function BuyerFilter takes unit buyer returns boolean
		return ( GetUnitTypeId(buyer) != 'N018' )
	endfunction

//library LHBase ends
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
//library SpellBase:


  function s__Attract_attract takes nothing returns nothing
   local real x1
   local real y1
   local real x2
   local real y2
   local real facing
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
				    	set facing=Atan2BJ(y2 - y1, x2 - x1)
				    	call SetUnitX(l_unit, (RMinBJ(RMaxBJ(((x2 + CosBJ(facing) * s__Attract_speed[this])*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
				    	call SetUnitY(l_unit, (RMinBJ(RMaxBJ(((y2 + SinBJ(facing) * s__Attract_speed[this])*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
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
			call BJDebugMsg("黑洞结束")
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


 function AttractUnit takes unit caster,real radius,real interval,real speed returns nothing

	endfunction

//library SpellBase ends
//library Arena:


//---------------------------------------------------------------------------------------------------
	
 function Arena__updateLevel takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer int= GetHeroInt(Arena__challenager, true)
  local integer agi= GetHeroAgi(Arena__challenager, true)
  local integer str= GetHeroStr(Arena__challenager, true)

		if ( IsUnitAliveBJ(Arena__challenager) and ( Arena__currentLevel < ARENA_MAX_LEVEL ) ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Arena__challenager), GetUnitY(Arena__challenager)))
			call SetHeroInt(Arena__challenager, int + int / Arena__currentLevel, true)
			call SetHeroAgi(Arena__challenager, agi + agi / Arena__currentLevel, true)
			call SetHeroStr(Arena__challenager, str + str / Arena__currentLevel, true)
			set Arena__currentLevel=Arena__currentLevel + 1
			//设置技能等级
		else
			set Arena__currentLevel=1
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif

		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
			
 function Arena__updateLevelLoc takes nothing returns nothing
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(Arena__challenager) ) then
			call SetTextTagPosUnitBJ(Arena__textTag_Level, Arena__challenager, 25)
		else
			call DestroyTextTag(Arena__textTag_Level)
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~(位置）")
		endif
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function TSpellLingerCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) )
	endfunction

 function TSpellLingerAct takes nothing returns nothing
		call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
		call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
	endfunction

	
 function Arena__LingerAssemble takes nothing returns nothing
  local real x= GetRectCenterX(gg_rct_Arena_1)
  local real y= GetRectCenterY(gg_rct_Arena_1)
  local group l_group= CreateGroup()
  local unit l_unit
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(Arena__challenager) ) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(Arena__challenager), GetUnitY(Arena__challenager), 900, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsEnemy(GetEnumUnit() , Arena__challenager) ) then
					call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
			    endif
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif
		call DestroyGroup(l_group)
		set t=null
		set l_group=null
		set l_unit=null
	endfunction

//---------------------------------------------------------------------------------------------------

	

 function TSpellZhousiCon takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00 ) )
	endfunction

 function TSpellZhousiAct takes nothing returns nothing
  local integer i= 1
	    call DisableTrigger(GetTriggeringTrigger())
	    call IssueImmediateOrder(GetAttackedUnitBJ(), "creepthunderclap")
	    loop
	    	exitwhen i > 6
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(Arena__challenager) + SinBJ(i * 60) * 400, GetUnitY(Arena__challenager) + CosBJ(i * 60) * 400))
	    	set i=i + 1
	    endloop
	    call CreateSpellTextTag("千煞破击！" , Arena__challenager , 100 , 0 , 0 , 2)

	    call PolledWait(8.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

		
 function TSpellXuemo1Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function TSpellXuemo1Act takes nothing returns nothing
  local unit u
  local integer i= 1
	    call DisableTrigger(GetTriggeringTrigger())

	    loop
	    	exitwhen i > 5
	        set u=CreateUnit(GetOwningPlayer(GetAttacker()), 'h000', GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()), 0)
	        call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
	        call UnitAddAbilityBJ('A0EV', u)
	        call IssueTargetOrderById(u, 852274, GetAttackedUnitBJ())
	    	set i=i + 1
	    endloop

	    call CreateSpellTextTag("幻魔灵枭！" , Arena__challenager , 100 , 0 , 0 , 2)

	    set u=null
	    call PolledWait(10.00)
	    call EnableTrigger(GetTriggeringTrigger())

	endfunction

	
 function TSpellXuemo2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 20) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00 ) )
	endfunction

 function TSpellXuemo2Act takes nothing returns nothing
  local location point= GetUnitLoc(GetAttacker())

     local unit u= CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'h000', GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
	    call IssuePointOrderLoc(u, "rainoffire", point)
	    call RemoveLocation(point)
	    set u=null

	    call CreateSpellTextTag("天玄星陨！" , Arena__challenager , 0 , 100 , 100 , 2)
	endfunction

	

 function TSpellFuwangCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 15) == 1 ) )
	endfunction

 function TSpellFuwangAct takes nothing returns nothing
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ())))
			call UnitDamageTarget(Arena__challenager, GetAttackedUnitBJ(), ( 0.1 * GetUnitStateSwap(UNIT_STATE_LIFE, GetAttackedUnitBJ()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)

		    call CreateSpellTextTag("淘汰之刃！" , Arena__challenager , 0 , 100 , 0 , 2)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function TArenaStartAct takes nothing returns nothing
  local location point
  local timer t
  local integer attract

		//符合条件再开始
	    if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	        if ( ( Arena__challenager == null ) ) then
	            if ( ( Arena__currentArena != 9 ) ) then
	            	//开始啦
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。")
	                set point=GetRectCenter(gg_rct_Arena_2)
	                set t=CreateTimer()
	                if ( ( Arena__currentArena == 0 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Huth', point, 180.00)
	                elseif ( ( Arena__currentArena == 1 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hpb1', point, 180.00)
	                elseif ( ( Arena__currentArena == 2 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hgam', point, 180.00)
	                    call EnableTrigger(Arena__TSpellLinger)
	                    call TimerStart(t, 2, TRUE, function Arena__LingerAssemble)
	                elseif ( ( Arena__currentArena == 3 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hmbr', point, 180.00)
	                    call EnableTrigger(Arena__TSpellZhousi)
	                    set attract=s__Attract_create(Arena__challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
	                elseif ( ( Arena__currentArena == 4 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Odrt', point, 180.00)
	                    call EnableTrigger(Arena__TSpellXuemo1)
	                    call EnableTrigger(Arena__TSpellXuemo2)
	                elseif ( ( Arena__currentArena == 5 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Ogrh', point, 180.00)
	                    call EnableTrigger(Arena__TSpellFuwang)
	                    set attract=s__Attract_create(Arena__challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
	                elseif ( ( Arena__currentArena == 6 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hvsh', point, 180.00)
	                    call EnableTrigger(Arena__TSpellMeidusha1)
	                    call EnableTrigger(Arena__TSpellMeidusha2)
	                elseif ( ( Arena__currentArena == 7 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hpb2', point, 180.00)
	                    call EnableTrigger(Arena__TSpellKiller1)
	                    call EnableTrigger(Arena__TSpellKiller2)
	                    call EnableTrigger(Arena__TSpellKiller3)
	                elseif ( ( Arena__currentArena == 8 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hlgr', point, 180.00)
	                    call EnableTrigger(Arena__TSpellJinxuan1)
	                    call EnableTrigger(Arena__TSpellJinxuan2)
	                    call EnableTrigger(Arena__TSpellJinxuan3)
	                    call EnableTrigger(Arena__TSpellJinxuan4)
	                endif

	                //初始化单位
	                call SetUnitInvulnerable(Arena__challenager, true)
	                call PauseUnitBJ(true, Arena__challenager)
	                call UnitAddAbilityBJ('A0ES', Arena__challenager)

	                call CreateTextTagLocBJ(I2S(Arena__currentLevel) + "级", point, 0, 20.00, 100, 0.00, 0.00, 0)
	                set Arena__textTag_Level=GetLastCreatedTextTag()
	                call RemoveLocation(point)

	                call PolledWait(3.00)
	                if ( ( Arena__challenager != null ) ) then
	                    call SetUnitInvulnerable(Arena__challenager, false)
	                    call PauseUnitBJ(false, Arena__challenager)
	                    call DisplayTextToPlayer(GetOwningPlayer(Arena__defier), 0, 0, "|cFFFF66CC【消息】|r挑战开始！")
	                    //5秒更新一次等级
	                    set t=CreateTimer()
	                    call TimerStart(t, 5, TRUE, function Arena__updateLevel)
	                    //0.05秒更新一次等级提示的位置
	                    set t=CreateTimer()
	                    call TimerStart(t, 0.05, TRUE, function Arena__updateLevelLoc)
   						call TriggerRegisterUnitEvent(Arena__TDieEvent, Arena__challenager, EVENT_UNIT_DEATH)
	                else
	                endif
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台已经全部挑战完毕！")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请打完这场擂台再挑战新的！（认输方法：输入HG回城）")
	        endif
	    else
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！")
	    endif
	    
	    set point=null
	    set t=null
	endfunction

 function Arena__TArenaStartCon takes nothing returns boolean
	    return ( ( GetItemTypeId(GetSoldItem()) == 'I04D' ) and (GetUnitTypeId((GetBuyingUnit())) != 'N018') ) // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------


	
 function TArenaLeaveCon takes nothing returns boolean
	    return ( ( Arena__defier == GetLeavingUnit() ) and ( IsUnitIllusionBJ(GetLeavingUnit()) != true ) )
	endfunction

 function TArenaLeaveAct takes nothing returns nothing
	    set Arena__defier=null
	    if ( ( Arena__challenager != null ) ) then
	        call RemoveUnit(Arena__challenager)
	        set Arena__challenager=null
	        call DestroyTextTag(Arena__textTag_Level)
	        call Arena__updateLevel()

	        call DisableTrigger(Arena__TSpellLinger)
			call DisableTrigger(Arena__TSpellZhousi)
			call DisableTrigger(Arena__TSpellXuemo1)
			call DisableTrigger(Arena__TSpellXuemo2)
			call DisableTrigger(Arena__TSpellFuwang)
			call DisableTrigger(Arena__TSpellMeidusha1)
			call DisableTrigger(Arena__TSpellMeidusha2)
			call DisableTrigger(Arena__TSpellKiller1)
			call DisableTrigger(Arena__TSpellKiller2)
			call DisableTrigger(Arena__TSpellKiller3)
			call DisableTrigger(Arena__TSpellJinxuan1)
			call DisableTrigger(Arena__TSpellJinxuan2)
			call DisableTrigger(Arena__TSpellJinxuan3)
			call DisableTrigger(Arena__TSpellJinxuan4)
	    else
	    endif
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Arena__TArenaEnterAct takes nothing returns nothing
  local location point
	    if ( ( GetItemTypeId(GetSoldItem()) == 'fgrd' ) ) then
	        if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	            if ( ( Arena__defier == null ) ) then
	                set Arena__defier=GetBuyingUnit()
	                set point=GetRandomLocInRect(gg_rct_Arena_all)
	                call SetUnitPositionLoc(GetBuyingUnit(), point)
	                call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetBuyingUnit()), point, 0.20)
	                call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(GetBuyingUnit()), GetUnitY(GetBuyingUnit())))
	                call RemoveLocation(point)
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台只支持单挑,里面有人了哦~")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！")
	        endif
	    else
	    endif
	    set point=null
	endfunction

//---------------------------------------------------------------------------------------------------



	
 function TDieEventConditions takes nothing returns boolean
	    return ( ( IsUnitIllusionBJ(GetDyingUnit()) != true ) )
	endfunction

 function TDieEventActions takes nothing returns nothing
	   
     local location point= GetUnitLoc(GetDyingUnit())

	    if ( ( GetUnitTypeId(GetDyingUnit()) == 'Huth' ) ) then
	        call CreateItemLoc('prvt', point)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hpb1' ) ) then
	        call CreateItemLoc('cnob', point)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hgam' ) ) then
	        call CreateItemLoc('rhth', point)
	        call DestroyTrigger(Arena__TSpellLinger)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hmbr' ) ) then
	        call CreateItemLoc('hval', point)
	        call DestroyTrigger(Arena__TSpellZhousi)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Odrt' ) ) then
	        call CreateItemLoc('afac', point)
	        call DestroyTrigger(Arena__TSpellXuemo1)
	        call DestroyTrigger(Arena__TSpellXuemo2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Ogrh' ) ) then
	        call CreateItemLoc('pmna', point)
	        call DestroyTrigger(Arena__TSpellFuwang)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hvsh' ) ) then
	        call CreateItemLoc('evtl', point)
	        call DestroyTrigger(Arena__TSpellMeidusha1)
	        call DestroyTrigger(Arena__TSpellMeidusha2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hpb2' ) ) then
	        call CreateItemLoc('bspd', point)
	        call DestroyTrigger(Arena__TSpellKiller3)
	        call DestroyTrigger(Arena__TSpellKiller2)
	        call DestroyTrigger(Arena__TSpellKiller1)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hlgr' ) ) then
	        call CreateItemLoc('mcou', point)
	        call DestroyTrigger(Arena__TSpellJinxuan1)
	        call DestroyTrigger(Arena__TSpellJinxuan2)
	        call DestroyTrigger(Arena__TSpellJinxuan3)
	        call DestroyTrigger(Arena__TSpellJinxuan4)
	    endif

	    call Arena__updateLevel()
	    call RemoveLocation(point)
	    set point=null
	    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!")
	    set Arena__currentLevel=1
	endfunction
//---------------------------------------------------------------------------------------------------
 function Arena__InitArena takes nothing returns nothing
		//挑战开始--买了"挑战开始"
  local trigger t= CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddCondition(t, Condition(function Arena__TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //离开擂台后判负
	    set t=CreateTrigger()
	    call TriggerRegisterLeaveRectSimple(t, gg_rct_Arena_forbit)
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //进入挑战场--买了"进入擂台"
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddAction(t, function Arena__TArenaEnterAct)

	    //擂主死亡事件
	    set Arena__TDieEvent=CreateTrigger()
	    call TriggerAddCondition(Arena__TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(Arena__TDieEvent, function TDieEventActions)

	    //灵儿技能
	    set Arena__TSpellLinger=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellLinger, Condition(function TSpellLingerCon))
	    call TriggerAddAction(Arena__TSpellLinger, function TSpellLingerAct)
	    call DisableTrigger(Arena__TSpellLinger)

	    //宙斯技能
	    set Arena__TSpellZhousi=CreateTrigger()
	    call DisableTrigger(Arena__TSpellZhousi)
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellZhousi, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellZhousi, Condition(function TSpellZhousiCon))
	    call TriggerAddAction(Arena__TSpellZhousi, function TSpellZhousiAct)

	    //血魔技能

	    set Arena__TSpellXuemo1=CreateTrigger()
	    call DisableTrigger(Arena__TSpellXuemo1)
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellXuemo1, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellXuemo1, Condition(function TSpellXuemo1Con))
	    call TriggerAddAction(Arena__TSpellXuemo1, function TSpellXuemo1Act)

	    set Arena__TSpellXuemo2=CreateTrigger()
	    call DisableTrigger(Arena__TSpellXuemo2)
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellXuemo2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellXuemo2, Condition(function TSpellXuemo2Con))
	    call TriggerAddAction(Arena__TSpellXuemo2, function TSpellXuemo2Act)
	    set t=null

	    //斧王技能
	    set Arena__TSpellFuwang=CreateTrigger()
	    call DisableTrigger(Arena__TSpellFuwang)
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellFuwang, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellFuwang, Condition(function TSpellFuwangCon))
	    call TriggerAddAction(Arena__TSpellFuwang, function TSpellFuwangAct)
	endfunction

//library Arena ends


// BEGIN IMPORT OF Arena.j


// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j
// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF YDWEBase_common.j

//===========================================================================
//返回参数
//===========================================================================
//地图边界判断

// END IMPORT OF YDWEBase_common.j
// BEGIN IMPORT OF YDWEBase_hashtable.j
// END IMPORT OF YDWEBase_hashtable.j
// END IMPORT OF SpellBase.j




// END IMPORT OF Arena.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs2192078130")
call ExecuteFunc("Arena__InitArena")

endfunction



//Struct method generated initializers/callers:
function sa__Attract__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Attract_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call BJDebugMsg("黑洞结束")
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Attract_t[this])))))))) // INLINED!!
			set s__Attract_caster[this]=null
			call PauseTimer(s__Attract_t[this])
			call DestroyTimer(s__Attract_t[this])
			set s__Attract_t[this]=null
   return true
endfunction

function jasshelper__initstructs2192078130 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))


endfunction

