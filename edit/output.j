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
//globals from Constant:
constant boolean LIBRARY_Constant=true
string diffculty= ""
string SgameMode= ""
		
constant integer HERO_COUNT= 19
		
constant boolean Huodong= false
		
constant integer PAGE_ACHIEVE= 10
constant integer PAGE_HERO_CHALLANGER= 2
		
integer renshu= 0
		
		
integer mode= 0
constant integer COUNT_WANJIE= 49
integer Constant__WPointer= 1
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
	
    //å·æ°ææå
trigger gg_trg_zhandouli2
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
rect gg_rct_Diamond3
        
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

        //å£°é³
sound gg_snd_cangling_5
sound gg_snd_f_baoshi
sound gg_snd_hanshang_5
sound gg_snd_hecheng_shenqi
sound gg_snd_heiyan_5
sound gg_snd_huanyi_5
sound gg_snd_mengji_4
sound gg_snd_mengji_5
sound gg_snd_seyu_5
sound gg_snd_seyu_4
sound gg_snd_sichen_4
sound gg_snd_v_leitai
sound gg_snd_v_mijing
sound gg_snd_xinglong_4
sound gg_snd_xiaoting2
sound gg_snd_xiaoting1

        //ä¼ æ¿åºå
rect gg_rct_Chuangcheng

        //ææå
integer array udg_Zhandouli

        //åç¯
unit gg_unit_n01S_0258
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
         
boolean array BJuexing1
boolean array BJuexing2
boolean array BJuexing3
        //æ¯å¦åè²
timer array TBianse

        //æ¯å¦æ­£å¨ç¦ç¨å¤©èµ
boolean BTianfu= false

boolean array BYeguaiFirst

        //æ¯å¦æ¾ç¤ºä¼¤å®³
boolean array BHideDamage

        //æ¯å¦å¯ä»¥è·³å³
boolean BSkipKuilei= false

        //è±éæ­»äº
boolean array BHeroDeath
//endglobals from LHBase
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

//endglobals from Achievement
//globals from Attr:
constant boolean LIBRARY_Attr=true
integer array IStr
integer array IAgi
integer array IInt
//endglobals from Attr
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
constant integer kUImmuteDamage=5
//endglobals from SpellBase
//globals from Aura:
constant boolean LIBRARY_Aura=true
integer array Aura___YKillCount
trigger Aura___TSpellYanmie3= null
trigger Aura___TSpellMengji3= null

		
boolean array Aura___shunHints

//endglobals from Aura
//globals from Huodong:
constant boolean LIBRARY_Huodong=true
//endglobals from Huodong
//globals from Diffculty:
constant boolean LIBRARY_Diffculty=true
		
integer NanDiff= 0
unit UWanjieGuanghuan= null
boolean IsTianyan= false
//endglobals from Diffculty
//globals from ItemBase:
constant boolean LIBRARY_ItemBase=true
timerdialog TiDiaNecklace
unit UCrainax

boolean array BRing
integer array IZhanhun
//endglobals from ItemBase
//globals from Continous:
constant boolean LIBRARY_Continous=true
integer array IConDays
integer array ILastTime
constant integer TIMESTAMP_START= 1500998400

		//integer DzAPI_Map_GetGameStartTime() = 0
//endglobals from Continous
//globals from Version:
constant boolean LIBRARY_Version=true
integer array vipCode
		
integer array diyu
		
integer array mingcha
		
integer array passTimes
		
integer array petTimes
		
constant integer kSaveHeroTimes=6
		
		

		
integer array deathCount
		
integer array killCount
		
boolean BBaseDamage= false
		
integer JunengCount= 0
		
integer array Idaixin
boolean BJiulun= false
boolean BHaojie= false

		//ææå°åçè±éç»è®¡
integer array Ileishi
		//DIYåå­
string array SDIY

		//æ²¡è¢«ç¢°å°
boolean BShengming= false

		//å¾éªå¯æ¶
integer array Greward

		//ç­¾å°ææ°
integer array IQiandao2

		//æ»æ°ä¸å­å¨20ä¸ª
boolean BZongshu= false
		//ææ12
boolean BTiaozhan1= false
boolean BTiaozhan2= false
//endglobals from Version
//globals from Diamond:
constant boolean LIBRARY_Diamond=true
constant string DIAMOND_CANT_UPDATE= "|cFFFF66CCãæ¶æ¯ã|rè¯¥å®ç³ä¸è½åçº§è¯¥ç©åã"

        
integer IAtleast1= 0
integer IAtleast2= 0
integer IAtleast3= 0

        
boolean array Diamond___BLuoshang1
boolean array Diamond___BLuoshang2
//endglobals from Diamond
//globals from Xiaoting:
constant boolean LIBRARY_Xiaoting=true
		
trigger Xiaoting___TSpellXiaoting= null
trigger Xiaoting___TAttackXT= null
		
real Xiaoting___RDamageXiaoting= 0.

		
integer ISpellState= 0
		
integer ICombo= 0


		
integer Xiaoting___IMaxCombo= 0
timer Xiaoting___TArrow= null
unit array Xiaoting___UArrow
group array Xiaoting___GArrow
		//æ´ç§è¯»æ°
integer Xiaoting___IZhengmiao= 0
		//åå¼¹è¯»ç§
integer Xiaoting___IFantan= 0
		//ç»ç±è¯»ç§
integer Xiaoting___IJueyan= 0
		//éæ­¢å¸å°
boolean Xiaoting___BJingzhi= false
		//å¾¡ç®­
boolean Xiaoting___BYujian= false
		//Comboå¤æ­
timer Xiaoting___TComboAdd= null

		//ä¸¤ä¸ªç§æ(åèå°åº,åèæªå°åº)
unit Xiaoting___UJianKeji1= null
unit Xiaoting___UJianKeji2= null

			
real Xiaoting___RAddtion= 0.


		//æ»å»ä¿çç¹æ
effect Xiaoting___EAttackXT= null
integer Xiaoting___IAttackAdd= 0
integer Xiaoting___ITimeAttackadd= 0

		//åè£æ¶é´
timer Xiaoting___TFenlie= null
//endglobals from Xiaoting
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
constant integer si__Connect=1
integer si__Connect_F=0
integer si__Connect_I=0
integer array si__Connect_V
unit array s__Connect_unit1
unit array s__Connect_unit2
lightning array s__Connect_l
timer array s__Connect_t
constant integer si__Attract=2
integer si__Attract_F=0
integer si__Attract_I=0
integer array si__Attract_V
unit array s__Attract_caster
real array s__Attract_radius
real array s__Attract_interval
real array s__Attract_speed
timer array s__Attract_t
boolean array s__Attract_forbitHero
boolean array s__Attract_deathContinue
constant integer si__Missile=3
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
constant integer si__Roubang=4
integer si__Roubang_F=0
integer si__Roubang_I=0
integer array si__Roubang_V
unit array s___Roubang_URou
constant integer s___Roubang_URou_size=20
integer array s__Roubang_URou
real array s__Roubang_aSpeed
real array s__Roubang_cAngle
real array s__Roubang_radius
timer array s__Roubang_t
integer array s__Roubang_number
unit array s__Roubang_caster
constant integer si__MultiLife=6
integer si__MultiLife_F=0
integer si__MultiLife_I=0
integer array si__MultiLife_V
unit array s__MultiLife_caster
integer array s__MultiLife_times
integer array s__MultiLife_current
timer array s__MultiLife_t
texttag array s__MultiLife_ttHint
constant integer si__SuperShield=7
integer si__SuperShield_F=0
integer si__SuperShield_I=0
integer array si__SuperShield_V
unit array s__SuperShield_caster
integer array s__SuperShield_times
integer array s__SuperShield_current
timer array s__SuperShield_t
trigger st__Connect__staticgetindex
trigger st__Connect_onDestroy
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
trigger st__Missile__staticgetindex
trigger st__Missile_onDestroy
trigger st__Missile_destroy
trigger st__Roubang__staticgetindex
trigger st__Roubang_onDestroy
trigger st__Roubang_destroy
trigger st__MultiLife__staticgetindex
trigger st__MultiLife_onDestroy
trigger st__SuperShield__staticgetindex
trigger st__SuperShield_onDestroy
trigger st__SuperShield_destroy
handle f__arg_handle1
integer f__arg_this
integer f__result_integer

endglobals


//Generated method caller for Connect._staticgetindex
function sc__Connect__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__Connect__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for Connect.onDestroy
function sc__Connect_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Connect_onDestroy)
endfunction

//Generated allocator of Connect
function s__Connect__allocate takes nothing returns integer
 local integer this=si__Connect_F
    if (this!=0) then
        set si__Connect_F=si__Connect_V[this]
    else
        set si__Connect_I=si__Connect_I+1
        set this=si__Connect_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Connect_V[this]=-1
 return this
endfunction

//Generated destructor of Connect
function sc__Connect_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Connect_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Connect_onDestroy)
    set si__Connect_V[this]=si__Connect_F
    set si__Connect_F=this
endfunction

//Generated method caller for SuperShield._staticgetindex
function sc__SuperShield__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__SuperShield__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for SuperShield.onDestroy
function sc__SuperShield_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__SuperShield_onDestroy)
endfunction

//Generated allocator of SuperShield
function s__SuperShield__allocate takes nothing returns integer
 local integer this=si__SuperShield_F
    if (this!=0) then
        set si__SuperShield_F=si__SuperShield_V[this]
    else
        set si__SuperShield_I=si__SuperShield_I+1
        set this=si__SuperShield_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__SuperShield_V[this]=-1
 return this
endfunction

//Generated destructor of SuperShield
function sc__SuperShield_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__SuperShield_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__SuperShield_onDestroy)
    set si__SuperShield_V[this]=si__SuperShield_F
    set si__SuperShield_F=this
endfunction

//Generated method caller for MultiLife._staticgetindex
function sc__MultiLife__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__MultiLife__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for MultiLife.onDestroy
function sc__MultiLife_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__MultiLife_onDestroy)
endfunction

//Generated allocator of MultiLife
function s__MultiLife__allocate takes nothing returns integer
 local integer this=si__MultiLife_F
    if (this!=0) then
        set si__MultiLife_F=si__MultiLife_V[this]
    else
        set si__MultiLife_I=si__MultiLife_I+1
        set this=si__MultiLife_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__MultiLife_V[this]=-1
 return this
endfunction

//Generated destructor of MultiLife
function sc__MultiLife_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__MultiLife_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__MultiLife_onDestroy)
    set si__MultiLife_V[this]=si__MultiLife_F
    set si__MultiLife_F=this
endfunction

//Generated method caller for Roubang._staticgetindex
function sc__Roubang__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__Roubang__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for Roubang.onDestroy
function sc__Roubang_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Roubang_onDestroy)
endfunction

//Generated allocator of Roubang
function s__Roubang__allocate takes nothing returns integer
 local integer this=si__Roubang_F
    if (this!=0) then
        set si__Roubang_F=si__Roubang_V[this]
    else
        set si__Roubang_I=si__Roubang_I+1
        set this=si__Roubang_I
    endif
    if (this>408) then
        return 0
    endif
    set s__Roubang_URou[this]=(this-1)*20
    set si__Roubang_V[this]=-1
 return this
endfunction

//Generated destructor of Roubang
function sc__Roubang_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Roubang_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Roubang_onDestroy)
    set si__Roubang_V[this]=si__Roubang_F
    set si__Roubang_F=this
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
//library Constant:
	
//---------------------------------------------------------------------------------------------------
	
 function GetVersion takes nothing returns string
		return "3.323C"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Get11 takes nothing returns boolean
		return true
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
		return GetUnitTypeId(u) == 'E00F' or GetUnitTypeId(u) == 'E00E' or GetUnitTypeId(u) == 'U001' or GetUnitTypeId(u) == 'H01V' or GetUnitTypeId(u) == 'H01W' or GetUnitTypeId(u) == 'E00G' or GetUnitTypeId(u) == 'O002' or GetUnitTypeId(u) == 'H01X'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroIndex takes integer heroType returns integer
		if ( heroType == 'Ocbh' or heroType == 'O002' ) then
			return 1
		elseif ( heroType == 'Eevi' or heroType == 'E00F' ) then
			return 2
		elseif ( heroType == 'Hvwd' or heroType == 'H01X' ) then
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
		elseif ( heroType == 'H01Y' ) then
			return 19
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
			elseif ( i == 19 ) then
				set result="éé"
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
			return "|cffff0000æä½é¾åº¦ï¼âââââ(æåº¦ä¸æ¨èæ°æä½¿ç¨)|r"
		elseif ( id == 16 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 17 ) then
			return "|cffffc000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 18 ) then
			return "|cffff4000æä½é¾åº¦ï¼âââââ|r"
		elseif ( id == 19 ) then
			return "|cffff0000æä½é¾åº¦ï¼âââââ(æåº¦ä¸æ¨èæ°æä½¿ç¨)|r"
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
		elseif ( i == 19 ) then
			set result="|cff00ff00éé|r"
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47 or achieveID == 48 or achieveID == 49 or achieveID == 410 or achieveID == 411
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
		elseif ( achieveID == 48 ) then
			return GetColorString("ãæ ä¸å­ççã")
		elseif ( achieveID == 49 ) then
			return GetColorString("ãèç¥ç¼ã")
		elseif ( achieveID == 410 ) then
			return GetColorString("ãé©»æ°¸æã")
		elseif ( achieveID == 411 ) then
			return GetColorString("ãåä¸ç¯ã")
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
		elseif ( achieveID == 48 ) then
			return "æ ä¸å­çç"
		elseif ( achieveID == 49 ) then
			return "èç¥ç¼"
		elseif ( achieveID == 410 ) then
			return "é©»æ°¸æ"
		elseif ( achieveID == 411 ) then
			return "åä¸ç¯"
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
		elseif ( achieveID == 49 ) then
			return "ä»å¤´å°å°¾å¨å°å¾åæ¶å­å¨çè¿æ»æªä»æªè¶è¿20ä¸ª.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 410 ) then
			return "å¼å±å¨ç¬¬ä¸æ³¢åè¾å¥-tz1è¿å¥ææ1,å®æå¹¶éå³.\n			è¯¥ææä¸è±éæ»å»éåº¦ææ¢,ç§»å¨éåº¦-10000000%.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 411 ) then
			return "å¼å±å¨ç¬¬ä¸æ³¢åè¾å¥-tz2è¿å¥ææ2,å®æå¹¶éå³.\n			è¯¥ææä¸è±éè·å¾éé±ä¸º1%,è±éæ¯ç§åå°10%ççå½.(13æ³¢å¼å§æ¯ç§åå°30%ççå½)\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
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
			elseif ( i == 8 ) then
				return "|cFFFF3333åæµè´¯æ|r"
			elseif ( i == 9 ) then
				return "|cFF339933æ²éªæ ç|r"
			endif
		elseif ( page == 2 ) then
			if ( i == 1 ) then
				return "|cFF6699FFçæ¥çä¸|r"
			elseif ( i == 2 ) then
				return "|cFFFF00CCæçéºéº|r"
			endif
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageName takes integer i returns string
		if ( i == 1 ) then
			return "å¨æå°±è¾¾æ"
		elseif ( i == 2 ) then
			return "éå³|cff993366å¤©é­|r"
		elseif ( i == 3 ) then
			return "è¿ç»­ç»å½20å¤©"
		elseif ( i == 4 ) then
			return "ææè±é99æ¬¡ä½¿ç¨"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageContent takes integer i,integer page returns string
		if ( page == 1 ) then
			if ( i == 1 ) then
				return "ä½¿ç¨çé¨å¨1ç§åå°è½éä»0%ç´æ¥å¢å è³105%(æä»¥ä¸).\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾çé¨çç®è¤\"|cffff66ccèµ¤è¡ç½ç|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 2 ) then
				return "ä½¿ç¨ææå¨ä¸å±æ¸¸æåæåå¨é»¯é»æéµåæåå¤æ´»æ»¡150äºº.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾ææçç®è¤\"|cff99ccffæè½®ç»¯ç±|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 3 ) then
				return "ä½¿ç¨æ¹®ç­å¨ä¸å±æ¸¸æåæåå®æ125æ¬¡è½¬ç.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æ¹®ç­çç®è¤\"|cFFFF0000æ®éæ è¿¹|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 4 ) then
				return "ä½¿ç¨çéªå¨ä¸å±æ¸¸æåæååéæäºé¾åº¦(æä»¥ä¸).\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾çéªçæ¨¡åæ³æ\"|cFF33FF33æ«æ¥ææ|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 5 ) then
				return "ä½¿ç¨è¾°å¯å¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æ»¡7æ¬¡90åçµæè½-å¼æ¸¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è¾°å¯çæ¨¡åç¹æ\"|cFFFF3333éå¤ä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 6 ) then
				return "ä½¿ç¨æ³°éå¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æç¥ä¹ç®­æè½è§¦å\"ç§\"ææææ­»è³å°2500ä¸ªåä½.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æ³°éçç®è¤\"|cFFCCFF66ä¸å¼¦æè°§|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 7 ) then
				return "ä½¿ç¨å¯æ®å¨ä¸å±æ¸¸æåæåä½¿ç¨æ ç©·åå¬æè½è·å¾è¶è¿500ä¸çæ»åå±æ§.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æ®çæ¨¡åæ­¦å¨\"|cFF3333FFç çä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 8 ) then
				return "åå¹´åæ´»å¨ä¸­è¿ç»­ç­¾å°æ»¡10å¤©.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è¾°å¯çç®è¤\"|cFFFF3333åæµè´¯æ|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 9 ) then
				return "å¨8æ20å·åæåå»è´¥å­çåå¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾åéªçç®è¤\"|cFF339933æ²éªæ ç|r\"(æ¥æå°éçå±æ§å æ)!"
			endif
		elseif ( page == 2 ) then
			if ( i == 1 ) then
				return "ä½¿ç¨å¯æå¨ä¸å±æ¸¸æä¸­åªé |cffff6800å¿ è¯ä¹èº¯|ræè½ææ­»æ»å»åºå°çæäºº2500ä¸ª.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æçç®è¤\"|cFF6699FFçæ¥çä¸|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 2 ) then
				return "ä½¿ç¨è«çªå¨ä½¿ç¨|cffffcc00è£å³|ræè½æ¶çæ½æ³è§åº¦å¨89.9-90.1åº¦ä¹å.\n						(æ¢å¥è¯è¯´å³ä¸ºå®å¨åç´åä¸å°)\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è«çªçç®è¤\"|cFFFF00CCæçéºéº|r\"(æ¥æå°éçå±æ§å æ)!"
			endif
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
		elseif ( i == 4 ) then
			return "å¨è±é99æ¬¡è¾¾æ!\n\n			å®æè¯¥é¡¹ææåæ¯å±æ¸¸æä¸­å¨åºå°åºç°ç½©å­æ¶æçä¸ä¸æ ·çæå­æéå¦!\n			å¹¶è·å¾äºå­æå°±å" + GetAchievementName(48) + "ã"
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
			return "å«é¶å¤§å"
		elseif ( Constant__WPointer == 2 ) then
			return "Wqnmmpä¸¶"
		elseif ( Constant__WPointer == 3 ) then
			return "æ»¡å°ææ»çç«ç«"
		elseif ( Constant__WPointer == 4 ) then
			return "æå¤é­çä¸¶è¯ºç¹"
		elseif ( Constant__WPointer == 5 ) then
			return "ä¿å¬å­"
		elseif ( Constant__WPointer == 6 ) then
			return "ç«å¿ä¸¶"
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
			return "æµªé¼åº·å°å¸"
		elseif ( Constant__WPointer == 16 ) then
			return "æµªé¼é­å°ç"
		elseif ( Constant__WPointer == 17 ) then
			return "ç³ç³ä¸å¨ç"
		elseif ( Constant__WPointer == 18 ) then
			return "é£å¤©1234"
		elseif ( Constant__WPointer == 19 ) then
			return "æ ç¼ä¹éª"
		elseif ( Constant__WPointer == 20 ) then
			return "Flowerä¸¶God"
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
			return "ä¸¶å¿µå°ã"
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

 function Test__InitTest takes nothing returns nothing
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
        return u == taiya or u == xiaoyue or u == mengji or u == moqi or u == hanshang or u == cangling or u == seyu or u == yanmie or u == sichen or u == xiaoting
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
    
    function ShowGameHint takes player p,string content returns nothing
        local dialog d= DialogCreate()
        local string s= "\n            " + content
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "æç¥éäº|cffff6800(Esc)|r", 512)
        call DialogDisplay(p, d, true)
        set d=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    
    function ChooseSpinHero takes player p,unit u returns nothing
        call ShowGameHint(p , "è¯¥è±éæ¯" + GetUnitName(u) + "è±éçç®è¤" + GetHeroProperName(u) + "ã" + S3(false , "\n        ä½¿ç¨è±é" + GetUnitName(u) + "å®æå¯¹åºçè±éææå³å¯è·åè¯¥ç®è¤ã\n        åå¾åºå°å·¦è¾¹ååºå¤å¯ä»¥æ¥çè¯¥ææçè¯¦ç»åå®¹ã" , "\n        ä½¿ç¨é­å½äºé¸å®æ¹å¯¹æå¹³å°(dz.163.com)è¿è¡æ¸¸æ\n        å®æææå³å¯è·åè¯¥ç®è¤ã"))
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function ShowGameHintAll takes string content returns nothing
        local integer i= 1
        local dialog d= DialogCreate()
        local string s= "\n            " + content
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "æç¥éäº|cffff6800(Esc)|r", 512)
        loop
            exitwhen i > 6
            call DialogDisplay(ConvertedPlayer(i), d, true)
            set i=i + 1
        endloop
        set d=null
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

        set Uwanjie=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14524.0, - 15446.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase___StartWanjieTimer)


        set t=null
    endfunction

