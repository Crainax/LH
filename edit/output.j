globals
//globals from DzAPI:
constant boolean LIBRARY_DzAPI=true
//endglobals from DzAPI
//globals from JBase:
constant boolean LIBRARY_JBase=true
//endglobals from JBase
//globals from YDWEAroundSystem:
constant boolean LIBRARY_YDWEAroundSystem=true
//endglobals from YDWEAroundSystem
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
string SgameMode= ""
		
constant integer HERO_COUNT= 18
		
constant boolean Huodong= false
		
constant integer PAGE_ACHIEVE= 9
		
integer renshu= 0
		
		
integer mode= 0
constant integer COUNT_WANJIE= 48
integer Constant__WPointer= 1
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
		
    //å¤æ´»
location udg_Point_Fuhuo
	//ä¸»åºå°çåºå
rect gg_rct________1
	//é¾åº¦ç­çº§ï¼æé«7
integer udg_Nandu_JJJ
integer udg_Nandu
    //æè½è§¦å
trigger gg_trg_____________71
trigger gg_trg_______21
        //åºå°æ»åºå
rect gg_rct__________u
        //æéµ
unit gg_unit_h00K_0254
	   //å¥ç
unit gg_unit_Nkjx_0241
        //å·¦
unit gg_unit_Uear_0242
        //å³
unit gg_unit_Npld_0253
        //ææè°æ´
unit gg_unit_ndrz_0019
        //è±é
unit array udg_H
        //å£ä¸»åèº«
unit gg_unit_Ekgg_0259
        //æè½ä¼¤å®³
real array udg_I_Jinengjiacheng
        //å¢ç
real array udg_I_Xianglian
        //è§¦å,å±æ§å·æ°
trigger gg_trg_D7
        //æ³¢æ°
integer udg_Bo
        //æè¡æ¦
integer array udg_Paihangbang
leaderboard array udg_Paihang
        //åºå°
unit gg_unit_haro_0030
        
rect gg_rct_______c1
        
rect gg_rct_M1
rect gg_rct_M2
rect gg_rct_M3
rect gg_rct_M4
rect gg_rct_M5
rect gg_rct_M6

        
rect gg_rct_Arena_1
rect gg_rct_Arena_2
rect gg_rct_Arena_all
rect gg_rct_Arena_forbit
rect gg_rct_Arena_Spell

        
sound gg_snd_GoodJob
sound gg_snd_Jidibeida
sound gg_snd_Chenggong
sound gg_snd_Shibai
sound gg_snd_Renwu

        
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
        
button array udg_X_Nandu_Chuangkou
dialog udg_X_Nandu
        
integer udg_RENSHU

        
multiboard udg_D

        
integer array udg_I_Lianyu
rect gg_rct______________084

        
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
        //ä¸æ
unit array udg_Unit_Qixing

        //è¾°å¯åçµå¤æ­
trigger gg_trg_____________127
trigger gg_trg_____________129
        //ç¼
unit array udg_Lang
        //æ¹®ç­
trigger gg_trg_____________3

        //ç»éª
real array udg_I_Jingyan
boolean array udg_T1

        //æ··æ²ä¸åº
rect gg_rct_Hundun

        //åºæª
rect gg_rct________6
rect gg_rct________3

        //è®¡æ¶å¨
timer udg_Time_BOSS
timerdialog udg_Timer_BOSS

        //å°æ¸¸æåºå°
rect gg_rct_Game1
unit gg_unit_n01Q_0273
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero= null
        
unit array UDepot
string array playerName
        
boolean array BMoshou
        
        
unit Uwanjie= null
hashtable itemTable= InitHashtable()
hashtable LHTable= InitHashtable()
hashtable spellTable= InitHashtable()
        
unit kaisa= null
unit yanmie= null
unit moqi= null
unit lingxue= null
unit bajue= null
unit seyu= null
unit xiaoyue= null
unit xuanxue= null
unit chenji= null
unit hanshang= null
unit taiya= null
unit sheyan= null
unit Heiyan= null
unit cangling= null
unit mengji= null
unit Huanyi= null
unit sichen= null
unit xinglong= null
         
boolean array BJuexing1
boolean array BJuexing2
boolean array BJuexing3
        //æ¯å¦åè²
timer array TBianse

        //æ¯å¦æ­£å¨ç¦ç¨å¤©èµ
boolean BTianfu= false

boolean array BYeguaiFirst
//endglobals from LHBase
//globals from Continous:
constant boolean LIBRARY_Continous=true
integer array IConDays
integer array ILastTime
constant integer TIMESTAMP_START= 1500998400

integer time_simulate= 0
//endglobals from Continous
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

endglobals


//library DzAPI:
	
    function DzAPI_Map_SaveServerValue takes player whichPlayer,string key,string value returns boolean
    return true
    endfunction
    function DzAPI_Map_GetServerValue takes player whichPlayer,string key returns string
    return null
    endfunction
    function DzAPI_Map_Ladder_SetStat takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_IsRPGLobby takes nothing returns boolean
    return true
    endfunction
    function DzAPI_Map_IsRPGLadder takes nothing returns boolean
    return true
    endfunction
    function DzAPI_Map_GetGameStartTime takes nothing returns integer
    return 0
    endfunction
    function DzAPI_Map_Stat_SetStat takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
    return 0
    endfunction
    function DzAPI_Map_MissionComplete takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetActivityData takes nothing returns string
    return null
    endfunction
    function DzAPI_Map_GetMatchType takes nothing returns integer
    return 0
    endfunction
    function DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer,string key,string value returns nothing
    endfunction
 function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
        set key="I" + key
        call DzAPI_Map_SaveServerValue(whichPlayer , key , I2S(value))
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
        local integer value
        set key="I" + key
        set value=S2I(DzAPI_Map_GetServerValue(whichPlayer , key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
 function DzAPI_Map_GetStoredUnitId takes player whichPlayer,string key returns integer
        local integer value
        set key="I" + key
        set value=S2I(DzAPI_Map_GetServerValue(whichPlayer , key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
        set key="R" + key
        call DzAPI_Map_SaveServerValue(whichPlayer , key , R2S(value))
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
        local real value
        set key="R" + key
        set value=S2R(DzAPI_Map_GetServerValue(whichPlayer , key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
        set key="B" + key
        if ( value ) then
            call DzAPI_Map_SaveServerValue(whichPlayer , key , "1")
        else
            call DzAPI_Map_SaveServerValue(whichPlayer , key , "0")
        endif
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
        local boolean value
        set key="B" + key
        set key=DzAPI_Map_GetServerValue(whichPlayer , key)
        if ( key == "1" ) then
            set value=true
        else
            set value=false
        endif
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
        set key="S" + key
        call DzAPI_Map_SaveServerValue(whichPlayer , key , value)
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
        return DzAPI_Map_GetServerValue(whichPlayer , "S" + key)
    endfunction
    function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
        call DzAPI_Map_SaveServerValue(whichPlayer , key , null)
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer , key , I2S(value))
    endfunction
    function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
        if ( value == 0 ) then
            //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer , key , I2S(value))
        endif
    endfunction
    function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
        call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer , key , GetUnitTypeId(value))
    endfunction
    function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
        if ( value == 0 ) then
            //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer , key , I2S(value))
        endif
    endfunction
    function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
        local string S
        if ( value == 0 ) then
            set S="0"
        else
            set S=I2S(value)
            call DzAPI_Map_Ladder_SetStat(whichPlayer , key , S)
        endif
        //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
        set S=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
        call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer , key , GetItemTypeId(value))
    endfunction
    function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
        if ( value ) then
            call DzAPI_Map_Ladder_SetStat(whichPlayer , key , "1")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer , key , "0")
        endif
    endfunction
    function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer , value , "1")
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
        call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer , "RankIndex" , I2S(value))
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer , "ExtraExp" , I2S(value))
    endfunction

//library DzAPI ends
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
    
    function R3 takes boolean b,real r1,real r2 returns real
        if ( b ) then
            return r1
        else
            return r2
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
//---------------------------------------------------------------------------------------------------
    
    function U3 takes boolean b,unit u1,unit u2 returns unit
        if ( b ) then
            return u1
        else
            return u2
        endif
    endfunction
    

