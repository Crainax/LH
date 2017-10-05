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
string SgameMode= ""
		
constant integer HERO_COUNT= 20
		
constant boolean Huodong= false
		
constant integer PAGE_ACHIEVE= 10
constant integer PAGE_HERO_CHALLANGER= 3
		
integer renshu= 0
		
		
integer mode= 0
constant integer COUNT_WANJIE= 47
integer Constant___WPointer= 1
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
unit gg_unit_Hant_0205= null
unit gg_unit_Hvwd_0016= null
trigger gg_trg_______17= null
trigger gg_trg_______19= null

location udg_Point= null
    //刷新战斗力
trigger gg_trg_zhandouli2= null
    //复活
location udg_Point_Fuhuo= null
	//主基地的区域
rect gg_rct________1= null
	//难度等级，最高7
integer udg_Nandu_JJJ= 0
integer udg_Nandu= 0
    //技能触发
trigger gg_trg_____________71= null
trigger gg_trg_______21= null
        //基地总区域
rect gg_rct__________u= null
        //杀阵
unit gg_unit_h00K_0254= null
	   //冥王
unit gg_unit_Nkjx_0241= null
        //左
unit gg_unit_Uear_0242= null
        //右
unit gg_unit_Npld_0253= null
        //战斗调整
unit gg_unit_ndrz_0019= null
        //英雄
unit array udg_H
        //圣主分身
unit gg_unit_Ekgg_0259= null
        //技能伤害
real array udg_I_Jinengjiacheng
        //增益
real array udg_I_Xianglian
        //触发,属性刷新
trigger gg_trg_D7= null
        //波数
integer udg_Bo= 0
        //排行榜
integer array udg_Paihangbang
leaderboard array udg_Paihang
        //基地
unit gg_unit_haro_0030= null
        
rect gg_rct_______c1= null
        
rect gg_rct_M1= null
rect gg_rct_M2= null
rect gg_rct_M3= null
rect gg_rct_M4= null
rect gg_rct_M5= null
rect gg_rct_M6= null

        
rect gg_rct_Arena_1= null
rect gg_rct_Arena_2= null
rect gg_rct_Arena_all= null
rect gg_rct_Arena_forbit= null
rect gg_rct_Arena_Spell= null

        
sound gg_snd_Jidibeida=null
sound gg_snd_Chenggong=null
sound gg_snd_Shibai=null
sound gg_snd_Renwu=null
sound gg_snd_lichidazhao=null

        
rect gg_rct____1= null
rect gg_rct____2= null
rect gg_rct____3= null
rect gg_rct____4= null
rect gg_rct____5= null
rect gg_rct____6= null

        
unit gg_unit_nmgv_0193= null
unit gg_unit_nmgv_0194= null
unit gg_unit_nmgv_0195= null
unit gg_unit_nmgv_0196= null
unit gg_unit_nmgv_0197= null
unit gg_unit_nmgv_0198= null

        
integer array udg_gold
real array udg_I_Jinqianhuodelv
        
button array udg_X_Nandu_Chuangkou
dialog udg_X_Nandu= DialogCreate()
        
integer udg_RENSHU= 1

        
multiboard udg_D= null

        
integer array udg_I_Lianyu
rect gg_rct______________084= null

        
unit array udg_U_Zhuansheng_Dantiao
integer array udg_Z
        
rect gg_rct_QuitRegion= null

        
integer array udg_I_Er_diansi
        
integer array udg_Laser

        
trigger gg_trg_papa8____________u= null
trigger gg_trg_papa9____________u= null
trigger gg_trg_papa10____________u= null
        
trigger gg_trg_____________800W= null
trigger gg_trg___________________4000______u= null
trigger gg_trg_HP_____________________u= null
unit udg_Unit
        
rect gg_rct________8= null
rect gg_rct_Diamond2= null
rect gg_rct_Diamond3= null
        
rect gg_rct_______a3= null
        
real array udg_I_Shanghai
        
integer array udg_Second
        //七星
unit array udg_Unit_Qixing

        //辰寂剑灵判断
trigger gg_trg_____________127= null
trigger gg_trg_____________129= null
        //狼
unit array udg_Lang
        //湮灭
trigger gg_trg_____________3= null

        //经验
real array udg_I_Jingyan
boolean array udg_T1

        //混沌专区
rect gg_rct_Hundun= null

        //出怪
rect gg_rct________6= null
rect gg_rct________3= null

        //计时器
timer udg_Time_BOSS= null
timerdialog udg_Timer_BOSS= null

        //小游戏场地
rect gg_rct_Game1= null
rect gg_rct_Game2= null
unit gg_unit_n01Q_0273= null

        //声音
sound gg_snd_cangling_5= null
sound gg_snd_f_baoshi= null
sound gg_snd_hanshang_5= null
sound gg_snd_hecheng_shenqi= null
sound gg_snd_heiyan_5= null
sound gg_snd_huanyi_5= null
sound gg_snd_mengji_4= null
sound gg_snd_mengji_5= null
sound gg_snd_seyu_5= null
sound gg_snd_seyu_4= null
sound gg_snd_sichen_4= null
sound gg_snd_v_leitai= null
sound gg_snd_v_mijing= null
sound gg_snd_xinglong_4= null
sound gg_snd_xiaoting2= null
sound gg_snd_xiaoting1= null
sound gg_snd_kill_boss= null
sound gg_snd_GoodJob= null
sound gg_snd_Baodiao= null
sound gg_snd_Clock= null

timer array udg_Double_M
timerdialog udg_Double_Me= null

        //传承区域
rect gg_rct_Chuangcheng= null

        //战斗力
integer array udg_Zhandouli

        //光环
unit gg_unit_n01S_0258= null
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
unit xiaoting= null
unit lichi= null
         
boolean array BJuexing1
boolean array BJuexing2
boolean array BJuexing3
        //是否变色
timer array TBianse

        //是否正在禁用天赋
boolean BTianfu= false

boolean array BYeguaiFirst

        //是否显示伤害
boolean array BHideDamage

        //是否可以跳关
        //boolean BSkipKuilei = false

        //英雄死了
boolean array BHeroDeath

        //轮流玩家指针
integer INextPlayerID= 0
        
        //京剧
boolean JJ1= false
boolean JJ2= false
boolean JJ3= false
boolean JJ4= false

item array IBibo

        //仓库改称号
boolean array BBoxName

boolean BBuqian1= false
boolean BBuqian2= false
boolean BBuqian3= false

        //英雄是否3秒复活
boolean array B3SecondRevive
//endglobals from LHBase
//globals from Attr:
constant boolean LIBRARY_Attr=true
integer array IStr
integer array IAgi
integer array IInt
//endglobals from Attr
//globals from ChallangerDZ:
constant boolean LIBRARY_ChallangerDZ=true
constant integer COUNT_CHALLANGER= 7

string array easyCString
string array middleCString
string array hardCString

		//挑战难度
integer CDiff= 0
		//挑战类型
integer CType= 0

		//判断是否读取成功
boolean array Bdudang

string array Greward2
//endglobals from ChallangerDZ
//globals from Structs:
constant boolean LIBRARY_Structs=true
//endglobals from Structs
//globals from Achievement:
constant boolean LIBRARY_Achievement=true
integer array achiPage
integer array achieve
integer array achieve2
integer array achieve3
integer array achieve4
effect array achiEff
		
		
integer array spin
integer array spin2
string array heroCountString

		//倾雪寒晶
integer array Greward

//endglobals from Achievement
//globals from Jizi:
constant boolean LIBRARY_Jizi=true
string array SJizi
//endglobals from Jizi
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
constant integer si__TextTagBind=1
integer si__TextTagBind_F=0
integer si__TextTagBind_I=0
integer array si__TextTagBind_V
unit array s__TextTagBind_caster
texttag array s__TextTagBind_tt
real array s__TextTagBind_xOff
real array s__TextTagBind_yOff
real array s__TextTagBind_size
string array s__TextTagBind_content
timer array s__TextTagBind_t
constant integer si__Buff=2
integer si__Buff_F=0
integer si__Buff_I=0
integer array si__Buff_V
player array s__Buff_p
integer array s__Buff_ab
timer array s__Buff_t
trigger st__TextTagBind__staticgetindex
trigger st__TextTagBind_onDestroy
trigger st__Buff__staticgetindex
trigger st__Buff_onDestroy
trigger array st___prototype227
handle f__arg_handle1
player f__arg_player1
integer f__arg_this
integer f__result_integer

endglobals


//Generated method caller for TextTagBind._staticgetindex
function sc__TextTagBind__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__TextTagBind__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for TextTagBind.onDestroy
function sc__TextTagBind_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__TextTagBind_onDestroy)
endfunction

//Generated allocator of TextTagBind
function s__TextTagBind__allocate takes nothing returns integer
 local integer this=si__TextTagBind_F
    if (this!=0) then
        set si__TextTagBind_F=si__TextTagBind_V[this]
    else
        set si__TextTagBind_I=si__TextTagBind_I+1
        set this=si__TextTagBind_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__TextTagBind_V[this]=-1
 return this
endfunction

//Generated destructor of TextTagBind
function sc__TextTagBind_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TextTagBind_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__TextTagBind_onDestroy)
    set si__TextTagBind_V[this]=si__TextTagBind_F
    set si__TextTagBind_F=this
endfunction

//Generated method caller for Buff._staticgetindex
function sc__Buff__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__Buff__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for Buff.onDestroy
function sc__Buff_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Buff_onDestroy)
endfunction

//Generated allocator of Buff
function s__Buff__allocate takes nothing returns integer
 local integer this=si__Buff_F
    if (this!=0) then
        set si__Buff_F=si__Buff_V[this]
    else
        set si__Buff_I=si__Buff_I+1
        set this=si__Buff_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Buff_V[this]=-1
 return this
endfunction

//Generated destructor of Buff
function sc__Buff_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Buff_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Buff_onDestroy)
    set si__Buff_V[this]=si__Buff_F
    set si__Buff_F=this
endfunction
function sc___prototype227_execute takes integer i,player a1 returns nothing
    set f__arg_player1=a1

    call TriggerExecute(st___prototype227[i])
endfunction
function sc___prototype227_evaluate takes integer i,player a1 returns nothing
    set f__arg_player1=a1

    call TriggerEvaluate(st___prototype227[i])

endfunction

