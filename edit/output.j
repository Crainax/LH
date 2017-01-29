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
//È«¾Ö¹þÏ£±í 
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

		
trigger Arena___TDieEvent

		
trigger Arena___TSpellLinger
trigger Arena___TSpellZhousi
trigger Arena___TSpellXuemo1
trigger Arena___TSpellXuemo2
trigger Arena___TSpellFuwang
trigger Arena___TSpellMeidusha1
trigger Arena___TSpellMeidusha2
trigger Arena___TSpellKiller1
trigger Arena___TSpellKiller2
trigger Arena___TSpellJinxuan1
trigger Arena___TSpellJinxuan2
trigger Arena___TSpellJinxuan3
trigger Arena___TSpellJinxuan4

		
integer Arena___currentArena= 0
		
integer Arena___currentLevel= 1
		
unit Arena___challenager= null
		
unit Arena___defier= null
		
texttag Arena___textTag_Level
//endglobals from Arena
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
//å¨å±ç³»ç»åé
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

    	
    function SimulateSpell takes unit caster,unit target,integer spellId,integer spellLevel,real lifeTime,string orderId,boolean isPoint,boolean isImmediate,boolean isTarget returns nothing
  local location point= GetUnitLoc(target)
     local unit u= CreateUnit(GetOwningPlayer(caster), 'h000', GetUnitX(target), GetUnitY(target), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ(spellId, u)
        call SetUnitAbilityLevel(u, spellId, spellLevel)
        if ( isPoint ) then
	    	call IssuePointOrderLoc(u, orderId, point)
        elseif ( isImmediate ) then
	    	call IssueImmediateOrder(u, orderId)
	    elseif ( isTarget ) then
	    	call IssueTargetOrder(u, orderId, target)
        endif
	    call RemoveLocation(point)
	    set u=null
	    set point=null

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
//ä¸¤ä¸ªåä½ä¹é´çè·ç¦»
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
endfunction
//ä¸¤ä¸ªåä½ä¹é´çè§åº¦
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
//çæåºå
function YDWEGetRect takes real x,real y,real width,real height returns rect
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
endfunction

//===========================================================================
//è®¾ç½®åä½å¯ä»¥é£è¡
//===========================================================================
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, 'Amrf')
    call UnitRemoveAbility(u, 'Amrf')
endfunction

//===========================================================================
//å­ç¬¦çªä¸IDè½¬æ¢
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
//å°å¾åå§å
//===========================================================================


//YDWEç¹æ®æè½ç»æäºä»¶ 

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
//YDWEæè½ææäºä»¶ 
//===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
    set AbilityCastingOverEventQueue[AbilityCastingOverEventNumber]=trg
    set AbilityCastingOverEventType[AbilityCastingOverEventNumber]=index
    set AbilityCastingOverEventNumber=AbilityCastingOverEventNumber + 1
endfunction  

//===========================================================================
//ç³»ç»å½æ°å®å
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
//ç³»ç»å½æ°è¡¥å
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
//å°å¾åå§å
//===========================================================================
//===========================================================================

//æ¾ç¤ºçæ¬
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FFå½åç¼è¾å¨çæ¬ä¸ºï¼ |r|cFF00FF00YDWE sdf")
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

    //=================è®¾ç½®åé=====================
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
    //=================æ¾ç¤ºçæ¬=====================
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


//Çå¿Õ
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
			call BJDebugMsg("é»æ´ç»æ")
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
	
 function Arena___updateLevel takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer int= GetHeroInt(Arena___challenager, true)
  local integer agi= GetHeroAgi(Arena___challenager, true)
  local integer str= GetHeroStr(Arena___challenager, true)

		if ( IsUnitAliveBJ(Arena___challenager) and ( Arena___currentLevel < ARENA_MAX_LEVEL ) ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Arena___challenager), GetUnitY(Arena___challenager)))
			call SetHeroInt(Arena___challenager, int + int / Arena___currentLevel, true)
			call SetHeroAgi(Arena___challenager, agi + agi / Arena___currentLevel, true)
			call SetHeroStr(Arena___challenager, str + str / Arena___currentLevel, true)
			set Arena___currentLevel=Arena___currentLevel + 1
			//è®¾ç½®æè½ç­çº§
		else
			set Arena___currentLevel=1
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("å é¤è®¡æ¶å¨äº~")
		endif

		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
			
 function Arena___updateLevelLoc takes nothing returns nothing
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(Arena___challenager) ) then
			call SetTextTagPosUnitBJ(Arena___textTag_Level, Arena___challenager, 25)
		else
			call DestroyTextTag(Arena___textTag_Level)
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("å é¤è®¡æ¶å¨äº~(ä½ç½®ï¼")
		endif
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Arena___TSpellLingerCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) )
	endfunction

 function Arena___TSpellLingerAct takes nothing returns nothing
		call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
		call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
	endfunction

	
 function Arena___LingerAssemble takes nothing returns nothing
  local real x= GetRectCenterX(gg_rct_Arena_1)
  local real y= GetRectCenterY(gg_rct_Arena_1)
  local group l_group= CreateGroup()
  local unit l_unit
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(Arena___challenager) ) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(Arena___challenager), GetUnitY(Arena___challenager), 900, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsEnemy(GetEnumUnit() , Arena___challenager) ) then
					call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
			    endif
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("å é¤è®¡æ¶å¨äº~")
		endif
		call DestroyGroup(l_group)
		set t=null
		set l_group=null
		set l_unit=null
	endfunction

//---------------------------------------------------------------------------------------------------

	

 function Arena___TSpellZhousiCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function Arena___TSpellZhousiAct takes nothing returns nothing
  local integer i= 1
	    call DisableTrigger(GetTriggeringTrigger())
	    call IssueImmediateOrder(GetAttacker(), "creepthunderclap")
	    loop
	    	exitwhen i > 6
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(Arena___challenager) + SinBJ(i * 60) * 400, GetUnitY(Arena___challenager) + CosBJ(i * 60) * 400))
	    	set i=i + 1
	    endloop
	    call CreateSpellTextTag("åçç ´å»ï¼" , Arena___challenager , 100 , 0 , 0 , 2)

	    call PolledWait(8.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

		
 function Arena___TSpellXuemo1Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function Arena___TSpellXuemo1Act takes nothing returns nothing
  local unit u
  local integer i= 1
	    call DisableTrigger(GetTriggeringTrigger())

	    loop
	    	exitwhen i > 5
	        set u=CreateUnit(GetOwningPlayer(GetAttacker()), 'h000', GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()), 0)
	        call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
	        call UnitAddAbilityBJ('A0EV', u)
	        call SetUnitAbilityLevel(u, 'A0EV', Arena___currentLevel)
	        call IssueTargetOrderById(u, 852274, GetAttackedUnitBJ())
	    	set i=i + 1
	    endloop

	    call CreateSpellTextTag("å¹»é­çµæ­ï¼" , Arena___challenager , 100 , 0 , 0 , 2)

	    set u=null
	    call PolledWait(10.00)
	    call EnableTrigger(GetTriggeringTrigger())

	endfunction

	
 function Arena___TSpellXuemo2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 20) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00 ) )
	endfunction

 function Arena___TSpellXuemo2Act takes nothing returns nothing
  local location point= GetUnitLoc(GetAttacker())
     local unit u= CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'h000', GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ('AL01', u)
        call SetUnitAbilityLevel(u, 'AL01', Arena___currentLevel)
	    call IssuePointOrderLoc(u, "rainoffire", point)
	    call RemoveLocation(point)
	    set u=null
	    set point=null
	    call CreateSpellTextTag("å¤©çæé¨ï¼" , Arena___challenager , 0 , 100 , 100 , 2)
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Arena___TSpellFuwangCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 15) == 1 ) )
	endfunction

 function Arena___TSpellFuwangAct takes nothing returns nothing
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ())))
			call UnitDamageTarget(Arena___challenager, GetAttackedUnitBJ(), ( 0.1 * GetUnitStateSwap(UNIT_STATE_LIFE, GetAttackedUnitBJ()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)

		    call CreateSpellTextTag("æ·æ±°ä¹åï¼" , Arena___challenager , 0 , 100 , 0 , 2)
	endfunction

//---------------------------------------------------------------------------------------------------
	


	
 function Arena___TSpellMeidusha1Invu takes nothing returns nothing
  local group l_group= CreateGroup()
  local unit l_unit
  local integer count= 0
  local timer t= GetExpiredTimer()
		call GroupEnumUnitsInRange(l_group, GetUnitX(Arena___challenager), GetUnitY(Arena___challenager), 1800, null)
		loop
		    set l_unit=FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
			if ( ( GetUnitTypeId(l_unit) == 'osp1' ) and GetOwningPlayer(l_unit) == Player(10) and IsUnitAliveBJ(l_unit) == true ) then
				set count=count + 1
			endif
		endloop
		call BJDebugMsg("è£èæ°éä¸º" + I2S(count))
		if ( count == 0 ) then
			call SetUnitInvulnerable(Arena___challenager, false)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null
		set t=null
	endfunction
	
 function Arena___TSpellMeidusha1Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function Arena___TSpellMeidusha1Act takes nothing returns nothing
  local location point= GetUnitLoc(GetAttackedUnitBJ())
  local timer t= CreateTimer()
     local unit u= CreateUnit(GetOwningPlayer(GetAttacker()), 'h000', GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()), 0)
	    call DisableTrigger(GetTriggeringTrigger())
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ('Arsw', u)
        call SetUnitAbilityLevel(u, 'Arsw', Arena___currentLevel)
	    call IssuePointOrderLoc(u, "ward", point)
	    call CreateSpellTextTag("é´é­è£èï¼" , Arena___challenager , 0 , 0 , 0 , 2)
	    call RemoveLocation(point)
	    call SetUnitInvulnerable(Arena___challenager, TRUE)
	    call TimerStart(t, 0.3, true, function Arena___TSpellMeidusha1Invu)
	    set u=null
	    set point=null
	    set t=null
	    call PolledWait(8.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction


	


 function Arena___TSpellMeidusha2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) )
	endfunction

 function Arena___TSpellMeidusha2Act takes nothing returns nothing

  local group l_group= CreateGroup()
  local group l_pausinggroup= CreateGroup()
  local unit l_unit
		call GroupEnumUnitsInRange(l_group, GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()), 900, null)
		loop
		    set l_unit=FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if ( IsEnemy(l_unit , Arena___challenager) ) then
				call PauseUnitBJ(true, l_unit)
				call GroupAddUnit(l_pausinggroup, l_unit)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
		    endif
		endloop
	    call DisableTrigger(GetTriggeringTrigger())
	    call CreateSpellTextTag("ç³ååè§ï¼" , Arena___challenager , 51 , 51 , 51 , 2)
		call DestroyGroup(l_group)
		set l_group=null
		call PolledWait(3.00)
		loop
		    set l_unit=FirstOfGroup(l_pausinggroup)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_pausinggroup, l_unit)
			call PauseUnitBJ(false, l_unit)
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
		endloop
		call DestroyGroup(l_pausinggroup)
		set l_pausinggroup=null
	    call PolledWait(7.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function TSpellKiller1Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitAbilityLevel(GetAttacker(), 'Amim') < 1 ) and UnitHasBuffBJ(GetAttacker(), 'BEsh') == true )
	endfunction

 function TSpellKiller1Act takes nothing returns nothing
     local unit u= CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'h000', GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ('AL02', u)
        call SetUnitAbilityLevel(u, 'AL02', Arena___currentLevel)
	    call IssueTargetOrder(u, "shadowstrike", GetAttacker())
	    call CreateSpellTextTag("è´å½æ¯éï¼" , Arena___challenager , 0 , 0 , 0 , 2)
	    set u=null
	endfunction

	
 function TSpellKiller2Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 3) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function TSpellKiller2Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
	    call IssueImmediateOrder(Arena___challenager, "windwalk")
	    call PolledWait(1.00)
	    call IssueTargetOrder(Arena___challenager, "attack", Arena___defier)
	    call PolledWait(7.00)
	    call CreateSpellTextTag("æ­»äº¡æ½è¡ï¼" , Arena___challenager , 100 , 0 , 0 , 2)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function TSpellJinxuan1Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function TSpellJinxuan1Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttacker() , GetAttackedUnitBJ() , 'ACrf' , Arena___currentLevel , 6 , "rainoffire" , true , false , false)
	    call CreateSpellTextTag("ç¬éªé·é¸£ï¼" , Arena___challenager , 0 , 0 , 100 , 2)
	    call PolledWait(7.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00 ) )
	endfunction

 function TSpellJinxuan2Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttackedUnitBJ() , GetAttacker() , 'ANst' , Arena___currentLevel , 5 , "stampede" , true , false , false)
	    call CreateSpellTextTag("éåçå¤©ï¼" , Arena___challenager , 0 , 0 , 100 , 2)
	    call PolledWait(8.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan3Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function TSpellJinxuan3Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttacker() , GetAttackedUnitBJ() , 'AHtb' , Arena___currentLevel , 5 , "thunderbolt" , false , false , true)
	    call CreateSpellTextTag("é­åå°çº¿ï¼" , Arena___challenager , 100 , 0 , 100 , 2)
	    call PolledWait(7.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan4Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function TSpellJinxuan4Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 200.00 ))
	    call CreateSpellTextTag("é­æ³çªåï¼" , Arena___challenager , 0 , 100 , 0 , 2)
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", GetUnitX(GetAttacker()), GetUnitY(GetAttacker())))
	    call PolledWait(2.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function TArenaStartAct takes nothing returns nothing
  local location point
  local timer t
  local integer attract

		//ç¬¦åæ¡ä»¶åå¼å§
	    if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	        if ( ( Arena___challenager == null ) ) then
	            if ( ( Arena___currentArena != 9 ) ) then
	            	//å¼å§å¦
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rææå°å¨3ç§åå¼å§ã")
	                set point=GetRectCenter(gg_rct_Arena_2)
	                set t=CreateTimer()
	                if ( ( Arena___currentArena == 0 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Huth', point, 180.00)
	                elseif ( ( Arena___currentArena == 1 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hpb1', point, 180.00)
	                elseif ( ( Arena___currentArena == 2 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hgam', point, 180.00)
	                    call EnableTrigger(Arena___TSpellLinger)
	                    call TimerStart(t, 2, TRUE, function Arena___LingerAssemble)
	                elseif ( ( Arena___currentArena == 3 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hmbr', point, 180.00)
	                    call EnableTrigger(Arena___TSpellZhousi)
	                    set attract=s__Attract_create(Arena___challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
	                elseif ( ( Arena___currentArena == 4 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Odrt', point, 180.00)
	                    call EnableTrigger(Arena___TSpellXuemo1)
	                    call EnableTrigger(Arena___TSpellXuemo2)
	                elseif ( ( Arena___currentArena == 5 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Ogrh', point, 180.00)
	                    call EnableTrigger(Arena___TSpellFuwang)
	                    set attract=s__Attract_create(Arena___challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
	                elseif ( ( Arena___currentArena == 6 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hvsh', point, 180.00)
	                    call EnableTrigger(Arena___TSpellMeidusha1)
	                    call EnableTrigger(Arena___TSpellMeidusha2)
	                elseif ( ( Arena___currentArena == 7 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hpb2', point, 180.00)
	                    call EnableTrigger(Arena___TSpellKiller1)
	                    call EnableTrigger(Arena___TSpellKiller2)
	                elseif ( ( Arena___currentArena == 8 ) ) then
	                    set Arena___challenager=CreateUnitAtLoc(Player(10), 'Hlgr', point, 180.00)
	                    call EnableTrigger(Arena___TSpellJinxuan1)
	                    call EnableTrigger(Arena___TSpellJinxuan2)
	                    call EnableTrigger(Arena___TSpellJinxuan3)
	                    call EnableTrigger(Arena___TSpellJinxuan4)
	                endif

	                //åå§ååä½
	                call SetUnitInvulnerable(Arena___challenager, true)
	                call PauseUnitBJ(true, Arena___challenager)
	                call UnitAddAbilityBJ('A0ES', Arena___challenager)

	                call CreateTextTagLocBJ(I2S(Arena___currentLevel) + "çº§", point, 0, 20.00, 100, 0.00, 0.00, 0)
	                set Arena___textTag_Level=GetLastCreatedTextTag()
	                call RemoveLocation(point)

	                call PolledWait(3.00)
	                if ( ( Arena___challenager != null ) ) then
	                    call SetUnitInvulnerable(Arena___challenager, false)
	                    call PauseUnitBJ(false, Arena___challenager)
	                    call DisplayTextToPlayer(GetOwningPlayer(Arena___defier), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rææå¼å§ï¼")
	                    //5ç§æ´æ°ä¸æ¬¡ç­çº§
	                    set t=CreateTimer()
	                    call TimerStart(t, 5, TRUE, function Arena___updateLevel)
	                    //0.05ç§æ´æ°ä¸æ¬¡ç­çº§æç¤ºçä½ç½®
	                    set t=CreateTimer()
	                    call TimerStart(t, 0.05, TRUE, function Arena___updateLevelLoc)
   						call TriggerRegisterUnitEvent(Arena___TDieEvent, Arena___challenager, EVENT_UNIT_DEATH)
	                else
	                endif
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræå°å·²ç»å¨é¨ææå®æ¯ï¼")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rè¯·æå®è¿åºæå°åæææ°çï¼ï¼è®¤è¾æ¹æ³ï¼è¾å¥HGååï¼")
	        endif
	    else
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rè¯·è®©è±éè´­ä¹°ï¼")
	    endif
	    
	    set point=null
	    set t=null
	endfunction

 function Arena___TArenaStartCon takes nothing returns boolean
	    return ( ( GetItemTypeId(GetSoldItem()) == 'I04D' ) and (GetUnitTypeId((GetBuyingUnit())) != 'N018') ) // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------


	
 function TArenaLeaveCon takes nothing returns boolean
	    return ( ( Arena___defier == GetLeavingUnit() ) and ( IsUnitIllusionBJ(GetLeavingUnit()) != true ) )
	endfunction

 function TArenaLeaveAct takes nothing returns nothing
	    set Arena___defier=null
	    if ( ( Arena___challenager != null ) ) then
	        call RemoveUnit(Arena___challenager)
	        set Arena___challenager=null
	        call DestroyTextTag(Arena___textTag_Level)
	        call Arena___updateLevel()

	        call DisableTrigger(Arena___TSpellLinger)
			call DisableTrigger(Arena___TSpellZhousi)
			call DisableTrigger(Arena___TSpellXuemo1)
			call DisableTrigger(Arena___TSpellXuemo2)
			call DisableTrigger(Arena___TSpellFuwang)
			call DisableTrigger(Arena___TSpellMeidusha1)
			call DisableTrigger(Arena___TSpellMeidusha2)
			call DisableTrigger(Arena___TSpellKiller1)
			call DisableTrigger(Arena___TSpellKiller2)
			call DisableTrigger(Arena___TSpellJinxuan1)
			call DisableTrigger(Arena___TSpellJinxuan2)
			call DisableTrigger(Arena___TSpellJinxuan3)
			call DisableTrigger(Arena___TSpellJinxuan4)
	    else
	    endif
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Arena___TArenaEnterAct takes nothing returns nothing
  local location point
	    if ( ( GetItemTypeId(GetSoldItem()) == 'fgrd' ) ) then
	        if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	            if ( ( Arena___defier == null ) ) then
	                set Arena___defier=GetBuyingUnit()
	                set point=GetRandomLocInRect(gg_rct_Arena_all)
	                call SetUnitPositionLoc(GetBuyingUnit(), point)
	                call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetBuyingUnit()), point, 0.20)
	                call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(GetBuyingUnit()), GetUnitY(GetBuyingUnit())))
	                call RemoveLocation(point)
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|råå»è¾å¥âHGâã")
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræå°åªæ¯æåæ,éé¢æäººäºå¦~")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rè¯·è®©è±éè´­ä¹°ï¼")
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
	        call DestroyTrigger(Arena___TSpellLinger)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hmbr' ) ) then
	        call CreateItemLoc('hval', point)
	        call DestroyTrigger(Arena___TSpellZhousi)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Odrt' ) ) then
	        call CreateItemLoc('afac', point)
	        call DestroyTrigger(Arena___TSpellXuemo1)
	        call DestroyTrigger(Arena___TSpellXuemo2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Ogrh' ) ) then
	        call CreateItemLoc('pmna', point)
	        call DestroyTrigger(Arena___TSpellFuwang)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hvsh' ) ) then
	        call CreateItemLoc('evtl', point)
	        call DestroyTrigger(Arena___TSpellMeidusha1)
	        call DestroyTrigger(Arena___TSpellMeidusha2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hpb2' ) ) then
	        call CreateItemLoc('bspd', point)
	        call DestroyTrigger(Arena___TSpellKiller2)
	        call DestroyTrigger(Arena___TSpellKiller1)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hlgr' ) ) then
	        call CreateItemLoc('mcou', point)
	        call DestroyTrigger(Arena___TSpellJinxuan1)
	        call DestroyTrigger(Arena___TSpellJinxuan2)
	        call DestroyTrigger(Arena___TSpellJinxuan3)
	        call DestroyTrigger(Arena___TSpellJinxuan4)
	    endif

	    call Arena___updateLevel()
	    call RemoveLocation(point)
	    set point=null
	    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræææå!")
	    set Arena___currentLevel=1
	endfunction
//---------------------------------------------------------------------------------------------------
 function Arena___InitArena takes nothing returns nothing
		//ææå¼å§--ä¹°äº"ææå¼å§"
  local trigger t= CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddCondition(t, Condition(function Arena___TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //ç¦»å¼æå°åå¤è´
	    set t=CreateTrigger()
	    call TriggerRegisterLeaveRectSimple(t, gg_rct_Arena_forbit)
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //è¿å¥ææåº--ä¹°äº"è¿å¥æå°"
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddAction(t, function Arena___TArenaEnterAct)

	    //æä¸»æ­»äº¡äºä»¶
	    set Arena___TDieEvent=CreateTrigger()
	    call TriggerAddCondition(Arena___TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(Arena___TDieEvent, function TDieEventActions)

	    //çµå¿æè½
	    set Arena___TSpellLinger=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellLinger, Condition(function Arena___TSpellLingerCon))
	    call TriggerAddAction(Arena___TSpellLinger, function Arena___TSpellLingerAct)
	    call DisableTrigger(Arena___TSpellLinger)

	    //å®æ¯æè½
	    set Arena___TSpellZhousi=CreateTrigger()
	    call DisableTrigger(Arena___TSpellZhousi)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellZhousi, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellZhousi, Condition(function Arena___TSpellZhousiCon))
	    call TriggerAddAction(Arena___TSpellZhousi, function Arena___TSpellZhousiAct)

	    //è¡é­æè½

	    set Arena___TSpellXuemo1=CreateTrigger()
	    call DisableTrigger(Arena___TSpellXuemo1)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellXuemo1, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellXuemo1, Condition(function Arena___TSpellXuemo1Con))
	    call TriggerAddAction(Arena___TSpellXuemo1, function Arena___TSpellXuemo1Act)

	    set Arena___TSpellXuemo2=CreateTrigger()
	    call DisableTrigger(Arena___TSpellXuemo2)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellXuemo2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellXuemo2, Condition(function Arena___TSpellXuemo2Con))
	    call TriggerAddAction(Arena___TSpellXuemo2, function Arena___TSpellXuemo2Act)

	    //æ§çæè½
	    set Arena___TSpellFuwang=CreateTrigger()
	    call DisableTrigger(Arena___TSpellFuwang)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellFuwang, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellFuwang, Condition(function Arena___TSpellFuwangCon))
	    call TriggerAddAction(Arena___TSpellFuwang, function Arena___TSpellFuwangAct)


	    //ç¾æèæè½
	    set Arena___TSpellMeidusha1=CreateTrigger()
	    call DisableTrigger(Arena___TSpellMeidusha1)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellMeidusha1, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellMeidusha1, Condition(function Arena___TSpellMeidusha1Con))
	    call TriggerAddAction(Arena___TSpellMeidusha1, function Arena___TSpellMeidusha1Act)

	    set Arena___TSpellMeidusha2=CreateTrigger()
	    call DisableTrigger(Arena___TSpellMeidusha2)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellMeidusha2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellMeidusha2, Condition(function Arena___TSpellMeidusha2Con))
	    call TriggerAddAction(Arena___TSpellMeidusha2, function Arena___TSpellMeidusha2Act)

	    //æææè½

	    set Arena___TSpellKiller1=CreateTrigger()
	    call DisableTrigger(Arena___TSpellKiller1)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellKiller1, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellKiller1, Condition(function TSpellKiller1Con))
	    call TriggerAddAction(Arena___TSpellKiller1, function TSpellKiller1Act)

	    set Arena___TSpellKiller2=CreateTrigger()
	    call DisableTrigger(Arena___TSpellKiller2)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellKiller2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellKiller2, Condition(function TSpellKiller2Con))
	    call TriggerAddAction(Arena___TSpellKiller2, function TSpellKiller2Act)

	    //ç¾è½©æè½

	    set Arena___TSpellJinxuan1=CreateTrigger()
	    call DisableTrigger(Arena___TSpellJinxuan1)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan1, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellJinxuan1, Condition(function TSpellJinxuan1Con))
	    call TriggerAddAction(Arena___TSpellJinxuan1, function TSpellJinxuan1Act)

	    set Arena___TSpellJinxuan2=CreateTrigger()
	    call DisableTrigger(Arena___TSpellJinxuan2)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellJinxuan2, Condition(function TSpellJinxuan2Con))
	    call TriggerAddAction(Arena___TSpellJinxuan2, function TSpellJinxuan2Act)

	    set Arena___TSpellJinxuan3=CreateTrigger()
	    call DisableTrigger(Arena___TSpellJinxuan3)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellJinxuan3, Condition(function TSpellJinxuan3Con))
	    call TriggerAddAction(Arena___TSpellJinxuan3, function TSpellJinxuan3Act)

	    set Arena___TSpellJinxuan4=CreateTrigger()
	    call DisableTrigger(Arena___TSpellJinxuan4)
	    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena___TSpellJinxuan4, Condition(function TSpellJinxuan4Con))
	    call TriggerAddAction(Arena___TSpellJinxuan4, function TSpellJinxuan4Act)

	    set t=null
	endfunction

//library Arena ends


// BEGIN IMPORT OF Arena.j


// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j
// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF YDWEBase_common.j

//===========================================================================
//è¿ååæ°
//===========================================================================
//å°å¾è¾¹çå¤æ­

// END IMPORT OF YDWEBase_common.j
// BEGIN IMPORT OF YDWEBase_hashtable.j
// END IMPORT OF YDWEBase_hashtable.j
// END IMPORT OF SpellBase.j



// END IMPORT OF Arena.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs2275217945")
call ExecuteFunc("Arena___InitArena")

endfunction



//Struct method generated initializers/callers:
function sa__Attract__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Attract_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call BJDebugMsg("é»æ´ç»æ")
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Attract_t[this])))))))) // INLINED!!
			set s__Attract_caster[this]=null
			call PauseTimer(s__Attract_t[this])
			call DestroyTimer(s__Attract_t[this])
			set s__Attract_t[this]=null
   return true
endfunction

function jasshelper__initstructs2275217945 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))


endfunction