//library JBase ends
//library YDWEAroundSystem:

    function YDWEAroundSystem takes unit satellite,unit star,real angleRate,real displacement,real riseRate,real timeout,real interval returns nothing
    	call BJDebugMsg("????????????????????")
    endfunction
    

//library YDWEAroundSystem ends
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
//* ¡Æ - Matrix ÍòÄÜÄ£°åº¯Êý
//*--------------------
//* ×÷Õß£ºWarft_TigerCN  ´úÂëÓÅ»¯£ºFetrix_sai
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
		return "3.242"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsClassic takes nothing returns boolean
		return mode == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHighSpeed takes nothing returns boolean
		return mode == 2
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CModeH takes integer i1,integer i2 returns integer
		if ( (mode == 1) ) then // INLINED!!
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RCModeH takes real r1,real r2 returns real
		if ( (mode == 1) ) then // INLINED!!
			return r1
		else
			return r2
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function GetHeroIndex takes integer heroType returns integer
		if ( heroType == 'Ocbh' ) then
			return 1
		elseif ( heroType == 'Eevi' or heroType == 'E00F' ) then
			return 2
		elseif ( heroType == 'Hvwd' ) then
			return 3
		elseif ( heroType == 'Uktl' ) then
			return 4
		elseif ( heroType == 'Nbbc' ) then
			return 5
		elseif ( heroType == 'E00D' or heroType == 'E00E' ) then
			return 6
		elseif ( heroType == 'Usyl' or heroType == 'U001' ) then
			return 7
		elseif ( heroType == 'Hjai' or heroType == 'H01V' ) then
			return 8
		elseif ( heroType == 'Harf' or heroType == 'H01W' ) then
			return 9
		elseif ( heroType == 'E00C' ) then
			return 10
		elseif ( heroType == 'Etyr' or heroType == 'E00G' ) then
			return 11
		elseif ( heroType == 'Othr' ) then
			return 12
		elseif ( heroType == 'Udea' ) then
			return 13
		elseif ( heroType == 'Hkal' ) then
			return 14
		elseif ( heroType == 'Hant' ) then
			return 15
		elseif ( heroType == 'Nsjs' ) then
			return 16
		elseif ( heroType == 'Hhkl' ) then
			return 17
		elseif ( heroType == 'Hapm' or heroType == 'H01I' ) then
			return 18
		endif
		return 0
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function GetIndexHeroName takes integer i returns string
   local string result= ""
			if ( i == 1 ) then
				set result="å¯æ"
			elseif ( i == 2 ) then
				set result="æ¹®ç­"
			elseif ( i == 3 ) then
				set result="è«çª"
			elseif ( i == 4 ) then
				set result="çéª"
			elseif ( i == 5 ) then
				set result="é¸ç»"
			elseif ( i == 6 ) then
				set result="çé¨"
			elseif ( i == 7 ) then
				set result="ææ"
			elseif ( i == 8 ) then
				set result="åéª"
			elseif ( i == 9 ) then
				set result="è¾°å¯"
			elseif ( i == 10 ) then
				set result="å¯æ®"
			elseif ( i == 11 ) then
				set result="æ³°é"
			elseif ( i == 12 ) then
				set result="æç±"
			elseif ( i == 13 ) then
				set result="é»é"
			elseif ( i == 14 ) then
				set result="æ¢¦é"
			elseif ( i == 15 ) then
				set result="å¹»é¸"
			elseif ( i == 16 ) then
				set result="èå"
			elseif ( i == 17 ) then
				set result="å¸å®¸"
			elseif ( i == 18 ) then
				set result="æè§"
			endif
			return result
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetHeroTianFu takes unit u returns integer
  local integer id= GetHeroIndex(GetUnitTypeId(u))
		if ( id == 1 ) then
			return 'AOre'
		elseif ( id == 2 ) then
			return 'A072'
		elseif ( id == 3 ) then
			return 'A04G'
		elseif ( id == 4 ) then
			return 'A042'
		elseif ( id == 5 ) then
			return 'Absk'
		elseif ( id == 6 ) then
			return 'A0IL'
		elseif ( id == 7 ) then
			return 'ACfs'
		elseif ( id == 8 ) then
			return 'A0FV'
		elseif ( id == 9 ) then
			return 'A0F2'
		elseif ( id == 10 ) then
			return 'A0II'
		elseif ( id == 11 ) then
			return 'ACbc'
		elseif ( id == 12 ) then
			return 'A0E7'
		elseif ( id == 13 ) then
			return 'A0A3'
		elseif ( id == 14 ) then
			return 'A0GX'
		elseif ( id == 15 ) then
			return 'AHHD'
		elseif ( id == 16 ) then
			return 'A0HH'
		elseif ( id == 17 ) then
			return 'A0IP'
		elseif ( id == 18 ) then
			return 'AEme'
		endif
		return 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetHeroDifficulty takes unit u returns string
  local integer id= GetHeroIndex(GetUnitTypeId(u))
		if ( id == 1 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 2 ) then
			return "|cffff8000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 3 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 4 ) then
			return "|cffff8000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 5 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 6 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 7 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 8 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 9 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 10 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 11 ) then
			return "|cffff8000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 12 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 13 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 13 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 14 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 15 ) then
			return "|cffff0000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 16 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 17 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 18 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetIndexHeroColorName takes integer i returns string
  local string result= ""
		if ( i == 1 ) then
			set result="|cffff0000å¯æ|r"
		elseif ( i == 2 ) then
			set result="|cFFFFCC66æ¹®ç­|r"
		elseif ( i == 3 ) then
			set result="|cFF999900è«çª|r"
		elseif ( i == 4 ) then
			set result="|cFF33FF33çéª|r"
		elseif ( i == 5 ) then
			set result="|cFFCCFF66é¸ç»|r"
		elseif ( i == 6 ) then
			set result="|cFFCCFF33çé¨|r"
		elseif ( i == 7 ) then
			set result="|cffff00ffææ|r"
		elseif ( i == 8 ) then
			set result="|cFFFF3399åéª|r"
		elseif ( i == 9 ) then
			set result="|cFFCCFF00è¾°å¯|r"
		elseif ( i == 10 ) then
			set result="|cFF33FF33å¯æ®|r"
		elseif ( i == 11 ) then
			set result="|cFFFF3399æ³°é|r"
		elseif ( i == 12 ) then
			set result="|cff00ccffæç±|r"
		elseif ( i == 13 ) then
			set result="|cffff6800é»é|r"
		elseif ( i == 14 ) then
			set result="|cffff99ccæ¢¦é|r"
		elseif ( i == 15 ) then
			set result="|cff00ccffå¹»é¸|r"
		elseif ( i == 16 ) then
			set result="|cff80ff80èå|r"
		elseif ( i == 17 ) then
			set result="|cff993366å¸å®¸|r"
		elseif ( i == 18 ) then
			set result="|cff99cc00æè§|r"
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47
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
		if ( achieveID == 325 ) then
			return GetColorString("ãä¸å«å½ã")
		elseif ( achieveID == 18 ) then
			return "|cffff00ffãè½®åè°ã"
		elseif ( achieveID == 17 ) then
			return "|cffff0000ãæ«æ¥è½¦ã"
		elseif ( achieveID == 16 ) then
			return "|cffff6600ãå°ç±ä½¿ã"
		elseif ( achieveID == 15 ) then
			return "|cffffff00ãç­ç¼ç±ã"
		elseif ( achieveID == 14 ) then
			return "|cff3366ffãå®æäºã"
		elseif ( achieveID == 13 ) then
			return "|cff99cc00ãåè°ä¸ã"
		elseif ( achieveID == 12 ) then
			return "ãå¤ªå¹³æºã"
		elseif ( achieveID == 11 ) then
			return "|cff999999ãå¤©å½é³ã"
		elseif ( achieveID == 21 ) then
			return "|cff99cc00ãå®å¿é­ã"
		elseif ( achieveID == 22 ) then
			return "|cffffff00ãæ©å¿é­ã"
		elseif ( achieveID == 23 ) then
			return "|cffff0000ãåå¿é­ã"
		elseif ( achieveID == 24 ) then
			return GetColorString("ãåå¿é­ã")
		elseif ( achieveID == 25 ) then
			return "|cff99cc00ãå¤ä¸è´¢ã"
		elseif ( achieveID == 26 ) then
			return "|cffffff00ãçä¸è´¢ã"
		elseif ( achieveID == 27 ) then
			return "|cffff0000ãç­ä¸è´¢ã"
		elseif ( achieveID == 28 ) then
			return GetColorString("ãé ä¸è´¢ã")
		elseif ( achieveID == 29 ) then
			return GetColorString("ãåè½®åã")
		elseif ( achieveID == 210 ) then
			return "|cffff00ffãåæ«æ¥ã"
		elseif ( achieveID == 211 ) then
			return "|cffff0000ãåå°ç±ã"
		elseif ( achieveID == 212 ) then
			return "|cffff6600ãåç¼ç±ã"
		elseif ( achieveID == 213 ) then
			return "|cffffff00ãåæäºã"
		elseif ( achieveID == 214 ) then
			return "|cff3366ffãååè°ã"
		elseif ( achieveID == 215 ) then
			return "|cff99cc00ãåå¤ªå¹³ã"
		elseif ( achieveID == 216 ) then
			return "ãåå¤©å½ã"
		elseif ( achieveID == 217 ) then
			return "|cff99cc00ãç¥å¤©å°ã"
		elseif ( achieveID == 218 ) then
			return "|cffffff00ãæ¢ä¹¾å¤ã"
		elseif ( achieveID == 219 ) then
			return "|cffff0000ãäºçä¸»ã"
		elseif ( achieveID == 220 ) then
			return GetColorString("ãå­ççã")
		elseif ( achieveID == 221 ) then
			return "|cff99cc00ãåé§å«ã"
		elseif ( achieveID == 222 ) then
			return "|cffff00ffãæ«ä¸å«ã"
		elseif ( achieveID == 223 ) then
			return "|cff99cc00ãé£é©°èã"
		elseif ( achieveID == 224 ) then
			return "|cffffff00ãçµæ£ä¾ ã"
		elseif ( achieveID == 225 ) then
			return "|cffff0000ãæ å½±å®¢ã"
		elseif ( achieveID == 226 ) then
			return GetColorString("ãéèå¤©ã")
		elseif ( achieveID == 227 ) then
			return "|cff99cc00ãéå¤©é­ã"
		elseif ( achieveID == 228 ) then
			return "|cffffff00ãé©±å¤©é­ã"
		elseif ( achieveID == 229 ) then
			return "|cffff0000ãä¼å¤©é­ã"
		elseif ( achieveID == 230 ) then
			return GetColorString("ãèµ¦å¤©é­ã")
		elseif ( achieveID == 231 ) then
			return ( "|cffff0000ãæ å¿å¢ã" )
		elseif ( achieveID == 32 ) then
			return "|cff99cc00ãè§¦å¤©å¼ã"
		elseif ( achieveID == 33 ) then
			return "|cffffff00ãä¼å¤©å¼ã"
		elseif ( achieveID == 34 ) then
			return "|cffff0000ãå¬å¤©å¼ã"
		elseif ( achieveID == 35 ) then
			return GetColorString("ãè¯å¤©å¼ã")
		elseif ( achieveID == 36 ) then
			return "|cff99cc00ãç¼ç­ç½ã"
		elseif ( achieveID == 37 ) then
			return "|cffffff00ãå½¼å²¸è±ã"
		elseif ( achieveID == 38 ) then
			return "|cffff0000ãä»çåã"
		elseif ( achieveID == 39 ) then
			return "|cffff0000ãçé¾è°±ã"
		elseif ( achieveID == 310 ) then
			return GetColorString("ãé¶å¤±è¯¯ã")
		elseif ( achieveID == 311 ) then
			return "|cff99cc00ãç ´èèã"
		elseif ( achieveID == 312 ) then
			return "|cffffff00ãè£èèã"
		elseif ( achieveID == 313 ) then
			return "|cffff0000ãæ­èèã"
		elseif ( achieveID == 314 ) then
			return GetColorString("ãå¼èå¸ã")
		elseif ( achieveID == 315 ) then
			return "|cff99cc00ãå®æ åã"
		elseif ( achieveID == 316 ) then
			return "|cffffff00ãææ åã"
		elseif ( achieveID == 317 ) then
			return "|cffff0000ãåæ åã"
		elseif ( achieveID == 318 ) then
			return GetColorString("ãé­æ åã")
		elseif ( achieveID == 326 ) then
			return GetColorString("ãå°ç¥é¨ã")
		elseif ( achieveID == 320 ) then
			return GetColorString("ãå£æ´çã")
		elseif ( achieveID == 321 ) then
			return GetColorString("ãå­¤å¿æã")
		elseif ( achieveID == 322 ) then
			return GetColorString("ãå¾¡å¤©å¯ã")
		elseif ( achieveID == 323 ) then
			return GetColorString("ãä¹è½®å£ã")
		elseif ( achieveID == 324 ) then
			return GetColorString("ãå¸æèã")
		elseif ( achieveID == 327 ) then
			return GetColorString("ãæµ©å«èµã")
		elseif ( achieveID == 328 ) then
			return "|cff99cc00ãå¶å½ä½¿ã"
		elseif ( achieveID == 329 ) then
			return "|cffffff00ãåéç¼ã"
		elseif ( achieveID == 330 ) then
			return "|cffff0000ãæ§æ±å±±ã"
		elseif ( achieveID == 331 ) then
			return GetColorString("ãå»ä¸»å®°ã")
		elseif ( achieveID == 42 ) then
			return GetColorString("ãå²ä¸´å¤©é­ã")
		elseif ( achieveID == 43 ) then
			return "|cffffff00ãè¿·è¸ªæ­¥ã"
		elseif ( achieveID == 44 ) then
			return GetColorString("ãå½±æ ç¼ã")
		elseif ( achieveID == 45 ) then
			return GetColorString("ãç ´æ·çã")
		elseif ( achieveID == 46 ) then
			return GetColorString("ãçè¨æ®¿ã")
		elseif ( achieveID == 47 ) then
			return GetColorString("ãä¸è´¥ç¥è¯ã")
		//å®äºåå å°Achievement.jä¸çå¨æå°±.
		endif
		return ""
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetAchievementWhiteName takes integer achieveID returns string
		if ( achieveID == 325 ) then
			return "ä¸å«å½"
		elseif ( achieveID == 18 ) then
			return "è½®åè°"
		elseif ( achieveID == 17 ) then
			return "æ«æ¥è½¦"
		elseif ( achieveID == 16 ) then
			return "å°ç±ä½¿"
		elseif ( achieveID == 15 ) then
			return "ç­ç¼ç±"
		elseif ( achieveID == 14 ) then
			return "å®æäº"
		elseif ( achieveID == 13 ) then
			return "åè°ä¸"
		elseif ( achieveID == 12 ) then
			return "å¤ªå¹³æº"
		elseif ( achieveID == 11 ) then
			return "å¤©å½é³"
		elseif ( achieveID == 21 ) then
			return "å®å¿é­"
		elseif ( achieveID == 22 ) then
			return "æ©å¿é­"
		elseif ( achieveID == 23 ) then
			return "åå¿é­"
		elseif ( achieveID == 24 ) then
			return "åå¿é­"
		elseif ( achieveID == 25 ) then
			return "å¤ä¸è´¢"
		elseif ( achieveID == 26 ) then
			return "çä¸è´¢"
		elseif ( achieveID == 27 ) then
			return "ç­ä¸è´¢"
		elseif ( achieveID == 28 ) then
			return "é ä¸è´¢"
		elseif ( achieveID == 29 ) then
			return "åè½®å"
		elseif ( achieveID == 210 ) then
			return "åæ«æ¥"
		elseif ( achieveID == 211 ) then
			return "åå°ç±"
		elseif ( achieveID == 212 ) then
			return "åç¼ç±"
		elseif ( achieveID == 213 ) then
			return "åæäº"
		elseif ( achieveID == 214 ) then
			return "ååè°"
		elseif ( achieveID == 215 ) then
			return "åå¤ªå¹³"
		elseif ( achieveID == 216 ) then
			return "åå¤©å½"
		elseif ( achieveID == 217 ) then
			return "ç¥å¤©å°"
		elseif ( achieveID == 218 ) then
			return "æ¢ä¹¾å¤"
		elseif ( achieveID == 219 ) then
			return "äºçä¸»"
		elseif ( achieveID == 220 ) then
			return "å­çç"
		elseif ( achieveID == 221 ) then
			return "åé§å«"
		elseif ( achieveID == 222 ) then
			return "æ«ä¸å«"
		elseif ( achieveID == 223 ) then
			return "é£é©°è"
		elseif ( achieveID == 224 ) then
			return "çµæ£ä¾ "
		elseif ( achieveID == 225 ) then
			return "æ å½±å®¢"
		elseif ( achieveID == 226 ) then
			return "éèå¤©"
		elseif ( achieveID == 227 ) then
			return "éå¤©é­"
		elseif ( achieveID == 228 ) then
			return "é©±å¤©é­"
		elseif ( achieveID == 229 ) then
			return "ä¼å¤©é­"
		elseif ( achieveID == 230 ) then
			return "èµ¦å¤©é­"
		elseif ( achieveID == 231 ) then
			return "æ å¿å¢"
		elseif ( achieveID == 32 ) then
			return "è§¦å¤©å¼"
		elseif ( achieveID == 33 ) then
			return "ä¼å¤©å¼"
		elseif ( achieveID == 34 ) then
			return "å¬å¤©å¼"
		elseif ( achieveID == 35 ) then
			return "è¯å¤©å¼"
		elseif ( achieveID == 36 ) then
			return "ç¼ç­ç½"
		elseif ( achieveID == 37 ) then
			return "å½¼å²¸è±"
		elseif ( achieveID == 38 ) then
			return "ä»çå"
		elseif ( achieveID == 39 ) then
			return "çé¾è°±"
		elseif ( achieveID == 310 ) then
			return "é¶å¤±è¯¯"
		elseif ( achieveID == 311 ) then
			return "ç ´èè"
		elseif ( achieveID == 312 ) then
			return "æ­èè"
		elseif ( achieveID == 313 ) then
			return "è£èè"
		elseif ( achieveID == 314 ) then
			return "å¼èå¸"
		elseif ( achieveID == 315 ) then
			return "å®æ å"
		elseif ( achieveID == 316 ) then
			return "ææ å"
		elseif ( achieveID == 317 ) then
			return "åæ å"
		elseif ( achieveID == 318 ) then
			return "é­æ å"
		elseif ( achieveID == 326 ) then
			return "å°ç¥é¨"
		elseif ( achieveID == 320 ) then
			return "å£æ´ç"
		elseif ( achieveID == 321 ) then
			return "å­¤å¿æ"
		elseif ( achieveID == 322 ) then
			return "å¾¡å¤©å¯"
		elseif ( achieveID == 323 ) then
			return "ä¹è½®å£"
		elseif ( achieveID == 324 ) then
			return "å¸æè"
		elseif ( achieveID == 327 ) then
			return "æµ©å«èµ"
		elseif ( achieveID == 328 ) then
			return "å¶å½ä½¿"
		elseif ( achieveID == 329 ) then
			return "åéç¼"
		elseif ( achieveID == 330 ) then
			return "æ§æ±å±±"
		elseif ( achieveID == 331 ) then
			return "å»ä¸»å®°"
		elseif ( achieveID == 42 ) then
			return "å²ä¸´å¤©é­"
		elseif ( achieveID == 43 ) then
			return "è¿·è¸ªæ­¥"
		elseif ( achieveID == 44 ) then
			return "å½±æ ç¼"
		elseif ( achieveID == 45 ) then
			return "ç ´æ·ç"
		elseif ( achieveID == 46 ) then
			return "çè¨æ®¿"
		elseif ( achieveID == 47 ) then
			return "ä¸è´¥ç¥è¯"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementCondition takes integer achieveID returns string
		if ( achieveID == 325 ) then
			return "éå³|cff008000\"ä¸å«\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|r|cff99ccffè¥ä½ éå³äºè¯¥é¾åº¦å¯ä»¥å è½®åä¹ç±ä¸»ç¾¤ç³è¯·ä¸|r|cff99cc00å°å¸ä¸å«å½|r|cff99ccffå¦!|r"
		elseif ( achieveID == 18 ) then
			return "éå³|cffff00ff\"è½®å\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!|r"
		elseif ( achieveID == 17 ) then
			return "éå³|cffff0000\"æ«æ¥\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 16 ) then
			return "éå³|cffff6600\"å°ç±\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 15 ) then
			return "éå³|cffffff00\"ç¼ç±\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 14 ) then
			return "éå³|cff3366ff\"æäº\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 13 ) then
			return "éå³|cff99cc00\"åè°\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 12 ) then
			return "éå³\"å¤ªå¹³\"é¾åº¦åå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 11 ) then
			return "éå³|cff999999\"å¤©å½\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 21 ) then
			return "å®æ20æ¬¡è½¬çå³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 22 ) then
			return "å®æ50æ¬¡è½¬çå³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 23 ) then
			return "å®æ100æ¬¡è½¬çå³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 24 ) then
			return "å®æ150æ¬¡è½¬çå³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 25 ) then
			return "æ¨æå¤§äº20000å³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 26 ) then
			return "æ¨æå¤§äº50000å³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 27 ) then
			return "æ¨æå¤§äº100000å³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 28 ) then
			return "æ¨æå¤§äº200000å³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 29 ) then
			return "åé|cffff00ff\"è½®å\"é¾åº¦|rå³å¯èªå¨è·å¾è¯¥æå°±.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 210 ) then
			return "åé|cffff0000\"æ«æ¥\"é¾åº¦|rå³å¯èªå¨è·å¾è¯¥æå°±.\n\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 211 ) then
			return "åé|cffff6600\"å°ç±\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 212 ) then
			return "åé|cffffff00\"ç¼ç±\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 213 ) then
			return "åé|cff3366ff\"æäº\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 214 ) then
			return "åé|cff99cc00\"åè°\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 215 ) then
			return "åé\"å¤ªå¹³\"é¾åº¦åå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 216 ) then
			return "åé|cff999999\"å¤©å½\"é¾åº¦|råå¯ä»¥èªå¨è·å¾è¯¥æå°±.\n\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 217 ) then
			return "ä½¿ç¨è³å°12ä¸ªè±éï¼æ¯ä¸ªè¿è¡è³å°1åºæ¸¸æ.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 218 ) then
			return "ä½¿ç¨è³å°12ä¸ªè±éï¼æ¯ä¸ªè¿è¡è³å°5åºæ¸¸æ.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 219 ) then
			return "ä½¿ç¨è³å°12ä¸ªè±éï¼æ¯ä¸ªè¿è¡è³å°10åºæ¸¸æ.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 220 ) then
			return "ä½¿ç¨è³å°12ä¸ªè±éï¼æ¯ä¸ªè¿è¡è³å°30åºæ¸¸æ.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 221 ) then
			return "å¨åºå°å©ä½0æ¬¡é²æ¤ç½©æ¶éå³æ¸¸æ.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 222 ) then
			return "å¨åºå°å©ä½0æ¬¡é²æ¤ç½©,ä¸çå½ä½äº25%æ¶éå³æ¸¸æ.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 223 ) then
			return "å¨ç»å¸æ¨¡å¼ä¸­135åéåå»è´¥å¥å¹.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 224 ) then
			return "å¨ç»å¸æ¨¡å¼ä¸­120åéåå»è´¥å¥å¹.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 225 ) then
			return "å¨ç»å¸æ¨¡å¼ä¸­90åéåå»è´¥å¥å¹.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 226 ) then
			return "å¨ç»å¸æ¨¡å¼ä¸­60åéåå»è´¥å¥å¹.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 227 ) then
			return "å¨ååºæ¸¸æä¸­æææ°è¾¾å°1.5ä¸ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 228 ) then
			return "å¨ååºæ¸¸æä¸­æææ°è¾¾å°4ä¸ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 229 ) then
			return "å¨ååºæ¸¸æä¸­æææ°è¾¾å°8ä¸ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 230 ) then
			return "å¨ååºæ¸¸æä¸­æææ°è¾¾å°15ä¸ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 231 ) then
			return "åå±æ¸¸ææ­»äº¡æ¬¡æ°è¾¾å°100æ¬¡ãï¼å¯æè§¦åå¤©èµæè½ä¹ç®æ­»äº¡ï¼\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 32 ) then
			return "å¨ååºæ¸¸æä¸­é æçæ»ä¼¤å®³è¾¾500äº¿ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 33 ) then
			return "å¨ååºæ¸¸æä¸­é æçæ»ä¼¤å®³è¾¾4000äº¿ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 34 ) then
			return "å¨ååºæ¸¸æä¸­é æçæ»ä¼¤å®³è¾¾30000äº¿ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 35 ) then
			return "å¨ååºæ¸¸æä¸­é æçæ»ä¼¤å®³è¾¾600000äº¿ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 36 ) then
			return "éè¿ç§å¢ææ13å±ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 37 ) then
			return "éè¿ç§å¢ææ15å±ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 38 ) then
			return "éè¿ç§å¢ææ17å±ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 39 ) then
			return "éè¿ç§å¢ææ20å±ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 310 ) then
			return "å»è´¥å¥å¹æ¶ææç©å®¶å0æ­»äº¡ãï¼å¯æè§¦åå¤©èµæè½ä¹ç®æ­»äº¡ï¼\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 311 ) then
			return "å»è´¥ä»»æé¾åº¦å·¨è½èåç³6æ¬¡ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 312 ) then
			return "å»è´¥ä»»æé¾åº¦å·¨è½èåç³20æ¬¡ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 313 ) then
			return "å»è´¥è½®åé¾åº¦å·¨è½èåç³12æ¬¡ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 314 ) then
			return "å»è´¥è½®åé¾åº¦å·¨è½èåç³40æ¬¡ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 315 ) then
			return "æ»å±æ§ä¹åè¾¾å°300W.ï¼æå°±è·åå¨1åéåï¼è¯·èå¿ç­å¾ï¼\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 316 ) then
			return "æ»å±æ§ä¹åè¾¾å°800W.ï¼æå°±è·åå¨1åéåï¼è¯·èå¿ç­å¾ï¼\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 317 ) then
			return "æ»å±æ§ä¹åè¾¾å°2000W.ï¼æå°±è·åå¨1åéåï¼è¯·èå¿ç­å¾ï¼\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 318 ) then
			return "æ»å±æ§ä¹åè¾¾å°5000W.ï¼æå°±è·åå¨1åéåï¼è¯·èå¿ç­å¾ï¼\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 326 ) then
			return "å¨8åéåå°å¤æ´»ç¹å¤çé¨æ¯åã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 320 ) then
			return "å°éå³ä¸ºæ­¢åºå°æªåå°ä»»ä½ä¼¤å®³ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 321 ) then
			return "é¬¼MAXæææèè¶é¬¼ææå¸æ¶çµé­å±æ°è¾¾å°120.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 322 ) then
			return "ä½¿ç¨è³å°12ä¸ªè±éå»è´¥æå°åè±é-è¾ç.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 323 ) then
			return "èªå·±ä¸ææéåä»å¤´å°å°¾ä¸æä»»ä½å®ç³,ä¸æä»»ä½ç§å¢,ä¸æä»»ä½æå°,ä¸åæä»»ä½ç¿èéå³æ¸¸æ.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 324 ) then
			return "ä¸ä½äº(æç­äº)5çº§çç©å®¶è¿è¡æ¸¸æéå³æ»¡100äºº.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 327 ) then
			return "èªå·±ä¸ææéåä¸å­¦2çº§æè½ï¼10çº§æè½ï¼20çº§æè½ï¼40çº§æè½ï¼100çº§æè½éå³æ¸¸æã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 328 ) then
			return "ä½¿ç¨ä¸­åæå½ç½ï¼50Wä¸éï¼æåææå¤§äºæç­äº50çº§çæªç©ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 329 ) then
			return "ä½¿ç¨ä¸­åæå½ç½ï¼50Wä¸éï¼æåææå¤§äºæç­äº70çº§çæªç©ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 330 ) then
			return "ä½¿ç¨ä¸­åæå½ç½ï¼50Wä¸éï¼æåææå¤§äºæç­äº100çº§çæªç©ã\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 331 ) then
			return "ä½¿ç¨ä¸­åæå½ç½ï¼50Wä¸éï¼æåææå¤§äºæç­äº150çº§çæªç©ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 43 ) then
			return "å¨è¿·ä½ ææ1-éª·é«æµ·ä¸­éé¢çæ¶é´æåè¶è¿35ç§.\n			\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 44 ) then
			return "å¨è¿·ä½ ææ1-éª·é«æµ·ä¸­éé¢çæ¶é´æåè¶è¿80ç§.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 45 ) then
			return "4äººåä»¥ä¸æ¸¸ææ¶,å¨å»è´¥äººçåå¡ä¸å¦çåå¡æ¶ä»æªè§¦åè¿BOSSçå½èç»æè½.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 46 ) then
			return "åæ¬¡æè½ä¼¤å®³è¾¾å°300äº¿.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementIndex takes integer page,integer index returns integer
		if ( page == 1 or page == 2 ) then
			return I3(index == 1 , 325 , page * 10 + index)
		elseif ( page == 2 ) then
			return ( page * 10 + index )
		elseif ( page == 3 ) then
			return I3(index < 8 , 217 - index , 29)
		elseif ( page == 4 ) then
			return index + 216
		elseif ( page == 5 ) then
			return I3(index < 8 , index + 224 , 310)
		elseif ( page == 6 ) then
			return index + 31
		elseif ( page == 7 ) then
			return index + 310
		elseif ( page == 8 ) then
			return I3(index == 7 , 327 , I3(index == 1 , 326 , index + 318))
		elseif ( page == 9 ) then
			return I3(index <= 4 , index + 327 , index + 38)
		endif
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageName takes integer i returns string
		if ( i == 1 ) then
			return "|cffff66ccèµ¤è¡ç½ç|r"
		elseif ( i == 2 ) then
			return "|cff99ccffæè½®ç»¯ç±|r"
		elseif ( i == 3 ) then
			return "|cFFFF0000æ®éæ è¿¹|r"
		elseif ( i == 4 ) then
			return "|cFF33FF33æ«æ¥ææ|r"
		elseif ( i == 5 ) then
			return "|cFFFF3333éå¤ä¹å|r"
		elseif ( i == 6 ) then
			return "|cFFCCFF66ä¸å¼¦æè°§|r"
		elseif ( i == 7 ) then
			return "|cFF3333FFç çä¹å|r"

		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageName takes integer i returns string
		if ( i == 1 ) then
			return "å¨æå°±è¾¾æ"
		elseif ( i == 2 ) then
			return "éå³|cff993366å¤©é­|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageContent takes integer i returns string
		if ( i == 1 ) then
			return "ä½¿ç¨çé¨å¨1ç§åå°è½éä»0%ç´æ¥å¢å è³105%(æä»¥ä¸).\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾çé¨çç®è¤\"|cffff66ccèµ¤è¡ç½ç|r\"(æ¥æå°éçå±æ§å æ)!"
		elseif ( i == 2 ) then
			return "ä½¿ç¨ææå¨ä¸å±æ¸¸æåæåå¨é»¯é»æéµåæåå¤æ´»æ»¡150äºº.\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾ææçç®è¤\"|cff99ccffæè½®ç»¯ç±|r\"(æ¥æå°éçå±æ§å æ)!"
		elseif ( i == 3 ) then
			return "ä½¿ç¨æ¹®ç­å¨ä¸å±æ¸¸æåæåå®æ125æ¬¡è½¬ç.\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾æ¹®ç­çç®è¤\"|cFFFF0000æ®éæ è¿¹|r\"(æ¥æå°éçå±æ§å æ)!"
		elseif ( i == 4 ) then
			return "ä½¿ç¨çéªå¨ä¸å±æ¸¸æåæååéæäºé¾åº¦(æä»¥ä¸).\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾çéªçæ¨¡åæ³æ\"|cFF33FF33æ«æ¥ææ|r\"(æ¥æå°éçå±æ§å æ)!"
			return ""
		elseif ( i == 5 ) then
			return "ä½¿ç¨è¾°å¯å¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æ»¡7æ¬¡90åçµæè½-å¼æ¸¡.\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾è¾°å¯çæ¨¡åç¹æ\"|cFFFF3333éå¤ä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			return ""
		elseif ( i == 6 ) then
			return "ä½¿ç¨æ³°éå¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æç¥ä¹ç®­æè½è§¦å\"ç§\"ææææ­»è³å°2500ä¸ªåä½.\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾æ³°éçç®è¤\"|cFFCCFF66ä¸å¼¦æè°§|r\"(æ¥æå°éçå±æ§å æ)!"
			return ""
		elseif ( i == 7 ) then
			return "ä½¿ç¨å¯æ®å¨ä¸å±æ¸¸æåæåä½¿ç¨æ ç©·åå¬æè½è·å¾è¶è¿1000ä¸çæ»åå±æ§.\n\n			å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æ®çæ¨¡åæ­¦å¨\"|cFF3333FFç çä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			return ""
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageContent takes integer i returns string
		if ( i == 1 ) then
			return "è§£éæªæ­¢ä¸ä¸ªçæ¬ä»¥æ¥çæææå°±.(è¾å¥-cjå¯ä»¥æ¥çæææå°±æåµ)\n\n			å®æè¯¥é¡¹ææåä½ å°å¯ä»¥ä½¿ç¨-qmæä»¤èªå®ä¹ä½ çæå°±å!"
		elseif ( i == 2 ) then
			return "éå³éèé¾åº¦|cff993366å¤©é­|r(éå³|cff008000ä¸å«|ré¾åº¦è§£é)\n\n			å®æè¯¥é¡¹ææåä½ çåå­å°å¨ä»¥åå§ç»ç½®é¡¶äº|cff008000\"å°å¸ä¸å«å½\"|rä¸­!\n			å¹¶è·å¾åå­æå°±å" + GetAchievementName(42) + "ã"
		elseif ( i == 3 ) then
			return "å¨åå¹´åæ´»å¨çæ¬ä¸­è¿ç»­ç­¾å°è¾¾20å¤©.\n\n			å®æè¯¥é¡¹ææåå¯ä»¥å¨æ¯æ¬¡å¼å±éè±éåæ¥åæ¥èªå­ççæ¬¢è¿ã\n			å¹¶è·å¾åå­æå°±å" + GetAchievementName(47) + "ã"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetWanjieluName takes nothing returns string
		set Constant__WPointer=Constant__WPointer - 1
		if ( Constant__WPointer <= 0 ) then
			set Constant__WPointer=COUNT_WANJIE
		endif

		if ( Constant__WPointer == 1 ) then
			return "xueè"
		elseif ( Constant__WPointer == 2 ) then
			return "æå¾æ èTT"
		elseif ( Constant__WPointer == 3 ) then
			return "å¤§å¤´ä¸"
		elseif ( Constant__WPointer == 4 ) then
			return "æ ä¸ç¥å°"
		elseif ( Constant__WPointer == 5 ) then
			return "æ å¨äºè¡·"
		elseif ( Constant__WPointer == 6 ) then
			return "æµå¥é£å"
		elseif ( Constant__WPointer == 7 ) then
			return "ä½ ææçéã"
		elseif ( Constant__WPointer == 8 ) then
			return "å¿äº¦"
		elseif ( Constant__WPointer == 9 ) then
			return "çµé­çç¼ ç»µ"
		elseif ( Constant__WPointer == 10 ) then
			return "å¹»ãç¥"
		elseif ( Constant__WPointer == 11 ) then
			return "æ«è½ç§æ¬"
		elseif ( Constant__WPointer == 12 ) then
			return "æ·±éçå­¤ç¬ä¸¶"
		elseif ( Constant__WPointer == 13 ) then
			return "é·çå®å¤æå¼ºçè"
		elseif ( Constant__WPointer == 14 ) then
			return "ä½ ççå¥¶å¢ä¸¶"
		elseif ( Constant__WPointer == 15 ) then
			return "ä¿å¬å­"
		elseif ( Constant__WPointer == 16 ) then
			return "å«é¶å¤§å"
		elseif ( Constant__WPointer == 17 ) then
			return "Wqnmmpä¸¶"
		elseif ( Constant__WPointer == 18 ) then
			return "æ»¡å°ææ»çç«ç«"
		elseif ( Constant__WPointer == 19 ) then
			return "æå¤é­çä¸¶è¯ºç¹"
		elseif ( Constant__WPointer == 20 ) then
			return "ç«å¿ä¸¶"
		elseif ( Constant__WPointer == 21 ) then
			return "ä¸ä½ ç«¥å¨"
		elseif ( Constant__WPointer == 22 ) then
			return "è¯å ã"
		elseif ( Constant__WPointer == 23 ) then
			return "å¾ç¦å¾ç®"
		elseif ( Constant__WPointer == 24 ) then
			return "sky"
		elseif ( Constant__WPointer == 25 ) then
			return "æ¢¦é²ä¸¶baby"
		elseif ( Constant__WPointer == 26 ) then
			return "ä¸¶å¿µå°"
		elseif ( Constant__WPointer == 27 ) then
			return "é ä¸è´¢"
		elseif ( Constant__WPointer == 28 ) then
			return "0ä¸ç©çç©º0"
		elseif ( Constant__WPointer == 29 ) then
			return "è¾çä¸¶ç¥å·"
		elseif ( Constant__WPointer == 30 ) then
			return "æççæ¯ä½ èå­"
		elseif ( Constant__WPointer == 31 ) then
			return "é¸ç¬ä»"
		elseif ( Constant__WPointer == 32 ) then
			return "æ²æ"
		elseif ( Constant__WPointer == 33 ) then
			return "æè¾°æ«æ¥"
		elseif ( Constant__WPointer == 34 ) then
			return "ç¥å¤©ç¾½"
		elseif ( Constant__WPointer == 35 ) then
			return "å¢å¤´è¹²çº¢æ"
		elseif ( Constant__WPointer == 36 ) then
			return "7è¡è"
		elseif ( Constant__WPointer == 37 ) then
			return "æé¸¡é¸¡è´¼å¤§"
		elseif ( Constant__WPointer == 38 ) then
			return "1 1"
		elseif ( Constant__WPointer == 39 ) then
			return "æ«ç¨æ¡¦"
		elseif ( Constant__WPointer == 40 ) then
			return "å¤å­å¥æ"
		elseif ( Constant__WPointer == 41 ) then
			return "å¸å®¸"
		elseif ( Constant__WPointer == 42 ) then
			return "MaâLePYe"
		elseif ( Constant__WPointer == 43 ) then
			return "oneä¸¶lifeã®ç±"
		elseif ( Constant__WPointer == 44 ) then
			return "æ æéæäº"
		elseif ( Constant__WPointer == 45 ) then
			return "è¯·å¸¦çæé£"
		elseif ( Constant__WPointer == 46 ) then
			return "å¿éª"
		elseif ( Constant__WPointer == 47 ) then
			return "Rascalä¸¶ææ"
		elseif ( Constant__WPointer == 48 ) then
			return "é´ä¼"
		elseif ( Constant__WPointer == 49 ) then
			return "è³ç®i"
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


    function OperatorDegreeAdd takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeSubtract takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeMultiply takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeDivide takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianAdd takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianSubtract takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianMultiply takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianDivide takes real r1,real r2 returns real
         return 0.
     endfunction 

 function Test___InitTest takes nothing returns nothing
		// body...
	endfunction