//library LHBase ends
//library Achievement:
	

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
	
 function GetSeyu1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 2) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetSeyuSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 2) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åçé¨ç®è¤\"|cffff66ccèµ¤è¡ç½ç|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaoyue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 3) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXiaoyueSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 3) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åææç®è¤\"|cff99ccffæè½®ç»¯ç±|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetYanmie1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 4) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetYanmieSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 4) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åæ¹®ç­ç®è¤\"|cFFFF0000æ®éæ è¿¹|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXuanxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 5) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXuanxueSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 5) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åçéªæ­¦å¨æ¨¡å\"|cFF33FF33æ«æ¥ææ|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetTaiya1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetTaiyaSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 6) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åæ³°éç®è¤\"|cFFCCFF66ä¸å¼¦æè°§|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji1SpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 7) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åè¾°å¯æ­¦å¨æ¨¡å\"|cFFFF3333éå¤ä¹å|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHanshang1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHanshangSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 8) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åå¯æ®æ­¦å¨æ¨¡å\"|cFF3333FFç çä¹å|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetLingxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetLingxueSpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 9) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·ååéªç®è¤\"|cFF339933æ²éªæ ç|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji2Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji2SpinOK takes player p returns nothing
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 10) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åè¾°å¯ç®è¤\"|cFFFF3333åæµè´¯æ|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMoqiSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetMoqiSpinOK takes player p returns nothing
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 10) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 1
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åè«çªç®è¤\"|cFFFF00CCæçéºéº|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin2" , spin2[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetKaisaSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetKaisaSpinOK takes player p returns nothing
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 10) < 2 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 10
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åå¯æç®è¤\"|cFF6699FFçæ¥çä¸|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin2" , spin2[GetConvertedPlayerId(p)])
		endif
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
			//å½©å	
			if ( IsAchieveColor(achieveID) ) then
				call SetPlayerName(p, GetAchievementName(achieveID) + GetRandomColor() + playerName[id] + "|r")
			elseif ( IsAchieveWhite(achieveID) ) then
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id])
			else
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id] + "|r")
			endif
			//ç¹æ
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
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ è·å¾æå°±\"" + GetAchievementName(achieveID) + "|r\",è¯¥æå°±ä¼æ¾ç¤ºå¨æ¸¸æå¤§åååä½ çåå­åé¢.")
		    call SetAchievement(p , achieveID)
			call SaveAchieveData1(p)
			call SaveAchieveData2(p)
			call SaveAchieveData3(p)
			call SaveAchieveData4(p)
		    call SaveAchievePointer(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå¦æä½ æ³ä½¿ç¨å¶ä»çæå°±ï¼è¯·è¾å¥\"-cj\"æ¥åæ¢ä½ çç°ææå°±ã")
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function NextPageAchievement takes player p,dialog d,integer page returns nothing
     local integer i= 1
		if ( page == 1 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 10) + S3(IsAchieveOK(p , i + 10) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(325) + S3(IsAchieveOK(p , 325) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		elseif ( page == 2 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 20) + S3(IsAchieveOK(p , i + 20) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 3 ) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(217 - i) + S3(IsAchieveOK(p , 217 - i) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetAchievementName(29) + S3(IsAchieveOK(p , 29) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		elseif ( page == 4 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 216) + S3(IsAchieveOK(p , i + 216) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 5 ) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 224) + S3(IsAchieveOK(p , i + 224) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetAchievementName(310) + S3(IsAchieveOK(p , 310) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		elseif ( page == 6 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 31) + S3(IsAchieveOK(p , i + 31) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 7 ) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 310) + S3(IsAchieveOK(p , i + 310) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 8 ) then
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(326) + S3(IsAchieveOK(p , 326) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
			set i=2
		    loop
		    	exitwhen i > 6
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 318) + S3(IsAchieveOK(p , i + 318) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
    	    	call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetAchievementName(327) + S3(IsAchieveOK(p , 327) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		elseif ( page == 9 ) then
			set i=1
		    loop
		    	exitwhen i > 4
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 327) + S3(IsAchieveOK(p , i + 327) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
			set i=5
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 38) + S3(IsAchieveOK(p , i + 38) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		elseif ( page == 10 ) then
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetAchievementName(49) + S3(IsAchieveOK(p , 49) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
			set i=2
		    loop
		    	exitwhen i > 3
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 408) + S3(IsAchieveOK(p , i + 408) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "ä¸ä¸é¡µ"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "å³é­|cffff6800(Esc)|r", 512))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroDialogContent takes player p,dialog d,integer page returns nothing
		if ( page == 1 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(3 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(4 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetHeroChallenageName(5 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 7) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetHeroChallenageName(6 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 6) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetHeroChallenageName(7 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 8) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetHeroChallenageName(8 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 10) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 9, DialogAddButtonBJ(d, GetHeroChallenageName(9 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 9) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
		elseif ( page == 2 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 1) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
		endif


    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "ä¸ä¸é¡µ"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "å³é­|cffff6800(Esc)|r", 512))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateSuperDialogContent takes player p,dialog d returns nothing
		
		call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetSuperChallenageName(1) + S3(IsQuanchengjiu(p) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetSuperChallenageName(2) + S3(IsAchieveOK(p , 42) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetSuperChallenageName(3) + S3(IsAchieveOK(p , 47) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetSuperChallenageName(4) + S3(GetLowerHeroCount(p , 99 , HERO_COUNT) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AchievementDialogClick takes nothing returns nothing
  local dialog d= GetClickedDialogBJ()
     local integer i= 1
     local integer page= LoadInteger(LHTable, GetHandleId(d), 12)
     local player p= LoadPlayerHandle(LHTable, GetHandleId(d), 13)
     local integer achieveID= LoadInteger(LHTable, GetHandleId(d), 14)

        //æ¥çæ¡ä»¶ä¸è®¾ç½®
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 15) ) then
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|r" + GetAchievementName(achieveID) + "|ræå°±çè·åæ¡ä»¶å¦ä¸æç¤º:")
	    	call DisplayTextToPlayer(p, 0., 0., GetAchievementCondition(achieveID))
	    elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 16) ) then
	    	call SetAchievement(p , achieveID)
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ æåå°å°æå°±è®¾ç½®æäº" + GetAchievementName(achieveID) + ".")
	    	//ä¿å­å°æå¡å¨
	    	call SaveAchievePointer(p)
	    endif

	    //éåº
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

	    //ä¸ä¸é¡µ
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
            call DialogClear(d)
	    	set page=I3(page < PAGE_ACHIEVE , page + 1 , 1)
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call DialogSetMessage(d, "æçæå°±|cffff6800(ç¬¬" + I2S(page) + "/" + I2S(PAGE_ACHIEVE) + "é¡µ)|r\n	    		æ¶éå¨é¨æå°±å¯ä»¥èªå®ä¹æå°±å")
	    	call NextPageAchievement(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //ç¹å»æå®çæå°±
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
	        	set achieveID=GetAchievementIndex(page , i)
	    		call SaveInteger(LHTable, GetHandleId(d), 14, achieveID)
	    		call DialogSetMessage(d, GetAchievementName(achieveID) + S3(IsAchieveOK(p , achieveID) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r"))
		    	call SaveButtonHandle(LHTable, GetHandleId(d), 15, DialogAddButtonBJ(d, "æ¥çè·åæ¡ä»¶"))
		    	if ( IsAchieveOK(p , achieveID) ) then
		    		call SaveButtonHandle(LHTable, GetHandleId(d), 16, DialogAddButtonBJ(d, "ä½¿ç¨è¯¥æå°±"))
		    	endif
		    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "å³é­|cffff6800(Esc)|r", 512))
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

	    //éåº
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

	    //ä¸ä¸é¡µ
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
            call DialogClear(d)
	    	set page=I3(page < PAGE_HERO_CHALLANGER , page + 1 , 1)
	    	call DialogSetMessage(d, "è±éææ")
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call CreateHeroDialogContent(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //ç¹å»
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|r" + GetHeroChallenageName(i , page) + "|rè±éææçæ¡ä»¶å¦ä¸æç¤º:")
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
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|r" + GetSuperChallenageName(i) + "|rè¶çº§æå°±çå®ææ¡ä»¶å¦ä¸æç¤º:")
		    	call DisplayTextToPlayer(p, 0., 0., GetSuperChallenageContent(i))
		    	if ( i == 2 ) then
	    			call SetAchievement(p , 42)
		    	elseif ( i == 3 ) then
	    			call SetAchievement(p , 47)
		    	elseif ( i == 4 ) then
	    			call SetAchievement(p , 48)
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
	    call DialogSetMessage(d, "æçæå°±|cffff6800(ç¬¬1/" + I2S(PAGE_ACHIEVE) + "é¡µ)|r\n	    	æ¶éå¨é¨æå°±å¯ä»¥èªå®ä¹æå°±å")
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
	    call DialogSetMessage(d, "è±éææ")
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
	    call DialogSetMessage(d, "è¶çº§æå°±")
	    call CreateSuperDialogContent(p , d)
	    call SavePlayerHandle(LHTable, GetHandleId(d), 13, p)
	    call DialogDisplay(p, d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function SuperAchievementClick)
	    set d=null
	    set t=null
	endfunction



//library Achievement ends
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
//library Printer:

	

//---------------------------------------------------------------------------------------------------
	

 function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
		if ( BHideDamage[GetConvertedPlayerId(whichPlayer)] ) then
			return
		endif
		if ( damage > 10000 ) then
	    	call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CCã|r" + spellName + "|cFFFF66CCã|rä¼¤å®³å æ" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,ä¼¤å®³" + ( I2S(R2I(damage / 10000)) + "ä¸" + addtional + "." ) ) ))
	    else
	    	call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CCã|r" + spellName + "|cFFFF66CCã|rä¼¤å®³å æ" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,ä¼¤å®³" + ( I2S(R2I(damage)) + addtional + "." ) ) ))
		endif
	endfunction

 function PrintSpell takes player whichPlayer,string spellName,real damage returns nothing
		call PrintSpellAdd(whichPlayer , spellName , damage , "")
	endfunction
	
 function PrintSpellContent takes player whichPlayer,string spellName,string content returns nothing
		if ( BHideDamage[GetConvertedPlayerId(whichPlayer)] ) then
			return
		endif
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CCã|r" + spellName + "|cFFFF66CCã|r" + content ))
	endfunction

 function PrintSpellName takes player whichPlayer,string spellName returns nothing
		call PrintSpellContent(whichPlayer , spellName , "")
	endfunction

//---------------------------------------------------------------------------------------------------

 function Printer___InitPrinter takes nothing returns nothing
		
	endfunction


//library Printer ends
//library SpellBase:


//---------------------------------------------------------------------------------------------------

	
 function SpellBase___ImmuteDamageTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, kUImmuteDamage)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(spellTable, id)
		call UnitRemoveAbility(u, 'Avul')
		set u=null
		set t=null
	endfunction

 function ImmuteDamageInterval takes unit u,real time returns nothing
  local timer t= CreateTimer()
		call UnitAddAbility(u, 'Avul')
		call SaveUnitHandle(spellTable, GetHandleId(t), kUImmuteDamage, u)
		call TimerStart(t, time, false, function SpellBase___ImmuteDamageTimer)
		set t=null
	endfunction

 function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u , 0)
	endfunction


//---------------------------------------------------------------------------------------------------
	
		

  function s__Connect_connect takes nothing returns nothing
   local integer this= sc__Connect__staticgetindex(GetExpiredTimer())
			call MoveLightning(s__Connect_l[this], true, GetUnitX(s__Connect_unit1[this]), GetUnitY(s__Connect_unit1[this]), GetUnitX(s__Connect_unit2[this]), GetUnitY(s__Connect_unit2[this]))
  endfunction

        function s__Connect__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__Connect__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__Connect_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__Connect_create takes unit unit1,unit unit2,string lightningType returns integer
      local integer this= s__Connect__allocate()
		   	set s__Connect_unit1[this]=unit1
		   	set s__Connect_unit2[this]=unit2
			set s__Connect_l[this]=AddLightning(lightningType, true, GetUnitX(unit1), GetUnitY(unit1), GetUnitX(unit2), GetUnitY(unit2))
			set s__Connect_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__Connect_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__Connect_t[this], 0.05, true, function s__Connect_connect)
			return this
  endfunction

  function s__Connect_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__Connect_t[this])))))))) // INLINED!!
			set s__Connect_unit1[this]=null
			set s__Connect_unit2[this]=null
			call DestroyLightningBJ(s__Connect_l[this])
			set s__Connect_l[this]=null
			call PauseTimer(s__Connect_t[this])
			call DestroyTimer(s__Connect_t[this])
			set s__Connect_t[this]=null
  endfunction

//Generated destructor of Connect
function s__Connect_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Connect_V[this]!=-1) then
        return
    endif
    call s__Connect_onDestroy(this)
    set si__Connect_V[this]=si__Connect_F
    set si__Connect_F=this
endfunction

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
				    if ( (IsEnemyMP((l_unit ) , GetOwningPlayer(( s__Attract_caster[this])))) and ( GetUnitMoveSpeed(l_unit) > 0 ) and ( not ( s__Attract_forbitHero[this] and IsUnitType(l_unit, UNIT_TYPE_HERO) ) ) and GetUnitAbilityLevel(l_unit, 'A0IH') < 1 ) then // INLINED!!
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
				if not ( s__Attract_deathContinue[this] ) then
					call sc__Attract_deallocate(this)
				endif
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
			set s__Attract_deathContinue[this]=false
			return this
  endfunction

  function s__Attract_SetForbitHero takes integer this returns nothing
			set s__Attract_forbitHero[this]=true
  endfunction

  function s__Attract_SetDeathContinue takes integer this returns nothing
			set s__Attract_deathContinue[this]=true
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
			    if ( (IsEnemyMP((l_unit ) , GetOwningPlayer(( s__Missile_caster[this])))) == true ) then // INLINED!!
			    	call UnitDamageTarget(s__Missile_caster[this], l_unit, s__Missile_damage[this], false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
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
	


  function s__Roubang_roubangrotate takes nothing returns nothing
   local integer this= sc__Roubang__staticgetindex(GetExpiredTimer())
   local integer i= 1
			if ( not ( IsUnitAliveBJ(s__Roubang_caster[this]) ) and GetUnitAbilityLevel(s__Roubang_caster[this], 'A0KH') < 1 ) then
				call sc__Roubang_deallocate(this)
			endif
			set s__Roubang_cAngle[this]=ModuloReal(s__Roubang_cAngle[this] + s__Roubang_aSpeed[this], 360.)
			loop
				exitwhen i > s__Roubang_number[this]
				if ( s___Roubang_URou[s__Roubang_URou[this]+i] != null ) then
					call SetUnitX(s___Roubang_URou[s__Roubang_URou[this]+i], (RMinBJ(RMaxBJ(((GetUnitX(s__Roubang_caster[this]) + s__Roubang_radius[this] * ( 2 * i - 1 ) * CosBJ(s__Roubang_cAngle[this]))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
					call SetUnitY(s___Roubang_URou[s__Roubang_URou[this]+i], (RMinBJ(RMaxBJ(((GetUnitY(s__Roubang_caster[this]) + s__Roubang_radius[this] * ( 2 * i - 1 ) * SinBJ(s__Roubang_cAngle[this]))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
					call SetUnitFacing(s___Roubang_URou[s__Roubang_URou[this]+i], s__Roubang_cAngle[this] + 90)
				endif
				set i=i + 1
			endloop
  endfunction

        function s__Roubang__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__Roubang__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__Roubang_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__Roubang_create takes unit caster,integer number,real radius,real aSpeed,real angle,integer utype returns integer
   local integer i= 2
      local integer this= s__Roubang__allocate()
			set s__Roubang_caster[this]=caster
			set s__Roubang_number[this]=IMinBJ(29, number)
			set s__Roubang_radius[this]=radius
			set s__Roubang_aSpeed[this]=aSpeed
			set s__Roubang_cAngle[this]=angle
			set s__Roubang_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Roubang_t[this]))))) )), ( ( (this)))) // INLINED!!
			set s___Roubang_URou[s__Roubang_URou[this]+1]=null
		   	loop
		   		exitwhen i > IMinBJ(29, number)
	   			set s___Roubang_URou[s__Roubang_URou[this]+i]=CreateUnit(GetOwningPlayer(caster), utype, (RMinBJ(RMaxBJ(((GetUnitX(caster) + radius * ( 2 * i - 1 ) * CosBJ(angle))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(caster) + radius * ( 2 * i - 1 ) * SinBJ(angle))*1.0), yd_MapMinY), yd_MapMaxY)), angle + 90) // INLINED!!
		   		set i=i + 1
		   	endloop
			call TimerStart(s__Roubang_t[this], 0.05, true, function s__Roubang_roubangrotate)
			return this
  endfunction


  function s__Roubang_onDestroy takes integer this returns nothing
   local integer i= 1
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Roubang_t[this])))))))) // INLINED!!
			set s__Roubang_caster[this]=null
			loop
				exitwhen i > s__Roubang_number[this]
				if ( s___Roubang_URou[s__Roubang_URou[this]+i] != null ) then
					call RemoveUnit(s___Roubang_URou[s__Roubang_URou[this]+i])
					set s___Roubang_URou[s__Roubang_URou[this]+i]=null
				endif
				set i=i + 1
			endloop
			call PauseTimer(s__Roubang_t[this])
			call DestroyTimer(s__Roubang_t[this])
			set s__Roubang_aSpeed[this]=0.
			set s__Roubang_cAngle[this]=0.
			set s__Roubang_radius[this]=0.
			set s__Roubang_number[this]=0
			set s__Roubang_t[this]=null
  endfunction

//Generated destructor of Roubang
function s__Roubang_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Roubang_V[this]!=-1) then
        return
    endif
    call s__Roubang_onDestroy(this)
    set si__Roubang_V[this]=si__Roubang_F
    set si__Roubang_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
		
		
  function s__MultiLife_flashLoc takes nothing returns nothing
   local integer this= sc__MultiLife__staticgetindex(GetExpiredTimer())
			if ( s__MultiLife_current[this] >= s__MultiLife_times[this] ) then
				return
			endif
			call SetTextTagPosUnitBJ(s__MultiLife_ttHint[this], s__MultiLife_caster[this], 20)
			if not ( IsUnitAliveBJ(s__MultiLife_caster[this]) ) then
				set s__MultiLife_current[this]=s__MultiLife_current[this] + 1
				call SetUnitLifePercentBJ(s__MultiLife_caster[this], 100)
				call SetTextTagTextBJ(s__MultiLife_ttHint[this], I2S(s__MultiLife_current[this]) + "/" + I2S(s__MultiLife_times[this]) + "æ¬¡çå½", 20)
				if ( s__MultiLife_current[this] >= s__MultiLife_times[this] ) then
					call UnitRemoveAbility(s__MultiLife_caster[this], 'A0KH')
				endif
			endif
  endfunction

  function s__MultiLife_getTimes takes integer this returns integer
			return s__MultiLife_current[this]
  endfunction

  function s__MultiLife__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__MultiLife__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__MultiLife_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

        function s__MultiLife_create takes unit caster,integer times returns integer

      local integer this
		   	set this=s__MultiLife__allocate()
			set s__MultiLife_caster[this]=caster
			set s__MultiLife_times[this]=times
			set s__MultiLife_ttHint[this]=CreateTextTagUnitBJ("1/" + I2S(times) + "æ¬¡çå½", caster, 0, 20, 0, 100, 100, 0)
			set s__MultiLife_current[this]=1
			//å ä¸å¤æ´»æè½
			call UnitAddAbility(caster, 'A0KH')
			set s__MultiLife_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__MultiLife_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__MultiLife_t[this], 0.05, true, function s__MultiLife_flashLoc)
			return this
  endfunction

  function s__MultiLife_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__MultiLife_t[this])))))))) // INLINED!!
			call UnitRemoveAbility(s__MultiLife_caster[this], 'A0KH')
			call DestroyTextTag(s__MultiLife_ttHint[this])
			set s__MultiLife_ttHint[this]=null
			set s__MultiLife_caster[this]=null
			call PauseTimer(s__MultiLife_t[this])
			call DestroyTimer(s__MultiLife_t[this])
			set s__MultiLife_t[this]=null
  endfunction

//Generated destructor of MultiLife
function s__MultiLife_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__MultiLife_V[this]!=-1) then
        return
    endif
    call s__MultiLife_onDestroy(this)
    set si__MultiLife_V[this]=si__MultiLife_F
    set si__MultiLife_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
		


  function s__SuperShield_flashLife takes nothing returns nothing

   local integer this= sc__SuperShield__staticgetindex(GetExpiredTimer())
			if ( IsUnitAliveBJ(s__SuperShield_caster[this]) ) then
				if ( s__SuperShield_current[this] <= s__SuperShield_times[this] and GetUnitState(s__SuperShield_caster[this], UNIT_STATE_LIFE) < ( GetUnitState(s__SuperShield_caster[this], UNIT_STATE_MAX_LIFE) * ( 1.0 - ( ( I2R(s__SuperShield_current[this]) ) / ( I2R(s__SuperShield_times[this] + 1) ) ) ) ) ) then
					call ImmuteDamageInterval(s__SuperShield_caster[this] , 5)
					call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(s__SuperShield_caster[this]), GetUnitY(s__SuperShield_caster[this])))
		    		call CreateTextTagA((I2S(s__SuperShield_current[this]) + "/" + I2S(s__SuperShield_times[this]) + "æ®µæ æ" ) , ( s__SuperShield_caster[this] ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		    		call SetUnitLifePercentBJ(s__SuperShield_caster[this], 100.0 * ( 1.0 - ( ( I2R(s__SuperShield_current[this]) ) / ( I2R(s__SuperShield_times[this] + 1) ) ) ))
					call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_ALL, s__SuperShield_caster[this])
					set s__SuperShield_current[this]=s__SuperShield_current[this] + 1
				endif
			else
				call sc__SuperShield_deallocate(this)
			endif

  endfunction


        function s__SuperShield__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__SuperShield__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__SuperShield_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__SuperShield_create takes unit caster,integer times returns integer

      local integer this= s__SuperShield__allocate()
			set s__SuperShield_caster[this]=caster
			set s__SuperShield_times[this]=times
			set s__SuperShield_current[this]=1

			set s__SuperShield_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__SuperShield_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__SuperShield_t[this], 0.5, true, function s__SuperShield_flashLife)
			return this
  endfunction


  function s__SuperShield_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__SuperShield_t[this])))))))) // INLINED!!
			set s__SuperShield_caster[this]=null
			call PauseTimer(s__SuperShield_t[this])
			call DestroyTimer(s__SuperShield_t[this])
			set s__SuperShield_t[this]=null
  endfunction

//Generated destructor of SuperShield
function s__SuperShield_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__SuperShield_V[this]!=-1) then
        return
    endif
    call s__SuperShield_onDestroy(this)
    set si__SuperShield_V[this]=si__SuperShield_F
    set si__SuperShield_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
 function IJ1 takes unit u,integer i1,integer i2 returns integer
		if ( BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return i1
		else
			return i2
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function RJ1 takes unit u,real r1,real r2 returns real
		if ( BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return r1
		else
			return r2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IJ2 takes unit u,integer i1,integer i2 returns integer
		if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RJ2 takes unit u,real r1,real r2 returns real
		if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return r1
		else
			return r2
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function IJ3 takes unit u,integer i1,integer i2 returns integer
		if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RJ3 takes unit u,real r1,real r2 returns real
		if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			return r1
		else
			return r2
		endif
	endfunction


//---------------------------------------------------------------------------------------------------

	
 function GetDamageStr takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) * 1.80 ) + ( GetHeroAgi(uH, true) ) + ( GetHeroInt(uH, true) * 1.20 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH=null
		return damage
	endfunction

	
 function GetDamageChenji takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage=  ( GetHeroStr(uH, true) ) * 2 * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
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

	
 function GetDamageBase takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) * 1.30 ) + ( GetHeroAgi(uH, true) * 1.30 ) + ( GetHeroInt(uH, true) * 1.3 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
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
//library Aura:
	

//---------------------------------------------------------------------------------------------------
	
 function Aura___TSpellYanmie3Con takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] != null and ( IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE) != true ) and ( IsUnitIllusionBJ(GetDyingUnit()) != true ) and ( GetUnitPointValue(GetDyingUnit()) != 0 ) and ( GetUnitTypeId(GetDyingUnit()) != 'h000' ) and ( IsUnitAlly(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) != true ) and ( GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER )
	endfunction

 function Aura___TSpellYanmie3Act takes nothing returns nothing
  local integer i= GetKillCount(GetDyingUnit())
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
		set Aura___YKillCount[index]=Aura___YKillCount[index] + i
		if ( Aura___YKillCount[index] >= 100 ) then
			call AddHero3W(udg_H[index] , GetHeroLevel(udg_H[index]) + 200)
			set Aura___YKillCount[index]=0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitKaisaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JU')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitYanmieAura takes nothing returns nothing
		set Aura___TSpellYanmie3=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(Aura___TSpellYanmie3, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(Aura___TSpellYanmie3, Condition(function Aura___TSpellYanmie3Con))
		call TriggerAddAction(Aura___TSpellYanmie3, function Aura___TSpellYanmie3Act)
		//æ¹®ç­æ°åç¯Todo
		call UnitAddAbility(gg_unit_n01S_0258, 'A0HF')
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		endfunction
//---------------------------------------------------------------------------------------------------
	
 function Aura___SanchuanShunTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer playerID= LoadInteger(spellTable, GetHandleId(t), 1)
		if not ( Aura___shunHints[playerID] ) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cffffff00é´é³ä¸å·ç®­|råç¯çææ,|cffffcc00ä½¿ç¨Mé®å¯ä»¥ç¬ç§»è³ä»»æå°ç¹|r,å·å´2.5s.")
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Aura___InitShunyi takes nothing returns nothing
  local timer t= null
  local integer i= 1
		loop
			exitwhen i > 6
			if ( udg_H[i] != null ) then
				set t=CreateTimer()
				call SaveInteger(spellTable, GetHandleId(t), 1, i)
				call TimerStart(t, 4, true, function Aura___SanchuanShunTimer)
				set Aura___shunHints[i]=false
    			call TriggerRegisterUnitEvent(Aura___TSpellMengji3, udg_H[i], EVENT_UNIT_ISSUED_POINT_ORDER)
			endif
			set i=i + 1
		endloop
		set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Aura___TSpellMengji3Con takes nothing returns boolean
	    return ( ( GetIssuedOrderIdBJ() == String2OrderIdBJ("move") ) and ( not ( Aura___shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) ) )
	endfunction

 function Aura___TSpellMengji3Act takes nothing returns nothing
		if ( IsInForbitRegion(GetOrderPointX() , GetOrderPointY() , GetTriggerUnit()) ) then
			call IssueImmediateOrder(GetTriggerUnit(), "stop")
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ­¤å¤ç¦æ­¢ç¬ç§»å°è¾¾.")
	        return
		endif
	    if ( IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY) ) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rç®æ å°ç¹ä¸è½éè¡,ç¬ç§»å¤±è´¥ï¼")
	    	return
	    endif
		set Aura___shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
		call SetUnitX(GetTriggerUnit(), GetOrderPointX())
		call SetUnitY(GetTriggerUnit(), GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetOrderPointX(), GetOrderPointY()))
		call PolledWait(2.5)
		set Aura___shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=false

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitXiaoyueAura takes nothing returns nothing
		call UnitAddAbilityBJ('A0AJ', gg_unit_n01S_0258)
	    call EnableTrigger(gg_trg_____________71)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitXuanxueAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddDamagePercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JV')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitBajueAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddStrPercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'AOae')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSeyuAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddAgiPercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JW')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitMoqiAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A04I')
		call EnableTrigger(gg_trg_______21)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitLingxueAura takes nothing returns nothing
	    call UnitAddAbilityBJ('A0FY', gg_unit_n01S_0258)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChenjiAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddDefensePercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JX')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitHanshangAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
            call AddMoneyPercent(i , 0.5)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JY')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitTaiyaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JZ')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitSheyanAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
            call AddIntPercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0K0')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitHeiyanAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddHPPercent(i , 0.5)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0GR')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitCanglingAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A0HR')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitMengjiAura takes nothing returns nothing
		
	    //è±éç¬¬ä¸ä¸ªæè½ç¬ç§»äºä»¶
	    set Aura___TSpellMengji3=CreateTrigger()
	    call TriggerAddCondition(Aura___TSpellMengji3, Condition(function Aura___TSpellMengji3Con))
	    call TriggerAddAction(Aura___TSpellMengji3, function Aura___TSpellMengji3Act)
		call UnitAddAbility(gg_unit_n01S_0258, 'A0EL')
		call Aura___InitShunyi()
		
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitHuanyiAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddSpellPercent(i , 0.6)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0GS')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSichenAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddStrPercent(i , 0.2)
			call AddAgiPercent(i , 0.2)
			call AddIntPercent(i , 0.2)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JE')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitXiaotingAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A0M5')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSpecifyAura takes unit u returns nothing
  local integer index= GetHeroIndex(GetUnitTypeId(u))
		if ( index == 1 ) then
			call UnitAddAbility(gg_unit_n01S_0258, 'A0JU') // INLINED!!
		elseif ( index == 2 ) then
			call InitYanmieAura()
		elseif ( index == 3 ) then
			call InitMoqiAura()
		elseif ( index == 4 ) then
			call InitXuanxueAura()
		elseif ( index == 5 ) then
			call InitBajueAura()
		elseif ( index == 6 ) then
			call InitSeyuAura()
		elseif ( index == 7 ) then
			call InitXiaoyueAura()
		elseif ( index == 8 ) then
			call UnitAddAbilityBJ('A0FY', gg_unit_n01S_0258) // INLINED!!
		elseif ( index == 9 ) then
			call InitChenjiAura()
		elseif ( index == 10 ) then
			call InitHanshangAura()
		elseif ( index == 11 ) then
			call UnitAddAbility(gg_unit_n01S_0258, 'A0JZ') // INLINED!!
		elseif ( index == 12 ) then
			call InitSheyanAura()
		elseif ( index == 13 ) then
			call InitHeiyanAura()
		elseif ( index == 14 ) then
			call InitMengjiAura()
		elseif ( index == 15 ) then
			call InitHuanyiAura()
		elseif ( index == 16 ) then
			call UnitAddAbility(gg_unit_n01S_0258, 'A0HR') // INLINED!!
		elseif ( index == 17 ) then
			call InitSichenAura()
		elseif ( index == 19 ) then
			call UnitAddAbility(gg_unit_n01S_0258, 'A0M5') // INLINED!!
		endif
	endfunction


//library Aura ends
//library Huodong:

//---------------------------------------------------------------------------------------------------
	
 function IsHuodong7 takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149978880 ) and ( ( (0) / 10 ) < 150315840 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsJianianhua takes nothing returns boolean
		return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsTianyanOK takes nothing returns boolean
		return IsAchieveOK(Player(0) , 325)
	endfunction


//library Huodong ends
//library Diffculty:
	



//---------------------------------------------------------------------------------------------------
	
 function GetDiffculty takes nothing returns integer

		if ( udg_Nandu_JJJ > 7 ) then
			return 9
		elseif ( udg_Nandu > 20 ) then
			return 8
		elseif ( udg_Nandu > 10 ) then
			return 7
		elseif ( udg_Nandu > 8 ) then
			return 6
		elseif ( udg_Nandu > 6 ) then
			return 5
		elseif ( udg_Nandu > 4 ) then
			return 4
		elseif ( udg_Nandu > 2 ) then
			return 3
		elseif ( udg_Nandu > 1 ) then
			return 2
		else
			return 1
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsWanjie takes nothing returns boolean
		return GetDiffculty() == 9
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function EnhanceDiffAttack takes unit u returns nothing
		if ( NanDiff <= 0 ) then
			return
		endif

		//100åæ»å»å å¼º
		if ( GetUnitAbilityLevel(u, 'A09V') >= 1 ) then
			call SetUnitAbilityLevel(u, 'A09V', NanDiff + 1)
			return
		endif

		call UnitAddAbility(u, 'A0EY')
		call SetUnitAbilityLevel(u, 'A0EY', NanDiff)
		
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddTianyanmokang takes unit u returns nothing
		if ( IsTianyan ) then
			 call UnitAddAbility(u, 'A09G')
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function RemoveDiffAttack takes unit u returns nothing
		if ( GetUnitAbilityLevel(u, 'A09V') >= 1 ) then
			call SetUnitAbilityLevel(u, 'A09V', 1)
		endif

		call UnitRemoveAbility(u, 'A0EY')
		call UnitRemoveAbility(u, 'A05O')
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function EnhanceWanjieAttack takes unit u returns nothing
		if ( (GetDiffculty() == 9) ) then // INLINED!!
			call EnhanceDiffAttack(u)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AttackBase takes unit u returns nothing
		if ( IsTianyan and GetUnitTypeId(u) == 'hrif' ) then
			call IssueTargetOrder(u, "attack", gg_unit_haro_0030)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetJunengTech takes nothing returns integer

		if ( NanDiff == 1 ) then
			return 'R00T'
		elseif ( NanDiff == 2 ) then
			return 'R00U'
		elseif ( NanDiff == 3 ) then
			return 'R00V'
		else
			return 'R00R'
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHundunTech takes nothing returns integer

		if ( NanDiff == 1 ) then
			return 'R01H'
		elseif ( NanDiff == 2 ) then
			return 'R01I'
		elseif ( NanDiff == 3 ) then
			return 'R01J'
		else
			return 'R01G'
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetForbidTianfuTime takes nothing returns real
		if ( GetDiffculty() >= 9 ) then
			return 9.5
		elseif ( GetDiffculty() >= 8 ) then
			return 7.5
		else
			return 5.
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetArenaUpdateSpeed takes nothing returns real
		if ( NanDiff == 1 ) then
			return 4.
		elseif ( NanDiff == 2 ) then
			return 3.
		elseif ( NanDiff == 3 ) then
			return 2.
		else
			return 5.
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetWanjieInt takes integer value,real rate returns integer
		if ( (GetDiffculty() == 9) ) then // INLINED!!
			return IMinBJ(2100000000, R2I(I2R(value) * rate))
		endif

		return value
	endfunction

	
 function GetWanjieReal takes real value,real rate returns real
		if ( (GetDiffculty() == 9) ) then // INLINED!!
			return value * rate
		endif

		return value
	endfunction
	
 function GetWanjieAddInt takes integer value,integer add returns integer
		if ( (GetDiffculty() == 9) ) then // INLINED!!
			return value + add
		endif

		return value
	endfunction

	 
//---------------------------------------------------------------------------------------------------
	
 function AddWanjieSpell takes unit u returns nothing
		if ( (GetDiffculty() == 9) ) then // INLINED!!
			if ( udg_Bo > 10 ) then
				//60åæè½
				call UnitAddAbility(u, 'A0GL')
			endif

			//éªçæè½
			call UnitAddAbility(u, 'ANbl')
			call UnitAddAbility(u, 'A0HE')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintDifficulty takes nothing returns nothing
  local integer d= GetDiffculty()
		if ( d == 6 ) then
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå°ç±é¾åº¦ä¸ï¼ä¼é¢å¤æé«ä»¥ä¸æªç©çé¾åº¦ï¼")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rç¼ç±30+å±ãå®ç³åºæªç©åç¿èåºä¼¤å®³æé«100%,çå½æé«66%.")
		elseif ( d == 7 ) then
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r|cffff0000æ«æ¥|ré¾åº¦ä¸ï¼ä¼é¢å¤æé«ä»¥ä¸æªç©çé¾åº¦ï¼")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rç¼ç±30+å±ãå®ç³åºæªç©åç¿èåºä¼¤å®³æé«200%,çå½æé«133%.")
		elseif ( d == 8 ) then
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r|cffff00ffè½®å|ré¾åº¦ä¸ï¼ä¼é¢å¤æé«ä»¥ä¸æªç©çé¾åº¦ï¼")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rç¼ç±30+å±ãå®ç³åºæªç©åç¿èåºä¼¤å®³æé«300%,æå çæ è§éªé¿,çå½æé«200%.")
		elseif ( d == 9 ) then
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r|cff008000ä¸å«|ré¾åº¦ä¸ï¼ä¼é¢å¤æé«ä»¥ä¸æªç©çé¾åº¦ï¼")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rç¼ç±30+å±ãå®ç³åºæªç©åç¿èåºä¼¤å®³æé«300%,æå çæ è§éªé¿,çå½æé«200%.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rç¼ç±å30å±ä¸å¤©åº­åä¼å¢å¼ºåä¸å±æ§.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rææåä½å¢å 50%åºç¡é²å¾¡,ææéè±éåä½å¢å 2%çå½åå¤éåº¦.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|réæªæ¯æ¬¡åçº§ä¼å3çº§.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rè¿æ»æªè·å¾æè½\"éªç\",10æ³¢ä»¥åæªç©æé«20åçå½ä¸20åæ»å».")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rçç«ä¸å¤§æ³BOSSæé«50åçå½ä¸20åçå½.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rè±éè·å¾ç»éªåå°25%.")
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|réå³è¯¥é¾åº¦å¯ä»¥å è½®åä¹ç±ä¸»ç¾¤æä½ åå­æ°¸ä¹ä¿å­å¨|cff99cc00å°å¸ä¸å«å½|rä¸­å¦!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitWanjie takes nothing returns nothing

		//åç¯ï¼å é²ååè¡ï¼
    	set UWanjieGuanghuan=CreateUnit(Player(10), 'h00U', 0, 0, 0)
    	if ( IsTianyan ) then
    		call SetUnitAbilityLevel(UWanjieGuanghuan, 'A0HD', 2)
    		call UnitAddAbility(UWanjieGuanghuan, 'A0JJ')
    	endif
    	call ShowUnitHide(UWanjieGuanghuan)

		//åä¸éä¸å30å±ç§æ 3åçå½
    	call SetPlayerTechResearchedSwap('R00X', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R00X', 1, Player(11))
    	//11-24æ³¢æªç©ï¼10åçå½
    	call SetPlayerTechResearchedSwap('R00Y', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R00Y', 1, Player(11))
    	//å å®ç³å°ç¨
    	call SetPlayerTechResearchedSwap('R010', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R010', 1, Player(11))
    	call SetPlayerTechResearchedSwap('R011', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R011', 1, Player(11))
    	//å¥å¹30000E
    	call SetPlayerTechResearchedSwap('R013', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R013', 1, Player(11))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Diffculty___UnlimitSlienceTianyanTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, 1)
		if ( IsUnitAliveBJ(u) ) then
 			call SimulateSpell(u , u , 'A0JK' , 1 , 5 , "silence" , true , false , false)
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
	endfunction
	
 function UnlimitSlienceTianyan takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(spellTable, GetHandleId(t), 1, u)
		call TimerStart(t, 3, true, function Diffculty___UnlimitSlienceTianyanTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitTianyan takes nothing returns nothing
  local unit l_unit= null
  local group g= GetUnitsOfTypeIdAll('uzg2')
		loop
		    set l_unit=FirstOfGroup(g)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(g, l_unit)
		    call AddTianyanmokang(l_unit)
		endloop
    	call SetPlayerTechResearchedSwap('R00Z', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R00Z', 1, Player(11))
    	call SetPlayerTechResearchedSwap('R01F', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R01F', 1, Player(11))
    	call DestroyGroup(g)
    	set g=null
    	set l_unit=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Show245Dialog takes nothing returns nothing
		call ShowGameHintAll("\n		æè°¢å¯¹æ¬å°å¾çæ¯æï¼\n    	ä½ éæ©çé¾åº¦å¨è¿æ³¢å°±ç»æäº.\n    	åç»­çå³å¡è¯·éæ©\"åè°\"é¾åº¦(é¾åº¦3)æä»¥ä¸è¿è¡ä½éª\n    	(å5ä¸ªé¾åº¦å¶å®æåä¸å¤§)")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Show2451Dialog takes nothing returns nothing
		call ShowGameHintAll("\n			æè°¢å¯¹æ¬å°å¾çæ¯æï¼\n	    	ä½ éæ©çé¾åº¦å¨è¿æ³¢å°±ç»æäº.\n	    	åç»­çå³å¡è¯·éæ©\"ç¼ç±\"é¾åº¦(é¾åº¦35)æä»¥ä¸è¿è¡ä½éª\n	    	(å5ä¸ªé¾åº¦å¶å®æåä¸å¤§)")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowMingjieDialog takes nothing returns nothing
		call ShowGameHintAll("\n			|cffff6800æ°ä»»å¡:|r\n			å»è´¥æ¥èªå¥çç5æ³¢æ»å»å¹¶å»è´¥|cffff0000å¥å¹|r.")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowKuileiDialog takes nothing returns nothing
		call ShowGameHintAll("\n			|cffff6800æ°ä»»å¡:|r\n			å»è´¥å­çåå¡|cffffff00ç©æ´|rä¸ç½æµ.")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function StartTiaozhan1 takes nothing returns nothing
  local integer i= 1
     local unit u= CreateUnit(Player(10), 'h025', 0, 0, 0)
		loop
			exitwhen i > 6
			if ( udg_H[i] != null ) then
				call UnitRemoveAbility(udg_H[i], 'A0B9')
			endif
			set i=i + 1
		endloop
    	call ShowUnitHide(u)
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rä½ ä»¬å¼å¯äºæå°±ææ1,ææè±éå¤±å»æ»å»éåº¦ä¸100000%çç§»å¨éåº¦.")
		set u=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Diffculty___Tiaozhan2Timer takes nothing returns nothing
  local integer i= 1
		if ( udg_Bo >= 13 ) then
			loop
				exitwhen i > 6
				if ( udg_H[i] != null ) then
    				call RecoverUnitHP(udg_H[i] , - 0.3)
				endif
				set i=i + 1
			endloop
		else
			loop
				exitwhen i > 6
				if ( udg_H[i] != null ) then
    				call RecoverUnitHP(udg_H[i] , - 0.1)
				endif
				set i=i + 1
			endloop
		endif
	endfunction

 function StartTiaozhan2 takes nothing returns nothing
		call TimerStart(CreateTimer(), 1, true, function Diffculty___Tiaozhan2Timer)
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rä½ ä»¬å¼å¯äºæå°±ææ2,ææè±éè·å¾éé±ä¸º1%,è±éæ¯ç§åå°10%ççå½.(13æ³¢å¼å§æ¯ç§åå°30%ççå½)")
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChooseDifficulty takes nothing returns nothing
		call DialogSetMessage(udg_X_Nandu, "éæ©é¾åº¦")
	    call DialogAddButtonBJ(udg_X_Nandu, "å¤©å½ï¼24+5+1æ³¢ï¼[æ´»å¨æé´]")
	    set udg_X_Nandu_Chuangkou[1]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "å¤ªå¹³ï¼24+5+1æ³¢ï¼[æ´»å¨æé´]")
	    set udg_X_Nandu_Chuangkou[2]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "åè°ï¼24+5+1æ³¢ï¼[æ´»å¨æé´]")
	    set udg_X_Nandu_Chuangkou[3]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "æäºï¼24+5+1æ³¢ï¼[æ´»å¨æé´]")
	    set udg_X_Nandu_Chuangkou[4]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "ç¼ç±ï¼24+5+1æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[5]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "å°ç±ï¼24+5+1æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[6]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cFFFF0000æ«æ¥|rï¼24+5+1æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[7]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cffff00ffè½®å|rï¼24+5+1æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[8]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cff008000ä¸å«|rï¼24+5+1æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[9]=GetLastCreatedButtonBJ()
	    if ( (IsAchieveOK(Player(0) , 325)) ) then // INLINED!!
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff993366å¤©é­|rï¼24+5+1æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[10]=GetLastCreatedButtonBJ()
	    endif
	    call DialogDisplay(GetFirstPlayer(), udg_X_Nandu, true)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Diffculty___GameModeClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
			//ç»å¸æ¨¡å¼
			set mode=1
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"ç»å¸æ¨¡å¼\".")
			set SgameMode="ç»å¸"
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
			//å éæ¨¡å¼
			set mode=2
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"å éæ¨¡å¼\".")
			set SgameMode="å é"
		endif

		call ChooseDifficulty()
        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChooseGameMode takes nothing returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

	    call DialogSetMessage(d, "è¯·éæ©æ¸¸ææ¨¡å¼")
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç»å¸æ¨¡å¼"))
	    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "å éæ¨¡å¼(è¿é¶)"))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function Diffculty___GameModeClick)
	    set d=null
	    set t=null
	endfunction