//library DzAPI:

    function DzAPI_Map_SaveServerValue takes player whichPlayer,string key,string value returns boolean
        return false
    endfunction
    function DzAPI_Map_GetServerValue takes player whichPlayer,string key returns string
        return null
    endfunction
    function DzAPI_Map_Ladder_SetStat takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_IsRPGLadder takes nothing returns boolean
        return false
    endfunction
    function DzAPI_Map_GetGameStartTime takes nothing returns integer
        return 0
    endfunction
    function DzAPI_Map_Stat_SetStat takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetMatchType takes nothing returns integer
        return 0
    endfunction
    function DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
        return false
    endfunction
    function DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
        return false
    endfunction
    function DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_GetGuildName takes player whichPlayer returns string
        return ""
    endfunction
    function DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_IsRPGLobby takes nothing returns boolean
        return false
    endfunction
    function DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
        return 0
    endfunction
    function DzAPI_Map_MissionComplete takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetActivityData takes nothing returns string
        return null
    endfunction
    function DzAPI_Map_GetMapConfig takes string key returns string
        return null
    endfunction

	

 function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
        return false
    endfunction
  function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
        call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r存了整数:" + I2S(value))
    endfunction
    function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
        return 0
    endfunction
    function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
    endfunction
    function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
        return 0.
    endfunction
    function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
    endfunction
    function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
        return false
    endfunction
    function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
        call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r存了字符串:" + value)
    endfunction
    function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
        return null
    endfunction
 function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
        return 0
    endfunction
 function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
        return 0
    endfunction
    function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
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
		return "3.390"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Get11 takes nothing returns boolean
		return false
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
	
 function IsUnitIsSpin takes unit u returns boolean
		return GetUnitTypeId(u) == 'E00F' or GetUnitTypeId(u) == 'E00E' or GetUnitTypeId(u) == 'U001' or GetUnitTypeId(u) == 'H01V' or GetUnitTypeId(u) == 'H01W' or GetUnitTypeId(u) == 'E00G' or GetUnitTypeId(u) == 'O002' or GetUnitTypeId(u) == 'H01X' or GetUnitTypeId(u) == 'U002' or GetUnitTypeId(u) == 'O004' or GetUnitTypeId(u) == 'N01W' or GetUnitTypeId(u) == 'H026' or GetUnitTypeId(u) == 'H02C' or GetUnitTypeId(u) == 'N023' or GetUnitTypeId(u) == 'U003' or GetUnitTypeId(u) == 'H02E'
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetHeroIndex takes integer heroType returns integer
		if ( heroType == 'Ocbh' or heroType == 'O002' ) then
			return 1
		elseif ( heroType == 'Eevi' or heroType == 'E00F' ) then
			return 2
		elseif ( heroType == 'Hvwd' or heroType == 'H01X' ) then
			return 3
		elseif ( heroType == 'Uktl' or heroType == 'U002' ) then
			return 4
		elseif ( heroType == 'Nbbc' or heroType == 'N01W' ) then
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
		elseif ( heroType == 'Othr' or heroType == 'O004' ) then
			return 12
		elseif ( heroType == 'Udea' or heroType == 'U003' ) then
			return 13
		elseif ( heroType == 'Hkal' ) then
			return 14
		elseif ( heroType == 'Hant' or heroType == 'H026' ) then
			return 15
		elseif ( heroType == 'Nsjs' or heroType == 'N023' ) then
			return 16
		elseif ( heroType == 'Hhkl' or heroType == 'H02C' ) then
			return 17
		elseif ( heroType == 'Hapm' or heroType == 'H01I' ) then
			return 18
		elseif ( heroType == 'H01Y' ) then
			return 19
		elseif ( heroType == 'H027' or heroType == 'H02E' ) then
			return 20
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
			elseif ( i == 16 ) then
				set result="苍凌"
			elseif ( i == 17 ) then
				set result="司宸"
			elseif ( i == 18 ) then
				set result="星胧"
			elseif ( i == 19 ) then
				set result="霄霆"
			elseif ( i == 20 ) then
				set result="离魑"
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
		elseif ( id == 19 ) then
			return 'A0LJ'
		elseif ( id == 20 ) then
			return 'A0MH'
		endif
		return 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetHeroDifficulty takes unit u returns string
  local integer id= GetHeroIndex(GetUnitTypeId(u))
		if ( id == 1 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif ( id == 2 ) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif ( id == 3 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif ( id == 4 ) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif ( id == 5 ) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif ( id == 6 ) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif ( id == 7 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif ( id == 8 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif ( id == 9 ) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif ( id == 10 ) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif ( id == 11 ) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif ( id == 12 ) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif ( id == 13 ) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif ( id == 13 ) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif ( id == 14 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif ( id == 15 ) then
			return "|cffff0000操作难度：★★★★★(极度不推荐新手使用)|r"
		elseif ( id == 16 ) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif ( id == 17 ) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif ( id == 18 ) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif ( id == 19 ) then
			return "|cffff0000操作难度：★★★★★(极度不推荐新手使用)|r"
		elseif ( id == 20 ) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		endif
		return ""
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
		elseif ( i == 16 ) then
			set result="|cff80ff80苍凌|r"
		elseif ( i == 17 ) then
			set result="|cff993366司宸|r"
		elseif ( i == 18 ) then
			set result="|cff99cc00星胧|r"
		elseif ( i == 19 ) then
			set result="|cff00ff00霄霆|r"
		elseif ( i == 20 ) then
			set result="|cff3366ff离魑|r"
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47 or achieveID == 48 or achieveID == 49 or achieveID == 410 or achieveID == 411 or achieveID == 412 or achieveID == 413 or achieveID == 414 or achieveID == 415 or achieveID == 416
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
		elseif ( achieveID == 227 ) then
			return "|cff99cc00【逐天魔】"
		elseif ( achieveID == 228 ) then
			return "|cffffff00【驱天魔】"
		elseif ( achieveID == 229 ) then
			return "|cffff0000【伏天魔】"
		elseif ( achieveID == 230 ) then
			return GetColorString("【赦天魔】")
		elseif ( achieveID == 231 ) then
			return ( "|cffff0000【无心冢】" )
		elseif ( achieveID == 32 ) then
			return "|cff99cc00【触天式】"
		elseif ( achieveID == 33 ) then
			return "|cffffff00【伐天式】"
		elseif ( achieveID == 34 ) then
			return "|cffff0000【噬天式】"
		elseif ( achieveID == 35 ) then
			return GetColorString("【诛天式】")
		elseif ( achieveID == 36 ) then
			return "|cff99cc00【缘灭罐】"
		elseif ( achieveID == 37 ) then
			return "|cffffff00【彼岸花】"
		elseif ( achieveID == 38 ) then
			return "|cffff0000【仙瀑光】"
		elseif ( achieveID == 39 ) then
			return "|cffff0000【烛龙谱】"
		elseif ( achieveID == 310 ) then
			return GetColorString("【零失误】")
		elseif ( achieveID == 311 ) then
			return "|cff99cc00【破虚者】"
		elseif ( achieveID == 312 ) then
			return "|cffffff00【裂虚者】"
		elseif ( achieveID == 313 ) then
			return "|cffff0000【断虚者】"
		elseif ( achieveID == 314 ) then
			return GetColorString("【弑虚帝】")
		elseif ( achieveID == 315 ) then
			return "|cff99cc00【定无双】"
		elseif ( achieveID == 316 ) then
			return "|cffffff00【战无双】"
		elseif ( achieveID == 317 ) then
			return "|cffff0000【凛无双】"
		elseif ( achieveID == 318 ) then
			return GetColorString("【魄无双】")
		elseif ( achieveID == 326 ) then
			return GetColorString("【封神门】")
		elseif ( achieveID == 320 ) then
			return GetColorString("【圣洁玉】")
		elseif ( achieveID == 321 ) then
			return GetColorString("【孤心戒】")
		elseif ( achieveID == 322 ) then
			return GetColorString("【御天启】")
		elseif ( achieveID == 323 ) then
			return GetColorString("【九轮圣】")
		elseif ( achieveID == 324 ) then
			return GetColorString("【帝曜芒】")
		elseif ( achieveID == 327 ) then
			return GetColorString("【浩劫赋】")
		elseif ( achieveID == 328 ) then
			return "|cff99cc00【凶兽使】"
		elseif ( achieveID == 329 ) then
			return "|cffffff00【千里眼】"
		elseif ( achieveID == 330 ) then
			return "|cffff0000【执江山】"
		elseif ( achieveID == 331 ) then
			return GetColorString("【啻主宰】")
		elseif ( achieveID == 42 ) then
			return GetColorString("【傲临天魇】")
		elseif ( achieveID == 43 ) then
			return "|cffffff00【迷踪步】"
		elseif ( achieveID == 44 ) then
			return GetColorString("【影无缈】")
		elseif ( achieveID == 45 ) then
			return GetColorString("【破枷皇】")
		elseif ( achieveID == 46 ) then
			return GetColorString("【真言殿】")
		elseif ( achieveID == 47 ) then
			return GetColorString("【不败神话】")
		elseif ( achieveID == 48 ) then
			return GetColorString("【无上六界王】")
		elseif ( achieveID == 49 ) then
			return GetColorString("【荒神炼】")
		elseif ( achieveID == 410 ) then
			return GetColorString("【驻永恒】")
		elseif ( achieveID == 411 ) then
			return GetColorString("【创世篇】")
		elseif ( achieveID == 412 ) then
			return GetColorString("【若凰生】")
		elseif ( achieveID == 413 ) then
			return GetColorString("【淼无极】")
		elseif ( achieveID == 414 ) then
			return GetColorString("【金瓯体】")
		elseif ( achieveID == 415 ) then
			return GetColorString("【控神识】")
		elseif ( achieveID == 416 ) then
			return GetColorString("【契歃约】")
		elseif ( achieveID == 417 ) then
			return GetColorString("【宵无霁】")
		//完了再加到Achievement.j上的全成就.
		endif
		return ""
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetAchievementWhiteName takes integer achieveID returns string
		if ( achieveID == 325 ) then
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
		elseif ( achieveID == 227 ) then
			return "逐天魔"
		elseif ( achieveID == 228 ) then
			return "驱天魔"
		elseif ( achieveID == 229 ) then
			return "伏天魔"
		elseif ( achieveID == 230 ) then
			return "赦天魔"
		elseif ( achieveID == 231 ) then
			return "无心冢"
		elseif ( achieveID == 32 ) then
			return "触天式"
		elseif ( achieveID == 33 ) then
			return "伐天式"
		elseif ( achieveID == 34 ) then
			return "噬天式"
		elseif ( achieveID == 35 ) then
			return "诛天式"
		elseif ( achieveID == 36 ) then
			return "缘灭罐"
		elseif ( achieveID == 37 ) then
			return "彼岸花"
		elseif ( achieveID == 38 ) then
			return "仙瀑光"
		elseif ( achieveID == 39 ) then
			return "烛龙谱"
		elseif ( achieveID == 310 ) then
			return "零失误"
		elseif ( achieveID == 311 ) then
			return "破虚者"
		elseif ( achieveID == 312 ) then
			return "断虚者"
		elseif ( achieveID == 313 ) then
			return "裂虚者"
		elseif ( achieveID == 314 ) then
			return "弑虚帝"
		elseif ( achieveID == 315 ) then
			return "定无双"
		elseif ( achieveID == 316 ) then
			return "战无双"
		elseif ( achieveID == 317 ) then
			return "凛无双"
		elseif ( achieveID == 318 ) then
			return "魄无双"
		elseif ( achieveID == 326 ) then
			return "封神门"
		elseif ( achieveID == 320 ) then
			return "圣洁玉"
		elseif ( achieveID == 321 ) then
			return "孤心戒"
		elseif ( achieveID == 322 ) then
			return "御天启"
		elseif ( achieveID == 323 ) then
			return "九轮圣"
		elseif ( achieveID == 324 ) then
			return "帝曜芒"
		elseif ( achieveID == 327 ) then
			return "浩劫赋"
		elseif ( achieveID == 328 ) then
			return "凶兽使"
		elseif ( achieveID == 329 ) then
			return "千里眼"
		elseif ( achieveID == 330 ) then
			return "执江山"
		elseif ( achieveID == 331 ) then
			return "啻主宰"
		elseif ( achieveID == 42 ) then
			return "傲临天魇"
		elseif ( achieveID == 43 ) then
			return "迷踪步"
		elseif ( achieveID == 44 ) then
			return "影无缈"
		elseif ( achieveID == 45 ) then
			return "破枷皇"
		elseif ( achieveID == 46 ) then
			return "真言殿"
		elseif ( achieveID == 47 ) then
			return "不败神话"
		elseif ( achieveID == 48 ) then
			return "无上六界王"
		elseif ( achieveID == 49 ) then
			return "荒神炼"
		elseif ( achieveID == 410 ) then
			return "驻永恒"
		elseif ( achieveID == 411 ) then
			return "创世篇"
		elseif ( achieveID == 412 ) then
			return "若凰生"
		elseif ( achieveID == 413 ) then
			return "淼无极"
		elseif ( achieveID == 414 ) then
			return "金瓯体"
		elseif ( achieveID == 415 ) then
			return "控神识"
		elseif ( achieveID == 416 ) then
			return "契歃约"
		elseif ( achieveID == 417 ) then
			return "宵无霁"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAchievementCondition takes integer achieveID returns string
		if ( achieveID == 325 ) then
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
			return "在经典模式中135分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 224 ) then
			return "在经典模式中120分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 225 ) then
			return "在经典模式中90分钟内击败冥刹.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 226 ) then
			return "在经典模式中60分钟内击败冥刹.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 227 ) then
			return "在单场游戏中杀敌数达到1.5万。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 228 ) then
			return "在单场游戏中杀敌数达到4万。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 229 ) then
			return "在单场游戏中杀敌数达到8万。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 230 ) then
			return "在单场游戏中杀敌数达到15万。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 231 ) then
			return "单局游戏死亡次数达到100次。（凯撒触发天赋技能也算死亡）\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 32 ) then
			return "在单场游戏中造成的总伤害达500亿。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 33 ) then
			return "在单场游戏中造成的总伤害达4000亿。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 34 ) then
			return "在单场游戏中造成的总伤害达30000亿。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 35 ) then
			return "在单场游戏中造成的总伤害达600000亿。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 36 ) then
			return "通过秘境挑战13层。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 37 ) then
			return "通过秘境挑战15层。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 38 ) then
			return "通过秘境挑战17层。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 39 ) then
			return "通过秘境挑战20层。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 310 ) then
			return "击败冥刹时所有玩家均0死亡。（凯撒触发天赋技能也算死亡）\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 311 ) then
			return "击败任意难度巨能融合石6次。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 312 ) then
			return "击败任意难度巨能融合石20次。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 313 ) then
			return "击败轮回难度巨能融合石12次。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 314 ) then
			return "击败轮回难度巨能融合石40次。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 315 ) then
			return "总属性之和达到300W.（成就获取在1分钟内，请耐心等待）\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 316 ) then
			return "总属性之和达到800W.（成就获取在1分钟内，请耐心等待）\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 317 ) then
			return "总属性之和达到2000W.（成就获取在1分钟内，请耐心等待）\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 318 ) then
			return "总属性之和达到5000W.（成就获取在1分钟内，请耐心等待）\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 326 ) then
			return "在8分钟内将复活点处的门毁坏。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 320 ) then
			return "到通关为止基地未受到任何伤害。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 321 ) then
			return "鬼MAX戒指或者超鬼戒指吸收灵魂层数达到120.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 322 ) then
			return "使用至少12个英雄击败擂台十英雄-辕煞.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 323 ) then
			return "自己与所有队友从头到尾不打任何宝石,不打任何秘境,不打任何擂台,不合成任何翅膀通关游戏.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 324 ) then
			return "与低于(或等于)5级的玩家进行游戏通关满100人.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 327 ) then
			return "自己与所有队友不学2级技能，10级技能，20级技能，40级技能，100级技能通关游戏。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 328 ) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于50级的怪物。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 329 ) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于70级的怪物。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 330 ) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于100级的怪物。\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 331 ) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于150级的怪物。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 43 ) then
			return "在迷你挑战1-骷髅海中里面的时间成功超过35秒.\n			\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 44 ) then
			return "在迷你挑战1-骷髅海中里面的时间成功超过80秒.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 45 ) then
			return "4人及以上游戏时,在击败人王傀儡与妖王傀儡时从未触发过BOSS生命联结技能.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 46 ) then
			return "单次技能伤害达到300亿.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 49 ) then
			return "从头到尾全地图同时存在的进攻怪从未超过20个.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 410 ) then
			return "完成任意难度的挑战模式中的\"驻永恒挑战\"\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 411 ) then
			return "完成任意难度的挑战模式中的\"创世篇挑战\"\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 412 ) then
			return "输入-hs1进行生命检测，此时你的英雄生命达到1%以下却未死。\n			(检测时英雄不能带有瘟疫或者中毒的BUFF)\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 413 ) then
			return "输入-hs2进行生命检测，使用非霸绝英雄进行游戏，生命值达到5亿或以上。\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 414 ) then
			return "输入-hs3进行防御检测，防御达到100W或以上。\n			（注意检测结果将不包含于装备中的防御定值光环与装备中的短暂BUFF效果）\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 415 ) then
			return "在一局游戏中成功答对40次仙帝傀儡——樱乐的问题.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 416 ) then
			return "在一局游戏中所有队友从未说过一句话通关游戏.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 417 ) then
			return "成功击杀秘境BOSS(21-25层)——夜袭使者。\n\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
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
		elseif ( page == 10 ) then
			return I3(index == 1 , 49 , index + 408)
		endif
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageName takes integer i,integer page returns string

		if ( page == 1 ) then
			if ( i == 2 ) then
				return "|cffff66cc赤血白燕|r"
			elseif ( i == 3 ) then
				return "|cff99ccff月轮绯狱|r"
			elseif ( i == 4 ) then
				return "|cFFFF0000殛霆无迹|r"
			elseif ( i == 5 ) then
				return "|cFF33FF33末日权杖|r"
			elseif ( i == 7 ) then
				return "|cFFFF3333霜夜之哀|r"
			elseif ( i == 6 ) then
				return "|cFFCCFF66三弦星谧|r"
			elseif ( i == 8 ) then
				return "|cFF3333FF獠牙之匕|r"
			elseif ( i == 10 ) then
				return "|cFFFF3333双流贯恒|r"
			elseif ( i == 9 ) then
				return "|cFF339933沐雪无瑕|r"
			endif
		elseif ( page == 2 ) then
			if ( i == 2 ) then
				return "|cFF6699FF熔日煌世|r"
			elseif ( i == 1 ) then
				return "|cFFFF00CC星界麒麟|r"
			elseif ( i == 3 ) then
				return "|cFFFF0000凝冰红灯|r"
			elseif ( i == 4 ) then
				return "|cffff0000凰迹天知|r"
			elseif ( i == 5 ) then
				return "|cFF6699FF封霜玄锋|r"
			elseif ( i == 6 ) then
				return "|cffff6800天罚四界|r"
			elseif ( i == 7 ) then
				return "|cff33cccc白莲圣日·黑羽魔月|r"
			elseif ( i == 8 ) then
				return "|cff993366翎翼浮灵|r"
			elseif ( i == 9 ) then
				return "|cff0000ff七阴之恸|r"
			endif
		elseif ( page == 3 ) then
			if ( i == 1 ) then
				return "|cffff6800谜幻逸空|r"
			endif
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageName takes integer i returns string
		if ( i == 1 ) then
			return "全成就达成"
		elseif ( i == 2 ) then
			return "通关|cff993366天魇|r"
		elseif ( i == 3 ) then
			return "连续登录20天"
		elseif ( i == 4 ) then
			return "所有英雄99次使用"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageContent takes integer i,integer page returns string
		if ( page == 1 ) then
			if ( i == 1 ) then
				return "使用瑟雨在1秒内将能量从0%直接增加至105%(或以上).\n\n				完成该项挑战后你将获得瑟雨的皮肤\"|cffff66cc赤血白燕|r\"(拥有少量的属性加成)!"
			elseif ( i == 2 ) then
				return "使用晓月在一局游戏内成功在黯黑杀阵内成功复活满150人.\n\n				完成该项挑战后你将获得晓月的皮肤\"|cff99ccff月轮绯狱|r\"(拥有少量的属性加成)!"
			elseif ( i == 3 ) then
				return "使用湮灭在一局游戏内成功完成125次转生.\n\n				完成该项挑战后你将获得湮灭的皮肤\"|cFFFF0000殛霆无迹|r\"(拥有少量的属性加成)!"
			elseif ( i == 4 ) then
				return "使用玄雪在一局游戏内成功单通战争难度(或以上).\n\n				完成该项挑战后你将获得玄雪的模型法杖\"|cFF33FF33末日权杖|r\"(拥有少量的属性加成)!"
			elseif ( i == 5 ) then
				return "使用辰寂在一局游戏中成功使用满7次90剑灵技能-引渡.\n\n				完成该项挑战后你将获得辰寂的模型特效\"|cFFFF3333霜夜之哀|r\"(拥有少量的属性加成)!"
			elseif ( i == 6 ) then
				return "使用泰雅在一局游戏中成功使用月神之箭技能触发\"秒\"效果杀死至少2500个单位.\n\n				完成该项挑战后你将获得泰雅的皮肤\"|cFFCCFF66三弦星谧|r\"(拥有少量的属性加成)!"
			elseif ( i == 7 ) then
				return "使用寒殇在一局游戏内成功使用无穷吞噬技能获得超过500万的总和属性.\n\n				完成该项挑战后你将获得寒殇的模型武器\"|cFF3333FF獠牙之匕|r\"(拥有少量的属性加成)!"
			elseif ( i == 8 ) then
				return "输入-chenji可以进行检测，若此时英雄的生命低于1%，则完成该挑战。\n\n				完成该项挑战后你将获得辰寂的皮肤\"|cFFFF3333双流贯恒|r\"(拥有少量的属性加成)!"
			elseif ( i == 9 ) then
				return "在每天的连续签到中达到14天。\n\n				完成该项挑战后你将获得凌雪的皮肤\"|cFF339933沐雪无瑕|r\"(拥有少量的属性加成)!"
			endif
		elseif ( page == 2 ) then
			if ( i == 1 ) then
				return "使用凯撒在一局游戏中只靠|cffff6800忠诚之躯|r技能杀死攻击基地的敌人2500个.\n\n				完成该项挑战后你将获得凯撒的皮肤\"|cFF6699FF熔日煌世|r\"(拥有少量的属性加成)!"
			elseif ( i == 2 ) then
				return "使用莫琪在使用|cffffcc00裁决|r技能时的施法角度在89.9-90.1度之内.\n						(换句话说即为完全垂直向上射)\n				完成该项挑战后你将获得莫琪的皮肤\"|cFFFF00CC星界麒麟|r\"(拥有少量的属性加成)!"
			elseif ( i == 3 ) then
				return "使用玄雪在一局游戏内成功侵入134种不同的生物.(注意,如果你需要进行该挑战,请在第一波前输入-xx以开启该英雄挑战)\n\n				完成该项挑战后你将获得玄雪的皮肤\"|cFFFF0000凝冰红灯|r\"(拥有少量的属性加成)!"
			elseif ( i == 4 ) then
				return "使用霸绝在使用|cFFFF0099剑法IV式 - 永恒|r技能结束后的落点距离英雄在施放该技能的位置有8000码远.(注意,如果你需要进行该挑战,请在第一波前输入-bj以开启该英雄挑战,注意要使用主英雄施放,其他分身施放无效)\n\n				完成该项挑战后你将获得霸绝的皮肤\"|cFF6699FF封霜玄锋|r\"(拥有少量的属性加成)!"
			elseif ( i == 5 ) then
				return "使用摄焱在一局游戏中杀敌数满125000.\n\n				完成该项挑战后你将获得摄焱的皮肤\"|cffff0000凰迹天知|r\"(拥有少量的属性加成)!"
			elseif ( i == 6 ) then
				return "\n				使用幻逸输入-hy后进入挑战:将会随机出现一个技能名字,切换到对应名字的技能即可,然后继续随机出现下一个技能名字,30秒内成功切换25次即为挑战成功.\n\n				完成该项挑战后你将获得幻逸的皮肤\"|cffff6800天罚四界|r\"(拥有少量的属性加成)!"
			elseif ( i == 7 ) then
				return "\n				目前该皮肤可以通过每周六YY90163抽奖活动抽取.\n\n				完成该项挑战后你将获得司宸的皮肤\"|cff33cccc白莲圣日·黑羽魔月|r\"(拥有少量的属性加成)!"
			elseif ( i == 8 ) then
				return "\n				使用苍凌在一局游戏中不灭真炎时间叠加到750秒.\n\n				完成该项挑战后你将获得苍凌的皮肤\"|cff993366翎翼浮灵|r\"(拥有少量的属性加成)!"
			elseif ( i == 9 ) then
				return "\n				使用黑阎在一局使用泣罗刹祭品替死达到300次,且自身不能死亡一次.\n\n				完成该项挑战后你将获得黑阎的皮肤\"|cff0000ff七阴之恸|r\"(拥有少量的属性加成)!"
			endif
		elseif ( page == 3 ) then
			if ( i == 1 ) then
				return "\n				使用离魑在一局触发影爆次数达到100次.\n\n				完成该项挑战后你将获得离魑的皮肤\"|cffff6800谜幻逸空|r\"(拥有少量的属性加成)!"
			endif
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageContent takes integer i returns string
		if ( i == 1 ) then
			return "解锁截止上个版本以来的所有成就.(输入-cj可以查看所有成就情况)\n\n			完成该项挑战后你将可以使用-qm指令自定义你的成就名!"
		elseif ( i == 2 ) then
			return "通关隐藏难度|cff993366天魇|r(通关|cff008000万劫|r难度解锁)\n\n			完成该项挑战后你的名字将在以后始终置顶于|cff008000\"封帝万劫录\"|r中!\n			并获得四字成就名" + GetAchievementName(42) + "。"
		elseif ( i == 3 ) then
			return "在嘉年华活动版本中连续签到达20天.\n\n			完成该项挑战后可以在每次开局选英雄后接受来自六界的欢迎。\n			并获得四字成就名" + GetAchievementName(47) + "。"
		elseif ( i == 4 ) then
			return "全英雄99次达成!\n\n			完成该项挑战后每局游戏中在基地出现罩子时有着不一样的文字提醒哦!\n			并获得五字成就名" + GetAchievementName(48) + "。"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetWanjieluName takes nothing returns string
		set Constant___WPointer=Constant___WPointer - 1
		if ( Constant___WPointer <= 0 ) then
			set Constant___WPointer=COUNT_WANJIE
		endif
		if ( Constant___WPointer == 1 ) then
			return "你把我灌醉。"
		elseif ( Constant___WPointer == 2 ) then
			return "辉煌丶神偷"
		elseif ( Constant___WPointer == 3 ) then
			return "丶7℃ャ跃娃"
		elseif ( Constant___WPointer == 4 ) then
			return "深邃的孤独丶"
		elseif ( Constant___WPointer == 5 ) then
			return "雷瑟守备最强王者"
		elseif ( Constant___WPointer == 6 ) then
			return "你的牛奶呢丶"
		elseif ( Constant___WPointer == 7 ) then
			return "浪逼郭小癞"
		elseif ( Constant___WPointer == 8 ) then
			return "很烦很皮"
		elseif ( Constant___WPointer == 9 ) then
			return "sky"
		elseif ( Constant___WPointer == 10 ) then
			return "梦露丶baby"
		elseif ( Constant___WPointer == 11 ) then
			return "0万物皆空0"
		elseif ( Constant___WPointer == 12 ) then
			return "回忆专用小马甲"
		elseif ( Constant___WPointer == 13 ) then
			return "我鸡鸡贼大"
		elseif ( Constant___WPointer == 14 ) then
			return "树林里故事"
		elseif ( Constant___WPointer == 15 ) then
			return "星辰末日"
		elseif ( Constant___WPointer == 16 ) then
			return "夕子奈月"
		elseif ( Constant___WPointer == 17 ) then
			return "Rascal丶恋情"
		elseif ( Constant___WPointer == 18 ) then
			return "请带着我飞"
		elseif ( Constant___WPointer == 19 ) then
			return "阴优"
		elseif ( Constant___WPointer == 20 ) then
			return "czy888"
		elseif ( Constant___WPointer == 21 ) then
			return "Flower丶God"
		elseif ( Constant___WPointer == 22 ) then
			return "逸灬仙"
		elseif ( Constant___WPointer == 23 ) then
			return "至简i"
		elseif ( Constant___WPointer == 24 ) then
			return "躺车门始祖"
		elseif ( Constant___WPointer == 25 ) then
			return "浪逼康小帅"
		elseif ( Constant___WPointer == 26 ) then
			return "7葡萄"
		elseif ( Constant___WPointer == 27 ) then
			return "心雪"
		elseif ( Constant___WPointer == 28 ) then
			return "Dear冷月"
		elseif ( Constant___WPointer == 29 ) then
			return "墙头蹲红杏"
		elseif ( Constant___WPointer == 30 ) then
			return "one丶lifeの爱"
		elseif ( Constant___WPointer == 31 ) then
			return "牛头居然能打巨能"
		elseif ( Constant___WPointer == 32 ) then
			return "无缘之邪"
		elseif ( Constant___WPointer == 33 ) then
			return "那天1234"
		elseif ( Constant___WPointer == 34 ) then
			return "糖糖不在甜"
		elseif ( Constant___WPointer == 35 ) then
			return "稞宿"
		elseif ( Constant___WPointer == 36 ) then
			return "小米酥丶"
		elseif ( Constant___WPointer == 37 ) then
			return "月丶暗影"
		elseif ( Constant___WPointer == 38 ) then
			return "嚣张城"
		elseif ( Constant___WPointer == 39 ) then
			return "灵魂的缠绵"
		elseif ( Constant___WPointer == 40 ) then
			return "1 1"
		elseif ( Constant___WPointer == 41 ) then
			return "丶念少。"
		elseif ( Constant___WPointer == 42 ) then
			return "话唠。"
		elseif ( Constant___WPointer == 43 ) then
			return "神天羽"
		elseif ( Constant___WPointer == 44 ) then
			return "你挺得劲"
		elseif ( Constant___WPointer == 45 ) then
			return "司宸"
		elseif ( Constant___WPointer == 46 ) then
			return "与你童在"
		elseif ( Constant___WPointer == 47 ) then
			return "＿雅姬ベ"
		endif
		return ""
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function Constant___InitConstant takes nothing returns nothing
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
        set udg_I_Er_diansi[1]=20
	endfunction


//library Test ends
//library LHBase:

//---------------------------------------------------------------------------------------------------
    
    function IsStrHero takes unit u returns boolean
        return u == kaisa or u == chenji or u == bajue or u == Heiyan or u == xinglong
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function IsAgiHero takes unit u returns boolean
        return u == taiya or u == xiaoyue or u == mengji or u == moqi or u == hanshang or u == cangling or u == seyu or u == yanmie or u == sichen or u == xiaoting
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function IsIntHero takes unit u returns boolean
        return u == lingxue or u == xuanxue or u == sheyan or u == Huanyi or u == lichi
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMo takes unit u returns boolean
        return u == lichi
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
        return GetUnitTypeId(u) == 'nlv3' or GetUnitTypeId(u) == 'hwat' or GetUnitTypeId(u) == 'nbal' or GetUnitTypeId(u) == 'nvde' or GetUnitTypeId(u) == 'ehpr' or GetUnitTypeId(u) == 'nsll' or GetUnitTypeId(u) == 'nadr' or GetUnitTypeId(u) == 'nitp' or GetUnitTypeId(u) == 'nsgg' or GetUnitTypeId(u) == 'nehy' or GetUnitTypeId(u) == 'nbzd'
    endfunction
    
//---------------------------------------------------------------------------------------------------
    
    function IsAlly takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) and IsUnitAlly(u, GetOwningPlayer(caster))
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsCanCopy takes item i returns boolean
        return ( ( GetItemTypeId(i) != 'mgtk' ) and ( GetItemTypeId(i) != 'k3m1' ) and ( GetItemTypeId(i) != 'pomn' ) and ( GetItemTypeId(i) != 'wild' ) and ( GetItemTypeId(i) != 'hlst' ) and ( GetItemTypeId(i) != 'totw' ) and ( GetItemTypeId(i) != 'sror' ) and ( GetItemTypeId(i) != 'fgrg' ) and ( GetItemTypeId(i) != 'wshs' ) and ( GetItemTypeId(i) != 'IXU1' ) and ( GetItemTypeId(i) != 'I049' ) and ( GetItemTypeId(i) != 'I04A' ) and ( GetItemTypeId(i) != 'I000' ) and ( GetItemTypeId(i) != 'I001' ) and ( GetItemTypeId(i) != 'I002' ) and ( GetItemTypeId(i) != 'I01D' ) and ( GetItemTypeId(i) != 'I02W' ) and ( GetItemTypeId(i) != 'sres' ) and ( GetItemTypeId(i) != 'I06A' ) and ( GetItemTypeId(i) != 'I06B' ) and ( GetItemTypeId(i) != 'I06C' ) and ( GetItemTypeId(i) != 'I06J' ) and ( GetItemTypeId(i) != 'I062' ) and ( GetItemTypeId(i) != 'ICS1' ) and ( GetItemTypeId(i) != 'I04W' ) and ( GetItemTypeId(i) != 'I04Y' ) and ( GetItemTypeId(i) != 'I05T' ) and ( GetItemTypeId(i) != 'I05W' ) and ( GetItemTypeId(i) != 'I05V' ) and ( GetItemTypeId(i) != 'ICY1' ) and ( GetItemTypeId(i) != 'I05X' ) and ( GetItemTypeId(i) != 'IB0A' ) and ( GetItemTypeId(i) != 'I04X' ) and ( GetItemTypeId(i) != 'ICX1' ) and ( GetItemTypeId(i) != 'I05Y' ) and ( GetItemTypeId(i) != 'I05Z' ) and ( GetItemTypeId(i) != 'I060' ) and ( GetItemTypeId(i) != 'I06N' ) and ( GetItemTypeId(i) != 'I07D' ) )
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
        elseif ( UnitHasItemOfTypeBJ(u, 'I07M') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I07M')
        elseif ( UnitHasItemOfTypeBJ(u, 'I07L') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I07L')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMaxRing takes item i returns boolean
        return GetItemTypeId(i) == 'brac' or GetItemTypeId(i) == 'lhst' or GetItemTypeId(i) == 'I05W' or GetItemTypeId(i) == 'I05V' or GetItemTypeId(i) == 'I07M' or GetItemTypeId(i) == 'I07L'
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
        elseif ( UnitHasItemOfTypeBJ(u, 'I07M') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I07M')
        elseif ( UnitHasItemOfTypeBJ(u, 'I07L') ) then
            return GetItemOfTypeFromUnitBJ(u, 'I07L')
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
        elseif ( UnitHasItemOfTypeBJ(u, 'I07D') ) then
            return 21
        endif
        return 0
    endfunction
//---------------------------------------------------------------------------------------------------
    

    //判断超
    function IsZhanfaChao takes item i returns boolean
        local integer id= GetItemTypeId(i)
        return id == 'rst1' or id == 'I05U' or id == 'ICX1'
    endfunction

    function IsZhan0 takes item i returns boolean
        local integer id= GetItemTypeId(i)

        return IsZhanfaChao(i) or id == 'rde2' or id == 'vamp' or id == 'skul' or id == 'tsct' or id == 'tcas' or id == 'plcl' or id == 'tgrh' or id == 'I01E'
    endfunction
    
    function IsFa0 takes item i returns boolean
        local integer id= GetItemTypeId(i)

        return IsZhanfaChao(i) or id == 'rnec' or id == 'shas' or id == 'spro' or id == 'phea' or id == 'rin1' or id == 'ward' or id == 'rde1'
    endfunction

    function IsZhanfa3 takes item i returns boolean
        local integer id= GetItemTypeId(i)

        return IsZhanfaChao(i) or id == 'spro' or id == 'tcas' or id == 'shas' or id == 'plcl' or id == 'rnec' or id == 'tgrh' or id == 'phea' or id == 'tsct'
    endfunction

    function IsZhanfahun takes item i returns boolean
        local integer id= GetItemTypeId(i)
        return IsFa0(i) or IsZhan0(i)
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function GetYeai takes nothing returns item
        if ( UnitHasItemOfTypeBJ(chenji, 'stel') ) then
            return GetItemOfTypeFromUnitBJ(chenji, 'stel')
        elseif ( UnitHasItemOfTypeBJ(chenji, 'I04M') ) then
            return GetItemOfTypeFromUnitBJ(chenji, 'I04M')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMinganItem takes item i returns boolean
        return i == GetYeai() or GetItemTypeId(i) == 'I079'
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsDeng takes item i returns boolean
        local integer t= GetItemTypeId(i)
        return ( t == 'ILI1' ) or ( t == 'ILI2' ) or ( t == 'ILI3' ) or ( t == 'ILI4' ) or ( t == 'ILI5' ) or ( t == 'ILI6' ) or ( t == 'ILI7' ) or ( t == 'ILI8' ) or ( t == 'ILI9' ) or ( t == 'ILIA' ) or ( t == 'ILIB' ) or ( t == 'ILIC' ) or ( t == 'ILID' ) or ( t == 'ILIE' ) or ( t == 'ILIF' ) or ( t == 'ILIG' ) or ( t == 'ILIH' ) or ( t == 'ILII' ) or ( t == 'ILIJ' ) or ( t == 'ILIK' ) or ( t == 'I07D' )
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

    
   function IsEnemyP takes unit u,player p returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsEnemyMP(u , p) and IsUnitType(u, UNIT_TYPE_RESISTANT) == false
    endfunction

   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and (IsEnemyMP((u ) , GetOwningPlayer(( caster)))) and IsUnitType(u, UNIT_TYPE_RESISTANT) == false // INLINED!!
    endfunction

//---------------------------------------------------------------------------------------------------

    
   function IsEnemy2 takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) == true and IsUnitEnemy(u, GetOwningPlayer(caster)) and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function KillAreaPlayerEnemy takes unit attacker,real x,real y,real radius,player p returns nothing
        local group l_group= CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit=FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if ( IsEnemyMP(l_unit , p) ) then
                call UnitDamageTarget(attacker, l_unit, GetUnitState(l_unit, UNIT_STATE_MAX_LIFE) * 2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group=null
        set l_unit=null
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
    
    function GetRectRandomX takes rect r returns real
        return GetRandomReal(GetRectMinX(r), GetRectMaxX(r))
    endfunction

    function GetRectRandomY takes rect r returns real
        return GetRandomReal(GetRectMinY(r), GetRectMaxY(r))
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
    
    function GetUnitDistance takes unit u1,unit u2 returns real
        return GetDistance(GetUnitX(u1) , GetUnitY(u1) , GetUnitX(u2) , GetUnitY(u2))
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
    
    function ShowGameHint takes player p,string content returns nothing
        local dialog d= DialogCreate()
        local string s= "\n            " + content
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "我知道了|cffff6800(Esc)|r", 512)
        call DialogDisplay(p, d, true)
        set d=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    
    function ChooseSpinHero takes player p,unit u returns nothing
        call ShowGameHint(p , "\n        这是英雄" + GetUnitName(u) + "的皮肤。" + S3(false , "\n        使用该英雄\"" + GetUnitName(u) + "\"完成对应英雄挑战即可获取该皮肤。\n        前往基地左边囚车商店可以查看该挑战的详细内容。" , "\n        使用魔兽争霸官方对战平台(dz.163.com)进行游戏\n        完成挑战即可获取该皮肤。"))
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function ShowGameHintAll takes string content returns nothing
        local integer i= 1
        local dialog d= DialogCreate()
        local string s= "\n            " + content
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "我知道了|cffff6800(Esc)|r", 512)
        loop
            exitwhen i > 6
            call DialogDisplay(ConvertedPlayer(i), d, true)
            set i=i + 1
        endloop
        set d=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function GetNextPlayerID takes nothing returns integer
        local integer i= 1
        loop
            exitwhen i > 6
            set INextPlayerID=I3(INextPlayerID >= 6 , 1 , INextPlayerID + 1)
            if ( ( GetPlayerSlotState(ConvertedPlayer(INextPlayerID)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(INextPlayerID)) == MAP_CONTROL_USER ) and udg_H[INextPlayerID] != null ) then
                exitwhen true
            endif
            set i=i + 1
        endloop
        return INextPlayerID
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function BuyerFilter takes unit buyer returns boolean
        return ( GetUnitTypeId(buyer) != 'N018' ) and ( GetUnitTypeId(buyer) != 'N01X' ) and ( GetUnitTypeId(buyer) != 'N01Y' )
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
    
    function UnitAddAbilityP takes unit u,integer i returns nothing
            call UnitAddAbility(u, i)
            if ( u == xinglong ) then
                call UnitMakeAbilityPermanent(u, true, i)
            endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsUnitHasSlot takes unit u returns boolean
        local integer i= 1
        loop
            exitwhen i > 6
            if ( UnitItemInSlotBJ(u, i) == null ) then
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
    
    function Jidibaozha takes string s returns nothing
        local integer i= 1
        loop
            exitwhen i > 6
            call CustomDefeatBJ(ConvertedPlayer(i), s)
            set i=i + 1
        endloop
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function LHBase___StartWanjieTimer takes nothing returns nothing
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
    function LHBase___InitLHBase takes nothing returns nothing

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

        set Uwanjie=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14394.0, - 15446.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase___StartWanjieTimer)


        set t=null
    endfunction

//library LHBase ends
//library Attr:
	
//---------------------------------------------------------------------------------------------------

	
 function GetAgiPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 6 )]
	endfunction

	
 function GetStrPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID )]
	endfunction

	
 function GetIntPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 12 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashHeroStr takes player p returns nothing
  local integer index= GetConvertedPlayerId(p)
  local integer temp= 0
		if ( ( GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(p) == MAP_CONTROL_USER ) and ( (udg_I_Xianglian[( (index) )]) != 0 or IStr[index] != 0 ) ) then // INLINED!!
			set temp=R2I(I2R(GetHeroStr(udg_H[index], true) - IStr[index]) * (udg_I_Xianglian[( (index) )])) // INLINED!!
			if ( temp != IStr[index] ) then
				call SetHeroStr(udg_H[index], GetHeroStr(udg_H[index], true) - IStr[index] + temp, true)
				set IStr[index]=temp
			endif
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function FlashAllHeroStr takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call FlashHeroStr(ConvertedPlayer(i))
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashHeroAgi takes player p returns nothing
  local integer index= GetConvertedPlayerId(p)
  local integer temp= 0
		if ( ( GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(p) == MAP_CONTROL_USER ) and ( (udg_I_Xianglian[( (index) + 6 )]) != 0 or IAgi[index] != 0 ) ) then // INLINED!!
			set temp=R2I(I2R(GetHeroAgi(udg_H[index], true) - IAgi[index]) * (udg_I_Xianglian[( (index) + 6 )])) // INLINED!!
			if ( temp != IAgi[index] ) then
				call SetHeroAgi(udg_H[index], GetHeroAgi(udg_H[index], true) - IAgi[index] + temp, true)
				set IAgi[index]=temp
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashAllHeroAgi takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call FlashHeroAgi(ConvertedPlayer(i))
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashHeroInt takes player p returns nothing
  local integer index= GetConvertedPlayerId(p)
  local integer temp= 0
		if ( ( GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(p) == MAP_CONTROL_USER ) and ( (udg_I_Xianglian[( (index) + 12 )]) != 0 or IInt[index] != 0 ) ) then // INLINED!!
			set temp=R2I(I2R(GetHeroInt(udg_H[index], true) - IInt[index]) * (udg_I_Xianglian[( (index) + 12 )])) // INLINED!!
			if ( temp != IInt[index] ) then
				call SetHeroInt(udg_H[index], GetHeroInt(udg_H[index], true) - IInt[index] + temp, true)
				set IInt[index]=temp
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashAllHeroInt takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call FlashHeroInt(ConvertedPlayer(i))
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ReduceHeroStrF takes unit hero,integer i returns nothing
  local integer delta
  local integer index
		if ( GetHeroStr(hero, true) - i >= 0 ) then
			call SetHeroStr(hero, GetHeroStr(hero, true) - i, true)
			call FlashHeroStr(GetOwningPlayer(hero))
		else
			set index=GetConvertedPlayerId(GetOwningPlayer(hero))
			set delta=R2I(I2R(i) * (udg_I_Xianglian[( (index) )])) // INLINED!!
			set IStr[index]=IStr[index] - delta
			call SetHeroStr(hero, GetHeroStr(hero, true) - i - delta, true)
			call FlashHeroStr(GetOwningPlayer(hero))
		endif
	endfunction

 function ReduceHeroAgiF takes unit hero,integer i returns nothing
  local integer delta
  local integer index
		if ( GetHeroAgi(hero, true) - i >= 0 ) then
			call SetHeroAgi(hero, GetHeroAgi(hero, true) - i, true)
			call FlashHeroAgi(GetOwningPlayer(hero))
		else
			set index=GetConvertedPlayerId(GetOwningPlayer(hero))
			set delta=R2I(I2R(i) * (udg_I_Xianglian[( (index) + 6 )])) // INLINED!!
			set IAgi[index]=IAgi[index] - delta
			call SetHeroAgi(hero, GetHeroAgi(hero, true) - i - delta, true)
			call FlashHeroAgi(GetOwningPlayer(hero))
		endif
	endfunction

 function ReduceHeroIntF takes unit hero,integer i returns nothing
  local integer delta
  local integer index
		if ( GetHeroInt(hero, true) - i >= 0 ) then
			call SetHeroInt(hero, GetHeroInt(hero, true) - i, true)
			call FlashHeroInt(GetOwningPlayer(hero))
		else
			set index=GetConvertedPlayerId(GetOwningPlayer(hero))
			set delta=R2I(I2R(i) * (udg_I_Xianglian[( (index) + 12 )])) // INLINED!!
			set IInt[index]=IInt[index] - delta
			call SetHeroInt(hero, GetHeroInt(hero, true) - i - delta, true)
			call FlashHeroInt(GetOwningPlayer(hero))
		endif
	endfunction
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
    	call FlashHeroAgi(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function AddStrPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID )]=udg_I_Xianglian[( playerID )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddStrPercentImme takes integer playerID,real value returns nothing
		call AddStrPercent(playerID , value)
    	call FlashHeroStr(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function AddIntPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID + 12 )]=udg_I_Xianglian[( playerID + 12 )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddIntPercentImme takes integer playerID,real value returns nothing
		call AddIntPercent(playerID , value)
    	call FlashHeroInt(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function AddMoneyPercent takes integer playerID,real value returns nothing
		set udg_I_Jinqianhuodelv[playerID]=udg_I_Jinqianhuodelv[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddAttackPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[playerID + 24]=udg_I_Xianglian[playerID + 24] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddDefensePercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[playerID + 30]=udg_I_Xianglian[playerID + 30] + value
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

 function AddAttack takes unit u,integer attack returns nothing
		call SetAttack(u , (LoadInteger(YDHT, GetHandleId((u)), 0x5039AFFB)) + attack) // INLINED!!
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

 function AddDefense takes unit u,integer defense returns nothing
		call SetDefense(u , (LoadInteger(YDHT, GetHandleId((u)), 0x81FD3994)) + defense) // INLINED!!
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

 function AddHP takes unit u,integer hp returns nothing
		call SetHP(u , (LoadInteger(YDHT, GetHandleId((u)), 0xFCD961C9)) + hp) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

 function Attr___InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library ChallangerDZ:
	

//---------------------------------------------------------------------------------------------------
	 
 function GetBit takes integer num,integer bit returns integer
  local string s= I2S(num)
  local integer length= StringLength(s)
		if ( length < bit ) then
			return 0
		endif

		return S2I(SubStringBJ(s, length - bit + 1, length - bit + 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAndSaveCangku takes player p,integer i returns nothing
  local integer index= GetConvertedPlayerId(p)
  local string temp= null
		//if (GetBit(Greward[index],i) < 1 and i < 9) then
		//	set Greward[index] = Greward[index] + R2I(Pow(10,i-1))
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DzAPI_Map_StoreInteger( p,  "Greward", Greward[index] )
		//endif
		if ( StringLength(Greward2[index]) < 62 ) then
			set Greward2[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		if ( S2I(SubStringBJ(Greward2[index], i, i)) != 1 ) then
			set temp=Greward2[index]
			set Greward2[index]=SubStringBJ(temp, 1, i - 1)
			set Greward2[index]=Greward2[index] + "1"
			set Greward2[index]=Greward2[index] + SubStringBJ(temp, i + 1, StringLength(temp))
			set temp=null
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			call DzAPI_Map_StoreString(p , "Greward2" , Greward2[index])
		endif
	endfunction

 function IsHasCangku takes player p,integer i returns boolean
		return S2I(SubStringBJ(Greward2[GetConvertedPlayerId(p)], i, i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huoqucangku takes player p,string chat returns nothing
  local integer i= 1
  local integer result= 0
		loop
			exitwhen i > 10

			if ( chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)] + "ck" + I2S(i) , 1)) ) then
				call GetAndSaveCangku(p , i)
				exitwhen true
			endif

			set i=i + 1
		endloop
		set BBuqian2=false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerDZ___C3 takes integer i1,integer i2,integer i3 returns integer
		if ( CDiff == 1 ) then
			return i1
		elseif ( CDiff == 2 ) then
			return i2
		elseif ( CDiff == 3 ) then
			return i3
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT1 takes nothing returns boolean
		return CType == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT2 takes nothing returns boolean
		return CType == 2
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT3 takes nothing returns boolean
		return CType == 3
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT4 takes nothing returns boolean
		return CType == 4
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT5 takes nothing returns boolean
		return CType == 5
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT6 takes nothing returns boolean
		return CType == 6
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CT7 takes nothing returns boolean
		return CType == 7
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetEasyComplete takes player p returns integer
  local integer index= GetConvertedPlayerId(p)
  local integer i= 1
  local integer result= 0
		if ( StringLength(easyCString[index]) < 62 ) then
			set easyCString[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if ( S2I(SubStringBJ(easyCString[index], i, i)) > 0 ) then
				set result=result + 1
			endif
			set i=i + 1
		endloop
		return result
	endfunction

 function GetMiddleComplete takes player p returns integer
  local integer index= GetConvertedPlayerId(p)
  local integer i= 1
  local integer result= 0
		if ( StringLength(middleCString[index]) < 62 ) then
			set middleCString[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if ( S2I(SubStringBJ(middleCString[index], i, i)) > 0 ) then
				set result=result + 1
			endif
			set i=i + 1
		endloop
		return result
	endfunction

 function GetHardComplete takes player p returns integer
  local integer index= GetConvertedPlayerId(p)
  local integer i= 1
  local integer result= 0
		if ( StringLength(hardCString[index]) < 62 ) then
			set hardCString[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if ( S2I(SubStringBJ(hardCString[index], i, i)) > 0 ) then
				set result=result + 1
			endif
			set i=i + 1
		endloop
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetAllComplete takes player p returns integer
		return GetHardComplete(p) + GetEasyComplete(p) + GetMiddleComplete(p)
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function GetCompleteRate takes player p returns real
		return I2R(GetAllComplete(p)) / ( 3.0 * I2R(COUNT_CHALLANGER) )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChallangerData takes player p returns nothing
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerSuccess takes player p returns nothing
  local string temp= ""
  local integer index= GetConvertedPlayerId(p)
		if ( CDiff == 1 ) then
			set temp=easyCString[index]
			set easyCString[index]=SubStringBJ(temp, 1, CType - 1)
			set easyCString[index]=easyCString[index] + "1"
			set easyCString[index]=easyCString[index] + SubStringBJ(temp, CType + 1, StringLength(temp))
		elseif ( CDiff == 2 ) then
			set temp=middleCString[index]
			set middleCString[index]=SubStringBJ(temp, 1, CType - 1)
			set middleCString[index]=middleCString[index] + "1"
			set middleCString[index]=middleCString[index] + SubStringBJ(temp, CType + 1, StringLength(temp))
		elseif ( CDiff == 3 ) then
			set temp=hardCString[index]
			set hardCString[index]=SubStringBJ(temp, 1, CType - 1)
			set hardCString[index]=hardCString[index] + "1"
			set hardCString[index]=hardCString[index] + SubStringBJ(temp, CType + 1, StringLength(temp))
		endif
		call InitChallangerData(p)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的完成了" + SgameMode + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsChallangerComplete takes player p,integer bit returns boolean
  local integer index= GetConvertedPlayerId(p)
  local string s= ""
		if ( CDiff == 1 ) then
			return S2I(SubStringBJ(easyCString[index], bit, bit)) > 0
		elseif ( CDiff == 2 ) then
			return S2I(SubStringBJ(middleCString[index], bit, bit)) > 0
		elseif ( CDiff == 3 ) then
			return S2I(SubStringBJ(hardCString[index], bit, bit)) > 0
		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChallangerTitle takes integer i returns string
		if ( i == 1 ) then
			return "力量透支挑战"
		elseif ( i == 2 ) then
			return "纯装备挑战"
		elseif ( i == 3 ) then
			return "驻永恒挑战"
		elseif ( i == 4 ) then
			return "创世篇挑战"
		elseif ( i == 5 ) then
			return "镜像挑战"
		elseif ( i == 6 ) then
			return "随机英雄挑战"
		elseif ( i == 7 ) then
			return "金钟罩挑战"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChallangerContent takes integer i returns string
		if ( i == 1 ) then
			return "\n			力量透支挑战内容如下:\n\n			英雄初始等级为450级.\n			但是英雄初始属性为负95%.\n			该模式下禁止捕捉超过20级的宠物.\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 2 ) then
			return "\n			纯装备挑战如下:\n\n			所有玩家英雄只有1个装备栏.\n			英雄获取任何装备时,\n			都增加该装备的6倍属性.\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 3 ) then
			return "\n			驻永恒挑战如下:\n\n			该挑战下英雄攻击速度极慢,\n			移动速度-10000000%.\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 4 ) then
			return "\n			创世篇挑战如下:\n\n			该挑战下英雄获得金钱为1%,\n			英雄每秒减少10%的生命.\n			(13波开始每秒减少30%的生命)\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 5 ) then
			return "\n			镜像挑战如下:\n\n			该挑战下进攻怪为英雄的转生镜像,\n			与转生类似的属性,不拥有转生技能,\n			拥有与英雄一样的物品,\n			波数对应为转数,怪物数量会少3倍.\n			(进攻怪的经验固定在100/个)\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n			难度越大每波怪对应的转数越大。\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 6 ) then
			return "\n			随机英雄挑战如下:\n\n			只能选取随机英雄.\n			但是可以额外获得5000金币.\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		elseif ( i == 7 ) then
			return "\n			金钟罩挑战如下:\n\n			所有进攻怪与BOSS只会攻击基地,\n			包括部分副本BOSS.\n			但是你兑换防护罩时额外获得2个.\n\n			简单最低通关要求:(天国)\n			中等最低通关要求:(炼狱)\n			困难最低通关要求:(轮回)\n\n			|cff00ccff在该模式下不能获得成就及皮肤.|r\n			"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChallangerDifficulty takes nothing returns integer
		if ( CType == 1 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 2 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 3 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 4 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 5 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 6 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		elseif ( CType == 7 ) then
			return ChallangerDZ___C3(1 , 5 , 8)
		endif
		return 0
	endfunction

//library ChallangerDZ ends
//library Structs:
	
//---------------------------------------------------------------------------------------------------
	

  function s__TextTagBind_flash takes nothing returns nothing
   local integer this= sc__TextTagBind__staticgetindex(GetExpiredTimer())
			call SetTextTagPos(s__TextTagBind_tt[this], (RMinBJ(RMaxBJ(((GetUnitX(s__TextTagBind_caster[this]) - s__TextTagBind_xOff[this])*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(s__TextTagBind_caster[this]) - s__TextTagBind_yOff[this])*1.0), yd_MapMinY), yd_MapMaxY)), 20) // INLINED!!
  endfunction

        function s__TextTagBind__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__TextTagBind__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__TextTagBind_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__TextTagBind_create takes unit caster,real xOff,real yOff returns integer
      local integer this= s__TextTagBind__allocate()
      local location point= Location((RMinBJ(RMaxBJ(((GetUnitX(caster) - xOff)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(caster) - yOff)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
			set s__TextTagBind_xOff[this]=xOff
			set s__TextTagBind_yOff[this]=yOff
			set s__TextTagBind_caster[this]=caster
			set s__TextTagBind_size[this]=20.
			set s__TextTagBind_tt[this]=CreateTextTagLocBJ("", point, 0, 20.00, 0, 100, 100, 0)
			set s__TextTagBind_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__TextTagBind_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__TextTagBind_t[this], 0.05, true, function s__TextTagBind_flash)
			call RemoveLocation(point)
			set point=null
			return this
  endfunction

  function s__TextTagBind_setSize takes integer this,real size returns nothing
			set s__TextTagBind_size[this]=size
			call SetTextTagTextBJ(s__TextTagBind_tt[this], s__TextTagBind_content[this], size)
  endfunction

  function s__TextTagBind_setContent takes integer this,string s returns nothing
			set s__TextTagBind_content[this]=s
			call SetTextTagTextBJ(s__TextTagBind_tt[this], s, s__TextTagBind_size[this])
  endfunction

  function s__TextTagBind_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__TextTagBind_t[this])))))))) // INLINED!!
			set s__TextTagBind_caster[this]=null
			call DestroyTextTag(s__TextTagBind_tt[this])
			set s__TextTagBind_tt[this]=null
			set s__TextTagBind_xOff[this]=0.
			set s__TextTagBind_yOff[this]=0.
			call PauseTimer(s__TextTagBind_t[this])
			call DestroyTimer(s__TextTagBind_t[this])
			set s__TextTagBind_t[this]=null
  endfunction

//Generated destructor of TextTagBind
function s__TextTagBind_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TextTagBind_V[this]!=-1) then
        return
    endif
    call s__TextTagBind_onDestroy(this)
    set si__TextTagBind_V[this]=si__TextTagBind_F
    set si__TextTagBind_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
//processed:     function interface AfterBuffTime takes player p returns nothing



  function s__Buff_timeout takes nothing returns nothing
   local integer this= sc__Buff__staticgetindex(GetExpiredTimer())
            call sc___prototype227_execute(s__Buff_ab[this],s__Buff_p[this])
  endfunction

        function s__Buff__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__Buff__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__Buff_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__Buff_create takes player p,real time,integer ab returns integer
      local integer this= s__Buff__allocate()
			set s__Buff_p[this]=p
			set s__Buff_ab[this]=ab
			set s__Buff_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__Buff_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__Buff_t[this], time, true, function s__Buff_timeout)
			return this
  endfunction

  function s__Buff_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__Buff_t[this])))))))) // INLINED!!
			set s__Buff_p[this]=null
			set s__Buff_ab[this]=0
			call PauseTimer(s__Buff_t[this])
			call DestroyTimer(s__Buff_t[this])
			set s__Buff_t[this]=null
  endfunction

