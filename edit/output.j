globals
//globals from DzAPI:
constant boolean LIBRARY_DzAPI=true
//endglobals from DzAPI
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
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero= null
        
unit array UDepot
string array playerName
        
boolean array BMoshou
        
unit Uwanjie
hashtable itemTable= InitHashtable()
hashtable LHTable= InitHashtable()
        
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
//endglobals from LHBase
//globals from Achievement:
constant boolean LIBRARY_Achievement=true
integer array achiPage
integer array achieve
integer array achieve2
integer array achieve3
integer array achieve4
effect array achiEff
//endglobals from Achievement
//globals from Attr:
constant boolean LIBRARY_Attr=true
integer array IStr
integer array IAgi
integer array IInt
//endglobals from Attr
//globals from Moqi:
constant boolean LIBRARY_Moqi=true
//endglobals from Moqi
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from Sheyan:
constant boolean LIBRARY_Sheyan=true
//endglobals from Sheyan
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
hashtable spellTable= InitHashtable()
constant integer kUImmuteDamage=10
//endglobals from SpellBase
//globals from Aura:
constant boolean LIBRARY_Aura=true
integer array Aura__YKillCount
trigger Aura__TSpellYanmie3= null
trigger Aura__TSpellMengji3= null

		
boolean array Aura__shunHints

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
//globals from Mengji:
constant boolean LIBRARY_Mengji=true

integer Mengji__ITianhong= 0
real Mengji__HuanmengX= 0.
real Mengji__HuanmengY= 0.
		
trigger Mengji__TSpellMengji= null

trigger Mengji__TSpellMengji01= null
trigger Mengji__TSpellMengji02= null
trigger Mengji__TSpellMengji03= null
trigger Mengji__TSpellMengji2= null
trigger Mengji__TSpellMengji41= null
trigger Mengji__TSpellMengji42= null

		
item Mengji__Liutao= null
item Mengji__Nihe= null
		
unit Mengji__ULinglong1= null
unit Mengji__ULinglong2= null
lightning array Mengji__LLinglong
//endglobals from Mengji
//globals from Xinglong:
constant boolean LIBRARY_Xinglong=true
trigger Xinglong__TSpellXinglong= null
trigger Xinglong__TSpellXinglongUpdate= null
trigger Xinglong__TSpellXinglongAttack= null
trigger Xinglong__TSpellXinglongDamage= null

		//æ¯å¦å·²ç»åèº«
boolean Xinglong__BBianshen= false

		//ä¼¤å®³å¼
real Xinglong__XinglongDamage= 0


		//ä¼¤å®³çæç¤ºå¨
boolean Xinglong__BDamage= false
		//è½®åå å±æ§æ¶é´
integer Xinglong__BAttrTime= 0
		//å¾éåç¯æ°
integer IChooseAura= 0
//endglobals from Xinglong
//globals from Huanyi:
constant boolean LIBRARY_Huanyi=true
		

		
trigger Huanyi__TSpellHuanyi= null

		
boolean Huanyi__IsFire= false
boolean Huanyi__IsWater= false
boolean Huanyi__IsLumber= false
boolean Huanyi__IsWind= false
integer ICurrentSpell
		
integer Huanyi__IMoneng= 0

		
constant integer kNoneIntTimes=11
		
constant integer kUHuanyiQuan=12
		
constant integer kIGuCan=13
		
constant integer kHuanyuTimes=14

		
texttag Huanyi__TTMoneng
effect Huanyi__ELowMoneng= null

unit Huanyi__UGucan= null
//endglobals from Huanyi
//globals from Version:
constant boolean LIBRARY_Version=true
integer array vipCode
string array heroCountString
		
integer array spin
		
integer array diyu
		
integer array mingcha
		
integer array passTimes
		
integer array petTimes
		
constant integer kSaveHeroTimes=15
		
		

		
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
//endglobals from Version
//globals from Spin:
constant boolean LIBRARY_Spin=true
//endglobals from Spin
//globals from Seyu:
constant boolean LIBRARY_Seyu=true
unit array chongdongs
unit array shashous

integer Seyu__chongCount= 2
		
texttag Seyu__TTPower= null
integer Seyu__IPower
			
real Seyu__RAddtion

		
trigger Seyu__TSpellSeyu= null
trigger Seyu__TSpellSeyu2= null
trigger Seyu__TSpellSeyu3= null
trigger Seyu__TSpellSeyuUpdate= null
trigger Seyu__TSpellChongdong= null
constant integer kAnShaCount=16

		
integer Seyu__ItempPower= 0
texttag array Seyu__TTCD
//endglobals from Seyu
//globals from Juexing:
constant boolean LIBRARY_Juexing=true
//endglobals from Juexing
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
constant integer si__Roubang=3
integer si__Roubang_F=0
integer si__Roubang_I=0
integer array si__Roubang_V
unit array s___Roubang_URou
constant integer s___Roubang_URou_size=30
integer array s__Roubang_URou
real array s__Roubang_aSpeed
real array s__Roubang_cAngle
real array s__Roubang_radius
timer array s__Roubang_t
integer array s__Roubang_number
unit array s__Roubang_caster
constant integer si__MultiLife=5
integer si__MultiLife_F=0
integer si__MultiLife_I=0
integer array si__MultiLife_V
unit array s__MultiLife_caster
integer array s__MultiLife_times
integer array s__MultiLife_current
timer array s__MultiLife_t
texttag array s__MultiLife_ttHint
constant integer si__SuperShield=6
integer si__SuperShield_F=0
integer si__SuperShield_I=0
integer array si__SuperShield_V
unit array s__SuperShield_caster
integer array s__SuperShield_times
integer array s__SuperShield_current
timer array s__SuperShield_t
constant integer si__TianfuForbidder=7
integer si__TianfuForbidder_F=0
integer si__TianfuForbidder_I=0
integer array si__TianfuForbidder_V
integer array s__TianfuForbidder_IForbid
integer array s__TianfuForbidder_IAllow
timer array s__TianfuForbidder_t
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
trigger st__Missile__staticgetindex
trigger st__Missile_onDestroy
trigger st__Missile_destroy
trigger st__Roubang__staticgetindex
trigger st__Roubang_onDestroy
trigger st__MultiLife__staticgetindex
trigger st__MultiLife_onDestroy
trigger st__MultiLife_destroy
trigger st__SuperShield__staticgetindex
trigger st__SuperShield_onDestroy
trigger st__SuperShield_destroy
trigger st__TianfuForbidder_forbitTimer
trigger st__TianfuForbidder__staticgetindex
trigger st__TianfuForbidder_onDestroy
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

//Generated method caller for TianfuForbidder.forbitTimer
function sc__TianfuForbidder_forbitTimer takes nothing returns nothing
    call TriggerEvaluate(st__TianfuForbidder_forbitTimer)
endfunction

//Generated method caller for TianfuForbidder._staticgetindex
function sc__TianfuForbidder__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__TianfuForbidder__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for TianfuForbidder.onDestroy
function sc__TianfuForbidder_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__TianfuForbidder_onDestroy)
endfunction

//Generated allocator of TianfuForbidder
function s__TianfuForbidder__allocate takes nothing returns integer
 local integer this=si__TianfuForbidder_F
    if (this!=0) then
        set si__TianfuForbidder_F=si__TianfuForbidder_V[this]
    else
        set si__TianfuForbidder_I=si__TianfuForbidder_I+1
        set this=si__TianfuForbidder_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__TianfuForbidder_V[this]=-1
 return this
endfunction

//Generated destructor of TianfuForbidder
function sc__TianfuForbidder_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TianfuForbidder_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__TianfuForbidder_onDestroy)
    set si__TianfuForbidder_V[this]=si__TianfuForbidder_F
    set si__TianfuForbidder_F=this
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
    if (this>272) then
        return 0
    endif
    set s__Roubang_URou[this]=(this-1)*30
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
		return "3.20"
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
		elseif ( heroType == 'Hjai' ) then
			return 8
		elseif ( heroType == 'Harf' ) then
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveWhite takes integer achieveID returns boolean
		return achieveID == 12 or achieveID == 216
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveLight takes integer achieveID returns boolean
		return IsAchieveColor(achieveID) or achieveID == 18 or achieveID == 210 or achieveID == 222 or achieveID == 39
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
			return "|cffff00ffãçé¾è°±ã"
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
			return "éè¿ç§å¢ææ20å±ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
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
			return index + 327
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
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSuperChallenageContent takes integer i returns string
		if ( i == 1 ) then
			return "è§£éæªæ­¢ä¸ä¸ªçæ¬ä»¥æ¥çæææå°±.(è¾å¥-cjå¯ä»¥æ¥çæææå°±æåµ)\n\n			å®æè¯¥é¡¹ææåä½ å°å¯ä»¥ä½¿ç¨-qmæä»¤èªå®ä¹ä½ çæå°±å!"
		elseif ( i == 2 ) then
			return "éå³éèé¾åº¦|cff993366å¤©é­|r(éå³|cff008000ä¸å«|ré¾åº¦è§£é)\n\n			å®æè¯¥é¡¹ææåä½ çåå­å°å¨ä»¥åå§ç»ç½®é¡¶äº|cff008000\"å°å¸ä¸å«å½\"|rä¸­!\n			å¹¶è·å¾åå­æå°±å" + GetAchievementName(42) + "ã"
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
			return "å°ä¸¨æå½"
		elseif ( Constant__WPointer == 2 ) then
			return "äºèæ"
		elseif ( Constant__WPointer == 3 ) then
			return "ç»å¯¹æ å"
		elseif ( Constant__WPointer == 4 ) then
			return "å¤©çº³ä¸æµ·"
		elseif ( Constant__WPointer == 5 ) then
			return "ç¯ä¸æ ·çTæª"
		elseif ( Constant__WPointer == 6 ) then
			return "xueè"
		elseif ( Constant__WPointer == 7 ) then
			return "æå¾æ èTT"
		elseif ( Constant__WPointer == 8 ) then
			return "å¤§å¤´ä¸"
		elseif ( Constant__WPointer == 9 ) then
			return "æ ä¸ç¥å°"
		elseif ( Constant__WPointer == 10 ) then
			return "æ å¨äºè¡·"
		elseif ( Constant__WPointer == 11 ) then
			return "æµå¥é£å"
		elseif ( Constant__WPointer == 12 ) then
			return "ä½ ææçéã"
		elseif ( Constant__WPointer == 13 ) then
			return "å¿äº¦"
		elseif ( Constant__WPointer == 14 ) then
			return "çµé­çç¼ ç»µ"
		elseif ( Constant__WPointer == 15 ) then
			return "å¹»ãç¥"
		elseif ( Constant__WPointer == 16 ) then
			return "æ«è½ç§æ¬"
		elseif ( Constant__WPointer == 17 ) then
			return "æ·±éçå­¤ç¬ä¸¶"
		elseif ( Constant__WPointer == 18 ) then
			return "é·çå®å¤æå¼ºçè"
		elseif ( Constant__WPointer == 19 ) then
			return "ä½ ççå¥¶å¢ä¸¶"
		elseif ( Constant__WPointer == 20 ) then
			return "ä¿å¬å­"
		elseif ( Constant__WPointer == 21 ) then
			return "å«é¶å¤§å"
		elseif ( Constant__WPointer == 22 ) then
			return "Wqnmmpä¸¶"
		elseif ( Constant__WPointer == 23 ) then
			return "æ»¡å°ææ»çç«ç«"
		elseif ( Constant__WPointer == 24 ) then
			return "æå¤é­çä¸¶è¯ºç¹"
		elseif ( Constant__WPointer == 25 ) then
			return "ç«å¿ä¸¶"
		elseif ( Constant__WPointer == 26 ) then
			return "ä¸ä½ ç«¥å¨"
		elseif ( Constant__WPointer == 27 ) then
			return "å¾ç¦å¾ç®"
		elseif ( Constant__WPointer == 28 ) then
			return "sky"
		elseif ( Constant__WPointer == 29 ) then
			return "æççæ¯ä½ èå­"
		elseif ( Constant__WPointer == 30 ) then
			return "é¸ç¬ä»"
		elseif ( Constant__WPointer == 31 ) then
			return "æ²æ"
		elseif ( Constant__WPointer == 32 ) then
			return "æè¾°æ«æ¥"
		elseif ( Constant__WPointer == 33 ) then
			return "ç¥å¤©ç¾½"
		elseif ( Constant__WPointer == 34 ) then
			return "å¢å¤´è¹²çº¢æ"
		elseif ( Constant__WPointer == 35 ) then
			return "7è¡è"
		elseif ( Constant__WPointer == 36 ) then
			return "æé¸¡é¸¡è´¼å¤§"
		elseif ( Constant__WPointer == 37 ) then
			return "1 1"
		elseif ( Constant__WPointer == 38 ) then
			return "æ«ç¨æ¡¦"
		elseif ( Constant__WPointer == 39 ) then
			return "å¤å­å¥æ"
		elseif ( Constant__WPointer == 40 ) then
			return "å¸å®¸"
		elseif ( Constant__WPointer == 41 ) then
			return "MaâLePYe"
		elseif ( Constant__WPointer == 42 ) then
			return "oneä¸¶lifeã®ç±"
		elseif ( Constant__WPointer == 43 ) then
			return "æ æéæäº"
		elseif ( Constant__WPointer == 44 ) then
			return "è¯·å¸¦çæé£"
		elseif ( Constant__WPointer == 45 ) then
			return "å¿éª"
		elseif ( Constant__WPointer == 46 ) then
			return "Rascalä¸¶ææ"
		elseif ( Constant__WPointer == 47 ) then
			return "é´ä¼"
		elseif ( Constant__WPointer == 48 ) then
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
        return ( ( GetItemTypeId(i) != 'mgtk' ) and ( GetItemTypeId(i) != 'k3m1' ) and ( GetItemTypeId(i) != 'pomn' ) and ( GetItemTypeId(i) != 'wild' ) and ( GetItemTypeId(i) != 'hlst' ) and ( GetItemTypeId(i) != 'totw' ) and ( GetItemTypeId(i) != 'sror' ) and ( GetItemTypeId(i) != 'fgrg' ) and ( GetItemTypeId(i) != 'wshs' ) and ( GetItemTypeId(i) != 'IXU1' ) and ( GetItemTypeId(i) != 'I049' ) and ( GetItemTypeId(i) != 'I04A' ) and ( GetItemTypeId(i) != 'I000' ) and ( GetItemTypeId(i) != 'I001' ) and ( GetItemTypeId(i) != 'I002' ) and ( GetItemTypeId(i) != 'I01D' ) and ( GetItemTypeId(i) != 'I02W' ) )
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
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function IsMaxRing takes item i returns boolean
        return GetItemTypeId(i) == 'brac' or GetItemTypeId(i) == 'lhst'
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
        return id == 'I01U' or id == 'rde2' or id == 'vamp' or id == 'skul' or id == 'tsct' or id == 'tcas' or id == 'plcl' or id == 'tgrh' or id == 'rst1' or id == 'rnec' or id == 'shas' or id == 'spro' or id == 'phea' or id == 'rin1' or id == 'ward' or id == 'rde1'
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
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

        set Uwanjie=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14464.0, - 15552.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase__StartWanjieTimer)


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
	
 function Achievement__GetAchievePage takes integer i returns integer
		return S2I(SubStringBJ(I2S(i), 1, 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement__GetAchieveTarget takes integer i returns integer
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
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åçé¨ç®è¤\"|cffff66ccèµ¤è¡ç½ç|r\"ï¼")
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
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åææç®è¤\"|cff99ccffæè½®ç»¯ç±|r\"ï¼")
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
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åæ¹®ç­ç®è¤\"|cFFFF0000æ®éæ è¿¹|r\"ï¼")
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
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åçéªç®è¤\"|cFF33FF33æ«æ¥ææ|r\"ï¼")
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
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åæ³°éç®è¤\"|cFFCCFF66ä¸å¼¦æè°§|r\"ï¼")
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveOK takes player p,integer achieveID returns boolean
  local integer id= GetConvertedPlayerId(p)
  local integer page= (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) // INLINED!!
  local integer target= Achievement__GetAchieveTarget(achieveID)
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
			exitwhen i > 326
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
				set achieve2[id]=SetIntegerBit(achieve2[id] , Achievement__GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 3 ) then // INLINED!!
				set achieve3[id]=SetIntegerBit(achieve3[id] , Achievement__GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 4 ) then // INLINED!!
				set achieve4[id]=SetIntegerBit(achieve4[id] , Achievement__GetAchieveTarget(achieveID) , true)
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
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "ä¸ä¸é¡µ"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "å³é­|cffff6800(Esc)|r", 512))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroDialogContent takes player p,dialog d returns nothing

		call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
		call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(2) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
		call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(3) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!
		call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(4) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r"))) // INLINED!!

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateSuperDialogContent takes player p,dialog d returns nothing
		
		call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetSuperChallenageName(1) + S3(IsQuanchengjiu(p) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetSuperChallenageName(2) + S3(IsAchieveOK(p , 42) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))

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
	    	call DialogSetMessage(d, "æçæå°±|cffff6800(ç¬¬" + I2S(page) + "/" + I2S(PAGE_ACHIEVE) + "é¡µ)|r")
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
  local integer i= 1
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|r" + GetHeroChallenageName(i) + "|rè±éææçæ¡ä»¶å¦ä¸æç¤º:")
		    	call DisplayTextToPlayer(p, 0., 0., GetHeroChallenageContent(i))
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
	    call DialogSetMessage(d, "æçæå°±|cffff6800(ç¬¬1/" + I2S(PAGE_ACHIEVE) + "é¡µ)|r")
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
	    call CreateHeroDialogContent(p , d)
	    call SavePlayerHandle(LHTable, GetHandleId(d), 13, p)
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
		set udg_I_Jinengjiacheng[playerID + 24]=udg_I_Jinengjiacheng[playerID + 24] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddDefensePercent takes integer playerID,real value returns nothing
		set udg_I_Jinengjiacheng[playerID + 30]=udg_I_Jinengjiacheng[playerID + 30] + value
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

 function Attr__InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library Moqi:
	
//---------------------------------------------------------------------------------------------------
	
 function XingJuxing2 takes unit u returns nothing
		if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(moqi))] ) then
			call UnitAddAbility(u, 'A0HW')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function JuexingMoqi2 takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 7
			call UnitAddAbility(udg_Unit_Qixing[i], 'A0HW')
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function QJuexingMoqi takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 7
			call UnitRemoveAbility(udg_Unit_Qixing[i], 'A0HW')
			set i=i + 1
		endloop
	endfunction

//library Moqi ends
//library Printer:

//---------------------------------------------------------------------------------------------------
	

 function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
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
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CCã|r" + spellName + "|cFFFF66CCã|r" + content ))
	endfunction

 function PrintSpellName takes player whichPlayer,string spellName returns nothing
		call DisplayTextToPlayer((whichPlayer ), 0, 0, ( "|cFFFF66CCã|r" + ( spellName ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

 function Printer__InitPrinter takes nothing returns nothing
		
	endfunction


//library Printer ends
//library Sheyan:
	
//---------------------------------------------------------------------------------------------------
	
 function SimulateDamageSheyan takes unit u returns boolean

		if ( GetUnitTypeId(u) == 'O000' and BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sheyan))] ) then
			call UnitDamageTarget(sheyan, GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE) * 0.01, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddLangRevive takes unit u returns nothing
		if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sheyan))] ) then
			call UnitAddAbility(u, 'A0G5')
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function JuexingSheyan2 takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 7
			if ( IsUnitAliveBJ(udg_Lang[i]) ) then
				call AddLangRevive(udg_Lang[i])
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function QJuexingSheyan takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 7
			if ( IsUnitAliveBJ(udg_Lang[i]) ) then
				call UnitRemoveAbility(udg_Lang[i], 'A0G5')
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSheyan takes unit u returns nothing
		set sheyan=u

	endfunction


//library Sheyan ends
//library SpellBase:


//---------------------------------------------------------------------------------------------------

	
 function SpellBase__ImmuteDamageTimer takes nothing returns nothing
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
		call TimerStart(t, time, false, function SpellBase__ImmuteDamageTimer)
		set t=null
	endfunction

 function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u , 0)
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
			set s__Roubang_cAngle[this]=ModuloReal(s__Roubang_cAngle[this] + s__Roubang_aSpeed[this], 360.)
			loop
				exitwhen i > s__Roubang_number[this]
				if ( s___Roubang_URou[s__Roubang_URou[this]+i] != null ) then
					call SetUnitX(s___Roubang_URou[s__Roubang_URou[this]+i], (RMinBJ(RMaxBJ(((GetUnitX(s__Roubang_caster[this]) + s__Roubang_radius[this] * ( 2 * i - 1 ) * CosBJ(s__Roubang_cAngle[this]))*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
					call SetUnitY(s___Roubang_URou[s__Roubang_URou[this]+i], (RMinBJ(RMaxBJ(((GetUnitX(s__Roubang_caster[this]) + s__Roubang_radius[this] * ( 2 * i - 1 ) * SinBJ(s__Roubang_cAngle[this]))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
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
   local integer i= 1
   local integer randomEmpty= GetRandomInt(1, IMinBJ(29, number))
      local integer this= s__Roubang__allocate()
			set s__Roubang_caster[this]=caster
			set s__Roubang_number[this]=IMinBJ(29, number)
			set s__Roubang_radius[this]=radius
			set s__Roubang_aSpeed[this]=aSpeed
			set s__Roubang_cAngle[this]=angle
			set s__Roubang_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__Roubang_t[this]))))) )), ( ( (this)))) // INLINED!!
		   	loop
		   		exitwhen i > IMinBJ(29, number)
		   		if ( i != randomEmpty ) then
		   			set s___Roubang_URou[s__Roubang_URou[this]+i]=CreateUnit(GetOwningPlayer(caster), utype, (RMinBJ(RMaxBJ(((GetUnitX(caster) + radius * ( 2 * i - 1 ) * CosBJ(angle))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(caster) + radius * ( 2 * i - 1 ) * SinBJ(angle))*1.0), yd_MapMinY), yd_MapMaxY)), angle + 90) // INLINED!!
		   		else
		   			set s___Roubang_URou[s__Roubang_URou[this]+i]=null
		   		endif
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
			call SetTextTagPosUnitBJ(s__MultiLife_ttHint[this], s__MultiLife_caster[this], 20)
			if not ( IsUnitAliveBJ(s__MultiLife_caster[this]) ) then
				set s__MultiLife_current[this]=s__MultiLife_current[this] + 1
				call SetUnitLifePercentBJ(s__MultiLife_caster[this], 100)
				if ( s__MultiLife_current[this] >= s__MultiLife_times[this] ) then
					call sc__MultiLife_deallocate(this)
				else
					call SetTextTagTextBJ(s__MultiLife_ttHint[this], I2S(s__MultiLife_current[this]) + "/" + I2S(s__MultiLife_times[this]) + "æ¬¡çå½", 20)
				endif
			endif
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
		   	if ( times < 2 ) then
		   		return 0
		   	endif
		   	set this=s__MultiLife__allocate()
			set s__MultiLife_caster[this]=caster
			set s__MultiLife_times[this]=times
			set s__MultiLife_ttHint[this]=CreateTextTagUnitBJ("1/" + I2S(times) + "æ¬¡çå½", caster, 0, 20, 0, 100, 100, 0)
			set s__MultiLife_current[this]=1
			//å ä¸å¤æ´»æè½
			call UnitAddAbility(caster, 'aaaa')
			set s__MultiLife_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__MultiLife_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__MultiLife_t[this], 0.05, true, function s__MultiLife_flashLoc)
			return this
  endfunction


  function s__MultiLife_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__MultiLife_t[this])))))))) // INLINED!!
			call UnitRemoveAbility(s__MultiLife_caster[this], 'aaaa')
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
  local real damage=  ( GetHeroStr(uH, true) * 2.0 ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
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
//library Aura:
	

//---------------------------------------------------------------------------------------------------
	
 function Aura__TSpellYanmie3Con takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] != null and ( IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE) != true ) and ( IsUnitIllusionBJ(GetDyingUnit()) != true ) and ( GetUnitPointValue(GetDyingUnit()) != 0 ) and ( GetUnitTypeId(GetDyingUnit()) != 'h000' ) and ( IsUnitAlly(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) != true ) and ( GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER )
	endfunction

 function Aura__TSpellYanmie3Act takes nothing returns nothing
  local integer i= GetKillCount(GetDyingUnit())
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
		set Aura__YKillCount[index]=Aura__YKillCount[index] + i
		if ( Aura__YKillCount[index] >= 100 ) then
			call AddHero3W(udg_H[index] , GetHeroLevel(udg_H[index]) + 200)
			set Aura__YKillCount[index]=0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitKaisaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_haro_0030, 'A0JU')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitYanmieAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_haro_0030, 'A0JU')

		set Aura__TSpellYanmie3=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(Aura__TSpellYanmie3, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(Aura__TSpellYanmie3, Condition(function Aura__TSpellYanmie3Con))
		call TriggerAddAction(Aura__TSpellYanmie3, function Aura__TSpellYanmie3Act)
		//æ¹®ç­æ°åç¯Todo
		call UnitAddAbility(gg_unit_haro_0030, 'A0HF')
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		call BJDebugMsg("|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cFF3333FFé·ç¥å¯ç­|råç¯çææ,ææªå¯ä»¥å¢å |cffffff00(è±éç­çº§/100 + 2)ç¹å¨å±æ§|r.")
		endfunction
//---------------------------------------------------------------------------------------------------
	
 function Aura__SanchuanShunTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer playerID= LoadInteger(spellTable, GetHandleId(t), 1)
		if not ( Aura__shunHints[playerID] ) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66ccãæ¶æ¯ã|rä½ å·²è·å¾æ¥èª|cffffff00é´é³ä¸å·ç®­|råç¯çææ,|cffffcc00ä½¿ç¨Mé®å¯ä»¥ç¬ç§»è³ä»»æå°ç¹|r,å·å´5s.")
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Aura__InitShunyi takes nothing returns nothing
  local timer t= null
  local integer i= 1
		loop
			exitwhen i > 6
			if ( udg_H[i] != null ) then
				set t=CreateTimer()
				call SaveInteger(spellTable, GetHandleId(t), 1, i)
				call TimerStart(t, 4, true, function Aura__SanchuanShunTimer)
				set Aura__shunHints[i]=false
    			call TriggerRegisterUnitEvent(Aura__TSpellMengji3, udg_H[i], EVENT_UNIT_ISSUED_POINT_ORDER)
			endif
			set i=i + 1
		endloop
		set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Aura__TSpellMengji3Con takes nothing returns boolean
	    return ( ( GetIssuedOrderIdBJ() == String2OrderIdBJ("move") ) and ( not ( Aura__shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) ) )
	endfunction

 function Aura__TSpellMengji3Act takes nothing returns nothing
		if ( IsInForbitRegion(GetOrderPointX() , GetOrderPointY() , GetTriggerUnit()) ) then
			call IssueImmediateOrder(GetTriggerUnit(), "stop")
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ­¤å¤ç¦æ­¢ç¬ç§»å°è¾¾.")
	        return
		endif
	    if ( IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY) ) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rç®æ å°ç¹ä¸è½éè¡,ç¬ç§»å¤±è´¥ï¼")
	    	return
	    endif
		set Aura__shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
		call SetUnitX(GetTriggerUnit(), GetOrderPointX())
		call SetUnitY(GetTriggerUnit(), GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetOrderPointX(), GetOrderPointY()))
		call PolledWait(5)
		set Aura__shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=false

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitXiaoyueAura takes nothing returns nothing
		call UnitAddAbilityBJ('A0AJ', gg_unit_haro_0030)
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
		call UnitAddAbility(gg_unit_haro_0030, 'A0JV')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitBajueAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddStrPercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'AOae')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSeyuAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddAgiPercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0JW')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitMoqiAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_haro_0030, 'A04I')
		call EnableTrigger(gg_trg_______21)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitLingxueAura takes nothing returns nothing
	    call UnitAddAbilityBJ('A0FY', gg_unit_haro_0030)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChenjiAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddDefensePercent(i , 0.4)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0JX')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitHanshangAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
            call AddMoneyPercent(i , 0.5)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0JY')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitTaiyaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_haro_0030, 'A0JZ')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitSheyanAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
            call AddIntPercent(i , 0.5)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0K0')
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitHeiyanAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddHPPercent(i , 0.5)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0GR')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitCanglingAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_haro_0030, 'A0HR')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitMengjiAura takes nothing returns nothing
		
	    //è±éç¬¬ä¸ä¸ªæè½ç¬ç§»äºä»¶
	    set Aura__TSpellMengji3=CreateTrigger()
	    call TriggerAddCondition(Aura__TSpellMengji3, Condition(function Aura__TSpellMengji3Con))
	    call TriggerAddAction(Aura__TSpellMengji3, function Aura__TSpellMengji3Act)
		call UnitAddAbility(gg_unit_haro_0030, 'A0EL')
		call Aura__InitShunyi()
		
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitHuanyiAura takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call AddSpellPercent(i , 0.6)
			set i=i + 1
		endloop
		call UnitAddAbility(gg_unit_haro_0030, 'A0GS')
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
		call UnitAddAbility(gg_unit_haro_0030, 'A0JE')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSpecifyAura takes unit u returns nothing
  local integer index= GetHeroIndex(GetUnitTypeId(u))
		if ( index == 1 ) then
			call UnitAddAbility(gg_unit_haro_0030, 'A0JU') // INLINED!!
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
			call UnitAddAbilityBJ('A0FY', gg_unit_haro_0030) // INLINED!!
		elseif ( index == 9 ) then
			call InitChenjiAura()
		elseif ( index == 10 ) then
			call InitHanshangAura()
		elseif ( index == 11 ) then
			call UnitAddAbility(gg_unit_haro_0030, 'A0JZ') // INLINED!!
		elseif ( index == 12 ) then
			call InitSheyanAura()
		elseif ( index == 13 ) then
			call InitHeiyanAura()
		elseif ( index == 14 ) then
			call InitMengjiAura()
		elseif ( index == 15 ) then
			call InitHuanyiAura()
		elseif ( index == 16 ) then
			call UnitAddAbility(gg_unit_haro_0030, 'A0HR') // INLINED!!
		elseif ( index == 17 ) then
			call InitSichenAura()
		endif
	endfunction


//library Aura ends
//library Huodong:

//---------------------------------------------------------------------------------------------------
	
 function IsHuodong takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149270400 ) and ( ( (0) / 10 ) < 149356800 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHuodong2 takes nothing returns boolean
		//return true
		return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHuodong3 takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149356800 ) and ( ( (0) / 10 ) < 149408640 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHuodong4 takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149520960 ) and ( ( (0) / 10 ) < 149598720 ) // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsHuodong5 takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149624640 ) and ( ( (0) / 10 ) < 149719680 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHuodong6 takes nothing returns boolean
		//return true
		return ( ( (0) / 10 ) > 149762880 ) and ( ( (0) / 10 ) < 149840640 ) // INLINED!!
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
			 call UnitAddAbility(u, 'A07B')
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
	
 function Diffculty__UnlimitSlienceTianyanTimer takes nothing returns nothing
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
		call TimerStart(t, 3, true, function Diffculty__UnlimitSlienceTianyanTimer)
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
	
 function ChooseDifficulty takes nothing returns nothing
		call DialogSetMessage(udg_X_Nandu, "éæ©é¾åº¦")
	    call DialogAddButtonBJ(udg_X_Nandu, "å¤©å½ï¼24æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[1]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "å¤ªå¹³ï¼24æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[2]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "åè°ï¼24æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[3]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "æäºï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[4]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "ç¼ç±ï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[5]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "å°ç±ï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[6]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cFFFF0000æ«æ¥|rï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[7]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cffff00ffè½®å|rï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[8]=GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ(udg_X_Nandu, "|cff008000ä¸å«|rï¼24+5æ³¢ï¼")
	    set udg_X_Nandu_Chuangkou[9]=GetLastCreatedButtonBJ()
	    if ( (IsAchieveOK(Player(0) , 325)) ) then // INLINED!!
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff993366å¤©é­|rï¼24+5æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[10]=GetLastCreatedButtonBJ()
	    endif
	    call DialogDisplay(GetFirstPlayer(), udg_X_Nandu, true)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Diffculty__GameModeClick takes nothing returns nothing
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
	    call TriggerAddAction(t, function Diffculty__GameModeClick)
	    set d=null
	    set t=null
	endfunction

//library Diffculty ends
//library Mengji:

//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageMengji takes unit u returns boolean

		if ( GetUnitTypeId(u) == 'hhm1' ) then
			call UnitDamageTarget(mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.2, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		if ( GetUnitTypeId(u) == 'hhm2' ) then

			call UnitDamageTarget(mengji, GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE) * 0.02 * R3(IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) , 0.25 , 1), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		if ( GetUnitTypeId(u) == 'hhm3' ) then
			call RecoverUnitHP(GetTriggerUnit() , 0.1)
			return true
		endif
		//ç¬ä¼å¿
		if ( GetUnitTypeId(u) == 'h01B' and udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] == mengji ) then
			call UnitDamageTarget(mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.35, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		if ( GetUnitTypeId(u) == 'hhm4' ) then
			call UnitDamageTarget(mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetOtherLiutao takes unit u,item it returns boolean
		if ( GetItemTypeId(it) == 'I049' or GetItemTypeId(it) == 'I04A' or it == Mengji__Nihe ) then
			return ( u == mengji )
		else
			return true
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function Mengji__HasShenggong takes nothing returns boolean
		return UnitHasItem(mengji, Mengji__Liutao)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Mengji__ExchangeChao takes boolean higher returns nothing
  local integer charges= GetItemCharges(Mengji__Liutao)
		call FlushChildHashtable(YDHT, GetHandleId(Mengji__Liutao))
		call RemoveItem(Mengji__Liutao)
		if ( higher or BJuexing3[GetConvertedPlayerId(GetOwningPlayer(mengji))] ) then
			set Mengji__Liutao=CreateItem('I04A', GetUnitX(mengji), GetUnitY(mengji))
		else
			set Mengji__Liutao=CreateItem('I049', GetUnitX(mengji), GetUnitY(mengji))
		endif
	    call SaveInteger(YDHT, GetHandleId(Mengji__Liutao), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(mengji)))
		call SetItemCharges(Mengji__Liutao, charges)
		if ( Mengji__Nihe != null ) then
			call SetItemVisible(Mengji__Liutao, false)
		else
			if ( IsUnitHasSlot(mengji) ) then
				//æç©ºä½åç»è±é
				call UnitAddItem(mengji, Mengji__Liutao)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Mengji__NitaiTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
		if ( Mengji__Nihe != null ) then
			call RemoveItem(Mengji__Nihe)
		endif
		set Mengji__Nihe=null
		call SetItemVisible(Mengji__Liutao, true)
		if ( IsUnitHasSlot(mengji) and IsUnitAliveBJ(mengji) ) then
			//æç©ºä½åç»è±é
			call UnitAddItem(mengji, Mengji__Liutao)
	    	call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('A0GX') ) + "|cFFFF66CCã|r" + ( "ï¼ææç»æï¼å£å¼åå½è³è±éèº«ä¸.") )) // INLINED!!
		else
			//æ²¡æä½ç½®åç§»å°è±éèä¸
			call SetItemPosition(Mengji__Liutao, GetUnitX(mengji), GetUnitY(mengji))
			call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(mengji)), GetUnitX(mengji), GetUnitY(mengji), 2.00)
	    	call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('A0GX') ) + "|cFFFF66CCã|r" + ( "ï¼ææç»æï¼ç±äºèåå·²æ»¡ï¼å£å¼åå½è³è±éèä¸.") )) // INLINED!!
		endif
		call PauseTimer(t)
		call FlushChildHashtable(spellTable, id)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Mengji__Nitai takes nothing returns nothing
  local timer t= CreateTimer()
  local item temp= GetSpellTargetItem()
  local integer spellID= GetSpellAbilityId()
		//call SetItemPosition(Liutao,0,0)
		call UnitRemoveItemSwapped(Mengji__Liutao, mengji)
		call SetItemVisible(Mengji__Liutao, false)
		call UnitAddItemByIdSwapped(GetItemTypeId(temp), mengji)
		set Mengji__Nihe=GetLastCreatedItem()
		call SetItemPawnable(Mengji__Nihe, false)
		call TimerStart(t, 60, false, function Mengji__NitaiTimer)
	    call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName(spellID) ) + "|cFFFF66CCã|r" + ( "æååº" + GetItemName(temp)) )) // INLINED!!
		set t=null
		set temp=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function RuohuanmengChatBack1 takes nothing returns nothing
		if ( Mengji__Nihe != null ) then
			call RemoveItem(Mengji__Nihe)
			set Mengji__Nihe=null
		endif
		if ( IsUnitHasSlot(mengji) and IsUnitAliveBJ(mengji) ) then
			//æç©ºä½åç»è±é
			call UnitAddItem(mengji, Mengji__Liutao)
	    	call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('A0GX') ) + "|cFFFF66CCã|r" + ( "ï¼å£å¼åå½è³è±éèº«ä¸.") )) // INLINED!!
		else
			//æ²¡æä½ç½®åç§»å°è±éèä¸
			call SetItemPosition(Mengji__Liutao, GetUnitX(mengji), GetUnitY(mengji))
			call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(mengji)), GetUnitX(mengji), GetUnitY(mengji), 2.00)
	    	call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('A0GX') ) + "|cFFFF66CCã|r" + ( "ç±äºèåå·²æ»¡ï¼å£å¼åå½è³è±éèä¸.") )) // INLINED!!
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RuohuanmengChatBack takes nothing returns nothing
		if ( Mengji__Nihe != null ) then
			call RemoveItem(Mengji__Nihe)
			set Mengji__Nihe=null
		endif
		if ( IsUnitInRange(mengji, Mengji__ULinglong1, 900) ) then
			call Mengji__ExchangeChao(true)
		else
			call Mengji__ExchangeChao(false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Mengji__RuohuanmengAttackCon takes nothing returns boolean
		return GetAttacker() == mengji and (UnitHasItem(mengji, Mengji__Liutao)) // INLINED!!
	endfunction

 function Mengji__RuohuanmengAttack takes nothing returns nothing
  local integer times= GetItemCharges(Mengji__Liutao)
		if ( GetItemTypeId(Mengji__Liutao) == 'I049' ) then
			if ( times < IJ2(mengji , 200 , 100) ) then
				call SetItemCharges(Mengji__Liutao, times + 1)
			endif
		else
			call SetItemCharges(Mengji__Liutao, IMinBJ(1000, times + 1))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RuohuanmengDeathCon takes nothing returns boolean
	    return ( ( GetEventDamage() >= GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) ) and GetItemCharges(Mengji__Liutao) >= 100 and IsUnitAliveBJ(mengji) )
	endfunction

 function RuohuanmengDeathAct takes nothing returns nothing
		call SetItemCharges(Mengji__Liutao, IMaxBJ(0, GetItemCharges(Mengji__Liutao) - 100))
	    call UnitAddAbilityBJ('A0GV', GetTriggerUnit())
	    call PolledWait(0.01)
	    call UnitRemoveAbilityBJ('A0GV', GetTriggerUnit())
	endfunction

//---------------------------------------------------------------------------------------------------
	
    function Mengji__RuohuanmengTimer takes nothing returns nothing
    	if ( Mengji__HuanmengX != GetUnitX(mengji) or Mengji__HuanmengY != GetUnitY(mengji) ) then
    		set Mengji__HuanmengX=GetUnitX(mengji)
    		set Mengji__HuanmengY=GetUnitY(mengji)
    		//ç§»å¨
    		if ( GetUnitAbilityLevel(mengji, 'A0GX') >= 1 ) then
    			call UnitRemoveAbility(mengji, 'A0GX')
    			call UnitAddAbility(mengji, 'A0GY')
    			call SetUnitAbilityLevel(mengji, 'A0GY', 1 + IJ1(mengji , 1 , 0) + IJ2(mengji , 1 , 0) + IJ3(mengji , 1 , 0))
    		endif
    	else
    		//éæ­¢
    		if ( GetUnitAbilityLevel(mengji, 'A0GY') >= 1 ) then
    			call UnitRemoveAbility(mengji, 'A0GY')
    			call UnitAddAbility(mengji, 'A0GX')
    			call SetUnitAbilityLevel(mengji, 'A0GX', 1 + IJ1(mengji , 1 , 0) + IJ2(mengji , 1 , 0) + IJ3(mengji , 1 , 0))
    		endif
    	endif
    endfunction
    
//---------------------------------------------------------------------------------------------------
	
 function Mengji__Tanyoujian takes real damageRate,integer abilityID,real x2,real y2,integer count returns nothing

  local real damage= GetDamageAgi(mengji) * damageRate
     local real x1= GetUnitX(mengji)
     local real y1= GetUnitY(mengji)
     local real facing= Atan2BJ(y2 - y1, x2 - x1)
  local unit u= null
  local boolean next= true
  local integer i= - 1 * count / 2
		loop
			exitwhen i > count / 2
			set u=CreateUnit(GetOwningPlayer(mengji), 'hhm5', x1, y1, facing + i * 20)
	    	call UnitApplyTimedLifeBJ(2, 'BHwe', u)
		    call YDWETimerPatternRushSlide(u , facing + i * 20 , 2000 , 2 , 0.05 , damage , 300. , false , true , true , "origin" , "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl" , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
			set i=i + 1
		endloop
	    call PrintSpellAdd((GetOwningPlayer(mengji) ) , ( GetAbilityName(abilityID) ) , (( damage)*1.0) , "") // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Mengji__Zhenhunsuo takes nothing returns nothing
   local unit u= CreateUnit(GetOwningPlayer(mengji), 'h000', GetUnitX(mengji), GetUnitY(mengji), 0)
	    call UnitApplyTimedLifeBJ(12.00, 'BHwe', u)
        call UnitAddAbilityBJ('A0H0', u)
    	call IssueTargetOrder(u, "magicleash", GetSpellTargetUnit())
 		set u=CreateUnit(GetOwningPlayer(mengji), 'h000', GetUnitX(mengji), GetUnitY(mengji), 0)
	    call UnitApplyTimedLifeBJ(12.00, 'BHwe', u)
        call UnitAddAbilityBJ('A0H0', u)
    	call IssueTargetOrder(u, "magicleash", GetSpellTargetUnit())
	    set u=null
	    call DisplayTextToPlayer(((GetOwningPlayer(mengji) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
    function Mengji__TSpellMengji2Con takes nothing returns boolean
    	return GetAttacker() == mengji and (GetPlayerTechCountSimple('R006', GetOwningPlayer((mengji))) == 1) == true and GetUnitState(mengji, UNIT_STATE_MANA) >= 250 and (UnitHasItem(mengji, Mengji__Liutao)) and GetUnitAbilityLevel(mengji, 'AHM2') == 1 // INLINED!!
    endfunction
    
    function Mengji__TSpellMengji2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call Mengji__Tanyoujian(0.4 , 'AHM2' , GetUnitX(GetAttackedUnitBJ()) , GetUnitY(GetAttackedUnitBJ()) , 1)
		call PolledWait(5)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function Mengji__Sanchuanjian takes nothing returns nothing
  local real damage= GetDamageAgi(mengji) * 0.2
  local real x= (RMinBJ(RMaxBJ(((GetSpellTargetX() + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
  local real y= (RMinBJ(RMaxBJ(((GetSpellTargetY() + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!

        local unit u= CreateUnit(GetOwningPlayer(mengji), 'hhm1', x, y, 0)
        call UnitApplyTimedLifeBJ(22.00, 'BHwe', u)
        call IssuePointOrder(u, "stampede", GetSpellTargetX(), GetSpellTargetY())

		set x=(RMinBJ(RMaxBJ(((GetSpellTargetX() + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
		set y=(RMinBJ(RMaxBJ(((GetSpellTargetY() + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
 		set u=CreateUnit(GetOwningPlayer(mengji), 'hhm2', x, y, 0)
        call UnitApplyTimedLifeBJ(22.00, 'BHwe', u)
        call IssuePointOrder(u, "stampede", GetSpellTargetX(), GetSpellTargetY())

		set x=(RMinBJ(RMaxBJ(((GetSpellTargetX() + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
		set y=(RMinBJ(RMaxBJ(((GetSpellTargetY() + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
 		set u=CreateUnit(Player(10), 'hhm3', x, y, 0)
        call UnitApplyTimedLifeBJ(22.00, 'BHwe', u)
        call IssuePointOrder(u, "stampede", GetSpellTargetX(), GetSpellTargetY())

	    call PrintSpellAdd((GetOwningPlayer(mengji) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
        set u=null
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Mengji__Shunfaxin takes nothing returns nothing
  local real damage= GetDamageAgi(mengji) * 0.1

	    call EnableTrigger(Mengji__TSpellMengji41)
	    call EnableTrigger(Mengji__TSpellMengji42)
	    call PrintSpellAdd((GetOwningPlayer(mengji) ) , ( GetAbilityName('AHM4') ) , (( damage)*1.0) , "") // INLINED!!
	    call PolledWait(30)
	    call DisableTrigger(Mengji__TSpellMengji41)
	    call DisableTrigger(Mengji__TSpellMengji42)
	    call DisplayTextToPlayer((GetOwningPlayer(mengji) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHM4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
	endfunction

	
 function Mengji__ShunfaxinArrow takes real x2,real y2 returns nothing
     local real x1= GetUnitX(mengji)
     local real y1= GetUnitY(mengji)
     local real facing= Atan2BJ(y2 - y1, x2 - x1)
     local real x= x2 - CosBJ(facing) * 100
     local real y= y2 - SinBJ(facing) * 100
   local unit u= CreateUnit(GetOwningPlayer(mengji), 'h01B', x, y, 0)
        call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbility(u, 'A0H4')
        call IssuePointOrder(u, "carrionswarm", x2, y2)
        set u=null
        call PolledWait(0.01)
        if ( RAbsBJ(GetUnitX(mengji) - x1) < 600 ) then
	        call SetUnitX(mengji, x1)
	        call SetUnitY(mengji, y1)
        	endif
        call IssueImmediateOrder(mengji, "stop")
	endfunction

 function Mengji__TSpellMengji4Con takes nothing returns boolean
	    return ( ( GetIssuedOrderIdBJ() == String2OrderIdBJ("smart") ) )
	endfunction

 function Mengji__TSpellMengji41Act takes nothing returns nothing
	    call Mengji__ShunfaxinArrow(GetUnitX(GetOrderTargetUnit()) , GetUnitY(GetOrderTargetUnit()))
	endfunction

 function Mengji__TSpellMengji42Act takes nothing returns nothing
	    call Mengji__ShunfaxinArrow(GetOrderPointX() , GetOrderPointY())
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Mengji__LinglongwuTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local unit u= null
  local integer id= GetHandleId(t)
  local integer count= LoadInteger(spellTable, id, 1)
  local real angel= GetRandomReal(0, 360)
		if ( IsUnitInRange(mengji, Mengji__ULinglong1, 900) ) then
			if ( IsUnitAliveBJ(mengji) ) then
				set u=CreateUnit(GetOwningPlayer(mengji), 'hhm4', GetUnitX(mengji), GetUnitY(mengji), angel)
	       		call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
	        	call IssuePointOrder(u, "carrionswarm", (RMinBJ(RMaxBJ(((GetUnitX(mengji) + 100 * CosBJ(angel))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(mengji) + 100 * SinBJ(angel))*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
			endif
	        call MoveLightningEx(Mengji__LLinglong[1], true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
	        call MoveLightningEx(Mengji__LLinglong[2], true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count + 120))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count + 120))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count + 120))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count + 120))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
	        call MoveLightningEx(Mengji__LLinglong[3], true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count + 240))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count + 240))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900 * CosBJ(count + 240))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1) + 900 * SinBJ(count + 240))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
			call SaveInteger(spellTable, GetHandleId(t), 1, ModuloInteger(count + 6, 360))
			set u=null
		else
			call RemoveUnit(Mengji__ULinglong1)
			call RemoveUnit(Mengji__ULinglong2)
			call DestroyLightningBJ(Mengji__LLinglong[1])
			call DestroyLightningBJ(Mengji__LLinglong[2])
			call DestroyLightningBJ(Mengji__LLinglong[3])
			set Mengji__ULinglong1=null
			set Mengji__ULinglong2=null
			set Mengji__LLinglong[1]=null
			set Mengji__LLinglong[2]=null
			set Mengji__LLinglong[3]=null
			call Mengji__ExchangeChao(false)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Mengji__Linglongwu takes nothing returns nothing

  local timer t= null
		if ( Mengji__ULinglong1 != null ) then
			return
		endif
		set t=CreateTimer()
		set Mengji__ULinglong1=CreateUnit(GetOwningPlayer(mengji), 'h00S', GetUnitX(mengji), GetUnitY(mengji), 0)
		set Mengji__ULinglong2=CreateUnit(GetOwningPlayer(mengji), 'h00T', GetUnitX(mengji), GetUnitY(mengji), 0)
		set Mengji__LLinglong[1]=AddLightningEx("DRAM", true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 900)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
		set Mengji__LLinglong[2]=AddLightningEx("DRAM", true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) - 450)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) + 779)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
		set Mengji__LLinglong[3]=AddLightningEx("DRAM", true, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) - 450)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 0, (RMinBJ(RMaxBJ(((GetUnitX(Mengji__ULinglong1) - 779)*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Mengji__ULinglong1))*1.0), yd_MapMinY), yd_MapMaxY)), 750) // INLINED!!
		call Mengji__ExchangeChao(true)
		call SaveInteger(spellTable, GetHandleId(t), 1, 0)
		call TimerStart(t, 0.1, true, function Mengji__LinglongwuTimer)
	    call PrintSpellAdd((GetOwningPlayer(mengji) ) , ( GetAbilityName('AHM5') ) , (( GetDamageAgi(mengji) * 0.2)*1.0) , "") // INLINED!!
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Mengji__TSpellMengjiAct takes nothing returns nothing
		if ( GetSpellAbilityId() == 'AHM1' ) then
			call Mengji__Tanyoujian(0.75 , GetSpellAbilityId() , GetSpellTargetX() , GetSpellTargetY() , 5)
		elseif ( GetSpellAbilityId() == 'AHM2' ) then
			call Mengji__Zhenhunsuo()
		elseif ( GetSpellAbilityId() == 'A0GW' ) then
			call Mengji__Sanchuanjian()
		elseif ( GetSpellAbilityId() == 'AHM4' ) then
			call Mengji__Shunfaxin()
		elseif ( GetSpellAbilityId() == 'AHM5' ) then
			call Mengji__Linglongwu()
		//ææ
		elseif ( GetSpellAbilityId() == 'A0JG' and IsCanCopy(GetSpellTargetItem()) ) then
			if ( IsInRect(GetUnitX(mengji) , GetUnitY(mengji) , gg_rct_______a3) and IsInRect(GetUnitX(mengji) , GetUnitY(mengji) , gg_rct_______a3) ) then
				call DisplayTextToPlayer(GetOwningPlayer(mengji), 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­¤å¤ç¦æ­¢ææ.")
			else
				call Mengji__Nitai()
			endif
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	

	//æç§12345æ¥å¤æ­
 function LearnSkillMengjiI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == mengji ) then
			if ( whichSpell == 1 ) then
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((mengji))) == 1) == true and GetUnitAbilityLevel(mengji, 'AHM2') == 1 ) then // INLINED!!
				//æè½2åå§å
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((mengji))) == 1) == true and GetUnitAbilityLevel(mengji, 'A0GW') == 1 ) then // INLINED!!
				//æè½3åå§å
				call AddSpecialEffectTargetUnitBJ("origin", mengji, "war3mapImported\\BlightwalkerAura.mdx")
				call InitMengjiAura()
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((mengji))) == 1) == true and GetUnitAbilityLevel(mengji, 'AHM4') == 1 ) then // INLINED!!
				//æè½4åå§å
			elseif ( whichSpell == 5 and IsFifthSpellOK(mengji) == true and GetUnitAbilityLevel(mengji, 'AHM5') == 1 ) then
				//æè½5åå§å
			endif
		endif
	endfunction

 function LearnSkillMengji takes unit learner,integer learnSpellID returns nothing
		if ( learner == mengji ) then
			if ( learnSpellID == 'AHM1' ) then
				call LearnSkillMengjiI(learner , 1)
			elseif ( learnSpellID == 'AHM2' ) then
				call LearnSkillMengjiI(learner , 2)
			elseif ( learnSpellID == 'A0GW' ) then
				call LearnSkillMengjiI(learner , 3)
			elseif ( learnSpellID == 'AHM4' ) then
				call LearnSkillMengjiI(learner , 4)
			elseif ( learnSpellID == 'AHM5' ) then
				call LearnSkillMengjiI(learner , 5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
 function InitMengji takes unit u returns nothing

     local timer t= CreateTimer()
		set mengji=u

		set Mengji__Liutao=GetItemOfTypeFromUnitBJ(mengji, 'I049')
	    call SaveInteger(YDHT, GetHandleId(Mengji__Liutao), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(mengji)))

	    
	    call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.2)
	    call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.2)
	    call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.2)
	    call AddAttackPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.5)
	    call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.4)
	    call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(mengji)) , 0.2)
		call SetPlayerAbilityAvailable(GetOwningPlayer(mengji), 'A0GV', false)
		//è¥å¹»æ¢¦
	    set Mengji__TSpellMengji01=CreateTrigger()
	    call TriggerRegisterPlayerChatEvent(Mengji__TSpellMengji01, GetOwningPlayer(mengji), "-th", true)
	    call TriggerAddAction(Mengji__TSpellMengji01, function RuohuanmengChatBack1)
	    set Mengji__TSpellMengji02=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Mengji__TSpellMengji02, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Mengji__TSpellMengji02, Condition(function Mengji__RuohuanmengAttackCon))
	    call TriggerAddAction(Mengji__TSpellMengji02, function Mengji__RuohuanmengAttack)
	    set Mengji__TSpellMengji03=CreateTrigger()
	    call TriggerRegisterUnitEvent(Mengji__TSpellMengji03, mengji, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(Mengji__TSpellMengji03, Condition(function RuohuanmengDeathCon))
	    call TriggerAddAction(Mengji__TSpellMengji03, function RuohuanmengDeathAct)

		//ä¸»è±éæè½
		set Mengji__TSpellMengji=CreateTrigger()
	    call TriggerRegisterUnitEvent(Mengji__TSpellMengji, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Mengji__TSpellMengji, function Mengji__TSpellMengjiAct)

	    //è¥å¹»æ¢¦éæ­¢ä¸å¨
	    call TimerStart(t, 0.5, true, function Mengji__RuohuanmengTimer)

	    //è±éç¬¬äºä¸ªæè½æ»å»äºä»¶
	    set Mengji__TSpellMengji2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Mengji__TSpellMengji2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Mengji__TSpellMengji2, Condition(function Mengji__TSpellMengji2Con))
	    call TriggerAddAction(Mengji__TSpellMengji2, function Mengji__TSpellMengji2Act)


	    //ç¬ä¼å¿
	    set Mengji__TSpellMengji41=CreateTrigger()
	    call TriggerRegisterUnitEvent(Mengji__TSpellMengji41, mengji, EVENT_UNIT_ISSUED_TARGET_ORDER)
	    call TriggerAddCondition(Mengji__TSpellMengji41, Condition(function Mengji__TSpellMengji4Con))
	    call TriggerAddAction(Mengji__TSpellMengji41, function Mengji__TSpellMengji41Act)
	    call DisableTrigger(Mengji__TSpellMengji41)
	    set Mengji__TSpellMengji42=CreateTrigger()
	    call TriggerRegisterUnitEvent(Mengji__TSpellMengji42, mengji, EVENT_UNIT_ISSUED_POINT_ORDER)
	    call TriggerAddCondition(Mengji__TSpellMengji42, Condition(function Mengji__TSpellMengji4Con))
	    call TriggerAddAction(Mengji__TSpellMengji42, function Mengji__TSpellMengji42Act)
	    call DisableTrigger(Mengji__TSpellMengji42)
	    set t=null
	endfunction


//library Mengji ends
//library Xinglong:




//---------------------------------------------------------------------------------------------------
	
 function IsLong takes nothing returns boolean
		return GetUnitTypeId(xinglong) == 'H01I'
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function SimulateDeathXinglong takes unit u returns nothing
		if ( GetUnitTypeId(u) == 'h01L' ) then
			call DamageArea(xinglong , GetUnitX(u) , GetUnitY(u) , 600 , Xinglong__XinglongDamage)
 			if ( (GetUnitTypeId(xinglong) == 'H01I') ) then // INLINED!!
 				call SimulateSpell(u , u , 'A0JS' , 1 , 2 , "stomp" , false , true , false)
 			endif
 			call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", GetUnitX(u), GetUnitY(u)))
		endif
		if ( GetUnitTypeId(u) == 'h01J' ) then
			call DamageArea(xinglong , GetUnitX(u) , GetUnitY(u) , 300 , Xinglong__XinglongDamage * 0.2)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(u), GetUnitY(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xinglong__Longhuangfuti takes nothing returns nothing
		if ( GetUnitTypeId(xinglong) == 'Hapm' ) then
			if ( not ( Xinglong__BBianshen ) ) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.2 * ( 1 + IJ2(xinglong , 1 , 0) + IJ3(xinglong , 1 , 0) ))
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.1 * ( 1 + IJ2(xinglong , 1 , 0) + IJ3(xinglong , 1 , 0) ))
			endif
			set Xinglong__BBianshen=true
		elseif ( GetUnitTypeId(xinglong) == 'H01I' ) then
			set Xinglong__BBianshen=false
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.2 * ( 1 + IJ2(xinglong , 1 , 0) + IJ3(xinglong , 1 , 0) ))
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.1 * ( 1 + IJ2(xinglong , 1 , 0) + IJ3(xinglong , 1 , 0) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xinglong__Longhuangtuxi2 takes boolean diyfacing,real x,real y,real damage,integer times returns nothing
  local real facing= R3(diyfacing , GetFacingBetweenXY(GetUnitX(xinglong) , GetUnitY(xinglong) , x , y) , GetUnitFacing(xinglong))
  local real distance= R3(diyfacing , GetDistance(GetUnitX(xinglong) , GetUnitY(xinglong) , x , y) , 1200)
  local unit u= CreateUnit(GetOwningPlayer(xinglong), 'h01L', GetUnitX(xinglong), GetUnitY(xinglong), facing)
    	call SetUnitScalePercent(u, 100.00 + times * 10.00, 100.00 + times * 10.00, 100.00 + times * 10.00)
    	call UnitApplyTimedLifeBJ(distance / 900, 'BHwe', u)
	    call YDWETimerPatternRushSlide(u , facing , distance , distance / 900 , 0.05 , damage , 180 + times * 20. , false , true , true , "origin" , "" , "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl")
	endfunction

 function Xinglong__Longhuangtuxi takes real x,real y,integer abilityID,real rate returns nothing
  local integer times= I3(( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JO') == 1 ) , 3 , 1) // INLINED!!
  local integer i= 1
		if ( abilityID != 0 ) then
	    	call PrintSpellAdd((GetOwningPlayer(xinglong) ) , ( GetAbilityName(abilityID) ) , (( Xinglong__XinglongDamage)*1.0) , "") // INLINED!!
		endif
		call Xinglong__Longhuangtuxi2(true , GetSpellTargetX() , GetSpellTargetY() , Xinglong__XinglongDamage * rate , 1)
		if ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JO') == 1 ) then // INLINED!!
			call PolledWait(0.5)
			loop
				exitwhen i > 10
				if ( GetRandomInt(1, 100) > I3(BJuexing1[GetConvertedPlayerId(GetOwningPlayer(xinglong))] and (GetUnitTypeId(xinglong) == 'H01I') , 0 , ( i * 10 )) ) then // INLINED!!
					call Xinglong__Longhuangtuxi2(false , 0 , 0 , Xinglong__XinglongDamage * rate * 0.1 * i , i)
	    			call CreateTextTagA((I2S(i) + "æ¬¡å±é¸£ï¼" ) , ( xinglong ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
					call PolledWait(0.5)
	    		else
	    			exitwhen true
				endif
				set i=i + 1
			endloop
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xinglong__Longhuanggongming takes nothing returns nothing
		call UnitRemoveAbility(xinglong, 'A0JN')
		call UnitAddAbility(xinglong, 'A0JN')
    	call DisplayTextToPlayer((GetOwningPlayer(xinglong) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('A0JO') ) + "|cFFFF66CCã|r" + ( "ï¼å·æ°æåã") )) // INLINED!!
		call UnitDamageTarget(xinglong, xinglong, GetUnitState(xinglong, UNIT_STATE_MAX_LIFE) * 0.2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(xinglong), GetUnitY(xinglong)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xinglong__TSpellXinglongAttackCon takes nothing returns boolean
		return GetAttacker() == xinglong
	endfunction

 function Xinglong__TSpellXinglongAttackAct takes nothing returns nothing
		if ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xinglong))) == 1) and GetUnitState(xinglong, UNIT_STATE_MANA) >= 250 and GetRandomInt(1, 20) == 1 and GetUnitAbilityLevel(xinglong, 'A0JO') == 1 ) then // INLINED!!
			call Xinglong__Longhuangtuxi(GetUnitX(GetAttackedUnitBJ()) , GetUnitY(GetAttackedUnitBJ()) , 'A0JO' , 0.33)
		endif
		if ( (GetPlayerTechCountSimple('R007', GetOwningPlayer((xinglong))) == 1) and GetUnitState(xinglong, UNIT_STATE_MANA) >= 400 and GetRandomInt(1, 10) == 1 and GetUnitAbilityLevel(xinglong, 'A0JP') == 1 ) then // INLINED!!
			call UnitDamageTarget(xinglong, GetAttackedUnitBJ(), ( (LoadInteger(YDHT, GetHandleId((xinglong)), 0x5039AFFB)) + GetHeroStr(xinglong, false) ) * 3 * SquareRoot(I2R(GetHeroLevel(xinglong))) * R3((GetUnitTypeId(xinglong) == 'H01I') , 2 , 1), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS) // INLINED!!
			call CreateTextTagA(("å¼" ) , ( GetAttackedUnitBJ() ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 100 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ())))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
    function Xinglong__TSpellXinglongDamageCon takes nothing returns boolean
    	return (GetPlayerTechCountSimple('R007', GetOwningPlayer((xinglong))) == 1) and GetEventDamage() < GetUnitState(xinglong, UNIT_STATE_MAX_LIFE) and GetUnitAbilityLevel(xinglong, 'A0JP') == 1 and IsUnitInUnitBack(xinglong , GetEventDamageSource() , 60) and GetEventDamage() > 0 and GetEventDamageSource() != xinglong // INLINED!!
    endfunction
    
    function Xinglong__TSpellXinglongDamageAct takes nothing returns nothing
		call SetUnitLifeBJ(xinglong, GetUnitState(xinglong, UNIT_STATE_LIFE) + GetEventDamage() * 2)
    	if not ( Xinglong__BDamage ) then
    		set Xinglong__BDamage=true
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCasterOverhead.mdl", GetUnitX(xinglong), GetUnitY(xinglong)))
    		call PolledWait(1)
    		set Xinglong__BDamage=false
    	endif
    endfunction

//---------------------------------------------------------------------------------------------------
	

	//ä¼¤å®³çè®¡æ¶å¨
 function Xinglong__LonghuanglunhuiDamageTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, 1)
  local unit temp= null
		if ( IsUnitAliveBJ(u) ) then
    		call SetUnitFlyHeight(CreateUnit(GetOwningPlayer(xinglong), 'h01J', (RMinBJ(RMaxBJ(((GetUnitX(u) + GetRandomReal(- 900, 900))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(u) + GetRandomReal(- 900, 900))*1.0), yd_MapMinY), yd_MapMaxY)), 0), 0.00, 500.00) // INLINED!!
    		call SetUnitFlyHeight(CreateUnit(GetOwningPlayer(xinglong), 'h01J', (RMinBJ(RMaxBJ(((GetUnitX(u) + GetRandomReal(- 900, 900))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(u) + GetRandomReal(- 900, 900))*1.0), yd_MapMinY), yd_MapMaxY)), 0), 0.00, 500.00) // INLINED!!
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set u=null
		set temp=null
		set t=null
	endfunction

 function Xinglong__Longhuanglunhui takes nothing returns nothing
  local integer i= GetHeroLevel(xinglong)
  local timer t2= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(xinglong), 'h01K', GetUnitX(xinglong), GetUnitY(xinglong), 0)
		call UnitApplyTimedLifeBJ(10, 'BHwe', u)
		call DisplayTextToPlayer(((GetOwningPlayer(xinglong) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName('A0JQ')) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
		call UnitAddAbility(xinglong, 'A0K1')
		call UnitMakeAbilityPermanent(xinglong, true, 'A0K1')
		//ä¸æ­ä¼¤å®³
		call SaveUnitHandle(spellTable, GetHandleId(t2), 1, u)
		call TimerStart(t2, 0.05, true, function Xinglong__LonghuanglunhuiDamageTimer)
		//å¿«éåçº§
		call BJDebugMsg(I2S(i) + "çº§")
		set t2=null
		set u=null
	    set udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))]=udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))] + 15.
		call PolledWait(10)
	    set udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))]=udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))] - 15.
		call UnitRemoveAbility(xinglong, 'A0K1')
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Xinglong__TSpellXinglongAct takes nothing returns nothing
		if ( GetSpellAbilityId() == 'A0JN' ) then
			//é¾çåæ¯
			call Xinglong__Longhuangtuxi(GetSpellTargetX() , GetSpellTargetY() , 'A0JN' , 1)
		elseif ( GetSpellAbilityId() == 'A0JO' ) then
			//é¾çå±é¸£
			call Xinglong__Longhuanggongming()
		elseif ( GetSpellAbilityId() == 'A0JQ' ) then
			//é¾çè½®å
			call Xinglong__Longhuanglunhui()
		elseif ( GetSpellAbilityId() == 'AEme' ) then
			//é¾çéä½
			call Xinglong__Longhuangfuti()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xinglong__CreateEffect1 takes real x,real y returns nothing
  local integer i= 1
		call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", x, y))
		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", (RMinBJ(RMaxBJ(((x + 900 * CosBJ(i * 60))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((y + 900 * SinBJ(i * 60))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
			set i=i + 1
		endloop
	endfunction

 function Xinglong__CreateEffect2 takes real x,real y returns nothing
  local integer i= 1
	    call CreateUnitEffectSpecifyTime((GetOwningPlayer(xinglong) ) , ( 'h01M' ) , (( x )*1.0) , (( y )*1.0) , (( 0)*1.0) , 5) // INLINED!!
		loop
			exitwhen i > 6
	    	call CreateUnitEffectSpecifyTime((GetOwningPlayer(xinglong) ) , ( 'h01M' ) , (( (RMinBJ(RMaxBJ(((x + 900 * CosBJ(i * 60))*1.0), yd_MapMinX), yd_MapMaxX)) )*1.0) , (( (RMinBJ(RMaxBJ(((y + 900 * SinBJ(i * 60))*1.0), yd_MapMinY), yd_MapMaxY)) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
			set i=i + 1
		endloop
	endfunction

 function Xinglong__TSpellXinglongUpdateAct takes nothing returns nothing
		if ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JQ') == 1 and GetUnitLevel(xinglong) >= 101 ) then // INLINED!!
			//é¾çè½®åï¼ä¼¤å®³å¹¶ç©æï¼è¿æç¹æ
		    call SetHeroLevelBJ(xinglong, 1, false)
		    call UnitAddAbility(xinglong, 'A0JN')
		    call UnitAddAbility(xinglong, 'A0JO')
		    call UnitAddAbility(xinglong, 'A0JP')
		    call UnitAddAbility(xinglong, 'A0JQ')
		    call UnitAddAbility(xinglong, 'A0JR')
			call Xinglong__CreateEffect2(GetUnitX(xinglong) , GetUnitY(xinglong))
 			call SimulateSpell(xinglong , xinglong , 'A0JT' , 2 , 2 , "stomp" , false , true , false)
	    	call PrintSpellAdd((GetOwningPlayer(xinglong) ) , ( GetAbilityName('A0JQ') ) , (( Xinglong__XinglongDamage * 10)*1.0) , "") // INLINED!!
	    	call PolledWait(1)
			call DamageArea(xinglong , GetUnitX(xinglong) , GetUnitY(xinglong) , 1800 , Xinglong__XinglongDamage * 10)
	    	return
		endif

		if ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JO') == 1 ) then // INLINED!!
			call DamageArea(xinglong , GetUnitX(xinglong) , GetUnitY(xinglong) , 1800 , Xinglong__XinglongDamage * 0.5)
			call Xinglong__CreateEffect1(GetUnitX(xinglong) , GetUnitY(xinglong))
		endif

    	call SetUnitLifePercentBJ(xinglong, 100)
    	call SetUnitManaPercentBJ(xinglong, 100)
    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(xinglong), GetUnitY(xinglong)))
    	if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))] and not ( (GetUnitAbilityLevel((xinglong), 'Avul') > 0) ) ) then // INLINED!!
    		call ImmuteDamageInterval(xinglong , 2)
		endif
    	if ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JQ') == 1 ) then // INLINED!!
    		set Xinglong__BAttrTime=Xinglong__BAttrTime + 10

    		if ( GetUnitAbilityLevel(xinglong, 'A0K2') != 1 ) then
    			call UnitAddAbility(xinglong, 'A0K2')
    			call UnitMakeAbilityPermanent(xinglong, true, 'A0K2')
				call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.3)
				call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.3)
				call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.3)
    		endif
    	endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Xinglong__FlashXinglongDamage takes nothing returns nothing
		set Xinglong__XinglongDamage=GetDamageStr(xinglong)
		if ( (GetUnitTypeId(xinglong) == 'H01I') and IsUnitAliveBJ(xinglong) ) then // INLINED!!
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl", GetUnitX(xinglong), GetUnitY(xinglong)))
			call UnitDamageTarget(xinglong, xinglong, GetUnitState(xinglong, UNIT_STATE_MAX_LIFE) * 0.1, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
		endif
    	if ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JQ') == 1 and Xinglong__BAttrTime != 0 ) then // INLINED!!
    		set Xinglong__BAttrTime=Xinglong__BAttrTime - 1
    		if ( Xinglong__BAttrTime == 0 ) then
    			call UnitRemoveAbility(xinglong, 'A0K2')
				call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.3)
				call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.3)
				call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.3)
    		endif
    	endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChooseAura takes unit u returns nothing
		call InitSpecifyAura(u)
		if ( GetHeroIndex(GetUnitTypeId(u)) == 1 ) then
			call UnitRemoveAbility(u, 'AOre')
		endif
		call KillUnit(u)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(u), GetUnitY(u)))
		set IChooseAura=IChooseAura - 1
		if ( IChooseAura == 0 ) then
    		call SetCameraBoundsToRectForPlayerBJ(GetOwningPlayer(xinglong), GetPlayableMapRect())
	    	call PanCameraToTimedForPlayer(GetOwningPlayer(xinglong), GetUnitX(xinglong), GetUnitY(xinglong), 0.20)
	    	set udg_T1[GetConvertedPlayerId(GetOwningPlayer(xinglong))]=true
	    else
	    	call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¯·éæ©ä½ éè¦ç" + I2S(IChooseAura) + "ä¸ªè±éåç¯.")
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChooseAura takes nothing returns nothing
	    call PanCameraToTimedForPlayer(GetOwningPlayer(xinglong), GetRectCenterX(gg_rct_______c1), GetRectCenterY(gg_rct_______c1), 0.20)
	    call SetCameraBoundsToRectForPlayerBJ(GetOwningPlayer(xinglong), gg_rct_______c1)
	    call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¯·éæ©ä½ éè¦ç" + I2S(IChooseAura) + "ä¸ªè±éåç¯.")
	    set udg_T1[GetConvertedPlayerId(GetOwningPlayer(xinglong))]=false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AfterReviveXinglong takes unit u returns nothing
		if ( u == xinglong and Xinglong__BBianshen ) then
			set Xinglong__BBianshen=false
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.2)
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//æç§12345æ¥å¤æ­
 function LearnSkillXinglongI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == xinglong ) then
			if ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((xinglong))) == 1) and GetUnitAbilityLevel(xinglong, 'A0JP') == 1 ) then // INLINED!!
				set IChooseAura=IChooseAura + 1
				call InitChooseAura()
			elseif ( whichSpell == 5 and IsFifthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong, 'A0JR') == 1 ) then
				set IChooseAura=IChooseAura + 3
				call InitChooseAura()
			endif
		endif
	endfunction

 function LearnSkillXinglong takes unit learner,integer learnSpellID returns nothing
		if ( learner == xinglong ) then
			if ( learnSpellID == 'A0JN' ) then
				call LearnSkillXinglongI(learner , 1)
			elseif ( learnSpellID == 'A0JO' ) then
				call LearnSkillXinglongI(learner , 2)
			elseif ( learnSpellID == 'A0JP' ) then
				call LearnSkillXinglongI(learner , 3)
			elseif ( learnSpellID == 'A0JQ' ) then
				call LearnSkillXinglongI(learner , 4)
			elseif ( learnSpellID == 'A0JR' ) then
				call LearnSkillXinglongI(learner , 5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitXinglong takes unit u returns nothing
		set xinglong=u

		set Xinglong__TSpellXinglong=CreateTrigger()
	    call TriggerRegisterUnitEvent(Xinglong__TSpellXinglong, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Xinglong__TSpellXinglong, function Xinglong__TSpellXinglongAct)

	    set udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))]=udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))] + 5.

	    //å·æ°ä¼¤å®³,è¿ææ¯ç§å¤æ­å½¢ææ¯å¦æ£è¡,è¿æå å±æ§çå¤æ­
	    call TimerStart(CreateTimer(), 1, true, function Xinglong__FlashXinglongDamage)

	    //åçº§åè¡åé æä¼¤å®³
	    set Xinglong__TSpellXinglongUpdate=CreateTrigger()
	    call TriggerRegisterUnitEvent(Xinglong__TSpellXinglongUpdate, xinglong, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(Xinglong__TSpellXinglongUpdate, function Xinglong__TSpellXinglongUpdateAct)

	    //æ»å»è§¦åäºä»¶ï¼æè§
	    set Xinglong__TSpellXinglongAttack=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Xinglong__TSpellXinglongAttack, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Xinglong__TSpellXinglongAttack, Condition(function Xinglong__TSpellXinglongAttackCon))
	    call TriggerAddAction(Xinglong__TSpellXinglongAttack, function Xinglong__TSpellXinglongAttackAct)
	    
	    //ä¼¤å®³åç«äºä»¶
	    set Xinglong__TSpellXinglongDamage=CreateTrigger()
	    call TriggerRegisterUnitEvent(Xinglong__TSpellXinglongDamage, xinglong, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(Xinglong__TSpellXinglongDamage, Condition(function Xinglong__TSpellXinglongDamageCon))
	    call TriggerAddAction(Xinglong__TSpellXinglongDamage, function Xinglong__TSpellXinglongDamageAct)
	endfunction


//library Xinglong ends
//library Huanyi:
	
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageHuanyi takes unit u returns boolean

		//é£
		if ( GetUnitTypeId(u) == 'hhh3' ) then
			call UnitDamageTarget(Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		//å°ç«
		if ( GetUnitTypeId(u) == 'h01B' and udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] == Huanyi ) then
			call UnitDamageTarget(Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
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
		if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Huanyi))] ) then
			return 6
		endif

		if not ( (GetPlayerTechCountSimple('R007', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH2') == 1 ) then // INLINED!!
			return 1 + IJ2(Huanyi , 1 , 0)
		endif

		return IMaxBJ(IMinBJ(Huanyi__IMoneng / 2, 5), 1) + IJ2(Huanyi , 1 , 0)
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
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH5') ) + "|cFFFF66CCã|r" + ( "æåå¢å " + I2S(times * 20) + "%çæºåï¼æç»­" + I2S(times * 10) + "ç§ã") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function Huanyi__Fire takes real x,real y returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName('AHH6') ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(Huanyi) ) , ( 'hhh1' ) , (( x )*1.0) , (( y )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	        set i=1
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
  local integer attack= GetHeroInt(Huanyi, true) + (LoadInteger(YDHT, GetHandleId((Huanyi)), 0x5039AFFB)) // INLINED!!
  local integer defense= GetHeroAgi(Huanyi, true) / 100 + (LoadInteger(YDHT, GetHandleId((Huanyi)), 0x81FD3994)) // INLINED!!
  local integer hp= GetHeroStr(Huanyi, true) * 10 + (LoadInteger(YDHT, GetHandleId((Huanyi)), 0xFCD961C9)) // INLINED!!
  local unit u
  local integer i= 1
		loop
			exitwhen i > times
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh2', GetUnitX(Huanyi), GetUnitY(Huanyi), 0)
			call SetUnitAnimation(u, "birth")
			call UnitApplyTimedLifeBJ(180.00, 'BHwe', u)
			call SetAttack(u , attack)
			call SetDefense(u , defense)
			call SetHP(u , hp)
			set i=i + 1
		endloop
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName('AHH8')) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__Wind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local unit u
  local integer i= 1
		loop
			exitwhen i > times
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh3', (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
			call UnitApplyTimedLifeBJ(15.00, 'BHwe', u)
			set i=i + 1
		endloop
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName('AHH9')) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWater takes nothing returns nothing

  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.6
  local integer i= 6 * times
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName('AHHA') ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set i=i - 1
	 		call SimulateSpell4(Huanyi , (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinX), yd_MapMaxX)) , (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinY), yd_MapMaxY)) , 'A05S' , 1 , 6 , "blizzard") // INLINED!!
	 		call SimulateSpell4(Huanyi , (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinX), yd_MapMaxX)) , (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomReal(- 600, 600))*1.0), yd_MapMinY), yd_MapMaxY)) , 'A00U' , 1 , 6 , "blizzard") // INLINED!!
			exitwhen i <= 0
			call PolledWait(0.5 / times)
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireLumber takes real x,real y returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.15
  local integer i= 1
  local integer ii= 1
  local real range= 150 * times
		if ( IsInForbitRegion(x , y , Huanyi) ) then
	        call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0, 0, "|cFFFF66CCãæ¶æ¯ã|ræ­¤å¤ç¦æ­¢ç¬ç§»å°è¾¾.")
	        return
		endif
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
		call SetUnitManaBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_MANA) - 75)
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName('AHHB') ) , (( damage)*1.0) , "") // INLINED!!
		call SetUnitX(Huanyi, x)
		call SetUnitY(Huanyi, y)
		call IssueImmediateOrder(Huanyi, "stop")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y))
		loop
			exitwhen i > times - 1
			set ii=1
			loop
				exitwhen ii > i * 1 + 4
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", (RMinBJ(RMaxBJ(((x + 150 * i * CosBJ(360 * ii / ( i * 1 + 4 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((y + 150 * i * SinBJ(360 * ii / ( i * 1 + 4 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
				set ii=ii + 1
			endloop
			set i=i + 1
		endloop
		call DamageArea(Huanyi , x , y , range , damage)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWind takes real x2,real y2 returns nothing


  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1

     local real x1
     local real y1
     local real facing
  local unit u

		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName('AHHC') ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1

		    set x1=GetUnitX(Huanyi)
		    set y1=GetUnitY(Huanyi)
		    set facing=Atan2BJ(y2 - y1, x2 - x1)
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh4', x1, y1, facing)
	    	call UnitApplyTimedLifeBJ(2, 'BHwe', u)
		    call YDWETimerPatternRushSlide(u , facing , 1400 , 2 , 0.05 , damage , 300. , false , true , true , "origin" , "" , "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl")
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

 function Huanyi__WaterWind takes real x,real y returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local timer t= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh5', x, y, 0)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call UnitApplyTimedLifeBJ(15 * times, 'BHwe', u)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUHuanyiQuan, u)
		call TimerStart(t, 1, true, function Huanyi__WaterWindTimer)
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHHE') ) + "|cFFFF66CCã|r" + ( "æç»­" + I2S(15 * times) + "ç§ã") )) // INLINED!!
		set t=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Huanyi__WaterLumberWindTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer times= LoadInteger(spellTable, id, kIGuCan)
  local integer i= 1
  local integer ii= 1
		if ( IsUnitAliveBJ(Huanyi) ) then
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", GetUnitX(Huanyi__UGucan), GetUnitY(Huanyi__UGucan)))
			loop
				exitwhen i > times - 1
				set ii=1
				loop
					exitwhen ii > i * 1 + 2
					call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", (RMinBJ(RMaxBJ(((GetUnitX(Huanyi__UGucan) + 150 * i * CosBJ(360 * ii / ( i * 1 + 2 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Huanyi__UGucan) + 150 * i * SinBJ(360 * ii / ( i * 1 + 2 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
					set ii=ii + 1
				endloop
				set i=i + 1
			endloop
			call DamageAreaMirror(Huanyi , GetUnitX(Huanyi__UGucan) , GetUnitY(Huanyi__UGucan) , times * 150 , GetDamageInt(Huanyi) * 0.15)
		else
			call RemoveUnit(Huanyi__UGucan)
			set Huanyi__UGucan=null
			call FlushChildHashtable(spellTable, id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Huanyi__WaterLumberWind takes real x,real y returns nothing
		
  local integer times= Huanyi__GetMultiSpell()
  local timer t= CreateTimer()
		if ( Huanyi__UGucan != null ) then
			call RemoveUnit(Huanyi__UGucan)
		endif
		set Huanyi__UGucan=CreateUnit(GetOwningPlayer(Huanyi), 'hhh6', x, y, 270)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call SetUnitScalePercent(Huanyi__UGucan, 100.00 + times * 20.00, 100.00 + times * 20.00, 100.00 + times * 20.00)
    	call SetUnitAnimation(Huanyi__UGucan, "stand birth alternate work upgrade")
		call SaveInteger(spellTable, GetHandleId(t), kIGuCan, times)
		call TimerStart(t, 1, true, function Huanyi__WaterLumberWindTimer)
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName('AHHG')) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireLumberWind takes nothing returns nothing
  local integer times= Huanyi__GetMultiSpell()
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHHH') ) + "|cFFFF66CCã|r" + ( ",ç©æ" + I2S(times * 2) + "ç§ã") )) // INLINED!!
 		call SimulateSpell(Huanyi , Huanyi , 'A0BI' , times , 6 , "stomp" , false , true , false)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWaterWind takes real x,real y returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 1.5
  local unit u
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call PrintSpellAdd((GetOwningPlayer(Huanyi) ) , ( GetAbilityName('AHHI') ) , (( damage)*1.0) , "") // INLINED!!
		loop
			set times=times - 1
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh7', x, y, 0)
    		call SetUnitFlyHeight(u, 0.00, 333.00)
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FireWaterLumber takes real x,real y returns nothing
  local integer times= Huanyi__GetMultiSpell()
  local integer i= 1
  local unit u
     local integer attract
	    if ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) ) then
	    	call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rç®æ å°ç¹ä¸è½éè¡,æè½æ½æ³æ æï¼")
	    	return
	    endif
		set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh8', x, y, 0)
	    set attract=s__Attract_create(u , 900 * times , 0.05 , 50 * times)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHHJ') ) + "|cFFFF66CCã|r" + ( "èå´" + I2S(900 * times) + "s.") )) // INLINED!!
		call UnitApplyTimedLifeBJ(3, 'BHwe', u)
		set s__Attract_forbitHero[(attract)]=true // INLINED!!
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
	    	call CreateTextTagA((I2S(times) + "éæ½æ³" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHHK') ) + "|cFFFF66CCã|r" + ( "æåå¢å " + I2S(times * 20) + "%çä¸å´å±æ§ï¼æç»­" + I2S(times * 10) + "ç§ã") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__Fusu takes nothing returns nothing
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
		//å¹»åä¼å¿
		call Huanyi__None()
		call PolledWait(1)

		//ä¸ççç±
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi__Fire(x , y)
		call PolledWait(1)
		//å°è¯ä¹é 
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 15 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 15)
 		call SimulateSpell(Huanyi , Huanyi , 'AHH7' , GetHeroLevel(Huanyi) / 2 , 5 , "frostarmoron" , false , false , true)
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CCã|r" + ( ( GetAbilityName('AHH7')) ) + "|cFFFF66CCã|r" + ( "") )) // INLINED!!
		call PolledWait(1)
 		//å¤©å¤æ¨ç²¾
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi__Lumber()
		call PolledWait(1)
		//å¹»åæ®å·
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 200 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 200)
		call Huanyi__Wind()
		call PolledWait(1)
		//å°ç«åç»
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 150 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 150)
		call Huanyi__FireWater()
		call PolledWait(1)
		//ä¸è±¡å½å½±
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi__FireLumber(x , y)
		call PolledWait(1)
		//ç«è½®çæ¥
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 150 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 150)
		call Huanyi__FireWind(x , y)
		call PolledWait(1)
		//å¹»å¥å¤©æ³
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 300 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 300)
		call Huanyi__WaterWind(x , y)
		call PolledWait(1)
		//æ²§æå¤å
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 1500 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 1500)
		call Huanyi__WaterLumberWind(x , y)
		call PolledWait(1)
		//é¨ç¥åé
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 200 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 200)
		call Huanyi__FireLumberWind()
		call PolledWait(1)
		//æ®ææµæ
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi__FireWaterWind(x , y)
		call PolledWait(1)
		//å¼åçåº
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 360 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 360)
		call Huanyi__FireWaterLumber(x , y)
		call PolledWait(1)
		//å¯°å®å½ä¸
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 800 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 800)
		call Huanyi__FireWaterLumberWind()
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CCã|r" + ( ",æ½æ³ç»æ.") )) // INLINED!!
			
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__TSpellHuanyi2Act takes nothing returns nothing
		call SetUnitAbilityLevel(Huanyi, 'AHH7', IMinBJ(100, GetHeroLevel(Huanyi) / 2))
	endfunction 
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__TSpellHuanyi3Con takes nothing returns boolean
		return (GetPlayerTechCountSimple('R008', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH3') == 1 and Huanyi__IMoneng <= 5 and GetRandomInt(1, 2) == 1 // INLINED!!
	endfunction
	
 function Huanyi__TSpellHuanyi3Act takes nothing returns nothing
		call SetUnitLifeBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_LIFE) + GetEventDamage())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__FlashPowerData takes nothing returns nothing
		call SetTextTagPosUnitBJ(Huanyi__TTMoneng, Huanyi, 20)

		if ( ( GetUnitState(Huanyi, UNIT_STATE_MANA) >= GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.9 ) and Huanyi__IMoneng < 10 ) then
			call SetUnitManaPercentBJ(Huanyi, 30)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			set Huanyi__IMoneng=Huanyi__IMoneng + 1
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , 0.1)
			if ( Huanyi__ELowMoneng != null and Huanyi__IMoneng > 5 ) then
				call DestroyEffect(Huanyi__ELowMoneng)
				set Huanyi__ELowMoneng=null
			endif
		elseif ( ( GetUnitState(Huanyi, UNIT_STATE_MANA) < GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.2 ) and Huanyi__IMoneng > 0 ) then
			call SetUnitManaPercentBJ(Huanyi, 80)
			set Huanyi__IMoneng=Huanyi__IMoneng - 1
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 0.1)
			if ( Huanyi__ELowMoneng == null and Huanyi__IMoneng <= 5 ) then
				set Huanyi__ELowMoneng=AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
			endif
	    else
	    	return
		endif

		call SetTextTagTextBJ(Huanyi__TTMoneng, I2S(Huanyi__IMoneng) + "çº§é­è½", 20)
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Huanyi__InitPower takes nothing returns nothing
  local timer ti= CreateTimer()

		set Huanyi__IMoneng=0
		set Huanyi__TTMoneng=CreateTextTagUnitBJ("0çº§é­è½", Huanyi, 0, 20, 0, 50, 100, 0)
		call TimerStart(ti, 0.05, true, function Huanyi__FlashPowerData)

		set Huanyi__ELowMoneng=AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
		set ti=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi__SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), ICurrentSpell, false)
		if ( ICurrentSpell == 'AHHF' ) then
			call UnitRemoveAbility(Huanyi, 'AHHF')
		endif
		//0æå
		if ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHH5'
		//1æå
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHH6'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHH7'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHH8'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHH9'
		//2æå
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHA'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHB'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHC'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHD'
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHE'
		elseif ( not ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHF'
			call UnitAddAbility(Huanyi, 'AHHF')
		//1æå
		elseif ( not ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHG'
		elseif ( ( Huanyi__IsFire ) and not ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHH'
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and not ( Huanyi__IsLumber ) and ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHI'
		elseif ( ( Huanyi__IsFire ) and ( Huanyi__IsWater ) and ( Huanyi__IsLumber ) and not ( Huanyi__IsWind ) ) then
			set ICurrentSpell='AHHJ'
		//0æå
		else
			set ICurrentSpell='AHHK'
		endif
		if not ( BTianfu ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), ICurrentSpell, true)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Huanyi__TSpellHuanyiAct takes nothing returns nothing
		//åç¸
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
		//å¤è
		elseif ( GetSpellAbilityId() == 'AHH4' ) then
			call Huanyi__Fusu()
		//å¹»åä¼å¿
		elseif ( GetSpellAbilityId() == 'AHH5' ) then
			call Huanyi__None()
		//ä¸ççç±
		elseif ( GetSpellAbilityId() == 'AHH6' ) then
			call Huanyi__Fire(GetSpellTargetX() , GetSpellTargetY())
		//å¤©å¤æ¨ç²¾
		elseif ( GetSpellAbilityId() == 'AHH8' ) then
			call Huanyi__Lumber()
		//å¹»åæ®å·
		elseif ( GetSpellAbilityId() == 'AHH9' ) then
			call Huanyi__Wind()
		//å°ç«åç»
		elseif ( GetSpellAbilityId() == 'AHHA' ) then
			call Huanyi__FireWater()
		//ä¸è±¡å½å½±
		elseif ( GetSpellAbilityId() == 'AHHB' ) then
			call Huanyi__FireLumber(GetSpellTargetX() , GetSpellTargetY())
		//ç«è½®çæ¥
		elseif ( GetSpellAbilityId() == 'AHHC' ) then
			call Huanyi__FireWind(GetSpellTargetX() , GetSpellTargetY())
		//å¹»å¥å¤©æ³
		elseif ( GetSpellAbilityId() == 'AHHE' ) then
			call Huanyi__WaterWind(GetSpellTargetX() , GetSpellTargetY())
		//æ²§æå¤å
		elseif ( GetSpellAbilityId() == 'AHHG' ) then
			call Huanyi__WaterLumberWind(GetSpellTargetX() , GetSpellTargetY())
		//é¨ç¥åé
		elseif ( GetSpellAbilityId() == 'AHHH' ) then
			call Huanyi__FireLumberWind()
		//æ®ææµæ
		elseif ( GetSpellAbilityId() == 'AHHI' ) then
			call Huanyi__FireWaterWind(GetSpellTargetX() , GetSpellTargetY())
		//å¼åçåº
		elseif ( GetSpellAbilityId() == 'AHHJ' ) then
			call Huanyi__FireWaterLumber(GetSpellTargetX() , GetSpellTargetY())
		//å¯°å®å½ä¸
		elseif ( GetSpellAbilityId() == 'AHHK' ) then
			call Huanyi__FireWaterLumberWind()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//æç§12345æ¥å¤æ­
 function LearnSkillHuanyiI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == Huanyi ) then
			if ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH1') == 1 ) then // INLINED!!
				//æè½2åå§å
				call Huanyi__InitPower()
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH3') == 1 ) then // INLINED!!

				call InitHuanyiAura()
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
		set ICurrentSpell='AHH5'
		//ä¸»è±éæè½
		set Huanyi__TSpellHuanyi=CreateTrigger()
	    call TriggerRegisterUnitEvent(Huanyi__TSpellHuanyi, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Huanyi__TSpellHuanyi, function Huanyi__TSpellHuanyiAct)

	    //é­è½ç­çº§ä½äº5ååå°åå°ç50%ä¼¤å®³
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(t, Condition(function Huanyi__TSpellHuanyi3Con))
	    call TriggerAddAction(t, function Huanyi__TSpellHuanyi3Act)

	    //å°ç²çç­çº§å·æ°
	    set t=CreateTrigger()
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(t, function Huanyi__TSpellHuanyi2Act)
	    set t=null
	    //åå§åæè½ç¶æ
	    call UnitAddAbility(Huanyi, 'AHH6')
	    call UnitAddAbility(Huanyi, 'AHH7')
	    call UnitAddAbility(Huanyi, 'AHH8')
	    call UnitAddAbility(Huanyi, 'AHH9')
	    call UnitAddAbility(Huanyi, 'AHHA')
	    call UnitAddAbility(Huanyi, 'AHHB')
	    call UnitAddAbility(Huanyi, 'AHHC')
	    call UnitAddAbility(Huanyi, 'AHHD')
	    call UnitAddAbility(Huanyi, 'AHHE')
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
		//å¹»é¸åé­
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'A0HX', false)
	endfunction


//library Huanyi ends
//library Version:
	

//---------------------------------------------------------------------------------------------------
	
 function Version__SaveAllPlayerAchievement takes integer id returns nothing
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
	
 function Version__IsPass takes player p,integer nan returns boolean
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
	
 function GetHeiyanHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°2çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°6çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMengjiHint takes nothing returns string
		return "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°8çº§æè½éåè¯¥è±é|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCanglingHint takes nothing returns string
	return S3((( ( (0) / 10 ) > 149520960 ) and ( ( (0) / 10 ) < 149598720 )) , "|cff99ccff5æ20æ¥-28æ¥åªéè¦éå³è¿\"ç¼ç±\"æä»¥ä¸é¾åº¦å³å¯ç´æ¥éå|r" , "|cff99ccfféè¦å°å¾ç­çº§è¾¾å°12çº§(æèä»¥ä»»ä¸å¸¦è½éä¹åæå°±è¿å¥æ¸¸æï¼å¯ä»¥è¾å¥-cjåæ¢)æè½éåè¯¥è±é|r") // INLINED!!
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
	
 function GetHeiyanSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 2 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 6 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMengjiSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 8 )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCanglingSelectedCon takes player p returns boolean
		return ( DzAPI_Map_GetMapLevel(p) >= 12 ) or IsAchieveLight(achiPage[GetConvertedPlayerId(p)]) or ( (( ( (0) / 10 ) > 149520960 ) and ( ( (0) / 10 ) < 149598720 )) and Version__IsPass(p , 5) ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintHuanyiPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintMengjiPassword takes nothing returns nothing

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
	
 function Version__GetTotalDeathCount takes nothing returns integer
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
	
 function IncreaseTaiyaSpin takes player p returns nothing
  local integer i= GetConvertedPlayerId(p)
		if ( diyu[i] / 10000 < 5 ) then
			set diyu[i]=diyu[i] + 10000
			call DzAPI_Map_StoreInteger(ConvertedPlayer(i) , "defense" , diyu[i])
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ³°éç®è¤|cFFCCFF66ä¸å¼¦æè°§|rè¿åº¦:" + I2S(diyu[i] / 10000) + "/5")
		endif
		if ( diyu[i] / 10000 >= 5 ) then
			call SetTaiyaSpinOK(p)
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

				if ( Version__GetTotalDeathCount() < 1 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 310)
				endif

				call SaveDaixin(i)

				if not ( BJiulun ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 323)
				endif

				if not ( BHaojie ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 327)
				endif

				if ( (( ( (0) / 10 ) > 149762880 ) and ( ( (0) / 10 ) < 149840640 )) ) then // INLINED!!
					call IncreaseTaiyaSpin(ConvertedPlayer(i))
				endif
				//éå³æ¬¡æ°
				

				//æ´»å¨ç®è¤
				

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

				if ( (( ( (0) / 10 ) > 149270400 ) and ( ( (0) / 10 ) < 149356800 )) ) then // INLINED!!
					set mingcha[i]=mingcha[i] + 1
					call DzAPI_Map_StoreInteger(ConvertedPlayer(i) , "mingcha" , mingcha[i])
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
	
 function GetSpecifyHeroTimes takes player p,integer heroIndex returns integer
		if ( heroIndex > 0 ) then
			return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)], 2 * heroIndex - 1, 2 * heroIndex))
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function GetHeroTimes takes player p returns integer
  local unit u= udg_H[GetConvertedPlayerId(p)]
  local integer i= GetHeroIndex(GetUnitTypeId(u))
		set u=null
		return GetSpecifyHeroTimes(p , i)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function GetLowerHeroCount takes player p,integer limit returns boolean
  local integer count= 0
  local integer i= 1
		loop
			exitwhen i > HERO_COUNT
			if ( GetSpecifyHeroTimes(p , i) >= limit ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count >= 12
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetBestHero takes player p returns integer
  local integer max= 0
  local integer maxIndex= 0
  local integer i= 1
		loop
			exitwhen i > HERO_COUNT
			if ( ( GetSpecifyHeroTimes(p , i) > max ) or ( GetSpecifyHeroTimes(p , i) == max and GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)])) == i ) ) then
				set max=GetSpecifyHeroTimes(p , i)
				set maxIndex=i
			endif
			set i=i + 1
		endloop

		return maxIndex
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintAllHeroTimes takes player p returns nothing
  local string result= ""
  local integer i= 1
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
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå¦æä½ æ³åæ¶å½©è²ç®è¤,è¯·è¾å¥-qc")
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
			call Version__SaveAllPlayerAchievement(311)
		endif
		if ( JunengCount >= 20 ) then
			call Version__SaveAllPlayerAchievement(312)
		endif
		if ( JunengCount >= 12 and GetDiffculty() >= 8 ) then
			call Version__SaveAllPlayerAchievement(313)
		endif
		if ( JunengCount >= 40 and GetDiffculty() >= 8 ) then
			call Version__SaveAllPlayerAchievement(314)
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
	
 function Version__SaveAttrAchievement takes nothing returns nothing
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
		if ( GetLowerHeroCount(p , 1) ) then
			call GetAchievementAndSave(p , 217)
		endif
		if ( GetLowerHeroCount(p , 5) ) then
			call GetAchievementAndSave(p , 218)
		endif
		if ( GetLowerHeroCount(p , 10) ) then
			call GetAchievementAndSave(p , 219)
		endif
		if ( GetLowerHeroCount(p , 30) ) then
			call GetAchievementAndSave(p , 220)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Version__SaveAllHeroTimes takes nothing returns nothing
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
		call TimerStart(t, 10, false, function Version__SaveAllHeroTimes)
		set t=null
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
	
 function IncreaseDiyuCount takes nothing returns nothing
  local integer i= 1
		if not ( (( ( (0) / 10 ) > 149270400 ) and ( ( (0) / 10 ) < 149356800 )) ) then // INLINED!!
			return
		endif
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
					set diyu[i]=diyu[i] + 1
    				call DzAPI_Map_StoreInteger(ConvertedPlayer(i) , "defense" , diyu[i])
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IncreasePetCount takes player p returns nothing
  local integer i= GetConvertedPlayerId(p)
		if not ( (( ( (0) / 10 ) > 149270400 ) and ( ( (0) / 10 ) < 149356800 )) ) then // INLINED!!
			return
		endif
		set petTimes[i]=petTimes[i] + 1
		call DzAPI_Map_StoreInteger(p , "pet" , petTimes[i])
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function InitVersion takes nothing returns nothing
  local trigger t= CreateTrigger()
  local integer i= 1

		call CreateUnit(Player(6), 'n01E', 6144.0, - 320.0, 270.000)
    	call CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01L', - 10560.0, - 4480.0, 270.000)
    	call CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01K', 11200.0, - 384.0, 270.000)

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

		call TimerStart(CreateTimer(), 60, true, function Version__SaveAttrAchievement)

		set t=null
	endfunction


//library Version ends
//library Spin:
	
//---------------------------------------------------------------------------------------------------
	
 function IsSeyuSpin1 takes player p returns boolean
		return (GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsXiaoyueSpin1 takes player p returns boolean
		return (GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsYanmieSpin1 takes player p returns boolean
		return (GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsXuanxueSpin1 takes player p returns boolean
		return (GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsTaiyaSpin1 takes player p returns boolean
		return (GetBit(spin[GetConvertedPlayerId((p))] , 6) > 0) // INLINED!!
		//return true
	endfunction


//library Spin ends
//library Seyu:
	
//---------------------------------------------------------------------------------------------------
	
 function JuexingSeyu1 takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'A0G1', true)
	endfunction

 function JuexingSeyu2 takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'ACam', true)
	endfunction

 function QJuexingSeyu takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'ACam', false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'A0G1', false)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__ShowChongdongHint takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > IMinBJ(8, Seyu__chongCount)
			if ( chongdongs[i] != null ) then
	            call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(seyu)), GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]), 2.00)
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChongdongFilter takes nothing returns boolean
	    return ( ( GetUnitTypeId(GetFilterUnit()) == 'h015' ) )
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function TSpellSeyuUpdateAct takes nothing returns nothing
  local integer i= 1
	    loop
	    	exitwhen i > IMinBJ(8, Seyu__chongCount)
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
			call DisplayTextToPlayer(GetOwningPlayer(seyu), 0., 0., "|cFFFF66CCãè«æ´ã|rå¨å´900èå´åå­å¨ä¸ä¸ªè«æ´ï¼è¯·å¨è¿ç¹çä½ç½®éæ¾ã")
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null
			return
		endif
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null

		loop
			if ( i > IMinBJ(8, Seyu__chongCount) ) then
				//ç©ºæ´æ»¡äºå°±æç¤ºæ»¡äº
				call Seyu__ShowChongdongHint()
				call DisplayTextToPlayer(GetOwningPlayer(seyu), 0., 0., "|cFFFF66CCãè«æ´ã|rè«æ´å¯éæ¾çæ°éå·²æ»¡,è¯·æå¨åæ¶å¤ä½çè«æ´!")
				return
			endif
			if ( chongdongs[i] == null ) then
				set chongdongs[i]=CreateUnit(GetOwningPlayer(seyu), 'h015', GetSpellTargetX(), GetSpellTargetY(), 270)
				set Seyu__TTCD[i]=CreateTextTagUnitBJ("è«æ´" + I2S(i) + "å·", chongdongs[i], 0, 20.00, 100, 0, 0, 0)
	            call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(seyu)), GetSpellTargetX(), GetSpellTargetY(), 2.00)
	            //å°ç²æè½çè®¾å®
	            call TSpellSeyuUpdateAct()
	            return
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function CancelChongdong takes nothing returns nothing
  local integer i= 1
	    loop
	        exitwhen i > IMinBJ(8, Seyu__chongCount)
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
	
 function Seyu__ChongdongSpell takes nothing returns nothing
		if ( GetSpellAbilityId() == 'A0E6' ) then
			call CancelChongdong()
		//ç©ºé´åç«
		elseif ( GetSpellAbilityId() == 'ACam' ) then
			call ImmuteDamageInterval(GetSpellTargetUnit() , 3)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit())))
		//ç©ºé´åç¬¼
		elseif ( GetSpellAbilityId() == 'A0G1' ) then
 			call SimulateSpell(GetSpellAbilityUnit() , GetSpellAbilityUnit() , 'A0G2' , 1 , 6 , "stomp" , false , true , false)
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function Seyu__EnemyFilterSeyu takes nothing returns boolean
		return IsEnemy(GetFilterUnit() , seyu) == true
	endfunction

    
    function GetRandomUnitAround takes unit u,real radius returns unit
  local group l_group= CreateGroup()
     local unit result= null
	    call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), radius, Condition(function Seyu__EnemyFilterSeyu))
	    set result=FirstOfGroup(l_group)
	    call DestroyGroup(l_group)
	    set l_group=null
	    return result
    endfunction

    
//---------------------------------------------------------------------------------------------------
	
 function Mantuoluo takes real damageRate,integer abilityID returns nothing
  local real damage= GetDamageAgi(seyu) * damageRate * 0.8
     local integer i= 1
	    loop
	    	exitwhen i > IMinBJ(8, Seyu__chongCount)
	    	if ( chongdongs[i] != null ) then
	    		call DamageAreaEff(seyu , GetUnitX(chongdongs[i]) , GetUnitY(chongdongs[i]) , 600 , damage , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
	    	endif
	    	set i=i + 1
	    endloop
		call DamageAreaEff(seyu , GetUnitX(seyu) , GetUnitY(seyu) , 600 , damage , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
		call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'h00E' ) , (( GetUnitX(seyu) )*1.0) , (( GetUnitY(seyu) )*1.0) , (( 0)*1.0) , 5) // INLINED!!

	    //è¾åºä¼¤å®³
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName(abilityID) ) , (( damage)*1.0) , "") // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function TSpellSeyu2Con takes nothing returns boolean
	    return ( ( ( GetAttacker() == seyu ) or ( GetUnitTypeId(GetAttacker()) == 'n01I' ) ) and ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true ) and ( GetRandomInt(1, 20) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, seyu) > 200.00 ) and ( GetUnitAbilityLevel(seyu, 'A0C2') > 0 ) ) // INLINED!!
	endfunction

 function TSpellSeyu2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Mantuoluo(1 , 'A0C2')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	
	//ä½ç½®å·æ°ï¼0.05s
 function Seyu__FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(Seyu__TTPower, seyu, 25)
	endfunction

	
	//æ°å¼å·æ°,1ç§1æ¬¡
 function Seyu__FlashPowerData takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(seyu))
  local real delta
		//éå¶è½éå¨0-105ä¹é´
		set Seyu__IPower=IMinBJ(IMaxBJ(Seyu__IPower - IJ3(seyu , GetRandomInt(1, 2) , 1), 0), IJ3(seyu , 255 , 105))
		call SetTextTagTextBJ(Seyu__TTPower, I2S(Seyu__IPower) + "%è½é", 20)
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
		return ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu ) and IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(seyu)) and GetUnitPointValue(GetDyingUnit()) != 123 and GetUnitPointValue(GetDyingUnit()) != 0
	endfunction
	
 function Seyu__TDeathAddPowerAct takes nothing returns nothing
		set Seyu__IPower=Seyu__IPower + 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__InitPower takes nothing returns nothing
  local timer ti= CreateTimer()
  local trigger t= CreateTrigger()

		//å¼çè½éè§¦å
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(t, Condition(function Seyu__TDeathAddPowerCon))
		call TriggerAddAction(t, function Seyu__TDeathAddPowerAct)

		set Seyu__IPower=0
		set Seyu__RAddtion=0
		set Seyu__TTPower=CreateTextTagUnitBJ(I2S(Seyu__IPower) + "%è½é", seyu, 0, 20, 100, 0, 100, 0)
		call TimerStart(ti, 0.05, true, function Seyu__FlashPowerLocation)

		set ti=CreateTimer()
		call TimerStart(ti, 1, true, function Seyu__FlashPowerData)

		set ti=null
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu__TSpellSeyu3Con takes nothing returns boolean
    	return GetAttackedUnitBJ() == seyu and GetRandomInt(1, 20) == 1 and GetUnitState(seyu, UNIT_STATE_MANA) >= 400 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEar') == 1 // INLINED!!
	endfunction
		
 function Seyu__TSpellSeyu3Act takes nothing returns nothing
  local real damage= GetDamageAgi(seyu) * 2
  local integer i= 1
  local unit u= null
		call DisableTrigger(GetTriggeringTrigger())
		loop
			exitwhen i > IMinBJ(8, Seyu__chongCount)
			if ( chongdongs[i] != null ) then
				set u=GetRandomUnitAround(chongdongs[i] , 600)
	        	call CreateUnitEffectSpecifyTime((GetOwningPlayer(u) ) , ( 'hh00' ) , (( GetUnitX(u) )*1.0) , (( GetUnitY(u) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	    		call CreateTextTagA(("å»" ) , ( u ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
				call UnitDamageTarget(seyu, u, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			endif
			set i=i + 1
		endloop
		set u=GetRandomUnitAround(seyu , 600)
    	call CreateUnitEffectSpecifyTime((GetOwningPlayer(u) ) , ( 'hh00' ) , (( GetUnitX(u) )*1.0) , (( GetUnitY(u) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
		call CreateTextTagA(("å»" ) , ( u ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		call UnitDamageTarget(seyu, u, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName('AEar') ) , (( damage)*1.0) , "") // INLINED!!
		set u=null
		call PolledWait(8)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Kongjianshashou takes nothing returns nothing
  local integer i= 1
  local integer ii= 1
  local integer attack= R2I(I2R(GetHeroAgi(seyu, true)) * SquareRoot(GetHeroLevel(seyu)))
		call DisplayTextToPlayer((GetOwningPlayer(seyu) ), 0, 0, ( "|cFFFF66CCã|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CCã|r" + ( "æ»å»å" + I2S(attack) + ".") )) // INLINED!!

		loop
			exitwhen i > IMinBJ(8, Seyu__chongCount)
			if ( shashous[i] != null ) then
	        	call FlushChildHashtable(YDHT, GetHandleId(shashous[i]))
				call RemoveUnit(shashous[i])
			endif
			set i=i + 1
		endloop

		loop
			exitwhen ii > IMinBJ(8, Seyu__chongCount)
			if ( chongdongs[ii] != null ) then
				set shashous[ii]=CreateUnit(GetOwningPlayer(seyu), 'n01I', GetUnitX(chongdongs[ii]), GetUnitY(chongdongs[ii]), 270)
				call UnitApplyTimedLifeBJ(120, 'BHwe', shashous[ii])
				call SetAttack(shashous[ii] , attack)
			endif
			set ii=ii + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function FlashShashouLocation takes nothing returns nothing
  local integer i= 1

		loop
			exitwhen i > IMinBJ(8, Seyu__chongCount)
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
  local real damage= GetDamageAgi(seyu) * 0.5
  local integer value= LoadInteger(spellTable, id, kAnShaCount)
  local integer i= 1
		if ( value < 30 ) then
			//++1
			call SaveInteger(spellTable, id, kAnShaCount, value + 1)
			//ç¹æ
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'h00E' ) , (( GetUnitX(seyu) )*1.0) , (( GetUnitY(seyu) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
    		call DamageArea(seyu , GetUnitX(seyu) , GetUnitY(seyu) , 600 , damage)
			loop
				exitwhen i > 8
				if ( chongdongs[i] != null ) then
	       			call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'h00E' ) , (( GetUnitX(chongdongs[i]) )*1.0) , (( GetUnitY(chongdongs[i]) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	    			call DamageArea(seyu , GetUnitX(chongdongs[i]) , GetUnitY(chongdongs[i]) , 600 , damage)
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
		if ( ( GetSpellAbilityId() == 'A0IM' ) ) then
			call Mantuoluo(1 , GetSpellAbilityId())
		//æ¾è«æ´
		elseif ( GetSpellAbilityId() == 'A0IL' ) then
			call CreateChongdong()
		//ç©ºé´ææ
		elseif ( GetSpellAbilityId() == 'AEsv' ) then
			call Kongjianshashou()
		elseif ( ( GetSpellAbilityId() == 'AEst' ) ) then
			call Seyu__AnShaZhiWu()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//æç§12345æ¥å¤æ­
 function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == seyu ) then
			if ( whichSpell == 1 ) then
				set Seyu__chongCount=Seyu__chongCount + 1
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'A0C2') == 1 ) then // INLINED!!
				//æè½2åå§å
				call Seyu__InitPower()
				set Seyu__chongCount=Seyu__chongCount + 1
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEar') == 1 ) then // INLINED!!
				//æè½3åå§å
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
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEsv') == 1 ) then // INLINED!!
				//æè½4åå§å
				set Seyu__chongCount=Seyu__chongCount + 1
			elseif ( whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu, 'AEst') == 1 ) then
				//æè½5åå§å
				set Seyu__chongCount=Seyu__chongCount + 2
			endif
		endif
	endfunction

 function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if ( learner == seyu ) then
			if ( learnSpellID == 'A0IM' ) then
				call LearnSkillSeyuI(learner , 1)
			elseif ( learnSpellID == 'A0C2' ) then
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
	
 function Seyu__InitSeyuSpin takes unit u returns unit
		if ( (GetBit(spin[GetConvertedPlayerId(((GetOwningPlayer(u))))] , 2) > 0) ) then // INLINED!!
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]=CreateUnit(GetOwningPlayer(u), 'E00E', GetUnitX(u), GetUnitY(u), 0)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)) , 0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], 100)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitSeyu takes unit u returns nothing
  local integer i= 1
 		
 		//ç®è¤
		set seyu=Seyu__InitSeyuSpin(u)
		set Seyu__chongCount=2
		//1
	    set Seyu__TSpellSeyu=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(Seyu__TSpellSeyu, Condition(function Seyu__TSpellSeyuCon))
	    call TriggerAddAction(Seyu__TSpellSeyu, function Seyu__TSpellSeyuAct)
		//1
	    set Seyu__TSpellChongdong=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellChongdong, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Seyu__TSpellChongdong, function Seyu__ChongdongSpell)

	    //2
	    set Seyu__TSpellSeyu2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Seyu__TSpellSeyu2, Condition(function TSpellSeyu2Con))
	    call TriggerAddAction(Seyu__TSpellSeyu2, function TSpellSeyu2Act)

	    //æ³¨åç©ºé´å°å»æè½
	    set Seyu__TSpellSeyu3=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu__TSpellSeyu3, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Seyu__TSpellSeyu3, Condition(function Seyu__TSpellSeyu3Con))
	    call TriggerAddAction(Seyu__TSpellSeyu3, function Seyu__TSpellSeyu3Act)

		//ææä½ç½®å·æ°
		call TimerStart(CreateTimer(), 5, true, function FlashShashouLocation)

	    //åçº§é¡ºä¾¿æé«è«æ´æè½ç­çº§
	    set Seyu__TSpellSeyuUpdate=CreateTrigger()
	    call TriggerRegisterUnitEvent(Seyu__TSpellSeyuUpdate, seyu, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(Seyu__TSpellSeyuUpdate, function TSpellSeyuUpdateAct)
	    call QJuexingSeyu()
	endfunction

//library Seyu ends
//library Juexing:


//---------------------------------------------------------------------------------------------------
	
 function ForbidTianfu takes nothing returns nothing
  local integer i= 1
		set BTianfu=true
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				if ( udg_H[i] == Huanyi ) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), ICurrentSpell, false)
				elseif ( udg_H[i] == mengji ) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GX', false)
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GY', false)
				else
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), GetHeroTianFu(udg_H[i]), false)
				endif
			endif
			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AllowTianfu takes nothing returns nothing
  local integer i= 1
		set BTianfu=false
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				if ( udg_H[i] == Huanyi ) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), ICurrentSpell, true)
				elseif ( udg_H[i] == mengji ) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GX', true)
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GY', true)
				else
					call SetPlayerAbilityAvailable(ConvertedPlayer(i), GetHeroTianFu(udg_H[i]), true)
				endif
			endif
			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
		
		

  function s__TianfuForbidder_allowTimer takes nothing returns nothing
   local integer this= sc__TianfuForbidder__staticgetindex(GetExpiredTimer())
			call AllowTianfu()
			call PauseTimer(s__TianfuForbidder_t[this])
			call TimerStart(s__TianfuForbidder_t[this], s__TianfuForbidder_IForbid[this], false, function sc__TianfuForbidder_forbitTimer)
  endfunction

  function s__TianfuForbidder_forbitTimer takes nothing returns nothing
   local integer this= sc__TianfuForbidder__staticgetindex(GetExpiredTimer())
			call ForbidTianfu()
			call PauseTimer(s__TianfuForbidder_t[this])
			call TimerStart(s__TianfuForbidder_t[this], s__TianfuForbidder_IAllow[this], false, function s__TianfuForbidder_allowTimer)
  endfunction

  function s__TianfuForbidder__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__TianfuForbidder__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__TianfuForbidder_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

        function s__TianfuForbidder_create takes unit caster,integer forbidTime,integer allowTime returns integer

      local integer this= s__TianfuForbidder__allocate()
			set s__TianfuForbidder_IForbid[this]=forbidTime
			set s__TianfuForbidder_IAllow[this]=allowTime
			set s__TianfuForbidder_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__TianfuForbidder_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__TianfuForbidder_t[this], forbidTime, false, function s__TianfuForbidder_forbitTimer)
			return this
  endfunction

  function s__TianfuForbidder_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__TianfuForbidder_t[this])))))))) // INLINED!!
			call AllowTianfu()
			set s__TianfuForbidder_IForbid[this]=0
			set s__TianfuForbidder_IAllow[this]=0
			call PauseTimer(s__TianfuForbidder_t[this])
			call DestroyTimer(s__TianfuForbidder_t[this])
			set s__TianfuForbidder_t[this]=null
  endfunction