//library Diffculty ends
//library ItemBase:



//---------------------------------------------------------------------------------------------------
	
 function GetRandomPotion takes nothing returns integer
  local integer i= GetRandomInt(1, 6)
		if ( i == 1 ) then
			return 'sres'
		elseif ( i == 2 ) then
			return 'I06A'
		elseif ( i == 3 ) then
			return 'I06B'
		elseif ( i == 4 ) then
			return 'I06C'
		elseif ( i == 5 ) then
			return 'I06J'
		elseif ( i == 6 ) then
			return 'I06O'
		endif

		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ItemBase___TGetWingSpellCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] or GetManipulatingUnit() == udg_U_Zhuansheng_Dantiao[2] )
	endfunction
	
 function ItemBase___TGetWingSpellPickAct takes nothing returns nothing
		if ( GetItemTypeId(GetManipulatedItem()) == 'I043' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'Apxf')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I045' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A06O')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I041' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A09J')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I04R' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0AO')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05B' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0CL')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05C' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0CU')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05F' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0D0')
		endif
	endfunction
	
 function ItemBase___TGetWingSpellDropAct takes nothing returns nothing
		if ( GetItemTypeId(GetManipulatedItem()) == 'I043' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'Apxf')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I045' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A06O')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I041' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A09J')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I04R' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0AO')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05B' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0CL')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05C' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0CU')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05F' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0D0')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function ItemBase___TBookBUGCon takes nothing returns boolean
		return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
	endfunction

 function ItemBase___TBookBUGAct takes nothing returns nothing
		call PolledWait(1.0)
		call RemoveItem(GetManipulatedItem())
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function ReflashCrainaxAttr takes nothing returns nothing
		call ModifyHeroStat(bj_HEROSTAT_STR, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000, R2I(( I2R(udg_Laser[udg_Bo]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) ))))
	    call ModifyHeroStat(bj_HEROSTAT_AGI, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000, R2I(( I2R(udg_Laser[( udg_Bo + 29 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) ))))
	    call ModifyHeroStat(bj_HEROSTAT_INT, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000, R2I(( I2R(udg_Laser[( udg_Bo + 58 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) ))))
	    call SetUnitAbilityLevelSwapped('A0EM', UCrainax, udg_Bo)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ItemBase___ReviveNecklace takes nothing returns nothing
	        call PingMinimap(- 1658.00, - 14973.00, 2.00)
	        call RemoveUnit(UCrainax)
	        set UCrainax=CreateUnit(Player(10), 'Ekgg', - 1658.00, - 14973.00, 180)
	        call AddTianyanmokang(UCrainax)
	        call ReflashCrainaxAttr()
	        call DisplayTextToForce(GetPlayersAll(), "|cFFFF66CCãæ¶æ¯ã|r|cffff9900å£ä¸»Crainaxçåèº«|rå¤æ´».")
	        call TimerDialogDisplay(TiDiaNecklace, false)
	        call DestroyTimerDialog(TiDiaNecklace)
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	        set TiDiaNecklace=null
	endfunction

 function ItemBase___ReviveRing takes nothing returns nothing
   local unit u= null
	        call PingMinimap(- 10630.00, - 8642.00, 2.00)
	        set u=CreateUnit(Player(10), 'Naka', - 10425.00, - 10429.00, 180)
	        call SetHeroLevel(u, ( GetHeroLevel(u) + 1 ), true)
	        call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r|cFFFF6699åå¹´å­¤é­|r|cffffcc00å¼é­|rå¤æ´»äºã" ))
	        set u=null
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function BossDeathDropItem takes nothing returns nothing
  local timer t
	    if ( ( GetUnitTypeId(GetDyingUnit()) == 'Naka' ) ) then
	        call CreateItem('rat9', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
	        call TimerStart(CreateTimer(), 30, false, function ItemBase___ReviveRing)
	        call PolledWait(0.5)
	        call RemoveUnit(GetDyingUnit())
	    endif
	    if ( GetDyingUnit() == UCrainax ) then
	        call CreateItem('rde3', GetUnitX(UCrainax), GetUnitY(UCrainax))
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(UCrainax), GetUnitY(UCrainax)))
	        set t=CreateTimer()
	        set TiDiaNecklace=CreateTimerDialogBJ(t, "å£ä¸»åèº«å¤æ´»")
	        call TimerStart(t, 900, false, function ItemBase___ReviveNecklace)
	        call TimerDialogDisplay(TiDiaNecklace, true)
	        set t=null
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function ItemBase___InitItemBase takes nothing returns nothing


		//å é¤ä¹¦æ¬çå°ç¹BUG
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TBookBUGCon))
		call TriggerAddAction(t, function ItemBase___TBookBUGAct)

		//è·å¾ç¿èçæè½
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase___TGetWingSpellPickAct)

		//å æç¿èçæè½
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase___TGetWingSpellDropAct)

		//æ­»äº¡æè½ææåé¡¹é¾
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddAction(t, function BossDeathDropItem)
		set UCrainax=CreateUnit(Player(10), 'Ekgg', - 1661.7, - 14985.1, 180.000)



		set t=null

	endfunction


//library ItemBase ends
//library Continous:


//---------------------------------------------------------------------------------------------------
	
 function GiveJianianhuaGift takes player p returns nothing
  local integer i= IConDays[GetConvertedPlayerId(p)]
  local unit u= udg_H[GetConvertedPlayerId(p)]



		if ( i >= 7 ) then
			call AdjustPlayerStateBJ(2000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		elseif ( i >= 6 ) then
			call AdjustPlayerStateBJ(1500, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		elseif ( i >= 3 ) then
			call AdjustPlayerStateBJ(1000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		elseif ( i >= 2 ) then
			call AdjustPlayerStateBJ(500, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
		endif

		

		if ( i >= 12 ) then
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
		elseif ( i >= 4 ) then
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
		endif

		if ( i >= 5 ) then
			call UnitAddItemByIdSwapped('I075', u)
		else
			call UnitAddItemByIdSwapped('I074', u)
		endif

		if ( i >= 9 ) then
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)))
		endif
		
		if ( i >= 10 ) then
			call SetChenji2SpinOK(GetOwningPlayer(u))
		endif

		if ( i >= 20 ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 47)
		endif

		set u=null
	endfunction
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
		elseif ( days == 9 ) then
			return "|cffff00ffãèãçççç|r(ä»é8æ20æ¥å)"
		elseif ( days == 10 ) then
			return "æ°¸ä¹è§£é|cFFCCFF00è¾°å¯|rçç®è¤|cFFFF3333åæµè´¯æ|r"
		elseif ( days == 12 ) then
			return "ä¸­åç½+2000éå¸+2ä¸ªå°ç±ä¹ç¤¼"
		elseif ( days == 20 ) then
			return "æ°¸ä¹è§£éè¶çº§æå°±" + GetAchievementName(47)
		elseif ( days == 26 ) then
			return "é¦2ä½è¾¾æçç©å®¶å¯è·å¾åä½å åæ"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetContinousDay takes player p returns integer
		if ( (0) < TIMESTAMP_START ) then // INLINED!!
			return 0
		endif
		return ( (0) - ILastTime[GetConvertedPlayerId(p)] ) / 86400 // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateLoginDialog takes player p returns nothing
        local dialog d= DialogCreate()
        local string s= "\n        	åå¹´åæ´»å¨è¿ç»­ç»å½å¥å±(7æ26æ¥-8æ20æ¥)\n        	"
        local integer i= 1
        loop
        	exitwhen i > 26
        	if ( GetDailyReward(i) != null ) then
        		set s=s + "ç¬¬" + I2S(i) + "å¤©:" + GetDailyReward(i) + S3(IConDays[GetConvertedPlayerId(p)] >= i , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r") + "\n        		"
        	endif
        	set i=i + 1
        endloop
                		set s=s + "\n        ä½ å·²ç»è¿ç»­ç­¾å°äº" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©,æ³¨ææ­ç­¾äºä¼éæ°è®¡ç®å¦."
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "10åéä¹åå½å¤©æç­¾å°æå|cffff6800(Esc)|r", 512)
        call DialogDisplay(p, d, true)
        //call DialogDestroy(d)
        set d=null
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function Continous___GetCurrentStartTime takes player p returns integer
		return TIMESTAMP_START + ( ( (0) - TIMESTAMP_START ) / 86400 ) * 86400 // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitContinousData takes player p returns nothing
		set IConDays[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "IConDays")
		set ILastTime[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "ILastTime")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowQiandao takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ çç­¾å°ææ°ä¸º" + I2S(IQiandao2[GetConvertedPlayerId(p)]) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveLoginState takes player p returns nothing
		call DzAPI_Map_StoreInteger(p , "IConDays" , IConDays[GetConvertedPlayerId(p)])
		call DzAPI_Map_StoreInteger(p , "ILastTime" , ILastTime[GetConvertedPlayerId(p)])
		call DzAPI_Map_StoreInteger(p , "IQiandao2" , IQiandao2[GetConvertedPlayerId(p)])
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Continous___UploadToNetEaseTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local player p= LoadPlayerHandle(LHTable, id, 1)
		call SaveLoginState(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set p=null
		set t=null
	endfunction

 function UploadToNetEase takes player p returns nothing
  local timer t= CreateTimer()
		call SavePlayerHandle(LHTable, GetHandleId(t), 1, p)
		call TimerStart(t, 600, false, function Continous___UploadToNetEaseTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetDenglu takes player p returns nothing
		//æ´»å¨è¿æ²¡å¼å§ï¼æèè¯´æ¯é¦æ¬¡
		if ( (0) < TIMESTAMP_START ) then // INLINED!!
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r ")
			call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CCãæ¶æ¯ã|råå¹´åæ¶é´æªå¼å§.")
			return
		endif

		if ( ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START ) then
			set ILastTime[GetConvertedPlayerId(p)]=TIMESTAMP_START
			set IConDays[GetConvertedPlayerId(p)]=0
		endif

		//æ­ç­¾å¦éæ°å­å¨

		if ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] ) then
			//é¦æ¬¡è¿ç»­ç»å½çæç¤ºä¸å¥å±
			set IConDays[GetConvertedPlayerId(p)]=GetContinousDay(p) + 1

			set IQiandao2[GetConvertedPlayerId(p)]=IQiandao2[GetConvertedPlayerId(p)] + (0) - Continous___GetCurrentStartTime(p) // INLINED!!
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(æ³¨æä»å¤©çç­¾å°éè¦ç­10åéæè½ä¿å­).")
		elseif ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1 ) then
			//ä¿æå½å¤©çå¥å±

			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(ä»å¤©çç­¾å°æ°æ®å·²ç»å¨åé¢æ¸¸æä¸­ä¿å­äºå¦).")
		else
			set ILastTime[GetConvertedPlayerId(p)]=Continous___GetCurrentStartTime(p)
			set IConDays[GetConvertedPlayerId(p)]=1

			set IQiandao2[GetConvertedPlayerId(p)]=IQiandao2[GetConvertedPlayerId(p)] + (0) - Continous___GetCurrentStartTime(p) // INLINED!!
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(æ³¨æä»å¤©çç­¾å°éè¦ç­10åéæè½ä¿å­).")
		endif

		call UploadToNetEase(p)
	endfunction


//---------------------------------------------------------------------------------------------------

	
 function Continous___InitContinous takes nothing returns nothing
		
	endfunction


//library Continous ends
//library Version:
	
//---------------------------------------------------------------------------------------------------
	
 function Version___SaveAllPlayerAchievement takes integer id returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				call GetAchievementAndSave(ConvertedPlayer(i) , id)
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetPlatformLevelGold takes player p returns nothing
		
		if ( DzAPI_Map_GetMapLevel(p) >= 20 ) then
			call AdjustPlayerStateBJ(8000, p, PLAYER_STATE_RESOURCE_GOLD)
		elseif ( DzAPI_Map_GetMapLevel(p) >= 15 ) then
			call AdjustPlayerStateBJ(6000, p, PLAYER_STATE_RESOURCE_GOLD)
		elseif ( DzAPI_Map_GetMapLevel(p) >= 10 or true ) then
			call AdjustPlayerStateBJ(4000, p, PLAYER_STATE_RESOURCE_GOLD)
		elseif ( DzAPI_Map_GetMapLevel(p) >= 5 ) then
			call AdjustPlayerStateBJ(2000, p, PLAYER_STATE_RESOURCE_GOLD)
		endif

	endfunction
//-----------------------------------------------------------------1---------------------------------
	
 function Version___IsPass takes player p,integer nan returns boolean
  local integer i= 9
		loop
			exitwhen i < nan
			if ( GetBit(achieve[GetConvertedPlayerId(p)] , i) > 0 ) then
				return true
			endif
			set i=i - 1
		endloop
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°2çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMengjiHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°6çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCanglingHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°8çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXinglongHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°11çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaotingHint takes nothing returns string
		return "|cff99ccffèèå°æä½å¯¹æ°æå¯è½ä¸åå¥½,éå³ç¼ç±é¾åº¦åè¯æèªå·±çå®åå³å¯éå|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintCurrentPlatformLevel takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå½åä½ çå¹³å°å°å¾ç­çº§ä¸ºï¼" + I2S(DzAPI_Map_GetMapLevel(p)) + "ï¼")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsColorSpin takes player p returns boolean
		return ( GetBit(spin[GetConvertedPlayerId(p)] , 1) > 0 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 2 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMengjiSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 6 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCanglingSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 8 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXinglongSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 11 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaotingSelectedCon takes player p returns boolean
		return Version___IsPass(p , 5)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintMengjiPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintCanglingPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintXinglongPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitAllAchievement takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
    			set achieve[i]=S2I((DzAPI_Map_GetServerValue((ConvertedPlayer(i) ) , "S" + ( "achieve")))) // INLINED!!
    			set achieve2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve2")
    			set achieve3[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve3")
    			set achieve4[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve4")
    			set vipCode[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "vip")
    			set achiPage[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "page")
    			set heroCountString[i]=(DzAPI_Map_GetServerValue((ConvertedPlayer(i) ) , "S" + ( "hero"))) // INLINED!!
    			set spin[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin")
    			set diyu[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "defense")
    			
    			set Idaixin[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "daixin")
    			set Ileishi[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "leishi")
    			set SDIY[i]=(DzAPI_Map_GetServerValue((ConvertedPlayer(i) ) , "S" + ( "diy"))) // INLINED!!
    			set Greward[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "Greward")
    			set IConDays[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "IConDays")
    			set ILastTime[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "ILastTime")
    			set IQiandao2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "IQiandao2")
    			set spin2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin2")
    			
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¯»åæ°æ®ä¸­.....")
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function TSpeakPassword takes nothing returns nothing
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitOldAchievement takes integer id returns nothing

		if ( GetBit(achieve[id] , 9) > 0 ) then
			set achiPage[id]=19
		elseif ( GetBit(achieve[id] , 8) > 0 ) then
			set achiPage[id]=18
		elseif ( GetBit(achieve[id] , 7) > 0 ) then
			set achiPage[id]=17
		elseif ( GetBit(achieve[id] , 6) > 0 ) then
			set achiPage[id]=16
		elseif ( GetBit(achieve[id] , 5) > 0 ) then
			set achiPage[id]=15
		elseif ( GetBit(achieve[id] , 4) > 0 ) then
			set achiPage[id]=14
		elseif ( GetBit(achieve[id] , 3) > 0 ) then
			set achiPage[id]=13
		elseif ( GetBit(achieve[id] , 2) > 0 ) then
			set achiPage[id]=12
		elseif ( GetBit(achieve[id] , 1) > 0 ) then
			set achiPage[id]=11
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Version___GetTotalDeathCount takes nothing returns integer
  local integer i= 1
  local integer result= 0
		loop
			exitwhen i > 6
			set result=result + deathCount[i]
			set i=i + 1
		endloop
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveDaixin takes integer index returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) and ( index != i ) and ( DzAPI_Map_GetMapLevel(ConvertedPlayer(i)) <= 5 ) ) then
				set Idaixin[index]=Idaixin[index] + 1
			endif
			set i=i + 1
		endloop
		if ( Idaixin[index] >= 100 ) then
			call GetAchievementAndSave(ConvertedPlayer(index) , 324)
		else
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., GetAchievementName(324) + "|r" + I2S(Idaixin[index]) + "/100.")
	    	call DzAPI_Map_StoreInteger(ConvertedPlayer(index) , "daixin" , Idaixin[index])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievement takes nothing returns nothing

  local integer i= 1
  local integer level= GetDiffculty()

		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ræ­£å¨ä¿å­æ¸¸ææ°æ®ä¸­....è¯·ä¸è¦é©¬ä¸éåºæ¸¸æ,ä»¥åä¿å­å¤±è´¥...")

		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				//éå³ç§°å·
				call GetAchievementAndSave(ConvertedPlayer(i) , I3(level == 9 , 325 , 10 + level))

				//åéç§°å·
				if ( renshu == 1 and level != 9 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , I3(level < 8 , 217 - level , 29))
				endif

				//çéªæ«æ¥ææ
				if ( renshu == 1 and udg_H[i] == xuanxue and level >= 4 ) then
					call SetXuanxueSpinOK(ConvertedPlayer(i))
				endif

				//åºå°çè¡
				if ( udg_I_Er_diansi[1] == 0 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 221)
					if ( GetUnitState(gg_unit_haro_0030, UNIT_STATE_LIFE) <= ( 0.25 * GetUnitState(gg_unit_haro_0030, UNIT_STATE_MAX_LIFE) ) ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 222)
					endif
				endif

				if not ( BBaseDamage ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 320)
				endif

				if ( Version___GetTotalDeathCount() < 1 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 310)
				endif

				call SaveDaixin(i)

				if not ( BJiulun ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 323)
				endif

				if not ( BHaojie ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 327)
				endif

				if not ( BZongshu ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 49)
				endif

				if ( BTiaozhan1 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 410)
				endif
				
				if ( BTiaozhan2 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 411)
				endif

			endif
			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievementKuilei1 takes nothing returns nothing

  local integer i= 1
  local integer level= GetDiffculty()

		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ræ­£å¨ä¿å­æ¸¸ææ°æ®ä¸­....è¯·ä¸è¦é©¬ä¸éåºæ¸¸æ,ä»¥åä¿å­å¤±è´¥...")

		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then

				if ( (( ( (0) / 10 ) > 149978880 ) and ( ( (0) / 10 ) < 150315840 )) ) then // INLINED!!
					call SetLingxueSpinOK(ConvertedPlayer(i))
				endif

				if ( not ( BShengming ) and udg_RENSHU >= 4 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 45)
				endif

			endif
			set i=i + 1
		endloop


	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievement2 takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then

				//éå³ç§°å·,æ¶é´
				if ( (mode == 1) ) then // INLINED!!
					if ( udg_Second[2] < 135 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 223)
					endif
					if ( udg_Second[2] < 120 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 224)
					endif
					if ( udg_Second[2] < 90 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 225)
					endif
					if ( udg_Second[2] < 60 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 226)
					endif
				endif

			endif
			set i=i + 1
		endloop
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievement3 takes player p,integer zhuan returns nothing
		if ( zhuan >= 20 ) then
			call GetAchievementAndSave(p , 21)
		endif
		if ( zhuan >= 50 ) then
			call GetAchievementAndSave(p , 22)
		endif
		if ( zhuan >= 100 ) then
			call GetAchievementAndSave(p , 23)
		endif
		if ( zhuan == 125 and udg_H[GetConvertedPlayerId(p)] == yanmie ) then
			call SetYanmieSpinOK(p)
		endif
		if ( zhuan >= 150 ) then
			call GetAchievementAndSave(p , 24)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function TGetAchievementLumber takes nothing returns nothing
		call GetAchievementAndSave(GetTriggerPlayer() , 25)
		if ( GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 50000 ) then
			call GetAchievementAndSave(GetTriggerPlayer() , 26)
		endif
		if ( GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 100000 ) then
			call GetAchievementAndSave(GetTriggerPlayer() , 27)
		endif
		if ( GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 200000 ) then
			call GetAchievementAndSave(GetTriggerPlayer() , 28)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SavePIV takes player p,integer i returns nothing
    	call DzAPI_Map_StoreInteger(p , "vip" , i)
	endfunction

 function IsSavePIV takes player p,integer i returns boolean
		return vipCode[GetConvertedPlayerId(p)] == i
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IncreaseHeroCount takes player p,integer i returns nothing
  local integer index= GetConvertedPlayerId(p)
  local integer length
  local integer times
  local string temp
		if ( i < 1 or i > 31 ) then
			return
		endif
		if ( StringLength(heroCountString[index]) < 62 ) then
			set heroCountString[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		set length=StringLength(heroCountString[index])
		set times=S2I(SubStringBJ(heroCountString[index], 2 * i - 1, 2 * i))
		set temp=heroCountString[index]

		set times=IMinBJ(99, times + 1)
		set heroCountString[index]=SubStringBJ(temp, 1, 2 * i - 2)
		if ( times < 10 ) then
			set heroCountString[index]=heroCountString[index] + "0" + I2S(times)
		else
			set heroCountString[index]=heroCountString[index] + I2S(times)
		endif
		set heroCountString[index]=heroCountString[index] + SubStringBJ(temp, 2 * i + 1, length)
		set temp=null
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function GetHeroTimes takes player p returns integer
  local unit u= udg_H[GetConvertedPlayerId(p)]
  local integer i= GetHeroIndex(GetUnitTypeId(u))
		set u=null
		return GetSpecifyHeroTimes(p , i)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetBestHero takes player p returns integer
  local integer max= 0
  local integer maxIndex= 0
  local integer i= HERO_COUNT
		loop
			exitwhen i < 1
			if ( ( GetSpecifyHeroTimes(p , i) > max ) or ( GetSpecifyHeroTimes(p , i) == max and GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)])) == i ) ) then
				set max=GetSpecifyHeroTimes(p , i)
				set maxIndex=i
			endif
			set i=i - 1
		endloop

		return maxIndex
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintAllHeroTimes takes player p returns nothing
  local string result= ""
  local integer i= 1
  local real x= 0
  local real y= 0
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ çææè±éä½¿ç¨æ¬¡æ°å¦ä¸æç¤ºï¼")
		loop
			exitwhen i > HERO_COUNT
			set result=result + GetIndexHeroColorName(i) + "çä½¿ç¨æ¬¡æ°:" + I2S(GetSpecifyHeroTimes(p , i)) + ","
			if ( ModuloInteger(i, 3) == 0 ) then
				call DisplayTextToPlayer(p, 0., 0., result)
				set result=""
			endif
			set i=i + 1
		endloop
		if ( result != "" ) then
			call DisplayTextToPlayer(p, 0., 0., result)
		endif
		set result=null
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå¦æä½ æ³è°èè§è§é«åº¦,è¯·è¾å¥-+")
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå¦æä½ æ³éèæè½ä¼¤å®³,è¯·è¾å¥-sh(ä¸æ¨èæ°æè¾å¥)")
		//call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå¦æä½ æ³åæ¶å½©è²ç®è¤,è¯·è¾å¥-qc")
		if ( Greward[GetConvertedPlayerId(p)] > 0 ) then
			set x=GetUnitX(UDepot[GetConvertedPlayerId(p)])
			set y=GetUnitY(UDepot[GetConvertedPlayerId(p)])
			call RemoveUnit(UDepot[GetConvertedPlayerId(p)])
			set UDepot[GetConvertedPlayerId(p)]=CreateUnit(p, 'n01R', x, y, 270.000)
			if ( GetDiffculty() <= 5 ) then
				call UnitAddAbility(UDepot[GetConvertedPlayerId(p)], 'A0KW')
			endif
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function SaveDeathAchievement takes player p returns nothing
		set deathCount[GetConvertedPlayerId(p)]=deathCount[GetConvertedPlayerId(p)] + 1
		if ( deathCount[GetConvertedPlayerId(p)] >= 100 ) then
			call GetAchievementAndSave(p , 231)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveRingAchievement takes player p,integer count returns nothing
		if ( count == 120 ) then
			call GetAchievementAndSave(p , 321)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveMijingAchievement takes integer count returns nothing
  local integer i= 1
		if ( count < 13 ) then
			return
		endif
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				if ( count >= 13 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 36)
				endif
				if ( count >= 15 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 37)
				endif
				if ( count >= 17 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 38)
				endif
				if ( count >= 20 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 39)
				endif
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveJunengAchievement takes nothing returns nothing
		set JunengCount=JunengCount + 1
		if ( JunengCount >= 6 ) then
			call Version___SaveAllPlayerAchievement(311)
		endif
		if ( JunengCount >= 20 ) then
			call Version___SaveAllPlayerAchievement(312)
		endif
		if ( JunengCount >= 12 and GetDiffculty() >= 8 ) then
			call Version___SaveAllPlayerAchievement(313)
		endif
		if ( JunengCount >= 40 and GetDiffculty() >= 8 ) then
			call Version___SaveAllPlayerAchievement(314)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveDoorAchievement takes nothing returns nothing
  local integer i= 1
		if ( udg_Second[2] >= 8 ) then
			return
		endif
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				call GetAchievementAndSave(ConvertedPlayer(i) , 326)
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Version___SaveAttrAchievement takes nothing returns nothing
  local integer i= 1
  local integer attr= 0
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				if ( udg_H[i] != null ) then
					set attr=GetHeroStr(udg_H[i], true) + GetHeroInt(udg_H[i], true) + GetHeroAgi(udg_H[i], true)
					if ( attr > 3000000 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 315)
					endif
					if ( attr > 8000000 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 316)
					endif
					if ( attr > 20000000 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 317)
					endif
					if ( attr > 50000000 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 318)
					endif
				endif
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveKillLeishi takes player p returns nothing
		set Ileishi[GetConvertedPlayerId(p)]=SetIntegerBit(Ileishi[GetConvertedPlayerId(p)] , GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)])) + 1 , true)
		if ( GetIntegerHasOne(Ileishi[GetConvertedPlayerId(p)]) >= 12 ) then
			call GetAchievementAndSave(p , 322)
		else
			call DisplayTextToPlayer(p, 0., 0., GetAchievementName(322) + "|r" + I2S(GetIntegerHasOne(Ileishi[GetConvertedPlayerId(p)])) + "/12.")
		endif
    	call DzAPI_Map_StoreInteger(p , "leishi" , Ileishi[GetConvertedPlayerId(p)])
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
 function SaveAchievement5 takes player p,integer count returns nothing
		set killCount[GetConvertedPlayerId(p)]=killCount[GetConvertedPlayerId(p)] + count
		if ( killCount[GetConvertedPlayerId(p)] >= 15000 ) then
			call GetAchievementAndSave(p , 227)
		endif
		if ( killCount[GetConvertedPlayerId(p)] >= 40000 ) then
			call GetAchievementAndSave(p , 228)
		endif
		if ( killCount[GetConvertedPlayerId(p)] >= 80000 ) then
			call GetAchievementAndSave(p , 229)
		endif
		if ( killCount[GetConvertedPlayerId(p)] >= 150000 ) then
			call GetAchievementAndSave(p , 230)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievement6 takes player p,integer damage2 returns nothing
		if ( damage2 >= 500 ) then
			call GetAchievementAndSave(p , 32)
		endif
		if ( damage2 >= 4000 ) then
			call GetAchievementAndSave(p , 33)
		endif
		if ( damage2 >= 30000 ) then
			call GetAchievementAndSave(p , 34)
		endif
		if ( damage2 >= 600000 ) then
			call GetAchievementAndSave(p , 35)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function SavePetAchievement takes player p,integer level returns nothing
		if ( level >= 50 ) then
			call GetAchievementAndSave(p , 328)
		endif
		if ( level >= 70 ) then
			call GetAchievementAndSave(p , 329)
		endif
		if ( level >= 100 ) then
			call GetAchievementAndSave(p , 330)
		endif
		if ( level >= 150 ) then
			call GetAchievementAndSave(p , 331)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievement4 takes player p returns nothing
		if ( GetLowerHeroCount(p , 1 , 12) ) then
			call GetAchievementAndSave(p , 217)
		endif
		if ( GetLowerHeroCount(p , 5 , 12) ) then
			call GetAchievementAndSave(p , 218)
		endif
		if ( GetLowerHeroCount(p , 10 , 12) ) then
			call GetAchievementAndSave(p , 219)
		endif
		if ( GetLowerHeroCount(p , 30 , 12) ) then
			call GetAchievementAndSave(p , 220)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Version___SaveAllHeroTimes takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local player p= ConvertedPlayer(LoadInteger(LHTable, id, kSaveHeroTimes))
  local integer i= GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)]))
		call IncreaseHeroCount(p , i)
		call DzAPI_Map_StoreString(p , "hero" , heroCountString[GetConvertedPlayerId(p)])
    	call DzAPI_Map_Stat_SetStat(p , "hero" , GetIndexHeroName(GetBestHero(p)))
		call PrintAllHeroTimes(p)
		call SaveAchievement4(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set t=null
		set p=null
	endfunction

	
 function CreateAllHeroTimesTimer takes player p returns nothing
  local timer t= CreateTimer()
		call SaveInteger(LHTable, GetHandleId(t), kSaveHeroTimes, GetConvertedPlayerId(p))
		call TimerStart(t, 10, false, function Version___SaveAllHeroTimes)

		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperLiujiewang takes nothing returns player
  local integer i= 1
		loop
			exitwhen i > 6
			if ( IsAchieveOK(ConvertedPlayer(i) , 48) ) then
				return ConvertedPlayer(i)
			endif
			set i=i + 1
		endloop

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetAndSaveDIYName takes player p returns nothing
  local integer id= GetConvertedPlayerId(p)
		set achiPage[id]=- 1
		call SaveAchievePointer(p)
		call SetPlayerName(p, GetRandomColor() + "ã" + GetRandomColor() + SDIY[id] + GetRandomColor() + "ã" + GetRandomColor() + playerName[id] + "|r")
		call DzAPI_Map_Stat_SetStat(p , "achi" , SDIY[id])
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitAchievementName takes unit u returns nothing
  local integer id= GetConvertedPlayerId(GetOwningPlayer(u))
		//è®¡æ¶è±éæ°
		call CreateAllHeroTimesTimer(GetOwningPlayer(u))

		if ( achiPage[id] == - 1 ) then
			call SetAndSaveDIYName(GetOwningPlayer(u))
		else
			if ( StringLength(I2S(achiPage[id])) < 2 ) then
				set achiPage[id]=10
				call InitOldAchievement(id)
				call SaveAchievePointer(GetOwningPlayer(u))
			endif
			call SetAchievement(GetOwningPlayer(u) , achiPage[id])

			if ( IsAchieveOK(GetOwningPlayer(u) , 47) ) then
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
				call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00åå°äºæ¥èªå£ççæ¬¢è¿!!!|r")
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetDIYName takes player p,string s returns nothing
  local integer i= GetConvertedPlayerId(p)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æå°±å°æå°±èªå®ä¹æ:" + s + ".")
		set SDIY[i]=s
		call DzAPI_Map_StoreString(p , "diy" , SDIY[i])
		call SetAndSaveDIYName(p)
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function InitVersion takes nothing returns nothing
  local trigger t= CreateTrigger()
  local integer i= 1

		call CreateUnit(Player(6), 'n01E', 6144.0, 75, 270.000)
    	call CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01L', - 9816.0, - 5968.0, 270.000)
    	call CreateUnit(Player(6), 'n01K', 6144.0, - 683, 270.000)

		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
			    call TriggerRegisterPlayerStateEvent(t, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 20000.00)
			    set deathCount[i]=0
			    set killCount[i]=0
			endif
			set i=i + 1
		endloop
		call TriggerAddAction(t, function TGetAchievementLumber)

		call TimerStart(CreateTimer(), 60, true, function Version___SaveAttrAchievement)

		set t=null
	endfunction


//library Version ends
//library Diamond:


//---------------------------------------------------------------------------------------------------
    
    function IsInDiamondRegion takes real x,real y returns boolean
        local location point= Location(x, y)
        local boolean b= RectContainsLoc(gg_rct_Diamond2, point) or RectContainsLoc(gg_rct_Diamond3, point) or RectContainsLoc(gg_rct________8, point)
        call RemoveLocation(point)
        return b
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___Diamond100 takes integer itemID,integer newItemID returns boolean

        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥100%çæåçæåå°åçº§äº" + GetItemName(GetSpellTargetItem()) + "ï¼" ) ))
            call RemoveItem(GetSpellTargetItem())
            call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
            call PlaySoundBJ(gg_snd_Chenggong)
            return true
        endif
        return false
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function Diamond___DiamondA takes integer itemID,integer newItemID,integer poss returns boolean
        //çççç
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
        endif
        //éçççç
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçæåå°åçº§äº" + GetItemName(GetSpellTargetItem()) + "ï¼" ) ))
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçåçº§" + GetItemName(GetSpellTargetItem()) + "å¤±è´¥ï¼" ) ))
                if ( GetRandomInt(1, 5) == 1 ) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|rè£å¤å°äº+4ä»¥åæ¨èä½¿ç¨ç¥ç¦/å¼ºå/è¯åç³å»åçº§.")
                else
                    if ( GetRandomInt(1, 4) == 1 ) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|r|cffff00ffçççç|rå¯ä»¥å°å®ç³æåçæåè³100%,å¯ä»¥éè¿42è½¬æèæ°¸ä¹èµå©(è¯¦ææF9)è·å.")
                    endif
                endif
                call PlaySoundBJ(gg_snd_f_baoshi)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___DiamondB takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //çççç
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
        endif
        //éçççç
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçæåå°åçº§äº" + GetItemName(GetSpellTargetItem()) + "ï¼" ) ))
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçåçº§" + GetItemName(GetSpellTargetItem()) + "å¤±è´¥,ç­çº§éä½ï¼" ) ))
                if ( GetRandomInt(1, 5) == 1 ) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|rè£å¤å°äº+4ä»¥åæ¨èä½¿ç¨ç¥ç¦/å¼ºå/è¯åç³å»åçº§.")
                else
                    if ( GetRandomInt(1, 4) == 1 ) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|r|cffff00ffçççç|rå¯ä»¥å°å®ç³æåçæåè³100%,å¯ä»¥éè¿42è½¬æèæ°¸ä¹èµå©(è¯¦ææF9)è·å.")
                    endif
                endif
                call RemoveItem(GetSpellTargetItem())
                call UnitAddItemByIdSwapped(oldItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_f_baoshi)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___DiamondC takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //çççç
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
        endif
        //éçççç
        if ( GetItemTypeId(GetSpellTargetItem()) == itemID ) then
            if ( ( GetRandomInt(1, 100) <= poss ) ) then
                call RemoveItem(GetSpellTargetItem())
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçæåå°åçº§äº" + GetItemName(GetSpellTargetItem()) + "ï¼" ) ))
                call UnitAddItemByIdSwapped(newItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_Chenggong)
            else
                call RemoveItem(GetSpellTargetItem())
                call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CCãæ¶æ¯ã|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "ä»¥" + I2S(poss) + "%çæåçåçº§" + GetItemName(GetSpellTargetItem()) + "å¤±è´¥,ç­çº§éä½2çº§ï¼" ) ))
                if ( GetRandomInt(1, 5) == 1 ) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|rè£å¤å°äº+4ä»¥åæ¨èä½¿ç¨ç¥ç¦/å¼ºå/è¯åç³å»åçº§.")
                else
                    if ( GetRandomInt(1, 4) == 1 ) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãå°æç¤ºã|r|cffff00ffçççç|rå¯ä»¥å°å®ç³æåçæåè³100%,å¯ä»¥éè¿42è½¬æèæ°¸ä¹èµå©(è¯¦ææF9)è·å.")
                    endif
                endif
                call UnitAddItemByIdSwapped(oldItemID, GetTriggerUnit())
                call PlaySoundBJ(gg_snd_f_baoshi)
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddOneDiamond takes nothing returns nothing
                //å¤å¶åºæ¥çä¸è½åçº§
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('I02N', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond___Diamond100('I04Z' , 'nflg') == true ) then
            return
        endif
        if ( Diamond___Diamond100('I056' , 'spre') == true ) then
            return
        endif
        if ( Diamond___Diamond100('I057' , 'fwss') == true ) then
            return
        endif
        if ( Diamond___Diamond100('I050' , 'uflg') == true ) then
            return
        endif
        if ( Diamond___Diamond100('I055' , 'tgxp') == true ) then
            return
        endif
        if ( Diamond___Diamond100('I03Y' , 'dust') == true ) then
            return
        endif
        if ( Diamond___Diamond100('rej4' , 'drph') == true ) then
            return
        endif
        if ( Diamond___Diamond100('rej6' , 'dtsb') == true ) then
            return
        endif
        if ( Diamond___Diamond100('pgin' , 'gobm') == true ) then
            return
        endif
        call UnitAddItemByIdSwapped('I02N', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSecondDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('I04S', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond___DiamondA('nflg' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('spre' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('fwss' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('uflg' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('tgxp' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('dust' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('drph' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('dtsb' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondA('gobm' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('I04S', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddThirdDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('azhr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondA('esaz' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('asbl' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ram4' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ram3' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ram2' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ram1' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('oven' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('tels' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondA('gvsm' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('azhr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFourthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('gmfr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif

        if ( Diamond___DiamondB('sksh' , 'oslo' , 'esaz' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('ocor' , 'blba' , 'asbl' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rat3' , 'pams' , 'ram4' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('stre' , 'shrs' , 'ram3' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('lure' , 'thdm' , 'ram2' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rots' , 'tmmt' , 'ram1' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('frhg' , 'mlst' , 'oven' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('ofir' , 'soul' , 'tels' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('gldo' , 'gsou' , 'gvsm' , 70) == true ) then
            return
        endif




        call UnitAddItemByIdSwapped('gmfr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFourthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('wolg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondB('sksh' , 'oslo' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('ocor' , 'blba' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rat3' , 'pams' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('stre' , 'shrs' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('lure' , 'thdm' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rots' , 'tmmt' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('frhg' , 'mlst' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('ofir' , 'soul' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondB('gldo' , 'gsou' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('wolg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFourthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('skrt', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondA('sksh' , 'oslo' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ocor' , 'blba' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('rat3' , 'pams' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('stre' , 'shrs' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('lure' , 'thdm' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('rots' , 'tmmt' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('frhg' , 'mlst' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('ofir' , 'soul' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondA('gldo' , 'gsou' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('skrt', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFifthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('jpnt', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif

        if ( Diamond___DiamondB('oslo' , 'grsl' , 'sksh' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('blba' , 'cosl' , 'ocor' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('pams' , 'jdrn' , 'rat3' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('shrs' , 'kgal' , 'stre' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('thdm' , 'arsh' , 'lure' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('tmmt' , 'brag' , 'rots' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('mlst' , 'nspi' , 'frhg' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('soul' , 'sbok' , 'ofir' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('gsou' , 'envl' , 'gldo' , 60) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('jpnt', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFifthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ledg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondB('oslo' , 'grsl' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('blba' , 'cosl' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('pams' , 'jdrn' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('shrs' , 'kgal' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('thdm' , 'arsh' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('tmmt' , 'brag' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('mlst' , 'nspi' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('soul' , 'sbok' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondB('gsou' , 'envl' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('ledg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFifthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('wtlg', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondA('oslo' , 'grsl' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('blba' , 'cosl' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('pams' , 'jdrn' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('shrs' , 'kgal' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('thdm' , 'arsh' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('tmmt' , 'brag' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('mlst' , 'nspi' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('soul' , 'sbok' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondA('gsou' , 'envl' , 50) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('wtlg', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddFifthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('gopr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if ( Diamond___DiamondC('oslo' , 'grsl' , 'esaz' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('blba' , 'cosl' , 'asbl' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('pams' , 'jdrn' , 'ram4' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('shrs' , 'kgal' , 'ram3' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('thdm' , 'arsh' , 'ram2' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('tmmt' , 'brag' , 'ram1' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('mlst' , 'nspi' , 'oven' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('soul' , 'sbok' , 'tels' , 90) == true ) then
            return
        endif
        if ( Diamond___DiamondC('gsou' , 'envl' , 'gvsm' , 90) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('gopr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSixthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('glsk', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif

        if ( Diamond___DiamondB('grsl' , 'flag' , 'oslo' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('cosl' , 'shhn' , 'blba' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('jdrn' , 'shcw' , 'pams' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('kgal' , 'shtm' , 'shrs' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('arsh' , 'srtl' , 'thdm' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('brag' , 'olig' , 'tmmt' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('nspi' , 'oli2' , 'mlst' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('sbok' , 'arsc' , 'soul' , 50) == true ) then
            return
        endif
        if ( Diamond___DiamondB('envl' , 'rugt' , 'gsou' , 50) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('glsk', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSixthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('dthb', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondB('grsl' , 'flag' , 'oslo' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('cosl' , 'shhn' , 'blba' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('jdrn' , 'shcw' , 'pams' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('kgal' , 'shtm' , 'shrs' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('arsh' , 'srtl' , 'thdm' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('brag' , 'olig' , 'tmmt' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('nspi' , 'oli2' , 'mlst' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('sbok' , 'arsc' , 'soul' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondB('envl' , 'rugt' , 'gsou' , 70) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('dthb', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSixthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('bzbe', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondA('grsl' , 'flag' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('cosl' , 'shhn' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('jdrn' , 'shcw' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('kgal' , 'shtm' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('arsh' , 'srtl' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('brag' , 'olig' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('nspi' , 'oli2' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('sbok' , 'arsc' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondA('envl' , 'rugt' , 40) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('bzbe', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSixthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('dphe', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___DiamondC('grsl' , 'flag' , 'sksh' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('cosl' , 'shhn' , 'ocor' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('jdrn' , 'shcw' , 'rat3' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('kgal' , 'shtm' , 'stre' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('arsh' , 'srtl' , 'lure' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('brag' , 'olig' , 'rots' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('nspi' , 'oli2' , 'frhg' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('sbok' , 'arsc' , 'ofir' , 80) == true ) then
            return
        endif
        if ( Diamond___DiamondC('envl' , 'rugt' , 'gldo' , 80) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('dphe', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSeventhDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kygh', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif

        if ( Diamond___DiamondB('oli2' , 'rump' , 'nspi' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('arsc' , 'rde0' , 'sbok' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rugt' , 'shdt' , 'envl' , 40) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('kygh', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSeventhStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('mort', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif

        if ( Diamond___DiamondB('oli2' , 'rump' , 'nspi' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('arsc' , 'rde0' , 'sbok' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rugt' , 'shdt' , 'envl' , 60) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('mort', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSeventhBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ches', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif

        if ( Diamond___DiamondA('oli2' , 'rump' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('arsc' , 'rde0' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('rugt' , 'shdt' , 30) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('ches', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddSeventhCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif

        if ( Diamond___DiamondC('oli2' , 'rump' , 'mlst' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('arsc' , 'rde0' , 'soul' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('rugt' , 'shdt' , 'gsou' , 70) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddEighthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('sehr', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
 
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif


        if ( Diamond___DiamondB('rump' , 'shen' , 'oli2' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rde0' , 'oflg' , 'arsc' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('shdt' , 'crdt' , 'rugt' , 40) == true ) then
            return
        endif


        call UnitAddItemByIdSwapped('sehr', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddEighthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m3', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
 
        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif

        if ( Diamond___DiamondB('rump' , 'shen' , 'oli2' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('rde0' , 'oflg' , 'arsc' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('shdt' , 'crdt' , 'rugt' , 60) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('k3m3', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddEighthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m2', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif
        
        if ( Diamond___DiamondA('rump' , 'shen' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('rde0' , 'oflg' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('shdt' , 'crdt' , 30) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('k3m2', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddEighthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kybl', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif
        
        if ( Diamond___DiamondC('rump' , 'shen' , 'nspi' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('rde0' , 'oflg' , 'sbok' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('shdt' , 'crdt' , 'envl' , 70) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('kybl', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddNinthDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('bzbf', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                    å°æç¤º\n\n                    3çº§ä»¥ä¸çè£å¤ä¸å»ºè®®ä½¿ç¨æªç»å¼ºåçå®ç³ç¥¼å.\n                    å ä¸ºæªç»å¼ºåçå®ç³å¤±è´¥çè¾é«,ä¸å¤±è´¥ä¼éçº§.\n\n                    |cff6699ffç¥ç¦ç³è½ä»¤è£å¤å¤±è´¥ä¸ä¼éçº§.\n                    å¼ºåç³è½æææé«åçº§æåç.\n                    è¯åç³æ´è½æé«æåç.|r\n\n                    ä»¥ä¸3ç§å®ç³è½ä¸æ®éçå®ç³èåå¨ä¸èµ·.\n                    ä»¥ä¸3ç§å®ç³åå¨å®ç³ä¸åºå·æªè·å.\n    ")
            endif
        endif
        
        if ( Diamond___DiamondB('shen' , 'stpg' , 'rump' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('oflg' , 'frgd' , 'rde0' , 40) == true ) then
            return
        endif
        if ( Diamond___DiamondB('crdt' , 'pspd' , 'shdt' , 40) == true ) then
            return
        endif



        call UnitAddItemByIdSwapped('bzbf', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddNinthStrDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('kysn', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif
        
        if ( Diamond___DiamondB('shen' , 'stpg' , 'rump' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('oflg' , 'frgd' , 'rde0' , 60) == true ) then
            return
        endif
        if ( Diamond___DiamondB('crdt' , 'pspd' , 'shdt' , 60) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('kysn', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddNinthBlessDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('ktrm', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif
        
        if ( Diamond___DiamondA('shen' , 'stpg' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('oflg' , 'frgd' , 30) == true ) then
            return
        endif
        if ( Diamond___DiamondA('crdt' , 'pspd' , 30) == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('ktrm', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___AddNinthCurseDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('shwd', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif

        if not ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
            if not ( Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
                set Diamond___BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()) , "\n                å°æç¤º\n\n                7çº§ä»¥ä¸çè£å¤å çå¯è½ä¼è¾ä½.\n\n                ä½ è¿å¯ä»¥éè¿ä¸é¢2ç§æ¹å¼æé«æåç:\n                1.éè¿42æ¬¡è½¬çè·å|cffff00ffãèãçççç|r\n                (100%çåçº§æåç,å½å±æ éæ¬¡ä½¿ç¨)\n                2.ä½¿ç¨æææ°å¨åºå°å·¦è¾¹è´­ä¹°|cffff0000è¡ç²¾ç³|r.\n                (100%çåçº§æåç,æ¶èå)\n    ")
            endif
        endif
        
        if ( Diamond___DiamondC('shen' , 'stpg' , 'oli2' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('oflg' , 'frgd' , 'arsc' , 70) == true ) then
            return
        endif
        if ( Diamond___DiamondC('crdt' , 'pspd' , 'rugt' , 70) == true ) then
            return
        endif


        call UnitAddItemByIdSwapped('shwd', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___XueJingDiamond takes nothing returns nothing
        if ( IsItemPawnable(GetSpellTargetItem()) == false ) then
            call UnitAddItemByIdSwapped('k3m1', GetTriggerUnit())
            call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
            return
        endif
        
        if ( Diamond___Diamond100('oli2' , 'rump') == true ) then
            return
        endif
        if ( Diamond___Diamond100('arsc' , 'rde0') == true ) then
            return
        endif
        if ( Diamond___Diamond100('rugt' , 'shdt') == true ) then
            return
        endif
        if ( Diamond___Diamond100('shen' , 'stpg') == true ) then
            return
        endif
        if ( Diamond___Diamond100('oflg' , 'frgd') == true ) then
            return
        endif
        if ( Diamond___Diamond100('crdt' , 'pspd') == true ) then
            return
        endif
        if ( Diamond___Diamond100('rump' , 'shen') == true ) then
            return
        endif
        if ( Diamond___Diamond100('rde0' , 'oflg') == true ) then
            return
        endif
        if ( Diamond___Diamond100('shdt' , 'crdt') == true ) then
            return
        endif

        call UnitAddItemByIdSwapped('k3m1', GetTriggerUnit())
        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE)
        return
    endfunction

//---------------------------------------------------------------------------------------------------

    
    function Diamond___TSpellDiamondAct takes nothing returns nothing
        if ( GetSpellAbilityId() == 'A02Z' ) then
            call Diamond___AddOneDiamond()
        elseif ( GetSpellAbilityId() == 'Amnb' ) then
            call Diamond___AddSecondDiamond()
        elseif ( GetSpellAbilityId() == 'Ambb' ) then
            call Diamond___AddThirdDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACfl' ) ) then
            call Diamond___AddFourthDiamond()
        elseif ( ( GetSpellAbilityId() == 'Aenw' ) ) then
            call Diamond___AddFourthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'Aenr' ) ) then
            call Diamond___AddFourthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACcy' ) ) then
            call Diamond___AddFifthDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACbn' ) ) then
            call Diamond___AddFifthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'SCc1' ) ) then
            call Diamond___AddFifthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACfb' ) ) then
            call Diamond___AddFifthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACls' ) ) then
            call Diamond___AddSixthDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACbf' ) ) then
            call Diamond___AddSixthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'Afod' ) ) then
            call Diamond___AddSixthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'ACdc' ) ) then
            call Diamond___AddSixthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DG' ) ) then
            call Diamond___AddSeventhDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DI' ) ) then
            call Diamond___AddSeventhStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DH' ) ) then
            call Diamond___AddSeventhBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DN' ) ) then
            call Diamond___AddSeventhCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DJ' ) ) then
            call Diamond___AddEighthDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DK' ) ) then
            call Diamond___AddEighthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DL' ) ) then
            call Diamond___AddEighthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DM' ) ) then
            call Diamond___AddEighthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DO' ) ) then
            call Diamond___AddNinthDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DR' ) ) then
            call Diamond___AddNinthStrDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DQ' ) ) then
            call Diamond___AddNinthBlessDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0DP' ) ) then
            call Diamond___AddNinthCurseDiamond()
        elseif ( ( GetSpellAbilityId() == 'A0EK' ) ) then
            call Diamond___XueJingDiamond()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function DiamondMonsterFilter takes nothing returns boolean
        return ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------

    
    function DiamondPlayerFilter takes nothing returns boolean
        return ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) and ( GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER ) and ( IsUnitAliveBJ(GetFilterUnit()) or ( GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] and not ( (GetDiffculty() == 9) ) ) ) ) // INLINED!!
    endfunction

    function DiamondPlayerFilterOther takes nothing returns boolean
        return ( ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true ) and ( GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER ) and ( IsUnitAliveBJ(GetFilterUnit()) or ( GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] ) ) )
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___CreateDiamonMonster takes integer whichType,integer aLevel returns nothing
        local real x= 0
        local real y= 0
        local unit u
        if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
            set x=GetRandomReal(GetRectMinX(gg_rct________8), GetRectMaxX(gg_rct________8))
            set y=GetRandomReal(GetRectMinY(gg_rct________8), GetRectMaxY(gg_rct________8))
        elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
            set x=GetRandomReal(GetRectMinX(gg_rct_Diamond2), GetRectMaxX(gg_rct_Diamond2))
            set y=GetRandomReal(GetRectMinY(gg_rct_Diamond2), GetRectMaxY(gg_rct_Diamond2))
        else
            set x=GetRandomReal(GetRectMinX(gg_rct_Diamond3), GetRectMaxX(gg_rct_Diamond3))
            set y=GetRandomReal(GetRectMinY(gg_rct_Diamond3), GetRectMaxY(gg_rct_Diamond3))
        endif
        set u=CreateUnit(Player(10), whichType, x, y, GetRandomDirectionDeg())
        call EnhanceDiffAttack(u)
        call SetUnitAbilityLevel(u, 'AB01', GetWanjieAddInt(aLevel , 9))
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
        elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
            set group1=GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondMonsterFilter))
            set group2=GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilter))
        elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
            set group1=GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondMonsterFilter))
            set group2=GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondPlayerFilter))
        endif


//textmacro instance: StartDiamondMonster("rre1","nnmg","1")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rre1' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nnmg' , 1)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("rre1","nnmg","1")
//textmacro instance: StartDiamondMonster("rhe1","nmyr","2")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rhe1' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nmyr' , 2)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("rhe1","nmyr","2")
//textmacro instance: StartDiamondMonster("guvi","nnsw","3")

        if ( ( GetItemTypeId(GetSoldItem()) == 'guvi' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nnsw' , 3)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("guvi","nnsw","3")
//textmacro instance: StartDiamondMonster("tpow","nsnp","4")

        if ( ( GetItemTypeId(GetSoldItem()) == 'tpow' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nsnp' , 4)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("tpow","nsnp","4")
//textmacro instance: StartDiamondMonster("rhe2","nhyc","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rhe2' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nhyc' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("rhe2","nhyc","5")
//textmacro instance: StartDiamondMonster("tint","nnrg","6")

        if ( ( GetItemTypeId(GetSoldItem()) == 'tint' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nnrg' , 6)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("tint","nnrg","6")
//textmacro instance: StartDiamondMonster("modt","nplb","7")

        if ( ( GetItemTypeId(GetSoldItem()) == 'modt' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nplb' , 7)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("modt","nplb","7")
//textmacro instance: StartDiamondMonster("sman","ntrv","8")

        if ( ( GetItemTypeId(GetSoldItem()) == 'sman' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('ntrv' , 8)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("sman","ntrv","8")
//textmacro instance: StartDiamondMonster("sorf","nmmu","9")

        if ( ( GetItemTypeId(GetSoldItem()) == 'sorf' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nmmu' , 9)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("sorf","nmmu","9")
//textmacro instance: StartDiamondMonster("ratf","nanb","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'ratf' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nanb' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("ratf","nanb","5")
//textmacro instance: StartDiamondMonster("rreb","nanm","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'rreb' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nanm' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("rreb","nanm","5")
//textmacro instance: StartDiamondMonster("ckng","nane","5")

        if ( ( GetItemTypeId(GetSoldItem()) == 'ckng' ) ) then
            if ( ( CountUnitsInGroup(group1) == 0 ) ) then
                if ( ( CountUnitsInGroup(group2) != 0 ) ) then
                    if ( RectContainsUnit(gg_rct________8, GetSellingUnit()) ) then
                        set IAtleast1=21
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetSellingUnit()) ) then
                        set IAtleast2=21
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetSellingUnit()) ) then
                        set IAtleast3=21
                    endif
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|rç¥ä½ å¥½è¿!")
                    set i=1
                    loop
                        exitwhen i > 20
                        call Diamond___CreateDiamonMonster('nane' , 5)
                        set i=i + 1
                    endloop
                else
                    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ²¡è±éä¸å¼å·!")
                endif
            else
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ¸å®è¿æ³¢ä¸è¥¿åæ¥ä¹°!")
            endif
        endif

//end of: StartDiamondMonster("ckng","nane","5")

        call DestroyGroup(group1)
        call DestroyGroup(group2)
        set group1=null
        set group2=null

    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Diamond___MonsterDropDiamond takes nothing returns boolean
        local integer i= 1
       
            if ( ( GetUnitTypeId(GetDyingUnit()) == 'nnmg' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                        call CreateItem('I02N', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                        set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nmyr' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('I04S', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nnsw' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('azhr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nsnp' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('gmfr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nhyc' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('jpnt', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nnrg' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('glsk', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nplb' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('kygh', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'ntrv' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('sehr', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nmmu' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('bzbf', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nanb' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('thle', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nanm' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('dkfw', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'nane' ) ) then
                loop
                    exitwhen i > CModeH(1 , 2)
                    call CreateItem('phlt', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
                    set i=i + 1
                endloop
                return true
            endif
            set i=i + 1
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function TDropDiamondCon takes nothing returns boolean
        return ( GetOwningPlayer(GetDyingUnit()) == Player(10) or GetOwningPlayer(GetDyingUnit()) == Player(11) ) and not ( IsUnitIllusion(GetDyingUnit()) )
    endfunction
    
    function TDropDiamondAct takes nothing returns nothing
        if ( ( ( GetUnitTypeId(GetDyingUnit()) == 'nnmg' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nmyr' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nnsw' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsnp' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nhyc' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nnrg' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nplb' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ntrv' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nmmu' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nanb' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nanm' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nane' ) ) and ( GetPlayerController(GetOwningPlayer(GetDyingUnit())) == MAP_CONTROL_COMPUTER ) ) then
            if ( RectContainsUnit(gg_rct________8, GetDyingUnit()) ) then
                set IAtleast1=( IAtleast1 - 1 )
                if ( ( IAtleast1 == 1 ) ) then
                    set IAtleast1=100
                    call Diamond___MonsterDropDiamond()
                    return
                endif
            elseif ( RectContainsUnit(gg_rct_Diamond2, GetDyingUnit()) ) then
                set IAtleast2=( IAtleast2 - 1 )
                if ( ( IAtleast2 == 1 ) ) then
                    set IAtleast2=100
                    call Diamond___MonsterDropDiamond()
                    return
                endif
            elseif ( RectContainsUnit(gg_rct_Diamond3, GetDyingUnit()) ) then
                set IAtleast3=( IAtleast3 - 1 )
                if ( ( IAtleast3 == 1 ) ) then
                    set IAtleast3=100
                    call Diamond___MonsterDropDiamond()
                    return
                endif
            endif
            if ( ( GetRandomInt(1, 25) == 1 ) and not ( IsTianyan ) and IsInDiamondRegion(GetUnitX(GetDyingUnit()) , GetUnitY(GetDyingUnit())) ) then
                if ( Diamond___MonsterDropDiamond() ) then
                    if ( RectContainsUnit(gg_rct________8, GetDyingUnit()) ) then
                        set IAtleast1=100
                    elseif ( RectContainsUnit(gg_rct_Diamond2, GetDyingUnit()) ) then
                        set IAtleast2=100
                    elseif ( RectContainsUnit(gg_rct_Diamond3, GetDyingUnit()) ) then
                        set IAtleast3=100
                    endif
                endif
            endif
        endif
        
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function ClearDiamondRegion takes rect r returns nothing
        local unit l_unit= null
        local group group2= GetUnitsInRectMatching(r, Condition(function DiamondMonsterFilter))
        set group2=GetUnitsInRectMatching(r, Condition(function DiamondMonsterFilter))
        loop
            set l_unit=FirstOfGroup(group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(group2, l_unit)
            call FlushChildHashtable(YDHT, GetHandleId(l_unit))
            call RemoveUnit(l_unit)
        endloop
        call DestroyGroup(group2)
        set group2=null
        set l_unit=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function TLeaveDiamondRegionCon takes nothing returns boolean
        return ( ( GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER ) )
    endfunction

    function TLeaveDiamondRegion1Act takes nothing returns nothing
        local group group1= GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
        if ( ( CountUnitsInGroup(group1) == 0 ) ) then
            call ClearDiamondRegion(gg_rct________8)
        endif
        call DestroyGroup(group1)
        set group1=null
    endfunction

    function TLeaveDiamondRegion2Act takes nothing returns nothing
        local group group1= GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilterOther))
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

    function TLeaveDiamondRegion3Act takes nothing returns nothing
        local group group1= GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondPlayerFilterOther))
        local group group2= null
        local unit l_unit= null
        if ( ( CountUnitsInGroup(group1) == 0 ) ) then
            set group2=GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondMonsterFilter))
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
    
    function Diamond___DiamondDialogClick takes nothing returns nothing
        local dialog d= GetClickedDialogBJ()
        local unit u= LoadUnitHandle(LHTable, GetHandleId(d), 3)

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
            call SetUnitX(u, GetRectCenterX(gg_rct_Diamond2))
            call SetUnitY(u, GetRectCenterY(gg_rct_Diamond2))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), GetRectCenterX(gg_rct_Diamond2), GetRectCenterY(gg_rct_Diamond2), 0.2)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct_Diamond2), GetRectCenterY(gg_rct_Diamond2)))
            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|råå»è¾å¥âHGâã")
        endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 4) ) then
            call SetUnitX(u, GetRectCenterX(gg_rct_Diamond3))
            call SetUnitY(u, GetRectCenterY(gg_rct_Diamond3))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), GetRectCenterX(gg_rct_Diamond3), GetRectCenterY(gg_rct_Diamond3), 0.2)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct_Diamond3), GetRectCenterY(gg_rct_Diamond3)))
            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|råå»è¾å¥âHGâã")
        endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
            call SetUnitX(u, GetRectCenterX(gg_rct________8))
            call SetUnitY(u, GetRectCenterY(gg_rct________8))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), GetRectCenterX(gg_rct________8), GetRectCenterY(gg_rct________8), 0.2)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct________8), GetRectCenterY(gg_rct________8)))
            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|råå»è¾å¥âHGâã")
        endif

        call FlushChildHashtable(LHTable, GetHandleId(d))
        call DialogDisplay(GetOwningPlayer(u), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        set u=null
        call DestroyTrigger(GetTriggeringTrigger())
    endfunction

    function CreateDiamondDialog takes unit u returns nothing
        local trigger t= CreateTrigger()
        local dialog d= DialogCreate()

        call DialogSetMessage(d, "è¯·éæ©è¿å¥çå®ç³åº")
        call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ä½çº§å®ç³åº1ï¼æ¬¡ï¼"))
        call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, "ä½çº§å®ç³åº2ï¼æ¬¡ï¼"))
        call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "é«çº§å®ç³åºï¼ä¸»ï¼"))
        call SaveUnitHandle(LHTable, GetHandleId(d), 3, u)
        call DialogDisplay(GetOwningPlayer(u), d, true)
        call TriggerRegisterDialogEvent(t, d)
        call TriggerAddAction(t, function Diamond___DiamondDialogClick)
        set d=null
        set t=null
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function EnterDiamond takes nothing returns nothing
        if ( ( GetItemTypeId(GetSoldItem()) == 'rspd' ) ) then
            call CreateDiamondDialog(GetBuyingUnit())
        endif
    endfunction
//---------------------------------------------------------------------------------------------------

	
 function Diamond___InitDiamond takes nothing returns nothing
		
        local trigger t= CreateTrigger()

        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddAction(t, function Diamond___TSpellDiamondAct)

        //å¼å§å·å®ç³
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
        call TriggerAddCondition(t, Condition(function TBuyDiamondStartCon))
        call TriggerAddAction(t, function TBuyDiamondStartAct)

        //å®ç³æªç©æè½
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
        call TriggerAddCondition(t, Condition(function TDropDiamondCon))
        call TriggerAddAction(t, function TDropDiamondAct)

        //å®ç³åºç¦»å¼äºä»¶
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct________8)
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion1Act)
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct_Diamond2)
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion2Act)
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct_Diamond3)
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion3Act)

        set t=null
	endfunction


//library Diamond ends
//library Xiaoting:
	


//---------------------------------------------------------------------------------------------------
	
    function Xiaoting___TAttackXTCon takes nothing returns boolean
    	return GetAttacker() == xiaoting
    endfunction
    
    function Xiaoting___TAttackXTAct takes nothing returns nothing
     local integer attack= IMinBJ(500000000, Xiaoting___IAttackAdd + GetHeroAgi(xiaoting, true) / 4)
    	if ( Xiaoting___EAttackXT == null ) then
			set Xiaoting___EAttackXT=AddSpecialEffectTargetUnitBJ("overhead", xiaoting, "Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl")
    	endif
    	call AddAttack(xiaoting , attack - Xiaoting___IAttackAdd)
    	set Xiaoting___IAttackAdd=attack
    	set Xiaoting___ITimeAttackadd=5
    endfunction

    //æ¶é´åå°
    function Xiaoting___AttackTimeReduce takes nothing returns nothing
    	set Xiaoting___ITimeAttackadd=IMaxBJ(0, Xiaoting___ITimeAttackadd - 1)
    	if ( Xiaoting___ITimeAttackadd == 0 and Xiaoting___EAttackXT != null ) then
    		call DestroyEffect(Xiaoting___EAttackXT)
    		set Xiaoting___EAttackXT=null
	    	call AddAttack(xiaoting , 0 - Xiaoting___IAttackAdd)
	    	set Xiaoting___IAttackAdd=0
    	endif
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___GetComboMulti takes nothing returns integer

		if not ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((xiaoting))) == 1) and GetUnitAbilityLevel(xiaoting, 'A0LZ') == 1 ) then // INLINED!!
			return 1
		endif

		if ( ICombo > 40 ) then
			return 4
		elseif ( ICombo > 20 ) then
			return 3
		elseif ( ICombo > 10 ) then
			return 2
		else
			return 1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageXiaoting takes unit u returns boolean
		//ç»ç±
		if ( GetUnitTypeId(u) == 'h022' ) then
			call UnitDamageTarget(xiaoting, GetTriggerUnit(), Xiaoting___RDamageXiaoting * 0.3 * Xiaoting___GetComboMulti(), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___SetShe1Tech takes nothing returns nothing
		if ( Xiaoting___UJianKeji2 != null ) then
			call RemoveUnit(Xiaoting___UJianKeji2)
			set Xiaoting___UJianKeji2=null
		endif
		if ( Xiaoting___UJianKeji1 == null ) then
			set Xiaoting___UJianKeji1=CreateUnit(GetOwningPlayer(xiaoting), 'h01Z', 0, 0, 0)
			call ShowUnitHide(Xiaoting___UJianKeji1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___SetShe2Tech takes nothing returns nothing
		if ( Xiaoting___UJianKeji1 != null ) then
			call RemoveUnit(Xiaoting___UJianKeji1)
			set Xiaoting___UJianKeji1=null
		endif
		if ( Xiaoting___UJianKeji2 == null ) then
			set Xiaoting___UJianKeji2=CreateUnit(GetOwningPlayer(xiaoting), 'h020', 0, 0, 0)
			call ShowUnitHide(Xiaoting___UJianKeji2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___ClearRestArrow takes integer start returns nothing
  local integer i= start
		loop
			exitwhen i > 16
			if ( Xiaoting___UArrow[i] != null ) then
				call RemoveUnit(Xiaoting___UArrow[i])
				set Xiaoting___UArrow[i]=null
				call DestroyGroup(Xiaoting___GArrow[i])
				set Xiaoting___GArrow[i]=null
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___ClearAllArrow takes nothing returns nothing
		call PauseTimer(Xiaoting___TArrow)
		call DestroyTimer(Xiaoting___TArrow)
		set Xiaoting___IZhengmiao=0
		set Xiaoting___TArrow=null
		call Xiaoting___ClearRestArrow(1)
		set Xiaoting___IFantan=0
		set Xiaoting___IJueyan=0
		set Xiaoting___BJingzhi=false
		set Xiaoting___BYujian=false
		call Xiaoting___SetShe1Tech()
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___CreateJueyan takes unit u returns nothing
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h022', GetUnitX(u), GetUnitY(u), 0)
		call UnitApplyTimedLifeBJ(3.00, 'BHwe', temp)
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___FantanFilter takes nothing returns boolean
		return GetUnitTypeId(GetFilterUnit()) == 'hwtw' or GetUnitTypeId(GetFilterUnit()) == 'h021'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___ChangeFacing takes integer i,real facing returns nothing
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h024', GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i]), facing)
		call RemoveUnit(Xiaoting___UArrow[i])
		set Xiaoting___UArrow[i]=temp
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___FlashArrowMove takes integer index returns nothing
  local real x= GetUnitX(Xiaoting___UArrow[index])
  local real y= GetUnitY(Xiaoting___UArrow[index])
        local real xp= x + 100. * CosBJ(GetUnitFacing(Xiaoting___UArrow[index]))
        local real yp= y + 100. * SinBJ(GetUnitFacing(Xiaoting___UArrow[index]))
        local group l_group= null
        local unit l_unit
        local integer times= Xiaoting___GetComboMulti()
        local real radius= 200
        local integer IBing= 0

        //å¦æè±éæ­»äº¡åæ¸é¤
        if ( BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(xiaoting))] and not ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xiaoting))] ) ) then
        	call Xiaoting___ClearAllArrow()
        	return
        endif
        //å¾¡ç®­
        if ( Xiaoting___BYujian and index == 1 ) then
    		call RecoverUnitHP(xiaoting , 0.1)
        	call SetUnitManaPercentBJ(xiaoting, 100)
        	call SetUnitX(xiaoting, GetUnitX(Xiaoting___UArrow[1]))
        	call SetUnitY(xiaoting, GetUnitY(Xiaoting___UArrow[1]))
        endif


        if ( Xiaoting___BJingzhi ) then
        	if ( Xiaoting___IZhengmiao == 1 ) then
        		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", GetUnitX(Xiaoting___UArrow[index]), GetUnitY(Xiaoting___UArrow[index])))
        	endif
        	return
        endif

        set l_group=CreateGroup()
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit=FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if ( IsEnemy(l_unit , xiaoting) and not ( IsUnitInGroup(l_unit, Xiaoting___GArrow[index]) ) ) then
            	call UnitDamageTarget(xiaoting, l_unit, Xiaoting___RDamageXiaoting, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
            	call GroupAddUnit(Xiaoting___GArrow[index], l_unit)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group=null
        set l_unit=null

        set l_group=CreateGroup()
        call GroupEnumUnitsInRange(l_group, xp, yp, 100, Condition(function Xiaoting___FantanFilter))
        set IBing=I3(CountUnitsInGroup(l_group) > 0 , GetUnitUserData(FirstOfGroup(l_group)) , 0)
        call DestroyGroup(l_group)
        set l_group=null

        //åå¼¹ä¸éæ»
    	if ( IsTerrainPathable(xp, yp, PATHING_TYPE_WALKABILITY) or IBing != 0 ) then
    		if ( xp > yd_MapMaxX or xp < yd_MapMinX ) then
					call Xiaoting___ChangeFacing(index , 180 - GetUnitFacing(Xiaoting___UArrow[index]))
        			return
        	elseif ( yp > yd_MapMaxY or yp < yd_MapMinY ) then
					call Xiaoting___ChangeFacing(index , - GetUnitFacing(Xiaoting___UArrow[index]))
        			return
    		endif

	        if ( Xiaoting___IFantan > 0 ) then
        		if ( IBing != 0 ) then
        			call GroupClear(Xiaoting___GArrow[index])
					call Xiaoting___ChangeFacing(index , R3(IBing >= 1000 , 180 + GetUnitFacing(Xiaoting___UArrow[index]) , 2 * IBing - GetUnitFacing(Xiaoting___UArrow[index])))
					return
        		endif
        		if not ( IsTerrainPathable(xp, y, PATHING_TYPE_WALKABILITY) ) then
        			call GroupClear(Xiaoting___GArrow[index])
					call Xiaoting___ChangeFacing(index , - GetUnitFacing(Xiaoting___UArrow[index]))
        		elseif not ( IsTerrainPathable(x, yp, PATHING_TYPE_WALKABILITY) ) then
        			call GroupClear(Xiaoting___GArrow[index])
					call Xiaoting___ChangeFacing(index , 180 - GetUnitFacing(Xiaoting___UArrow[index]))
        		elseif not ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) ) then
					call Xiaoting___ChangeFacing(index , 180 + GetUnitFacing(Xiaoting___UArrow[index]))
        			call GroupClear(Xiaoting___GArrow[index])
        		else
		        	call SetUnitX(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
		        	call SetUnitY(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
				    //ç»ç±
			        if ( Xiaoting___IJueyan > 0 ) then
			        	if ( ModuloInteger(Xiaoting___IZhengmiao, 3) == 0 ) then
			        		call Xiaoting___CreateJueyan(Xiaoting___UArrow[index])
			        	endif
			        endif
        		endif
        	else
	        	call SetUnitX(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
	        	call SetUnitY(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
	        	//ç»ç±
		        if ( Xiaoting___IJueyan > 0 ) then
		        	if ( ModuloInteger(Xiaoting___IZhengmiao, 3) == 0 ) then
		        		call Xiaoting___CreateJueyan(Xiaoting___UArrow[index])
		        	endif
		        endif
			endif
    	else
        	call SetUnitX(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        	call SetUnitY(Xiaoting___UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
	        //ç»ç±
	        if ( Xiaoting___IJueyan > 0 ) then
	        	if ( ModuloInteger(Xiaoting___IZhengmiao, 3) == 0 ) then
	        		call Xiaoting___CreateJueyan(Xiaoting___UArrow[index])
	        	endif
	        endif
    	endif

	endfunction

 function Xiaoting___FlashArrowMoveTimer takes nothing returns nothing
  local integer i= 1

		set Xiaoting___IZhengmiao=I3(Xiaoting___IZhengmiao >= 20 , 1 , Xiaoting___IZhengmiao + 1)
		if ( Xiaoting___IZhengmiao == 1 ) then
			set Xiaoting___IFantan=I3(Xiaoting___IFantan > 0 , Xiaoting___IFantan - 1 , 0)
			set Xiaoting___IJueyan=I3(Xiaoting___IJueyan > 0 , Xiaoting___IJueyan - 1 , 0)
		endif
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
				call Xiaoting___FlashArrowMove(i)
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Guanhongjian takes real x,real y,real facing,boolean spellID returns nothing
  local integer i= 1
		call Xiaoting___SetShe2Tech()
		if ( spellID ) then
	    	call PrintSpellAdd((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( Xiaoting___RDamageXiaoting * Xiaoting___GetComboMulti())*1.0) , "") // INLINED!!
		endif
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] == null ) then
				set Xiaoting___UArrow[i]=CreateUnit(GetOwningPlayer(xiaoting), 'h024', x, y, facing)
				if ( Xiaoting___TArrow == null ) then
					set Xiaoting___TArrow=CreateTimer()
					set Xiaoting___IZhengmiao=1
					call TimerStart(Xiaoting___TArrow, 0.05, true, function Xiaoting___FlashArrowMoveTimer)
				endif
				set Xiaoting___GArrow[i]=CreateGroup()
				return
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Zhefan takes nothing returns nothing
		set Xiaoting___IFantan=5
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "æè¿å©ä½æ¶é´" + I2S(Xiaoting___IFantan) + "s.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Yanzhi takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
				call DamageArea(xiaoting , GetUnitX(Xiaoting___UArrow[i]) , GetUnitY(Xiaoting___UArrow[i]) , 900 , Xiaoting___RDamageXiaoting * 2 * Xiaoting___GetComboMulti())
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i])))
			endif
			set i=i + 1
		endloop
		call Xiaoting___ClearAllArrow()
	    call PrintSpellAdd((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( Xiaoting___RDamageXiaoting * 2 * Xiaoting___GetComboMulti())*1.0) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Chenmo takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
				call Xiaoting___ChangeFacing(i , GetFacingBetweenXY(GetUnitX(Xiaoting___UArrow[i]) , GetUnitY(Xiaoting___UArrow[i]) , GetSpellTargetX() , GetSpellTargetY()))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Zhuixin takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
				call Xiaoting___ChangeFacing(i , GetFacingBetweenXY(GetUnitX(Xiaoting___UArrow[i]) , GetUnitY(Xiaoting___UArrow[i]) , GetUnitX(xiaoting) , GetUnitY(xiaoting)))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Bingqiang takes nothing returns nothing
     local integer i= 1
     local real facing= Atan2BJ(GetSpellTargetY() - GetUnitY(xiaoting), GetSpellTargetX() - GetUnitX(xiaoting))
     local unit u= null
	    loop
	    	exitwhen i > ( 6 + 4 * Xiaoting___GetComboMulti() )
	    	set u=CreateUnit(GetOwningPlayer(xiaoting), 'hwtw', (RMinBJ(RMaxBJ(((GetUnitX(xiaoting) + 200.00 * I2R(i) * CosBJ(facing))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(xiaoting) + 200.00 * I2R(i) * SinBJ(facing))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    	if ( i == 1 or i == ( 6 + 4 * Xiaoting___GetComboMulti() ) ) then

	    	endif
	    	call SetUnitUserData(u, R2I(facing) + I3(( i == 1 or i == ( 6 + 4 * Xiaoting___GetComboMulti() ) ) , 2000 , 0))
	    	call UnitApplyTimedLifeBJ(12.00, 'BHwe', u)
	    	set i=i + 1
	    endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___JingtiTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real intTimes= LoadReal(spellTable, GetHandleId(t), 1)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , - 1 * intTimes)
		call FlushChildHashtable(spellTable, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Xiaoting___Jingti takes nothing returns nothing
  local real intTimes= 0.25 + Xiaoting___GetComboMulti() * 0.25
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), 1, intTimes)
		call TimerStart(t, 30, false, function Xiaoting___JingtiTimer)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , intTimes)
		call YDWETimerDestroyEffect(30 , AddSpecialEffectTargetUnitBJ("overhead", xiaoting, "war3mapImported\\state_xiaoting.mdx"))
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "æåå¢å " + I2S(25 + Xiaoting___GetComboMulti() * 25) + "%çææ·ï¼æç»­30ç§ã")
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___FenlieTimeout takes nothing returns nothing
		call Xiaoting___ClearRestArrow(2)
    	call CreateTextTagA(("åè£ç®­æ¶é´å°" ) , ( xiaoting ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
	endfunction

 function Xiaoting___Fenlie takes nothing returns nothing
  local integer i= 1
  local integer max= 0
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] == null ) then
				set max=i - 1
				exitwhen true
			endif
			set i=i + 1
		endloop
		set i=1
		loop
			exitwhen i > max
			if ( Xiaoting___UArrow[i] != null ) then
				call Xiaoting___Guanhongjian(GetUnitX(Xiaoting___UArrow[i]) , GetUnitY(Xiaoting___UArrow[i]) , GetUnitFacing(Xiaoting___UArrow[i]) + GetRandomReal(- 15, 15) , false)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    call TimerStart(Xiaoting___TFenlie, 7, true, function Xiaoting___FenlieTimeout)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Shunti takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i])))
			    call SetUnitX(Xiaoting___UArrow[i], GetUnitX(xiaoting))
				call SetUnitY(Xiaoting___UArrow[i], GetUnitY(xiaoting))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
    function Xiaoting___DuyueTimer takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local integer id= GetHandleId(t)
     local integer attract= LoadInteger(spellTable, id, 1)
    	call s__Attract_deallocate(attract)
		call PauseTimer(t)
		call FlushChildHashtable(spellTable, id)
		call DestroyTimer(t)
    	set t=null
    endfunction

 function Xiaoting___Duyue takes nothing returns nothing
  local integer i= 1
     local timer t= CreateTimer()
     local integer attract= s__Attract_create(xiaoting , I3(IsInDiamondRegion(GetUnitX(xiaoting) , GetUnitY(xiaoting)) , 900 , 900 * Xiaoting___GetComboMulti()) , 0.05 , 50 * Xiaoting___GetComboMulti())
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "èå´" + I2S(900 * Xiaoting___GetComboMulti()) + ".")
		call YDWETimerDestroyEffect(3 , AddSpecialEffectTargetUnitBJ("chest", xiaoting, "war3mapImported\\hole.mdl"))
		set s__Attract_forbitHero[(attract)]=true // INLINED!!
		set s__Attract_deathContinue[(attract)]=true // INLINED!!
	    call s__Attract_start(attract)
	    call SaveInteger(spellTable, GetHandleId(t), 1, attract)
	    call TimerStart(t, 3, false, function Xiaoting___DuyueTimer)
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Yujian takes nothing returns nothing
		set Xiaoting___BYujian=not ( Xiaoting___BYujian )
		if ( Xiaoting___BYujian ) then
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "å¼å¯å¾¡ç®­å½¢æ.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "å³é­å¾¡ç®­å½¢æ.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Jueyan takes nothing returns nothing
		set Xiaoting___IJueyan=Xiaoting___IJueyan + 10
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Jingzhi takes nothing returns nothing
		set Xiaoting___BJingzhi=not ( Xiaoting___BJingzhi )
		if ( Xiaoting___BJingzhi ) then
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "å¼å¯éæ»å½¢æ.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "å³é­éæ»å½¢æ.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Jianling takes nothing returns nothing
  local integer times= Xiaoting___GetComboMulti()
  local integer attack= IMinBJ(1000000000, ( GetHeroInt(xiaoting, true) + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0x5039AFFB)) ) * 4) // INLINED!!
  local integer defense=( GetHeroAgi(xiaoting, true) / 100 + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0x81FD3994)) ) // INLINED!!
  local integer hp=( GetHeroStr(xiaoting, true) * 10 + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0xFCD961C9)) ) // INLINED!!
  local unit u
  local integer i= 1
		loop
			exitwhen i > Xiaoting___IMaxCombo
			if ( Xiaoting___UArrow[i] != null ) then
				set u=CreateUnit(GetOwningPlayer(xiaoting), 'n01V', GetUnitX(Xiaoting___UArrow[i]), GetUnitY(Xiaoting___UArrow[i]), 0)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", GetUnitX(u), GetUnitY(u)))
				call UnitApplyTimedLifeBJ(180.00, 'BHwe', u)
				call SetAttack(u , attack)
				call SetDefense(u , defense)
				call SetHP(u , hp)
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Gangti takes nothing returns nothing
  local real defenseAdd= 2. + 1. * Xiaoting___GetComboMulti()
		call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , defenseAdd)
		call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "é²å¾¡æåå¢å " + I2S(200 + 100 * Xiaoting___GetComboMulti()) + "%.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
		call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , - 1 * defenseAdd)
		call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "é²å¾¡å¢çææç»æ.")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___PingzhangTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, 1)
  local group l_group= CreateGroup()
  local unit l_unit
		if ( IsUnitAliveBJ(u) ) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 600, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsAlly(l_unit , xiaoting) ) then
			    	call RecoverUnitHP(l_unit , 0.3)
			    	call RecoverUnitMP(l_unit , 20)
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null
		else
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , - 0.3)
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

 function Xiaoting___Pingzhang takes nothing returns nothing
  local integer i= 1
  local unit u= null
  local timer t= CreateTimer()
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h023', GetUnitX(xiaoting), GetUnitY(xiaoting), 0)
		call UnitApplyTimedLifeBJ(10, 'BHwe', temp)
		call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , 0.3)
		call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
		loop
			exitwhen i > 24
			set u=CreateUnit(GetOwningPlayer(xiaoting), 'h021', (RMinBJ(RMaxBJ(((GetUnitX(xiaoting) + 600 * CosBJ(i * 15))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(xiaoting) + 600 * SinBJ(i * 15))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    	call SetUnitUserData(u, i * 15 + 90)
 			call UnitApplyTimedLifeBJ(10, 'BHwe', u)
			set i=i + 1
		endloop
		//ä¸æ­ä¼¤å®³
		call SaveUnitHandle(spellTable, GetHandleId(t), 1, temp)
		call TimerStart(t, 1, true, function Xiaoting___PingzhangTimer)
        call PlaySoundBJ(gg_snd_xiaoting1)
		//å¿«éåçº§
		set t=null
		set u=null
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___Jianjuetianji takes nothing returns nothing
		call DestroyEffect(AddSpecialEffect("war3mapImported\\xiaoting_pingzhang.mdx", GetUnitX(xiaoting), GetUnitY(xiaoting)))
		call UnitRemoveAbility(xiaoting, 'A0LN')
		call UnitRemoveAbility(xiaoting, 'A0LT')
		call UnitRemoveAbility(xiaoting, 'A0LY')
		call UnitRemoveAbility(xiaoting, 'A0LZ')
		call UnitRemoveAbility(xiaoting, 'A0LO')
		call UnitRemoveAbility(xiaoting, 'A0LR')
		call UnitRemoveAbility(xiaoting, 'A0LV')
		call UnitRemoveAbility(xiaoting, 'A0M0')
		call UnitRemoveAbility(xiaoting, 'A0LP')
		call UnitRemoveAbility(xiaoting, 'A0LU')
		call UnitRemoveAbility(xiaoting, 'A0LW')
		call UnitRemoveAbility(xiaoting, 'A0M1')
		call UnitRemoveAbility(xiaoting, 'A0LQ')
		call UnitRemoveAbility(xiaoting, 'A0LS')
		call UnitRemoveAbility(xiaoting, 'A0LX')
		call UnitRemoveAbility(xiaoting, 'A0M2')
		call UnitAddAbility(xiaoting, 'A0LN')
		call UnitAddAbility(xiaoting, 'A0LT')
		call UnitAddAbility(xiaoting, 'A0LY')
		call UnitAddAbility(xiaoting, 'A0LZ')
		call UnitAddAbility(xiaoting, 'A0LO')
		call UnitAddAbility(xiaoting, 'A0LR')
		call UnitAddAbility(xiaoting, 'A0LV')
		call UnitAddAbility(xiaoting, 'A0M0')
		call UnitAddAbility(xiaoting, 'A0LP')
		call UnitAddAbility(xiaoting, 'A0LU')
		call UnitAddAbility(xiaoting, 'A0LW')
		call UnitAddAbility(xiaoting, 'A0M1')
		call UnitAddAbility(xiaoting, 'A0LQ')
		call UnitAddAbility(xiaoting, 'A0LS')
		call UnitAddAbility(xiaoting, 'A0LX')
		call UnitAddAbility(xiaoting, 'A0M2')
		set ICombo=ICombo * 2
		call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
        call PlaySoundBJ(gg_snd_xiaoting2)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___SetSpellSet takes integer i returns nothing

		set ISpellState=i
		if ( i == 0 ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LO', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LR', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LV', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M0', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LN', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LT', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LY', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LZ', true)
		elseif ( i == 1 ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LN', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LT', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LY', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LZ', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LQ', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LS', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LX', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M2', true)
		elseif ( i == 2 ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LQ', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LS', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LX', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M2', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LP', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LU', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LW', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M1', true)
		elseif ( i == 3 ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LP', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LU', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LW', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M1', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LO', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LR', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LV', true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M0', true)
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
	//å å±æ§
 function Xiaoting___FlashComboShuxing takes nothing returns nothing
  local real delta= 0.25 + 0.25 * Xiaoting___GetComboMulti()
		if ( Xiaoting___RAddtion != delta ) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , delta - Xiaoting___RAddtion)
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , delta - Xiaoting___RAddtion)
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , delta - Xiaoting___RAddtion)
			set Xiaoting___RAddtion=delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
    		call CreateTextTagA((I2S(R2I(delta * 100)) + "%å¨å±æ§æé«" ) , ( xiaoting ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
		endif

	endfunction

	//å¤æ­16ä¸ªé½æ¯å¦ä¸è´
 function Xiaoting___ComboDuan takes nothing returns nothing
		set ICombo=0
    	call CreateTextTagA(("Comboè¿å æ­äº" ) , ( xiaoting ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
    	call Xiaoting___FlashComboShuxing()
	endfunction

 function Xiaoting___AddCombo takes nothing returns nothing
		if not ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LT') == 1 ) then // INLINED!!
			return
		endif

		set ICombo=ICombo + 1
		call TimerStart(Xiaoting___TComboAdd, 5 + IJ1(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0), false, function Xiaoting___ComboDuan)
    	call CreateTextTagA(("Combo:" + I2S(ICombo) ) , ( xiaoting ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!

		if ( Xiaoting___GetComboMulti() == 4 and Xiaoting___IMaxCombo != 16 ) then
			set Xiaoting___IMaxCombo=16
		elseif ( Xiaoting___GetComboMulti() == 3 and Xiaoting___IMaxCombo != 12 ) then
			set Xiaoting___IMaxCombo=12
			call Xiaoting___ClearRestArrow(13)
		elseif ( Xiaoting___GetComboMulti() == 2 and Xiaoting___IMaxCombo != 8 ) then
			set Xiaoting___IMaxCombo=8
			call Xiaoting___ClearRestArrow(9)
		elseif ( Xiaoting___GetComboMulti() == 1 and Xiaoting___IMaxCombo != 4 ) then
			set Xiaoting___IMaxCombo=4
			call Xiaoting___ClearRestArrow(5)
		endif
    	call Xiaoting___FlashComboShuxing()

	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Xiaoting___TSpellXiaotingAct takes nothing returns nothing
		//åæ¢æè½å¥
		if ( GetSpellAbilityId() == 'A0LJ' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LJ', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LK', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LK', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting___SetSpellSet(1)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LK' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LK', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LL', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LL', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting___SetSpellSet(2)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LL' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LL', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LM', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LM', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting___SetSpellSet(3)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LM' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LM', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LJ', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LJ', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting___SetSpellSet(0)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		//å¤§æ-ç®­ç»å¤©æ
		elseif ( GetSpellAbilityId() == 'A0M3' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Jianjuetianji()
		//è´¯è¹ç®­
		elseif ( GetSpellAbilityId() == 'A0LN' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Guanhongjian(GetSpellTargetX() , GetSpellTargetY() , GetFacingBetweenXY(GetUnitX(xiaoting) , GetUnitY(xiaoting) , GetSpellTargetX() , GetSpellTargetY()) , true)
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-æè¿
		elseif ( GetSpellAbilityId() == 'A0LO' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Zhefan()
		//ç®­æ-çæ­¢
		elseif ( GetSpellAbilityId() == 'A0LP' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Yanzhi()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-æ²é»
		elseif ( GetSpellAbilityId() == 'A0LQ' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Chenmo()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-ç¬ä½
		elseif ( GetSpellAbilityId() == 'A0LT' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Shunti()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç»æ-å°å¢
		elseif ( GetSpellAbilityId() == 'A0LR' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Bingqiang()
		//ç»æ-éä½
		elseif ( GetSpellAbilityId() == 'A0LU' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Jingti()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-åè£
		elseif ( GetSpellAbilityId() == 'A0LS' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Fenlie()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-æ¸¡è¶
		elseif ( GetSpellAbilityId() == 'A0LV' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Duyue()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-è¿½å¿
		elseif ( GetSpellAbilityId() == 'A0LY' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Zhuixin()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-å¾¡ç®­
		elseif ( GetSpellAbilityId() == 'A0LW' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Yujian()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-ç»ç±
		elseif ( GetSpellAbilityId() == 'A0LX' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Jueyan()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-éæ»
		elseif ( GetSpellAbilityId() == 'A0LZ' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Jingzhi()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç®­æ-ç®­çµ
		elseif ( GetSpellAbilityId() == 'A0M0' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Jianling()
		//ç®­æ-ç©¿åº
		elseif ( GetSpellAbilityId() == 'A0M1' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Gangti()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		//ç»æ-å±é
		elseif ( GetSpellAbilityId() == 'A0M2' ) then
			call Xiaoting___AddCombo()
			call Xiaoting___Pingzhang()
			call UnitRemoveAbility(xiaoting, 'A0LO')
			call UnitAddAbility(xiaoting, 'A0LO')
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function Xiaoting___FlashXiaotingDamage takes nothing returns nothing
		set Xiaoting___RDamageXiaoting=GetDamageAgi(xiaoting)

		call Xiaoting___AttackTimeReduce()
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//æç§12345æ¥å¤æ­
 function LearnSkillXiaotingI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == xiaoting ) then
			if ( whichSpell == 1 ) then
			    call UnitAddAbility(xiaoting, 'A0LO')
			    call UnitAddAbility(xiaoting, 'A0LP')
			    call UnitAddAbility(xiaoting, 'A0LQ')
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LT') == 1 ) then // INLINED!!
				//æè½2åå§å
			    call UnitAddAbility(xiaoting, 'A0LR')
			    call UnitAddAbility(xiaoting, 'A0LU')
			    call UnitAddAbility(xiaoting, 'A0LS')
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LY') == 1 ) then // INLINED!!
				call UnitAddAbility(gg_unit_n01S_0258, 'A0M5') // INLINED!!
				call AddSpecialEffectTargetUnitBJ("origin", xiaoting, "war3mapImported\\oakaura.mdx")
			    call UnitAddAbility(xiaoting, 'A0LV')
			    call UnitAddAbility(xiaoting, 'A0LW')
			    call UnitAddAbility(xiaoting, 'A0LX')
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LZ') == 1 ) then // INLINED!!
			    call UnitAddAbility(xiaoting, 'A0M0')
			    call UnitAddAbility(xiaoting, 'A0M1')
			    call UnitAddAbility(xiaoting, 'A0M2')
			elseif ( whichSpell == 5 and IsFifthSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting, 'A0M3') == 1 ) then
			endif
		endif
	endfunction

 function LearnSkillXiaoting takes unit learner,integer learnSpellID returns nothing
		if ( learner == xiaoting ) then
			if ( learnSpellID == 'A0LN' ) then
				call LearnSkillXiaotingI(learner , 1)
			elseif ( learnSpellID == 'A0LT' ) then
				call LearnSkillXiaotingI(learner , 2)
			elseif ( learnSpellID == 'A0LY' ) then
				call LearnSkillXiaotingI(learner , 3)
			elseif ( learnSpellID == 'A0LZ' ) then
				call LearnSkillXiaotingI(learner , 4)
			elseif ( learnSpellID == 'A0M3' ) then
				call LearnSkillXiaotingI(learner , 5)
			endif
		endif
	endfunction


//---------------------------------------------------------------------------------------------------

	
 function InitXiaoting takes unit u returns nothing
		set xiaoting=u
		//ä¸»è±éæè½
		set Xiaoting___TSpellXiaoting=CreateTrigger()
	    call TriggerRegisterUnitEvent(Xiaoting___TSpellXiaoting, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Xiaoting___TSpellXiaoting, function Xiaoting___TSpellXiaotingAct)

	    //å·æ°ä¼¤å®³
	    call TimerStart(CreateTimer(), 1, true, function Xiaoting___FlashXiaotingDamage)

	    set Xiaoting___TAttackXT=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Xiaoting___TAttackXT, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Xiaoting___TAttackXT, Condition(function Xiaoting___TAttackXTCon))
	    call TriggerAddAction(Xiaoting___TAttackXT, function Xiaoting___TAttackXTAct)

	    set Xiaoting___TComboAdd=CreateTimer()
	    set Xiaoting___TFenlie=CreateTimer()

	    //åå§åæè½ç¶æ
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LO', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LP', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LQ', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LR', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LU', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LS', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LV', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LW', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LX', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M0', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M1', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0M2', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LK', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LL', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LM', false)

		//ç®­åè£çä¸é
		set Xiaoting___IMaxCombo=4

		//ç§æ
		call Xiaoting___SetShe1Tech()

	endfunction


//library Xiaoting ends

// BEGIN IMPORT OF Xiaoting.j

// BEGIN IMPORT OF SpellBase.j

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

 
// END IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j
// BEGIN IMPORT OF Aura.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Attr.j


// END IMPORT OF Aura.j
// BEGIN IMPORT OF Diamond.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Diffculty.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Huodong.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Achievement.j

// END IMPORT OF Huodong.j
// END IMPORT OF Diffculty.j
// BEGIN IMPORT OF NetVersion.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Diffculty.j
// IGNORE DOUBLE IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF Huodong.j
// BEGIN IMPORT OF Continous.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF item.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Diffculty.j


// END IMPORT OF item.j
// IGNORE DOUBLE IMPORT OF Huodong.j
// IGNORE DOUBLE IMPORT OF Achievement.j

// END IMPORT OF Continous.j
// END IMPORT OF NetVersion.j


// END IMPORT OF Diamond.j

// END IMPORT OF Xiaoting.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs915332062")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase___InitLHBase")
call ExecuteFunc("Attr___InitAttr")
call ExecuteFunc("Printer___InitPrinter")
call ExecuteFunc("ItemBase___InitItemBase")
call ExecuteFunc("Continous___InitContinous")
call ExecuteFunc("InitVersion")
call ExecuteFunc("Diamond___InitDiamond")

endfunction



//Struct method generated initializers/callers:
function sa__Connect__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Connect_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__Connect_t[this])))))))) // INLINED!!
			set s__Connect_unit1[this]=null
			set s__Connect_unit2[this]=null
			call DestroyLightningBJ(s__Connect_l[this])
			set s__Connect_l[this]=null
			call PauseTimer(s__Connect_t[this])
			call DestroyTimer(s__Connect_t[this])
			set s__Connect_t[this]=null
   return true
endfunction
function sa__SuperShield__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__SuperShield_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__SuperShield_t[this])))))))) // INLINED!!
			set s__SuperShield_caster[this]=null
			call PauseTimer(s__SuperShield_t[this])
			call DestroyTimer(s__SuperShield_t[this])
			set s__SuperShield_t[this]=null
   return true
endfunction
function sa__MultiLife__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__MultiLife_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__MultiLife_t[this])))))))) // INLINED!!
			call UnitRemoveAbility(s__MultiLife_caster[this], 'A0KH')
			call DestroyTextTag(s__MultiLife_ttHint[this])
			set s__MultiLife_ttHint[this]=null
			set s__MultiLife_caster[this]=null
			call PauseTimer(s__MultiLife_t[this])
			call DestroyTimer(s__MultiLife_t[this])
			set s__MultiLife_t[this]=null
   return true
endfunction
function sa__Roubang__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__Roubang_onDestroy takes nothing returns boolean
local integer this=f__arg_this
   local integer i= 1
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Roubang_t[this])))))))) // INLINED!!
			set s__Roubang_caster[this]=null
			loop
				exitwhen i > s__Roubang_number[this]
				if ( s___Roubang_URou[s__Roubang_URou[this]+i] != null ) then
					call RemoveUnit(s___Roubang_URou[s__Roubang_URou[this]+i])
					set s___Roubang_URou[s__Roubang_URou[this]+i]=null
				endif
				set i=i + 1
			endloop
			call PauseTimer(s__Roubang_t[this])
			call DestroyTimer(s__Roubang_t[this])
			set s__Roubang_aSpeed[this]=0.
			set s__Roubang_cAngle[this]=0.
			set s__Roubang_radius[this]=0.
			set s__Roubang_number[this]=0
			set s__Roubang_t[this]=null
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

function jasshelper__initstructs915332062 takes nothing returns nothing
    set st__Connect__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Connect__staticgetindex,Condition( function sa__Connect__staticgetindex))
    set st__Connect_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Connect_onDestroy,Condition( function sa__Connect_onDestroy))
    set st__SuperShield__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__SuperShield__staticgetindex,Condition( function sa__SuperShield__staticgetindex))
    set st__SuperShield_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__SuperShield_onDestroy,Condition( function sa__SuperShield_onDestroy))
    set st__MultiLife__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__MultiLife__staticgetindex,Condition( function sa__MultiLife__staticgetindex))
    set st__MultiLife_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__MultiLife_onDestroy,Condition( function sa__MultiLife_onDestroy))
    set st__Roubang__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Roubang__staticgetindex,Condition( function sa__Roubang__staticgetindex))
    set st__Roubang_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Roubang_onDestroy,Condition( function sa__Roubang_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))








endfunction