//Generated destructor of Buff
function s__Buff_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Buff_V[this]!=-1) then
        return
    endif
    call s__Buff_onDestroy(this)
    set si__Buff_V[this]=si__Buff_F
    set si__Buff_F=this
endfunction


//library Structs ends
//library Achievement:
	


//---------------------------------------------------------------------------------------------------
	
 function Int2Bin takes integer num returns string
  local string result= ""
  local integer mod= 0
  local integer number= num
  local integer i= 1

		loop
			exitwhen i > 31
			if ( number == 0 ) then
				set result="0" + result
			else
				set mod=ModuloInteger(number, 2)
				set result=I2S(mod) + result
				set number=number / 2
			endif
			set i=i + 1
		endloop
		if ( num < 0 ) then
			set result="1" + result
		else
			set result="0" + result
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Bin2Int takes string bin returns integer
  local integer i= StringLength(bin)
  local integer result= 0
  local integer mi= 0
		if ( i < 1 ) then
			return 0
		endif

		loop
			exitwhen i == 1
			
			set result=result + R2I(Pow(2, mi)) * S2I(SubStringBJ(bin, i, i))

			set mi=mi + 1
			set i=i - 1
		endloop

		if ( S2I(SubStringBJ(bin, 1, 1)) == 1 ) then
			set result=result * - 1
		endif

		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetBinBit takes string bin,integer bit,boolean isOne returns string
  local string result
  local integer length= StringLength(bin)

		if ( length < bit or bit <= 0 ) then
			return bin
		endif

		set result=SubStringBJ(bin, 1, bit - 1)
		if ( isOne ) then
			set result=result + "1"
		else
			set result=result + "0"
		endif
		return result + SubStringBJ(bin, bit + 1, length)

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetIntegerBit takes integer int,integer bit,boolean isOne returns integer
		return Bin2Int(SetBinBit(Int2Bin(int) , bit , isOne))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetIntegerBit takes integer int,integer bit returns integer
		return S2I(SubStringBJ(Int2Bin(int), bit, bit))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetIntegerHasOne takes integer num returns integer
  local integer result= 0
  local integer number= num
  local integer i= 1

		loop
			exitwhen i > 31
			set result=ModuloInteger(number, 2) + result
			set number=number / 2
			set i=i + 1
		endloop
		if ( num < 0 ) then
			set result=1 + result
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetSpecifyHeroTimes takes player p,integer heroIndex returns integer
		if ( heroIndex > 0 ) then
			return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)], 2 * heroIndex - 1, 2 * heroIndex))
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetLowerHeroCount takes player p,integer limit,integer number returns boolean
  local integer count= 0
  local integer i= 1
		loop
			exitwhen i > HERO_COUNT
			if ( GetSpecifyHeroTimes(p , i) >= limit ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count >= number
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement___GetAchievePage takes integer i returns integer
		return S2I(SubStringBJ(I2S(i), 1, 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement___GetAchieveTarget takes integer i returns integer
		return S2I(SubStringBJ(I2S(i), 2, StringLength(I2S(i))))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement___SaveSpinData takes player p returns nothing
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "spin2" , spin2[GetConvertedPlayerId(p)])
		else
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r本局游戏皮肤数据读取失败,请重新开始游戏.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSpecifySpin takes player p,integer page,integer index returns nothing
  local integer judge= I3(page == 1 , spin[GetConvertedPlayerId(p)] , spin2[GetConvertedPlayerId(p)])
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(judge , index) < 1 ) then
			if ( page == 1 ) then
				set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + R2I(Pow(10, index - 1))
			elseif ( page == 2 ) then
				set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + R2I(Pow(10, index - 1))
			endif
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取皮肤\"" + GetHeroChallenageName(index , page) + "\"！")
			call Achievement___SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huoquspin takes player p,string chat returns nothing
  local integer i= 1
  local integer j= 1
  local integer result= 0
		loop
			exitwhen j > 2

			set i=1
			loop
				exitwhen i > 10

				if ( chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)] + "sp" + I2S(j) + I2S(i) , 1)) ) then

					call GetSpecifySpin(p , j , i)
					exitwhen true

				endif

				set i=i + 1
			endloop

			set j=j + 1
		endloop

		set BBuqian2=false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSeyu1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 2) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetSeyuSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 2)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaoyue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 3) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXiaoyueSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 3)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetYanmie1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 4) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetYanmieSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 4)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXuanxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 5) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXuanxue1SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 5)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetTaiya1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetTaiyaSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 6)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji1SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHanshang1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHanshangSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 8)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetLingxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetLingxueSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 9)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji2Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji2SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 1 , 10)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMoqiSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetMoqiSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 1)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetKaisaSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetKaisaSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 2)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXuanxue2Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 3) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetXuanxue2SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 3)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSheyan1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 4) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetSheyanSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 4)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetBajue1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 5) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetBajueSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 5)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyi1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHuanyiSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 6)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSichen1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetSichenSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCangling1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetCanglingSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 8)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeiyan1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHeiyanSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 9)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetLichi1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetLichiSpinOK takes player p returns nothing
		call GetSpecifySpin(p , 2 , 10)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveOK takes player p,integer achieveID returns boolean
  local integer id= GetConvertedPlayerId(p)
  local integer page= (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) // INLINED!!
  local integer target= Achievement___GetAchieveTarget(achieveID)
		if ( achieveID == 48 ) then
			return GetLowerHeroCount(p , 99 , HERO_COUNT)
		endif
		if ( page == 1 ) then
			return ( GetBit(achieve[id] , target) > 0 )
		elseif ( page == 2 ) then
			return ( GetIntegerBit(achieve2[id] , target) > 0 )
		elseif ( page == 3 ) then
			return ( GetIntegerBit(achieve3[id] , target) > 0 )
		elseif ( page == 4 ) then
			return ( GetIntegerBit(achieve4[id] , target) > 0 )
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsQuanchengjiu takes player p returns boolean
  local boolean result= true
  local integer i= 11
		loop
			exitwhen i > 18
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop
		set i=21
		loop
			exitwhen i > 29
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		set i=210
		loop
			exitwhen i > 231
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		set i=32
		loop
			exitwhen i > 39
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop


		set i=310
		loop
			exitwhen i > 318
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		set i=320
		loop
			exitwhen i > 331
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		set i=43
		loop
			exitwhen i > 46
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		set result=result and IsAchieveOK(p , 49)

		set i=410
		loop
			exitwhen i > 417
			set result=result and IsAchieveOK(p , i)
			set i=i + 1
		endloop

		return result

	endfunction
//---------------------------------------------------------------------------------------------------

	
 function SetAchievement takes player p,integer achieveID returns nothing
  local integer id= GetConvertedPlayerId(p)
		if ( udg_H[id] == null ) then
			return
		endif
		if ( IsAchieveOK(p , achieveID) ) then
			set achiPage[id]=achieveID
			//彩名	
			if ( IsAchieveColor(achieveID) ) then
				call SetPlayerName(p, GetAchievementName(achieveID) + GetRandomColor() + playerName[id] + "|r")
			elseif ( IsAchieveWhite(achieveID) ) then
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id])
			else
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id] + "|r")
			endif
			//特效
			if ( IsAchieveLight(achieveID) ) then
				if ( achiEff[id] != null ) then
					call DestroyEffect(achiEff[id])
				endif
				set achiEff[id]=AddSpecialEffectTargetUnitBJ("origin", udg_H[id], "war3mapImported\\lunhuitexiao.mdl")
			endif
			call DzAPI_Map_Stat_SetStat(p , "achi" , GetAchievementWhiteName(achieveID))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievePointer takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "page" , achiPage[GetConvertedPlayerId(p)])
	endfunction 
//---------------------------------------------------------------------------------------------------
	
 function SaveAchieveData1 takes player p returns nothing
		call DzAPI_Map_StoreString(p , "achieve" , I2S(achieve[GetConvertedPlayerId(p)]))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchieveData2 takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "achieve2" , achieve2[GetConvertedPlayerId(p)])
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchieveData3 takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "achieve3" , achieve3[GetConvertedPlayerId(p)])
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchieveData4 takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "achieve4" , achieve4[GetConvertedPlayerId(p)])
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetAchievementAndSave takes player p,integer achieveID returns nothing
  local integer id= GetConvertedPlayerId(p)
		if ( udg_H[id] == null ) then
			return
		endif
		if ( achieveID != 410 and achieveID != 411 and CType != 0 ) then
			return
		endif
		if not ( IsAchieveOK(p , achieveID) ) then
			if ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 1 ) then // INLINED!!
				set achieve[id]=achieve[id] + R2I(Pow(10, I2R(achieveID - 11)))
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 2 ) then // INLINED!!
				set achieve2[id]=SetIntegerBit(achieve2[id] , Achievement___GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 3 ) then // INLINED!!
				set achieve3[id]=SetIntegerBit(achieve3[id] , Achievement___GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 4 ) then // INLINED!!
				set achieve4[id]=SetIntegerBit(achieve4[id] , Achievement___GetAchieveTarget(achieveID) , true)
			endif
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"" + GetAchievementName(achieveID) + "|r\",该成就会显示在游戏大厅内及你的名字前面.")
		    call SetAchievement(p , achieveID)
			call SaveAchieveData1(p)
			call SaveAchieveData2(p)
			call SaveAchieveData3(p)
			call SaveAchieveData4(p)
		    call SaveAchievePointer(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想使用其他的成就，请输入\"-cj\"来切换你的现有成就。")
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function NextPageAchievement takes player p,dialog d,integer page returns nothing
     local integer i= 1
		if ( page == 1 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 10) + S3(IsAchieveOK(p , i + 10) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(325) + S3(IsAchieveOK(p , 325) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		elseif ( page == 2 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 20) + S3(IsAchieveOK(p , i + 20) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 3 ) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(217 - i) + S3(IsAchieveOK(p , 217 - i) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetAchievementName(29) + S3(IsAchieveOK(p , 29) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		elseif ( page == 4 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 216) + S3(IsAchieveOK(p , i + 216) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 5 ) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 224) + S3(IsAchieveOK(p , i + 224) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetAchievementName(310) + S3(IsAchieveOK(p , 310) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		elseif ( page == 6 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 31) + S3(IsAchieveOK(p , i + 31) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 7 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 310) + S3(IsAchieveOK(p , i + 310) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 8 ) then
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(326) + S3(IsAchieveOK(p , 326) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
			set i=2
		    loop
		    	exitwhen i > 6
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 318) + S3(IsAchieveOK(p , i + 318) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
    	    	call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetAchievementName(327) + S3(IsAchieveOK(p , 327) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		elseif ( page == 9 ) then
			set i=1
		    loop
		    	exitwhen i > 4
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 327) + S3(IsAchieveOK(p , i + 327) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
			set i=5
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 38) + S3(IsAchieveOK(p , i + 38) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 10 ) then
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(49) + S3(IsAchieveOK(p , 49) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
			set i=2
		    loop
		    	exitwhen i > 9
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 408) + S3(IsAchieveOK(p , i + 408) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 17, DialogAddButtonBJ(d, "上一页"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "下一页"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "关闭|cffff6800(Esc)|r", 512))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroDialogContent takes player p,dialog d,integer page returns nothing
		if ( page == 1 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(3 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(4 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(5 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetHeroChallenageName(7 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 7) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetHeroChallenageName(6 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 6) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetHeroChallenageName(8 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 8) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetHeroChallenageName(10 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 10) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 9, DialogAddButtonBJ(d, GetHeroChallenageName(9 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 9) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
		elseif ( page == 2 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 1) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(3 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(5 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetHeroChallenageName(4 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetHeroChallenageName(6 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 6) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetHeroChallenageName(7 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 7) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetHeroChallenageName(8 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 8) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 9, DialogAddButtonBJ(d, GetHeroChallenageName(9 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 9) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
		elseif ( page == 3 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 3) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 10) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "下一页"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "关闭|cffff6800(Esc)|r", 512))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateSuperDialogContent takes player p,dialog d returns nothing
		
		call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetSuperChallenageName(1) + S3(IsQuanchengjiu(p) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetSuperChallenageName(2) + S3(IsAchieveOK(p , 42) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetSuperChallenageName(3) + S3(IsAchieveOK(p , 47) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetSuperChallenageName(4) + S3(GetLowerHeroCount(p , 99 , HERO_COUNT) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AchievementDialogClick takes nothing returns nothing
  local dialog d= GetClickedDialogBJ()
     local integer i= 1
     local integer page= LoadInteger(LHTable, GetHandleId(d), 12)
     local player p= LoadPlayerHandle(LHTable, GetHandleId(d), 13)
     local integer achieveID= LoadInteger(LHTable, GetHandleId(d), 14)

        //查看条件与设置
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 15) ) then
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetAchievementName(achieveID) + "|r成就的获取条件如下所示:")
	    	call DisplayTextToPlayer(p, 0., 0., GetAchievementCondition(achieveID))
	    elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 16) ) then
	    	call SetAchievement(p , achieveID)
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功地将成就设置成了" + GetAchievementName(achieveID) + ".")
	    	//保存到服务器
	    	call SaveAchievePointer(p)
	    endif

	    //退出
	    if ( ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 11) ) or ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 15) ) or ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 16) ) ) then
            call DialogClear(d)
	        call FlushChildHashtable(LHTable, GetHandleId(d))
        	call DialogDisplay(p, d, false)
	        call DialogDestroy(d)
	        set d=null
	        set p=null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //下一页
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
            call DialogClear(d)
	    	set page=I3(page < PAGE_ACHIEVE , page + 1 , 1)
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call DialogSetMessage(d, "我的成就|cffff6800(第" + I2S(page) + "/" + I2S(PAGE_ACHIEVE) + "页)|r\n	    		收集全部成就可以自定义成就名")
	    	call NextPageAchievement(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //上一页
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 17) ) then
            call DialogClear(d)
	    	set page=I3(page <= 1 , PAGE_ACHIEVE , page - 1)
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call DialogSetMessage(d, "我的成就|cffff6800(第" + I2S(page) + "/" + I2S(PAGE_ACHIEVE) + "页)|r\n	    		收集全部成就可以自定义成就名")
	    	call NextPageAchievement(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //点击指定的成就
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
	        	set achieveID=GetAchievementIndex(page , i)
	    		call SaveInteger(LHTable, GetHandleId(d), 14, achieveID)
	    		call DialogSetMessage(d, GetAchievementName(achieveID) + S3(IsAchieveOK(p , achieveID) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r"))
		    	call SaveButtonHandle(LHTable, GetHandleId(d), 15, DialogAddButtonBJ(d, "查看获取条件"))
		    	if ( IsAchieveOK(p , achieveID) ) then
		    		call SaveButtonHandle(LHTable, GetHandleId(d), 16, DialogAddButtonBJ(d, "使用该成就"))
		    	endif
		    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "关闭|cffff6800(Esc)|r", 512))
	            exitwhen true
	        endif
	        set i=i + 1
	    endloop

        call DialogDisplay(p, d, true)
	    set d=null
	    set p=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function HeroDialogClick takes nothing returns nothing
  local dialog d= GetClickedDialogBJ()
     local player p= LoadPlayerHandle(LHTable, GetHandleId(d), 13)
     local integer page= LoadInteger(LHTable, GetHandleId(d), 12)
  local integer i= 1

	    //退出
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 11) ) then
            call DialogClear(d)
	        call FlushChildHashtable(LHTable, GetHandleId(d))
        	call DialogDisplay(p, d, false)
	        call DialogDestroy(d)
	        set d=null
	        set p=null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //下一页
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
            call DialogClear(d)
	    	set page=I3(page < PAGE_HERO_CHALLANGER , page + 1 , 1)
	    	call DialogSetMessage(d, "英雄挑战|cffff6800(第" + I2S(page) + "/" + I2S(PAGE_HERO_CHALLANGER) + "页)|r")
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call CreateHeroDialogContent(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //点击
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetHeroChallenageName(i , page) + "|r英雄挑战的条件如下所示:")
		    	call DisplayTextToPlayer(p, 0., 0., GetHeroChallenageContent(i , page))
	            exitwhen true
	        endif
	        set i=i + 1
	    endloop

        call DialogClear(d)
        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(p, d, false)
        call DialogDestroy(d)
        set d=null
        set p=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SuperAchievementClick takes nothing returns nothing
  local dialog d= GetClickedDialogBJ()
     local player p= LoadPlayerHandle(LHTable, GetHandleId(d), 13)
  local integer i= 1
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetSuperChallenageName(i) + "|r超级成就的完成条件如下所示:")
		    	call DisplayTextToPlayer(p, 0., 0., GetSuperChallenageContent(i))
		    	if ( i == 2 ) then
	    			call SetAchievement(p , 42)
	    			call SaveAchievePointer(p)
		    	elseif ( i == 3 ) then
	    			call SetAchievement(p , 47)
	    			call SaveAchievePointer(p)
		    	elseif ( i == 4 ) then
	    			call SetAchievement(p , 48)
	    			call SaveAchievePointer(p)
		    	endif
	            exitwhen true
	        endif
	        set i=i + 1
	    endloop

        call DialogClear(d)
        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(p, d, false)
        call DialogDestroy(d)
        set d=null
        set p=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function CreateAchievementDialog takes player p returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
	    call DialogSetMessage(d, "我的成就|cffff6800(第1/" + I2S(PAGE_ACHIEVE) + "页)|r\n	    	收集全部成就可以自定义成就名")
	    call NextPageAchievement(p , d , 1)
    	call SaveButtonHandle(LHTable, GetHandleId(d), 15, null)
    	call SaveButtonHandle(LHTable, GetHandleId(d), 16, null)
    	call SaveInteger(LHTable, GetHandleId(d), 12, 1)
	    call SavePlayerHandle(LHTable, GetHandleId(d), 13, p)
	    call SaveInteger(LHTable, GetHandleId(d), 14, 10)
	    call DialogDisplay(p, d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function AchievementDialogClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroChallenagerDialog takes player p returns nothing
  local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
	    call DialogSetMessage(d, "英雄挑战|cffff6800(第1/" + I2S(PAGE_HERO_CHALLANGER) + "页)|r")
	    call CreateHeroDialogContent(p , d , 1)
	    call SavePlayerHandle(LHTable, GetHandleId(d), 13, p)
	    call SaveInteger(LHTable, GetHandleId(d), 12, 1)
	    call DialogDisplay(p, d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function HeroDialogClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateSuperAchievementDialog takes player p returns nothing
  local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
	    call DialogSetMessage(d, "超级成就")
	    call CreateSuperDialogContent(p , d)
	    call SavePlayerHandle(LHTable, GetHandleId(d), 13, p)
	    call DialogDisplay(p, d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function SuperAchievementClick)
	    set d=null
	    set t=null
	endfunction



//library Achievement ends
//library Jizi:


//---------------------------------------------------------------------------------------------------
	
 function Jizi___GetZhongqiuWord takes integer i returns string

		if ( i == 1 ) then
			return "平"
		elseif ( i == 2 ) then
			return "分"
		elseif ( i == 3 ) then
			return "秋"
		elseif ( i == 4 ) then
			return "色"
		elseif ( i == 5 ) then
			return "一"
		elseif ( i == 6 ) then
			return "轮"
		elseif ( i == 7 ) then
			return "满"
		elseif ( i == 8 ) then
			return "长"
		elseif ( i == 9 ) then
			return "伴"
		elseif ( i == 10 ) then
			return "云"
		elseif ( i == 11 ) then
			return "衢"
		elseif ( i == 12 ) then
			return "千"
		elseif ( i == 13 ) then
			return "里"
		elseif ( i == 14 ) then
			return "明"
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi___GetRewardName takes integer days returns string
		if ( days == 14 ) then
			return "全皮肤体验权[活动期间]\n+绝版中秋英雄死亡声效.[永久]"
		elseif ( days == 10 ) then
			return "湮灭皮肤[永久]"
		elseif ( days == 12 ) then
			return "司宸皮肤与仓库瞬息万年[永久]"
		elseif ( days == 8 ) then
			return "解锁星胧[活动期间]"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi___GetStateName takes integer i returns string
		if ( i == 1 ) then
			return "|cff99cc00金钱获取率+100%持续3分钟。|r"
		elseif ( i == 2 ) then
			return "|cff99cc00技能伤害+50%持续4分钟。|r"
		elseif ( i == 3 ) then
			return "|cffff66003秒复活持续5分钟。|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi___GetNewWord takes player p,integer i returns boolean
  local integer index= GetConvertedPlayerId(p)
  local string temp= null
		if ( StringLength(SJizi[index]) < 62 ) then
			set SJizi[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		if ( S2I(SubStringBJ(SJizi[index], i, i)) != 1 ) then
			set temp=SJizi[index]
			set SJizi[index]=SubStringBJ(temp, 1, i - 1)
			set SJizi[index]=SJizi[index] + "1"
			set SJizi[index]=SJizi[index] + SubStringBJ(temp, i + 1, StringLength(temp))
			set temp=null
			if ( i != 15 ) then
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r" + Jizi___GetZhongqiuWord(i) + "字.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r" + Jizi___GetZhongqiuWord(i) + "字.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r" + Jizi___GetZhongqiuWord(i) + "字.")
			endif
			call DzAPI_Map_StoreString(p , "SJizi" , SJizi[index])
			return true
		endif
		return false
	endfunction

 function Jizi___IsHasWord takes player p,integer i returns boolean
		return S2I(SubStringBJ(SJizi[GetConvertedPlayerId(p)], i, i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetPlayerWordCount takes player p returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 14
			if ( Jizi___IsHasWord(p , i) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction

 function HasAll14Word takes player p returns boolean
		return Jizi___IsHasWord(p , 15)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Get14Word takes player p returns string
  local string s= ""
  local integer i= 1
		loop
			exitwhen i > 14
			set s=s + S3(Jizi___IsHasWord(p , i) , "|cffff00ff" , "|cffffffff") + Jizi___GetZhongqiuWord(i) + "|r"
			if ( i == 7 ) then
				set s=s + "|cffff00ff，|r"
			elseif ( i == 14 ) then
				set s=s + "|cffff00ff。|r"
			endif
			set i=i + 1
		endloop
		return s
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi___GetWordCountReward takes player p returns nothing
		if ( GetPlayerWordCount(p) >= 10 ) then
			call GetYanmie1Spin(p)
		elseif ( GetPlayerWordCount(p) >= 12 ) then
			call GetSpecifySpin((p) , 2 , 7) // INLINED!!
			call GetAndSaveCangku(p , 5)
		elseif ( GetPlayerWordCount(p) >= 14 ) then
			call Jizi___GetNewWord(p , 15)
		endif
	endfunction

 function Jizi___AfterMoneyBuffTime takes player p returns nothing
		call AddMoneyPercent(GetConvertedPlayerId(p) , - 1.0)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的金钱时间到了.")
	endfunction

 function Jizi___AfterSpellBuffTime takes player p returns nothing
		call AddMoneyPercent(GetConvertedPlayerId(p) , - 0.5)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的技能伤害时间到了.")
	endfunction

 function Jizi___AfterReviveBuffTime takes player p returns nothing
		set B3SecondRevive[GetConvertedPlayerId(p)]=false
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的3秒复活时间到了.")
	endfunction

 function Jizi___GetStateReward takes player p,integer state returns nothing
		if ( state == 1 ) then
			call AddMoneyPercent(GetConvertedPlayerId(p) , 1.0)
			call s__Buff_create(p , 180 , (1))
		elseif ( state == 2 ) then
			call AddSpellPercent(GetConvertedPlayerId(p) , 0.5)
			call s__Buff_create(p , 240 , (2))
		elseif ( state == 3 ) then
			set B3SecondRevive[GetConvertedPlayerId(p)]=true
			call s__Buff_create(p , 300 , (3))
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function OpenTheYuebing takes player p returns nothing
  local integer iWord= GetRandomInt(1, 14)
  local integer iState= GetRandomInt(1, 3)
  local integer i= 1
  local string s= null
		call Jizi___GetNewWord(p , iWord)

		set s="\n			你开启该月饼获得了:\n\n			" + Jizi___GetStateName(iState) + "\n			活动字\"|cffff00ff" + Jizi___GetZhongqiuWord(iWord) + "|r\"\n\n			你目前收集到的总字数为:\n			" + Get14Word(p) + "\n			(" + I2S(GetPlayerWordCount(p)) + "个字)\n\n			"
		loop
			exitwhen i > 14
        	if ( Jizi___GetRewardName(i) != null ) then
        		set s=s + I2S(i) + "字:" + Jizi___GetRewardName(i) + S3(GetPlayerWordCount(p) >= i , "|cffff9900(已获得)|r" , "|cff33cccc(未获得)|r") + "\n"
        	endif
			set i=i + 1
		endloop

		call Jizi___GetWordCountReward(p)
		call Jizi___GetStateReward(p , iState)
		call ShowGameHint(p , s)
		set s=null
	endfunction


//library Jizi ends

// BEGIN IMPORT OF Jizi.j
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
// BEGIN IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF ChallangerDZ.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF ChallangerDZ.j

// END IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF ChallangerDZ.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j
// BEGIN IMPORT OF Structs.j
// IGNORE DOUBLE IMPORT OF LHBase.j


// END IMPORT OF Structs.j

















// END IMPORT OF Jizi.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs358762468")
call ExecuteFunc("Constant___InitConstant")
call ExecuteFunc("Test___InitTest")
call ExecuteFunc("LHBase___InitLHBase")
call ExecuteFunc("Attr___InitAttr")

endfunction



//Struct method generated initializers/callers:
function sa__TextTagBind__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__TextTagBind_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__TextTagBind_t[this])))))))) // INLINED!!
			set s__TextTagBind_caster[this]=null
			call DestroyTextTag(s__TextTagBind_tt[this])
			set s__TextTagBind_tt[this]=null
			set s__TextTagBind_xOff[this]=0.
			set s__TextTagBind_yOff[this]=0.
			call PauseTimer(s__TextTagBind_t[this])
			call DestroyTimer(s__TextTagBind_t[this])
			set s__TextTagBind_t[this]=null
   return true
endfunction
function sa__Buff__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Buff_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("TextTagBind" )), StringHash(( I2S((GetHandleId(((s__Buff_t[this])))))))) // INLINED!!
			set s__Buff_p[this]=null
			set s__Buff_ab[this]=0
			call PauseTimer(s__Buff_t[this])
			call DestroyTimer(s__Buff_t[this])
			set s__Buff_t[this]=null
   return true
endfunction
function sa___prototype227_Jizi___AfterMoneyBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		call AddMoneyPercent(GetConvertedPlayerId(p) , - 1.0)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的金钱时间到了.")
    return true
endfunction
function sa___prototype227_Jizi___AfterSpellBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		call AddMoneyPercent(GetConvertedPlayerId(p) , - 0.5)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的技能伤害时间到了.")
    return true
endfunction
function sa___prototype227_Jizi___AfterReviveBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		set B3SecondRevive[GetConvertedPlayerId(p)]=false
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的3秒复活时间到了.")
    return true
endfunction

function jasshelper__initstructs358762468 takes nothing returns nothing
    set st__TextTagBind__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__TextTagBind__staticgetindex,Condition( function sa__TextTagBind__staticgetindex))
    set st__TextTagBind_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__TextTagBind_onDestroy,Condition( function sa__TextTagBind_onDestroy))
    set st__Buff__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Buff__staticgetindex,Condition( function sa__Buff__staticgetindex))
    set st__Buff_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Buff_onDestroy,Condition( function sa__Buff_onDestroy))
    set st___prototype227[1]=CreateTrigger()
    call TriggerAddAction(st___prototype227[1],function sa___prototype227_Jizi___AfterMoneyBuffTime)
    call TriggerAddCondition(st___prototype227[1],Condition(function sa___prototype227_Jizi___AfterMoneyBuffTime))
    set st___prototype227[2]=CreateTrigger()
    call TriggerAddAction(st___prototype227[2],function sa___prototype227_Jizi___AfterSpellBuffTime)
    call TriggerAddCondition(st___prototype227[2],Condition(function sa___prototype227_Jizi___AfterSpellBuffTime))
    set st___prototype227[3]=CreateTrigger()
    call TriggerAddAction(st___prototype227[3],function sa___prototype227_Jizi___AfterReviveBuffTime)
    call TriggerAddCondition(st___prototype227[3],Condition(function sa___prototype227_Jizi___AfterReviveBuffTime))




endfunction