//Generated destructor of TianfuForbidder
function s__TianfuForbidder_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TianfuForbidder_V[this]!=-1) then
        return
    endif
    call s__TianfuForbidder_onDestroy(this)
    set si__TianfuForbidder_V[this]=si__TianfuForbidder_F
    set si__TianfuForbidder_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
 function Juexing___InitHeroJuexing1 takes unit u returns nothing
  local integer i= GetHeroTianFu(u)
		call SetUnitAbilityLevel(u, i, 2)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ ç" + GetAbilityName(i) + "æè½ä¸é¶è§éäº!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)))
		set BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))]=true
		if ( u == seyu ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'A0G1', true) // INLINED!!
		elseif ( u == Huanyi ) then
			call UnitAddAbility(Huanyi, 'A0HX')
		elseif ( u == sichen ) then
			call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Juexing___InitHeroJuexing2 takes unit u returns nothing
  local integer i= GetHeroTianFu(u)
		call SetUnitAbilityLevel(u, i, 3)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ ç" + GetAbilityName(i) + "æè½äºé¶è§éäº!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)))
		set BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))]=true
		if ( u == moqi ) then
			call JuexingMoqi2()
		elseif ( u == seyu ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(seyu), 'ACam', true) // INLINED!!
		elseif ( u == chenji ) then
			call TriggerExecute(gg_trg_____________127)
		elseif ( u == sheyan ) then
			call JuexingSheyan2()
		elseif ( u == sichen ) then
			call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ))
		elseif ( u == xinglong and (GetUnitTypeId(xinglong) == 'H01I') ) then // INLINED!!
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.2)
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Juexing___InitHeroJuexing3 takes unit u returns nothing
  local integer i= GetHeroTianFu(u)
		call SetUnitAbilityLevel(u, i, 4)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ ç" + GetAbilityName(i) + "æè½ä¸é¶è§éäº!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)))
		set BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))]=true
		if ( u == kaisa ) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)) , 0.5)
		elseif ( u == yanmie ) then
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)) , 0.4)
		elseif ( u == bajue ) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)) , 0.6)
		elseif ( u == xiaoyue ) then
			call UnitAddAbility(gg_unit_h00K_0254, 'A0IN')
		elseif ( u == lingxue ) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)) , 1)
		elseif ( u == sheyan ) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)) , 0.4)
		elseif ( u == Heiyan ) then
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)) , 1)
		elseif ( u == cangling ) then
			call AddHP(cangling , 40000000)
		elseif ( u == mengji ) then
			call RuohuanmengChatBack()
		elseif ( u == sichen ) then
			call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ))
		elseif ( u == xinglong and (GetUnitTypeId(xinglong) == 'H01I') ) then // INLINED!!
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.2)
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , 0.1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Juexing___CancelJuexing takes unit u returns nothing
  local integer i= GetHeroTianFu(u)
		call SetUnitAbilityLevel(u, i, 1)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ ç" + GetAbilityName(i) + "æè½è§éå¤±æäº!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)))
		if ( u == sichen ) then
			if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))] ) then
				call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ))
			endif
			if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))] ) then
				call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ))
			endif
			if ( BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sichen))] ) then
				call SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ))
			endif
		endif
		if ( u == xinglong and (GetUnitTypeId(xinglong) == 'H01I') ) then // INLINED!!
			if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))] ) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.2)
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.1)
			endif
			if ( BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))] ) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.2)
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)) , - 0.1)
			endif
		endif
		if ( u == kaisa and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(kaisa))] ) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)) , - 0.5)
		elseif ( u == yanmie and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(yanmie))] ) then
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)) , - 0.4)
		elseif ( u == bajue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(bajue))] ) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)) , - 0.6)
		elseif ( u == xiaoyue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xiaoyue))] ) then
			call UnitRemoveAbility(gg_unit_h00K_0254, 'A0IN')
		elseif ( u == lingxue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(lingxue))] ) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)) , - 1)
		elseif ( u == sheyan and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sheyan))] ) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)) , - 0.4)
		elseif ( u == Heiyan and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Heiyan))] ) then
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)) , - 1)
		elseif ( u == cangling and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(cangling))] ) then
			call AddHP(cangling , - 40000000)
		endif
		set BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))]=false
		set BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))]=false
		set BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))]=false
		if ( u == moqi ) then
			call QJuexingMoqi()
		elseif ( u == seyu ) then
			call QJuexingSeyu()
		elseif ( u == chenji ) then
			call TriggerExecute(gg_trg_____________129)
		elseif ( u == sheyan ) then
			call QJuexingSheyan()
		elseif ( u == Huanyi ) then
			call UnitRemoveAbility(Huanyi, 'A0HX')
		elseif ( u == mengji ) then
			call RuohuanmengChatBack()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Juexing___TDengEquitCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and IsDeng(GetManipulatedItem())
	endfunction

 function Juexing___TDengEquitAct takes nothing returns nothing
  local integer i= 1
  local integer dengCount= 0
		loop
			exitwhen i > 6
			if ( IsDeng(UnitItemInSlotBJ(GetTriggerUnit(), i)) ) then
				set dengCount=dengCount + 1
			endif
			set i=i + 1
		endloop

		//å¦æè®¡æ°åå¤§äº1åä¸¢æ
		if ( dengCount > 1 ) then
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ åªè½åæ¶è£å¤ä¸ä¸ä¸ªç§å¢è³å®ï¼")
			call PolledWait(0.01)
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			return
		elseif ( dengCount == 1 ) then
			if ( GetDeng(GetTriggerUnit()) >= 3 ) then
				call Juexing___InitHeroJuexing1(GetTriggerUnit())
			endif
			if ( GetDeng(GetTriggerUnit()) >= 7 ) then
				call Juexing___InitHeroJuexing2(GetTriggerUnit())
			endif
			if ( GetDeng(GetTriggerUnit()) >= 12 ) then
				call Juexing___InitHeroJuexing3(GetTriggerUnit())
			endif
		endif

	endfunction

 function Juexing___TDengDropAct takes nothing returns nothing
  local integer i= 1
  local integer dengCount= 0
		loop
			exitwhen i > 6
			if ( IsDeng(UnitItemInSlotBJ(GetTriggerUnit(), i)) ) then
				set dengCount=dengCount + 1
			endif
			set i=i + 1
		endloop
		if ( dengCount <= 1 and GetDeng(GetTriggerUnit()) >= 3 ) then
			call Juexing___CancelJuexing(GetTriggerUnit())
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function Juexing___InitJuexing takes nothing returns nothing
		//åªè½åæ¶è£å¤ä¸ä¸ªç¯
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function Juexing___TDengEquitCon))
		call TriggerAddAction(t, function Juexing___TDengEquitAct)

		//ä¸¢å¼ç¯äºä»¶
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function Juexing___TDengEquitCon))
		call TriggerAddAction(t, function Juexing___TDengDropAct)

		set t=null
	endfunction

//library Juexing ends

// BEGIN IMPORT OF Juexing.j
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

// BEGIN IMPORT OF DzAPI.j
// END IMPORT OF DzAPI.j
// END IMPORT OF Test.j
// BEGIN IMPORT OF Constant.j

// BEGIN IMPORT OF JBase.j

// END IMPORT OF JBase.j

// END IMPORT OF Constant.j
// IGNORE DOUBLE IMPORT OF JBase.j


// END IMPORT OF LHBase.j
// BEGIN IMPORT OF Moqi.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Moqi.j
// BEGIN IMPORT OF Seyu.j

// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j

 
// END IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j
// BEGIN IMPORT OF Spin.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF NetVersion.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Diffculty.j

// IGNORE DOUBLE IMPORT OF LHBase.j
/////! import "Huodong.j"
// END IMPORT OF Diffculty.j
// BEGIN IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Achievement.j
// BEGIN IMPORT OF Huodong.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j
// END IMPORT OF Huodong.j
// END IMPORT OF NetVersion.j
// END IMPORT OF Spin.j


// END IMPORT OF Seyu.j
// BEGIN IMPORT OF Mengji.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j
// BEGIN IMPORT OF Aura.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Attr.j


// END IMPORT OF Aura.j




// END IMPORT OF Mengji.j
// BEGIN IMPORT OF Huanyi.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j
// IGNORE DOUBLE IMPORT OF Aura.j
// IGNORE DOUBLE IMPORT OF Diffculty.j

// END IMPORT OF Huanyi.j
// BEGIN IMPORT OF Xinglong.j
// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j
// IGNORE DOUBLE IMPORT OF Aura.j



// END IMPORT OF Xinglong.j
// BEGIN IMPORT OF Sheyan.j
//!import "LHBase.j"



// END IMPORT OF Sheyan.j

// END IMPORT OF Juexing.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs53093187")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Attr__InitAttr")
call ExecuteFunc("Printer__InitPrinter")
call ExecuteFunc("InitVersion")
call ExecuteFunc("Juexing___InitJuexing")

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
function sa__TianfuForbidder_forbitTimer takes nothing returns boolean

   local integer this= sc__TianfuForbidder__staticgetindex(GetExpiredTimer())
			call ForbidTianfu()
			call PauseTimer(s__TianfuForbidder_t[this])
			call TimerStart(s__TianfuForbidder_t[this], s__TianfuForbidder_IAllow[this], false, function s__TianfuForbidder_allowTimer)
   return true
endfunction
function sa__TianfuForbidder__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__TianfuForbidder_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__TianfuForbidder_t[this])))))))) // INLINED!!
			call AllowTianfu()
			set s__TianfuForbidder_IForbid[this]=0
			set s__TianfuForbidder_IAllow[this]=0
			call PauseTimer(s__TianfuForbidder_t[this])
			call DestroyTimer(s__TianfuForbidder_t[this])
			set s__TianfuForbidder_t[this]=null
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
			call UnitRemoveAbility(s__MultiLife_caster[this], 'aaaa')
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

function jasshelper__initstructs53093187 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__TianfuForbidder_forbitTimer=CreateTrigger()
    call TriggerAddCondition(st__TianfuForbidder_forbitTimer,Condition( function sa__TianfuForbidder_forbitTimer))
    set st__TianfuForbidder__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__TianfuForbidder__staticgetindex,Condition( function sa__TianfuForbidder__staticgetindex))
    set st__TianfuForbidder_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__TianfuForbidder_onDestroy,Condition( function sa__TianfuForbidder_onDestroy))
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








endfunction