//library Test ends
//library LHBase:

//---------------------------------------------------------------------------------------------------
    
    function IsStrHero takes unit u returns boolean
        return u == kaisa or u == chenji or u == bajue or u == Heiyan or u == xinglong
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function IsAgiHero takes unit u returns boolean
        return u == taiya or u == xiaoyue or u == mengji or u == moqi or u == hanshang or u == cangling or u == seyu or u == yanmie or u == sichen
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function IsIntHero takes unit u returns boolean
        return u == lingxue or u == xuanxue or u == sheyan or u == Huanyi
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetCycleHash takes string s,integer times returns integer
        local string result= s
        local integer i= 1
        loop
            exitwhen i > times
            set result=I2S(StringHash(result))
            set i=i + 1
        endloop
        return S2I(result)
    endfunction
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
        return ( ( GetItemTypeId(i) != 'mgtk' ) and ( GetItemTypeId(i) != 'k3m1' ) and ( GetItemTypeId(i) != 'pomn' ) and ( GetItemTypeId(i) != 'wild' ) and ( GetItemTypeId(i) != 'hlst' ) and ( GetItemTypeId(i) != 'totw' ) and ( GetItemTypeId(i) != 'sror' ) and ( GetItemTypeId(i) != 'fgrg' ) and ( GetItemTypeId(i) != 'wshs' ) and ( GetItemTypeId(i) != 'IXU1' ) and ( GetItemTypeId(i) != 'I049' ) and ( GetItemTypeId(i) != 'I04A' ) and ( GetItemTypeId(i) != 'I000' ) and ( GetItemTypeId(i) != 'I001' ) and ( GetItemTypeId(i) != 'I002' ) and ( GetItemTypeId(i) != 'I01D' ) and ( GetItemTypeId(i) != 'I02W' ) and ( GetItemTypeId(i) != 'sres' ) and ( GetItemTypeId(i) != 'I06A' ) and ( GetItemTypeId(i) != 'I06B' ) and ( GetItemTypeId(i) != 'I06C' ) and ( GetItemTypeId(i) != 'I06J' ) and ( GetItemTypeId(i) != 'I062' ) and ( GetItemTypeId(i) != 'ICS1' ) and ( GetItemTypeId(i) != 'I04W' ) and ( GetItemTypeId(i) != 'I04Y' ) and ( GetItemTypeId(i) != 'I05T' ) and ( GetItemTypeId(i) != 'I05W' ) and ( GetItemTypeId(i) != 'I05V' ) and ( GetItemTypeId(i) != 'ICY1' ) and ( GetItemTypeId(i) != 'I05X' ) and ( GetItemTypeId(i) != 'IB0A' ) and ( GetItemTypeId(i) != 'I04X' ) and ( GetItemTypeId(i) != 'ICX1' ) and ( GetItemTypeId(i) != 'I05Y' ) and ( GetItemTypeId(i) != 'I05Z' ) and ( GetItemTypeId(i) != 'I060' ) and ( GetItemTypeId(i) != 'I06N' ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsDiamond takes item i returns boolean
        return GetItemTypeId(i) == 'I02N' or GetItemTypeId(i) == 'I04S' or GetItemTypeId(i) == 'azhr' or GetItemTypeId(i) == 'gmfr' or GetItemTypeId(i) == 'jpnt' or GetItemTypeId(i) == 'glsk' or GetItemTypeId(i) == 'kygh' or GetItemTypeId(i) == 'sehr' or GetItemTypeId(i) == 'bzbf' or GetItemTypeId(i) == 'phlt' or GetItemTypeId(i) == 'dkfw' or GetItemTypeId(i) == 'thle'
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Is20Unit takes unit u returns boolean
        return ( ( ( GetUnitTypeId(u) == 'nanw' ) or ( GetUnitTypeId(u) == 'nbld' ) or ( GetUnitTypeId(u) == 'nbdo' ) or ( GetUnitTypeId(u) == 'ncnk' ) or ( GetUnitTypeId(u) == 'nenc' ) or ( GetUnitTypeId(u) == 'ngnw' ) ) )
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function Is10Unit takes unit u returns boolean
        return ( ( ( GetUnitTypeId(u) == 'nano' ) or ( GetUnitTypeId(u) == 'nenf' ) or ( GetUnitTypeId(u) == 'nbda' ) or ( GetUnitTypeId(u) == 'ncim' ) or ( GetUnitTypeId(u) == 'ngns' ) or ( GetUnitTypeId(u) == 'nhfp' ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    

    function GetKillCount takes unit u returns integer
        if ( Is10Unit(u) ) then
            return 10 * CModeH(1 , 2)
        elseif ( Is20Unit(u) ) then
            return 20 * CModeH(1 , 2)
        else
            return 1 * CModeH(1 , 2)
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsWudi takes unit u returns boolean
        return GetUnitAbilityLevel(u, 'Avul') > 0
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetBasicRing takes unit u returns item
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
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetMaxRing takes unit u returns item
        if ( UnitHasItemOfTypeBJ(u, 'brac') ) then
            return GetItemOfTypeFromUnitBJ(u, 'brac')
        elseif ( UnitHasItemOfTypeBJ(u, 'lhst') ) then
            return GetItemOfTypeFromUnitBJ(u, 'lhst')
        elseif ( UnitHasItemOfTypeBJ(u, 'I05W') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I05W')
        elseif ( UnitHasItemOfTypeBJ(u, 'I05V') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I05V')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMaxRing takes item i returns boolean
        return GetItemTypeId(i) == 'brac' or GetItemTypeId(i) == 'lhst' or GetItemTypeId(i) == 'I05W' or GetItemTypeId(i) == 'I05V'
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
        elseif ( UnitHasItemOfTypeBJ(u, 'brac') ) then
            return GetItemOfTypeFromUnitBJ(u, 'brac')
        elseif ( UnitHasItemOfTypeBJ(u, 'lhst') ) then
            return GetItemOfTypeFromUnitBJ(u, 'lhst')
        elseif ( UnitHasItemOfTypeBJ(u, 'I05W') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I05W')
        elseif ( UnitHasItemOfTypeBJ(u, 'I05V') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I05V')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetDeng takes unit u returns integer
        if ( UnitHasItemOfTypeBJ(u, 'ILI1') ) then
            return 1
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI2') ) then
            return 2
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI3') ) then
            return 3
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI4') ) then
            return 4
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI5') ) then
            return 5
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI6') ) then
            return 6
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI7') ) then
            return 7
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI8') ) then
            return 8
        elseif ( UnitHasItemOfTypeBJ(u, 'ILI9') ) then
            return 9
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIA') ) then
            return 10
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIB') ) then
            return 11
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIC') ) then
            return 12
        elseif ( UnitHasItemOfTypeBJ(u, 'ILID') ) then
            return 13
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIE') ) then
            return 14
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIF') ) then
            return 15
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIG') ) then
            return 16
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIH') ) then
            return 17
        elseif ( UnitHasItemOfTypeBJ(u, 'ILII') ) then
            return 18
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIJ') ) then
            return 19
        elseif ( UnitHasItemOfTypeBJ(u, 'ILIK') ) then
            return 20
        endif
        return 0
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsZhanfahun takes item i returns boolean
        local integer id= GetItemTypeId(i)
        return id == 'I01U' or id == 'rde2' or id == 'vamp' or id == 'skul' or id == 'tsct' or id == 'tcas' or id == 'plcl' or id == 'tgrh' or id == 'rst1' or id == 'rnec' or id == 'shas' or id == 'spro' or id == 'phea' or id == 'rin1' or id == 'ward' or id == 'rde1' or id == 'ICX1'
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function IsDeng takes item i returns boolean
        local integer t= GetItemTypeId(i)
        return ( t == 'ILI1' ) or ( t == 'ILI2' ) or ( t == 'ILI3' ) or ( t == 'ILI4' ) or ( t == 'ILI5' ) or ( t == 'ILI6' ) or ( t == 'ILI7' ) or ( t == 'ILI8' ) or ( t == 'ILI9' ) or ( t == 'ILIA' ) or ( t == 'ILIB' ) or ( t == 'ILIC' ) or ( t == 'ILID' ) or ( t == 'ILIE' ) or ( t == 'ILIF' ) or ( t == 'ILIG' ) or ( t == 'ILIH' ) or ( t == 'ILII' ) or ( t == 'ILIJ' ) or ( t == 'ILIK' )
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
    
    function IsSolider takes unit u returns boolean
        return ( GetUnitTypeId(u) == 'uG01' ) or ( GetUnitTypeId(u) == 'uG02' ) or ( GetUnitTypeId(u) == 'uG03' ) or ( GetUnitTypeId(u) == 'uG04' ) or ( GetUnitTypeId(u) == 'uG05' ) or ( GetUnitTypeId(u) == 'uG06' )
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
    
    function HG takes unit u returns nothing
        call SetUnitPositionLoc(u, udg_Point_Fuhuo)
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function ShengliAll takes nothing returns nothing
        call CustomVictoryBJ(GetEnumPlayer(), true, true)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetFacingBetweenXY takes real x1,real y1,real x2,real y2 returns real
        return Atan2BJ(y2 - y1, x2 - x1)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetDistance takes real x1,real y1,real x2,real y2 returns real
        local real dx= x2 - x1
        local real dy= y2 - y1
        return SquareRoot(dx * dx + dy * dy)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsUnitInUnitBack takes unit u1,unit u2,real angle returns boolean
        return CosBJ(GetUnitFacing(u1) - YDWEAngleBetweenUnits(u2 , u1)) >= CosBJ(angle)
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
//---------------------------------------------------------------------------------------------------
    
    function DamageAreaMirror takes unit attacker,real x,real y,real radius,real damage returns nothing
        local group l_group= CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit=FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if ( IsEnemy(l_unit , attacker) and ( udg_U_Zhuansheng_Dantiao[2] != l_unit or udg_U_Zhuansheng_Dantiao[1] == attacker ) ) then
                call UnitDamageTarget(attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group=null
        set l_unit=null
    endfunction
//---------------------------------------------------------------------------------------------------

    
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
//---------------------------------------------------------------------------------------------------

    
    function DamageAreaEff takes unit attacker,real x,real y,real radius,real damage,string eff returns nothing
        local group l_group= CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit=FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if ( IsEnemy(l_unit , attacker) ) then
                call UnitDamageTarget(attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
                call DestroyEffect(AddSpecialEffect(eff, GetUnitX(l_unit), GetUnitY(l_unit)))
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group=null
        set l_unit=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function AddHero3W takes unit u,integer value returns nothing
        local unit hero= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
        if ( hero == chenji ) then
            call SetHeroStr(hero, GetHeroStr(hero, true) + value * 3, true)
        else
            call SetHeroInt(hero, GetHeroInt(hero, true) + value, true)
            call SetHeroAgi(hero, GetHeroAgi(hero, true) + value, true)
            call SetHeroStr(hero, GetHeroStr(hero, true) + value, true)
        endif
        set hero=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetLimit takes integer i returns integer
        if ( i < 0 or i > 2100000000 ) then
            return 2100000000
        else
            return i
        endif
    endfunction
    
//---------------------------------------------------------------------------------------------------

    
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
            set tt=CreateTextTagLocBJ("|cffFFD700ãä¸å«å½ã" + GetWanjieluName(), point, 50.00, 12, 100, 100, 100, 0)
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
        local integer i= 1

        loop
            exitwhen i > 6
            if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
                set BMoshou[i]=false
            endif
            set i=i + 1
        endloop
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 10175.0, - 691.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 10307.0, - 691.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 10431.0, - 691.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 10175.0, - 60.6, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 10307.0, - 60.6, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 10431.0, - 60.6, 270.000)

        set Uwanjie=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14524.0, - 15446.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase__StartWanjieTimer)


        set t=null
    endfunction

//library LHBase ends
//library Continous:



//---------------------------------------------------------------------------------------------------
	
 function GetDailyReward takes integer days returns string
		if ( days == 1 ) then
			return "å°åç½"
		elseif ( days == 2 ) then
			return "å°åç½+500éå¸"
		elseif ( days == 3 ) then
			return "å°åç½+1000éå¸"
		elseif ( days == 4 ) then
			return "å°åç½+1000éå¸+1ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 5 ) then
			return "ä¸­åç½+1000éå¸+1ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 6 ) then
			return "ä¸­åç½+1500éå¸+1ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 7 ) then
			return "ä¸­åç½+2000éå¸+1ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 10 ) then
			return "æ°¸ä¹è§£é|cFFCCFF00è¾°å¯|rçç®è¤|cFFFF3333åæµè´¯æ|r"
		elseif ( days == 12 ) then
			return "ä¸­åç½+2000éå¸+2ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 15 ) then
			return "å¨åå¹´åæ´»å¨æé´åå¼å±å³é|cffff00ffãèãçççç|r"
		elseif ( days == 20 ) then
			return "æ°¸ä¹è§£éè¶çº§æå°±" + GetAchievementName(47) + "(å¨æ··æ²ä¸åºåæ¢)"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetContinousDay takes player p returns integer
		if ( (0) <= ILastTime[GetConvertedPlayerId(p)] ) then // INLINED!!
			return 1
		endif
		return ( (0) - ILastTime[GetConvertedPlayerId(p)] ) / 86400 // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateLoginDialog takes player p returns nothing
        local dialog d= DialogCreate()
        local string s= "\n        	åå¹´åè¿ç»­ç»å½å¥å±\n        	"
        local integer i= 1
        loop
        	exitwhen i > 20
        	if ( GetDailyReward(i) != null ) then
        		set s=s + GetDailyReward(i) + S3(IConDays[i] >= i , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")
        	endif
        	set i=i + 1
        endloop
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "10åéä¹åå½å¤©ç­¾å°æå|cffff6800(Esc)|r", 512)
        call DialogDisplay(p, d, true)
        //call DialogDestroy(d)
        set d=null
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function Continous__GetCurrentStartTime takes player p returns integer
		return TIMESTAMP_START + ( ( (0) - ILastTime[GetConvertedPlayerId(p)] ) / 86400 ) * 86400 // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitContinousData takes player p returns nothing
		set IConDays[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "IConDays")
		set ILastTime[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "ILastTime")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveLoginState takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "IConDays" , IConDays[GetConvertedPlayerId(p)])
		call DzAPI_Map_StoreInteger(p , "ILastTime" , ILastTime[GetConvertedPlayerId(p)])
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetDenglu takes player p returns nothing
		//æ´»å¨è¿æ²¡å¼å§ï¼æèè¯´æ¯é¦æ¬¡
		if ( ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START ) then
			set ILastTime[GetConvertedPlayerId(p)]=TIMESTAMP_START
			set IConDays[GetConvertedPlayerId(p)]=1
			call SaveLoginState(p)
			return
		endif

		//æ­ç­¾å¦éæ°å­å¨

		if ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] ) then
			//é¦æ¬¡è¿ç»­ç»å½çæç¤ºä¸å¥å±
			set IConDays[GetConvertedPlayerId(p)]=GetContinousDay(p) + 1
			call SaveLoginState(p)
		elseif ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1 ) then
			//ä¿æå½å¤©çå¥å±
		elseif ( GetContinousDay(p) > IConDays[GetConvertedPlayerId(p)] ) then
			set ILastTime[GetConvertedPlayerId(p)]=(TIMESTAMP_START + ( ( (0) - ILastTime[GetConvertedPlayerId((p))] ) / 86400 ) * 86400) // INLINED!!
			set IConDays[GetConvertedPlayerId(p)]=1
			call SaveLoginState(p)
		endif

		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©.")

	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Continous__InitContinous takes nothing returns nothing
		
	endfunction


//library Continous ends

// BEGIN IMPORT OF Continous.j
// BEGIN IMPORT OF LHBase.j


// BEGIN IMPORT OF Test.j

// BEGIN IMPORT OF dependency/YDWESetGuard.j

//===========================================================================
//Ó¶±øÏµÍ³ 
//===========================================================================


// END IMPORT OF dependency/YDWESetGuard.j
// BEGIN IMPORT OF dependency/YDWETriggerEvent.j

//===========================================================================  
//===========================================================================  
//×Ô¶¨ÒåÊÂ¼þ 
//===========================================================================
//===========================================================================   


// END IMPORT OF dependency/YDWETriggerEvent.j
// BEGIN IMPORT OF dependency/YDWETimerSystem.j
//===========================================================================
//ÏµÍ³-TimerSystem
//===========================================================================


// END IMPORT OF dependency/YDWETimerSystem.j
// BEGIN IMPORT OF dependency/YDWETimerPattern.j


// END IMPORT OF dependency/YDWETimerPattern.j
// BEGIN IMPORT OF dependency/YDWEBase_common.j

//===========================================================================
//è¿ååæ°
//===========================================================================
//å°å¾è¾¹çå¤æ­

// END IMPORT OF dependency/YDWEBase_common.j
// BEGIN IMPORT OF dependency/YDWEBase_hashtable.j
// END IMPORT OF dependency/YDWEBase_hashtable.j
// BEGIN IMPORT OF dependency/YDWEAroundSystem.j







// END IMPORT OF dependency/YDWEAroundSystem.j

// BEGIN IMPORT OF DzAPI.j
// END IMPORT OF DzAPI.j
// END IMPORT OF Test.j
// BEGIN IMPORT OF Constant.j

// BEGIN IMPORT OF JBase.j

// END IMPORT OF JBase.j

// END IMPORT OF Constant.j
// IGNORE DOUBLE IMPORT OF JBase.j


// END IMPORT OF LHBase.j

// END IMPORT OF Continous.j
function main takes nothing returns nothing

call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test___InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Continous__InitContinous")

endfunction



//Struct method generated initializers/callers:

