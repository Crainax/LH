globals
//globals from DzAPI:
constant boolean LIBRARY_DzAPI=true
//endglobals from DzAPI
//globals from JBase:
constant boolean LIBRARY_JBase=true
//endglobals from JBase
//globals from PIVInterface:
constant boolean LIBRARY_PIVInterface=true
boolean array sPIV
//endglobals from PIVInterface
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
		
constant integer HERO_COUNT= 20
		
constant boolean Huodong= false
		
constant integer PAGE_ACHIEVE= 10
constant integer PAGE_HERO_CHALLANGER= 3
		
integer renshu= 0
		
		
integer mode= 0
constant integer COUNT_WANJIE= 47
integer Constant__WPointer= 1

		//æè§çæ å¿ä½
boolean BSpinXinglong= false
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
unit gg_unit_Hant_0205= null
unit gg_unit_Hvwd_0016= null
trigger gg_trg_______17= null
trigger gg_trg_______19= null

location udg_Point= null
    //å·æ°ææå
trigger gg_trg_zhandouli2= null
    //å¤æ´»
location udg_Point_Fuhuo= null
	//ä¸»åºå°çåºå
rect gg_rct________1= null
	//é¾åº¦ç­çº§ï¼æé«7
integer udg_Nandu_JJJ= 0
integer udg_Nandu= 0
    //æè½è§¦å
trigger gg_trg_____________71= null
trigger gg_trg_______21= null
        //åºå°æ»åºå
rect gg_rct__________u= null
        //æéµ
unit gg_unit_h00K_0254= null
	   //å¥ç
unit gg_unit_Nkjx_0241= null
        //å·¦
unit gg_unit_Uear_0242= null
        //å³
unit gg_unit_Npld_0253= null
        //ææè°æ´
unit gg_unit_ndrz_0019= null
        //è±é
unit array udg_H
        //å£ä¸»åèº«
unit gg_unit_Ekgg_0259= null
        //æè½ä¼¤å®³
real array udg_I_Jinengjiacheng
        //å¢ç
real array udg_I_Xianglian
        //è§¦å,å±æ§å·æ°
trigger gg_trg_D7= null
        //æ³¢æ°
integer udg_Bo= 0
        //æè¡æ¦
integer array udg_Paihangbang
leaderboard array udg_Paihang
        //åºå°
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
rect gg_rct_Chuancheng= null
        
rect gg_rct_______a3= null
        
real array udg_I_Shanghai
        
integer array udg_Second
        //ä¸æ
unit array udg_Unit_Qixing

        //è¾°å¯åçµå¤æ­
trigger gg_trg_____________127= null
trigger gg_trg_____________129= null
        //ç¼
unit array udg_Lang
        //æ¹®ç­
trigger gg_trg_____________3= null

        //ç»éª
real array udg_I_Jingyan
boolean array udg_T1

        //æ··æ²ä¸åº
rect gg_rct_Hundun= null

        //åºæª
rect gg_rct________6= null
rect gg_rct________3= null

        //è®¡æ¶å¨
timer udg_Time_BOSS= null
timerdialog udg_Timer_BOSS= null

        //å°æ¸¸æåºå°
rect gg_rct_Game1= null
rect gg_rct_Game2= null
unit gg_unit_n01Q_0273= null
unit gg_unit_Eevi_0020= null

        //å£°é³
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
sound gg_snd_yanmie_5= null
sound gg_snd_MapPing= null
sound gg_snd_fanzhuan= null

timer array udg_Double_M
timerdialog udg_Double_Me= null

        //ä¼ æ¿åºå
rect gg_rct_Chuangcheng= null

        //ææå
integer array udg_Zhandouli

        //åç¯
unit gg_unit_n01S_0258= null

        //è¡£ææ æ
boolean array udg_Yifu

        //å¯æ
trigger gg_trg_____________7= null
unit gg_unit_Ocbh_0251= null
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
        //æ¯å¦åè²
timer array TBianse

        //æ¯å¦æ­£å¨ç¦ç¨å¤©èµ
boolean BTianfu= false

boolean array BYeguaiFirst

        //æ¯å¦æ¾ç¤ºä¼¤å®³
boolean array BHideDamage

        //æ¯å¦å¯ä»¥è·³å³
        //boolean BSkipKuilei = false

        //è±éæ­»äº
boolean array BHeroDeath

        //è½®æµç©å®¶æé
integer INextPlayerID= 0
        
        //äº¬å§
boolean JJ1= false
boolean JJ2= false
boolean JJ3= false
boolean JJ4= false

item array IBibo

        //ä»åºæ¹ç§°å·
boolean array BBoxName

boolean BBuqian1= false
boolean BBuqian2= false
boolean BBuqian3= false

        //è±éæ¯å¦3ç§å¤æ´»
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

		//ææé¾åº¦
integer CDiff= 0
		//ææç±»å
integer CType= 0

		//å¤æ­æ¯å¦è¯»åæå
boolean array Bdudang

string array Greward2
//endglobals from ChallangerDZ
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
constant integer kUImmuteDamage=5
//endglobals from SpellBase
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
integer array spin3
string array heroCountString

		//å¾éªå¯æ¶
integer array Greward

//endglobals from Achievement
//globals from Mirror:
constant boolean LIBRARY_Mirror=true
timer TiMirror
timerdialog TiDiaMirror

//endglobals from Mirror
//globals from Fanzhuan:
constant boolean LIBRARY_Fanzhuan=true
integer array diyu
string array SFanzhaun
//endglobals from Fanzhuan
//globals from Huodong:
constant boolean LIBRARY_Huodong=true
//endglobals from Huodong
//globals from Jizi:
constant boolean LIBRARY_Jizi=true
//endglobals from Jizi
//globals from Qixi:
constant boolean LIBRARY_Qixi=true
//endglobals from Qixi
//globals from ChallangerMode:
constant boolean LIBRARY_ChallangerMode=true
integer EquipLoopingTime= 1
group GJingxiang= null
//endglobals from ChallangerMode
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
//endglobals from ItemBase
//globals from Continous:
constant boolean LIBRARY_Continous=true
integer array IConDays
integer array ILastTime
constant integer TIMESTAMP_START= 1500998400
boolean array BWuxing
		//integer DzAPI_Map_GetGameStartTime() = 0

//endglobals from Continous
//globals from Version:
constant boolean LIBRARY_Version=true


		//éå­
string array SJizi

unit UChengjiu= null

integer array vipCode
		
integer array mingcha
		
integer array passTimes
		
integer array petTimes
		
constant integer kSaveHeroTimes=7
		
		

		
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


		//ç­¾å°ææ°
		//integer array IQiandao2

		//æ»æ°ä¸å­å¨20ä¸ª
boolean BZongshu= false

		//ç®±å­
string array SBoxWord

		//ä¸è¯´è¯çæå°±
boolean BSlince= false
//endglobals from Version
//globals from Spin:
constant boolean LIBRARY_Spin=true
boolean array BCancelSpin

//endglobals from Spin
//globals from Kaisa:
constant boolean LIBRARY_Kaisa=true
trigger Kaisa__TSpellKaisa= null
integer Kaisa__INiuSpinCount= 0

boolean BFanzhuanKS= false

		//å¤©å°è£å
boolean Kaisa__BLiebian= false
timer Kaisa__TLiebian= null
integer Kaisa__ILiebian= 0
real Kaisa__RLiebianX= 0.
real Kaisa__RLiebianY= 0.
effect Kaisa__ELiebian= null
real Kaisa__RDistanceLiebian= 0.
integer Kaisa__TTBLiebian= 0

		//å¾è¾
group Kaisa__GTuteng= null
//endglobals from Kaisa
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
constant integer si__OnlyAttackBase=1
integer si__OnlyAttackBase_F=0
integer si__OnlyAttackBase_I=0
integer array si__OnlyAttackBase_V
unit array s__OnlyAttackBase_u
timer array s__OnlyAttackBase_t
constant integer si__Connect=2
integer si__Connect_F=0
integer si__Connect_I=0
integer array si__Connect_V
boolean array s__Connect_BDie
unit array s__Connect_unit1
unit array s__Connect_unit2
lightning array s__Connect_l
timer array s__Connect_t
constant integer si__Attract=3
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
constant integer si__Missile=4
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
constant integer si__Questions=5
integer si__Questions_F=0
integer si__Questions_I=0
integer array si__Questions_V
player array s__Questions_p
integer array s__Questions_time
trigger array s__Questions_click
dialog array s__Questions_d
timer array s__Questions_t
integer array s__Questions_rightPos
string array s__Questions_question
integer array s__Questions_as
constant integer si__Roubang=6
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
constant integer si__MultiLife=8
integer si__MultiLife_F=0
integer si__MultiLife_I=0
integer array si__MultiLife_V
unit array s__MultiLife_caster
integer array s__MultiLife_times
integer array s__MultiLife_current
timer array s__MultiLife_t
texttag array s__MultiLife_ttHint
integer array s__MultiLife_al
constant integer si__SuperShield=9
integer si__SuperShield_F=0
integer si__SuperShield_I=0
integer array si__SuperShield_V
unit array s__SuperShield_caster
integer array s__SuperShield_times
integer array s__SuperShield_current
timer array s__SuperShield_t
boolean array s__SuperShield_deathContinue
constant integer si__TextTagBind=10
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
constant integer si__Buff=11
integer si__Buff_F=0
integer si__Buff_I=0
integer array si__Buff_V
player array s__Buff_p
integer array s__Buff_ab
timer array s__Buff_t
constant integer si__JudgeInvu=12
integer si__JudgeInvu_F=0
integer si__JudgeInvu_I=0
integer array si__JudgeInvu_V
unit array s__JudgeInvu_u
timer array s__JudgeInvu_t
trigger st__OnlyAttackBase__staticgetindex
trigger st__OnlyAttackBase_onDestroy
trigger st__OnlyAttackBase_destroy
trigger st__Connect__staticgetindex
trigger st__Connect_onDestroy
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
trigger st__Missile__staticgetindex
trigger st__Missile_onDestroy
trigger st__Missile_destroy
trigger st__Questions_onDestroy
trigger st__Questions_destroy
trigger st__Roubang__staticgetindex
trigger st__Roubang_onDestroy
trigger st__Roubang_destroy
trigger st__MultiLife__staticgetindex
trigger st__MultiLife_onDestroy
trigger st__SuperShield__staticgetindex
trigger st__SuperShield_onDestroy
trigger st__SuperShield_destroy
trigger st__TextTagBind__staticgetindex
trigger st__TextTagBind_onDestroy
trigger st__Buff__staticgetindex
trigger st__Buff_onDestroy
trigger st__Buff_destroy
trigger st__JudgeInvu_onDestroy
trigger st__JudgeInvu_destroy
trigger array st___prototype31
trigger array st___prototype38
trigger array st___prototype228
handle f__arg_handle1
unit f__arg_unit1
player f__arg_player1
integer f__arg_this
integer f__result_integer

endglobals


//Generated method caller for OnlyAttackBase._staticgetindex
function sc__OnlyAttackBase__staticgetindex takes handle h returns integer
    set f__arg_handle1=h
    call TriggerEvaluate(st__OnlyAttackBase__staticgetindex)
 return f__result_integer
endfunction

//Generated method caller for OnlyAttackBase.onDestroy
function sc__OnlyAttackBase_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__OnlyAttackBase_onDestroy)
endfunction

//Generated allocator of OnlyAttackBase
function s__OnlyAttackBase__allocate takes nothing returns integer
 local integer this=si__OnlyAttackBase_F
    if (this!=0) then
        set si__OnlyAttackBase_F=si__OnlyAttackBase_V[this]
    else
        set si__OnlyAttackBase_I=si__OnlyAttackBase_I+1
        set this=si__OnlyAttackBase_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__OnlyAttackBase_V[this]=-1
 return this
endfunction

//Generated destructor of OnlyAttackBase
function sc__OnlyAttackBase_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__OnlyAttackBase_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__OnlyAttackBase_onDestroy)
    set si__OnlyAttackBase_V[this]=si__OnlyAttackBase_F
    set si__OnlyAttackBase_F=this
endfunction

//Generated method caller for JudgeInvu.onDestroy
function sc__JudgeInvu_onDestroy takes integer this returns nothing
			call FlushChildHashtable(LHTable, GetHandleId(s__JudgeInvu_t[this]))
			set s__JudgeInvu_u[this]=null
			call PauseTimer(s__JudgeInvu_t[this])
			call DestroyTimer(s__JudgeInvu_t[this])
			set s__JudgeInvu_t[this]=null
endfunction

//Generated allocator of JudgeInvu
function s__JudgeInvu__allocate takes nothing returns integer
 local integer this=si__JudgeInvu_F
    if (this!=0) then
        set si__JudgeInvu_F=si__JudgeInvu_V[this]
    else
        set si__JudgeInvu_I=si__JudgeInvu_I+1
        set this=si__JudgeInvu_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__JudgeInvu_V[this]=-1
 return this
endfunction

//Generated destructor of JudgeInvu
function sc__JudgeInvu_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__JudgeInvu_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__JudgeInvu_onDestroy)
    set si__JudgeInvu_V[this]=si__JudgeInvu_F
    set si__JudgeInvu_F=this
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

//Generated method caller for Questions.onDestroy
function sc__Questions_onDestroy takes integer this returns nothing
			call PauseTimer(s__Questions_t[this])
			call DestroyTimer(s__Questions_t[this])
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_t[this]))
			set s__Questions_t[this]=null
			set s__Questions_time[this]=0
			set s__Questions_rightPos[this]=0
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_click[this]))
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_d[this]))
			call DestroyTrigger(s__Questions_click[this])
	    	call DialogDisplay(s__Questions_p[this], s__Questions_d[this], false)
	        call DialogClear(s__Questions_d[this])
	        call DialogDestroy(s__Questions_d[this])
			set s__Questions_click[this]=null
			set s__Questions_p[this]=null
			set s__Questions_question[this]=null
			set s__Questions_d[this]=null
endfunction

//Generated allocator of Questions
function s__Questions__allocate takes nothing returns integer
 local integer this=si__Questions_F
    if (this!=0) then
        set si__Questions_F=si__Questions_V[this]
    else
        set si__Questions_I=si__Questions_I+1
        set this=si__Questions_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__Questions_V[this]=-1
 return this
endfunction

//Generated destructor of Questions
function sc__Questions_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Questions_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Questions_onDestroy)
    set si__Questions_V[this]=si__Questions_F
    set si__Questions_F=this
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
function sc___prototype31_execute takes integer i,unit a1 returns nothing
    set f__arg_unit1=a1

    call TriggerExecute(st___prototype31[i])
endfunction
function sc___prototype31_evaluate takes integer i,unit a1 returns nothing
    set f__arg_unit1=a1

    call TriggerEvaluate(st___prototype31[i])

endfunction
function sc___prototype38_execute takes integer i returns nothing

    call TriggerExecute(st___prototype38[i])
endfunction
function sc___prototype38_evaluate takes integer i returns nothing

    call TriggerEvaluate(st___prototype38[i])

endfunction
function sc___prototype228_execute takes integer i,player a1 returns nothing
    set f__arg_player1=a1

    call TriggerExecute(st___prototype228[i])
endfunction
function sc___prototype228_evaluate takes integer i,player a1 returns nothing
    set f__arg_player1=a1

    call TriggerEvaluate(st___prototype228[i])

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
        call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå­äºæ´æ°:" + I2S(value))
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
        call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rå­äºå­ç¬¦ä¸²:" + value)
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
     
    function GetBit takes integer num,integer bit returns integer
        local string s= I2S(num)
        local integer length= StringLength(s)
        if ( length < bit ) then
            return 0
        endif

        return S2I(SubStringBJ(s, length - bit + 1, length - bit + 1))
    endfunction
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
//library PIVInterface:


//---------------------------------------------------------------------------------------------------
	
 function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function hasPIV takes nothing returns boolean
  local integer i= 1
		loop
			exitwhen i > 6
			if ( (sPIV[GetConvertedPlayerId((ConvertedPlayer(i)))]) ) then // INLINED!!
				return true
			endif
			set i=i + 1
		endloop
		return false
	endfunction

	

//library PIVInterface ends
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
	
 constant function GetVersion takes nothing returns string
		return "3.420"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 constant function Get11 takes nothing returns boolean
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
		return GetUnitTypeId(u) == 'E00F' or GetUnitTypeId(u) == 'E00E' or GetUnitTypeId(u) == 'U001' or GetUnitTypeId(u) == 'H01V' or GetUnitTypeId(u) == 'H01W' or GetUnitTypeId(u) == 'E00G' or GetUnitTypeId(u) == 'O002' or GetUnitTypeId(u) == 'H01X' or GetUnitTypeId(u) == 'U002' or GetUnitTypeId(u) == 'O004' or GetUnitTypeId(u) == 'N01W' or GetUnitTypeId(u) == 'H026' or GetUnitTypeId(u) == 'H02C' or GetUnitTypeId(u) == 'N023' or GetUnitTypeId(u) == 'U003' or GetUnitTypeId(u) == 'H02E' or GetUnitTypeId(u) == 'E00H' or GetUnitTypeId(u) == 'H02L' or GetUnitTypeId(u) == 'H02O'
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
		elseif ( heroType == 'E00C' or heroType == 'E00H' ) then
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
		elseif ( heroType == 'Hapm' or heroType == 'H01I' or heroType == 'H02L' or heroType == 'H02O' ) then
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
			elseif ( i == 20 ) then
				set result="ç¦»é­"
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
			return I3(BSpinXinglong , 'A0NG' , 'AEme')
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
		elseif ( id == 20 ) then
			return "|cffffff00æä½é¾åº¦ï¼âââââ|r"
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
		elseif ( i == 20 ) then
			set result="|cff3366ffç¦»é­|r"
		endif
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetFanzhuanItemType takes unit u returns integer
  local integer id= GetHeroIndex(GetUnitTypeId(u))
		if ( id == 1 ) then
			return 'I046'
		elseif ( id == 2 ) then
			return 'I07U'
		elseif ( id == 3 ) then
			return 'I032'
		endif

		return 0
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47 or achieveID == 48 or achieveID == 49 or achieveID == 410 or achieveID == 411 or achieveID == 412 or achieveID == 413 or achieveID == 414 or achieveID == 415 or achieveID == 416 or achieveID == 417
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
			return "|cffff6600ãå°ç±wä½¿ã"
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
		elseif ( achieveID == 412 ) then
			return GetColorString("ãè¥å°çã")
		elseif ( achieveID == 413 ) then
			return GetColorString("ãæ·¼æ æã")
		elseif ( achieveID == 414 ) then
			return GetColorString("ãéç¯ä½ã")
		elseif ( achieveID == 415 ) then
			return GetColorString("ãæ§ç¥è¯ã")
		elseif ( achieveID == 416 ) then
			return GetColorString("ãå¥æ­çº¦ã")
		elseif ( achieveID == 417 ) then
			return GetColorString("ãå®µæ éã")
		elseif ( achieveID == 418 ) then
			return GetColorString("ããç½å¤ãå¥å¤©ã")
		elseif ( achieveID == 419 ) then
			return GetColorString("ããé»æ¥ãéå¸ã")
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
		elseif ( achieveID == 412 ) then
			return "è¥å°ç"
		elseif ( achieveID == 413 ) then
			return "æ·¼æ æ"
		elseif ( achieveID == 414 ) then
			return "éç¯ä½"
		elseif ( achieveID == 415 ) then
			return "æ§ç¥è¯"
		elseif ( achieveID == 416 ) then
			return "å¥æ­çº¦"
		elseif ( achieveID == 417 ) then
			return "å®µæ é"
		elseif ( achieveID == 418 ) then
			return "ãç½å¤ãå¥å¤©"
		elseif ( achieveID == 419 ) then
			return "ãé»æ¥ãéå¸"
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
			return "å®æä»»æé¾åº¦çæææ¨¡å¼ä¸­ç\"é©»æ°¸æææ\"\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 411 ) then
			return "å®æä»»æé¾åº¦çæææ¨¡å¼ä¸­ç\"åä¸ç¯ææ\"\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 412 ) then
			return "è¾å¥-hs1è¿è¡çå½æ£æµï¼æ­¤æ¶ä½ çè±éçå½è¾¾å°1%ä»¥ä¸å´æªæ­»ã\n			(æ£æµæ¶è±éä¸è½å¸¦æçç«æèä¸­æ¯çBUFF)\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 413 ) then
			return "è¾å¥-hs2è¿è¡çå½æ£æµï¼ä½¿ç¨éé¸ç»è±éè¿è¡æ¸¸æï¼çå½å¼è¾¾å°5äº¿æä»¥ä¸ã\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 414 ) then
			return "è¾å¥-hs3è¿è¡é²å¾¡æ£æµï¼é²å¾¡è¾¾å°100Wæä»¥ä¸ã\n			ï¼æ³¨ææ£æµç»æå°ä¸åå«äºè£å¤ä¸­çé²å¾¡å®å¼åç¯ä¸è£å¤ä¸­çç­æBUFFææï¼\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 415 ) then
			return "å¨ä¸å±æ¸¸æä¸­æåç­å¯¹30æ¬¡ä»å¸åå¡ââæ¨±ä¹çé®é¢.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 416 ) then
			return "å¨ä¸å±æ¸¸æä¸­ææéåä»æªè¯´è¿ä¸å¥è¯éå³æ¸¸æ.\n			\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
		elseif ( achieveID == 417 ) then
			return "æåå»æç§å¢BOSS(21-25å±)ââå¤è¢­ä½¿èã\n\n			|r|cff3366ffä½¿ç¨è¯¥æå°±è¿è¡æ¸¸æè±éä¼æè½éä¹åçç¹æå¦!\n			|cffffff00è¯¥æå°±ä¼æ¾ç¤ºå¨å®æ¹å¯¹æå¹³å°æ¸¸æå¤§ååå¦,ä¹ä¼æ¾ç¤ºå¨ä½ çåå­åé¢!|r"
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
				return "çé¨ï¼|cffff66ccèµ¤è¡ç½ç|r"
			elseif ( i == 3 ) then
				return "ææï¼|cff99ccffæè½®ç»¯ç±|r"
			elseif ( i == 4 ) then
				return "æ¹®ç­ï¼|cFFFF0000æ®éæ è¿¹|r"
			elseif ( i == 5 ) then
				return "çéªï¼|cFF33FF33æ«æ¥ææ|r"
			elseif ( i == 6 ) then
				return "æ³°éï¼|cFFCCFF66ä¸å¼¦æè°§|r"
			elseif ( i == 7 ) then
				return "è¾°å¯ï¼|cFFFF3333éå¤ä¹å|r"
			elseif ( i == 8 ) then
				return "å¯æ®ï¼|cFF3333FFç çä¹å|r"
			elseif ( i == 9 ) then
				return "åéªï¼|cFF339933æ²éªæ ç|r"
			elseif ( i == 10 ) then
				return "è¾°å¯ï¼|cFFFF3333åæµè´¯æ|r"
			endif
		elseif ( page == 2 ) then
		
			if ( i == 1 ) then
				return "è«çªï¼|cFFFF00CCæçéºéº|r"
			elseif ( i == 2 ) then
				return "å¯æï¼|cFF6699FFçæ¥çä¸|r"
			elseif ( i == 3 ) then
				return "çéªï¼|cFFFF0000åå°çº¢ç¯|r"
			elseif ( i == 4 ) then
				return "æç±ï¼|cffff0000å°è¿¹å¤©ç¥|r"
			elseif ( i == 5 ) then
				return "é¸ç»ï¼|cFF6699FFå°éçé|r"
			elseif ( i == 6 ) then
				return "å¹»é¸ï¼|cffff6800å¤©ç½åç|r"
			elseif ( i == 7 ) then
				return "å¸å®¸ï¼|cff33ccccç½è²å£æ¥Â·é»ç¾½é­æ|r"
			elseif ( i == 8 ) then
				return "èåï¼|cff993366ç¿ç¿¼æµ®çµ|r"
			elseif ( i == 9 ) then
				return "é»éï¼|cff0000ffä¸é´ä¹æ¸|r"
			elseif ( i == 10 ) then
				return "ç¦»é­ï¼|cffff6800è°å¹»é¸ç©º|r"
			endif
		elseif ( page == 3 ) then
			if ( i == 1 ) then
				return "å¯æ®ï¼|cFF3333FFèéç¬å¿|r"
			elseif ( i == 2 ) then
				return "æè§ï¼|cffff00ffç»¯æ³é¾å|r"
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
		elseif ( i == 5 ) then
			return "çæ¬¢æ¨¡å¼ä¸­åéä¸å«"
		elseif ( i == 6 ) then
			return "çæ¬¢æ¨¡å¼ä¸­å¤éå¤©é­"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHeroChallenageContent takes integer i,integer page returns string
		if ( page == 1 ) then
			if ( i == 2 ) then
				return "ä½¿ç¨çé¨å¨1ç§åå°è½éä»0%ç´æ¥å¢å è³105%(æä»¥ä¸).\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾çé¨çç®è¤\"|cffff66ccèµ¤è¡ç½ç|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 3 ) then
				return "ä½¿ç¨ææå¨ä¸å±æ¸¸æåæåå¨é»¯é»æéµåæåå¤æ´»æ»¡150äºº.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾ææçç®è¤\"|cff99ccffæè½®ç»¯ç±|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 4 ) then
				return "ä½¿ç¨æ¹®ç­å¨ä¸å±æ¸¸æåæåå®æ125æ¬¡è½¬ç.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æ¹®ç­çç®è¤\"|cFFFF0000æ®éæ è¿¹|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 5 ) then
				return "ä½¿ç¨çéªå¨ä¸å±æ¸¸æåæååéæäºé¾åº¦(æä»¥ä¸).\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾çéªçæ¨¡åæ³æ\"|cFF33FF33æ«æ¥ææ|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 6 ) then
				return "ä½¿ç¨æ³°éå¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æç¥ä¹ç®­æè½è§¦å\"ç§\"ææææ­»è³å°2500ä¸ªåä½.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æ³°éçç®è¤\"|cFFCCFF66ä¸å¼¦æè°§|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 7 ) then
				return "ä½¿ç¨è¾°å¯å¨ä¸å±æ¸¸æä¸­æåä½¿ç¨æ»¡7æ¬¡90åçµæè½-å¼æ¸¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è¾°å¯çæ¨¡åç¹æ\"|cFFFF3333éå¤ä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 8 ) then
				return "ä½¿ç¨å¯æ®å¨ä¸å±æ¸¸æåæåä½¿ç¨æ ç©·åå¬æè½è·å¾è¶è¿500ä¸çæ»åå±æ§.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æ®çæ¨¡åæ­¦å¨\"|cFF3333FFç çä¹å|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 9 ) then
				return "å¨æ¯å¤©çè¿ç»­ç­¾å°ä¸­è¾¾å°14å¤©ã\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾åéªçç®è¤\"|cFF339933æ²éªæ ç|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 10 ) then
				return "è¾å¥-chenjiå¯ä»¥è¿è¡æ£æµï¼è¥æ­¤æ¶è±éççå½ä½äº1%ï¼åå®æè¯¥ææã\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è¾°å¯çç®è¤\"|cFFFF3333åæµè´¯æ|r\"(æ¥æå°éçå±æ§å æ)!"
			endif
		elseif ( page == 2 ) then

			if ( i == 1 ) then
				return "ä½¿ç¨è«çªå¨ä½¿ç¨|cffffcc00è£å³|ræè½æ¶çæ½æ³è§åº¦å¨89.9-90.1åº¦ä¹å.\n						(æ¢å¥è¯è¯´å³ä¸ºå®å¨åç´åä¸å°)\n				å®æè¯¥é¡¹ææåä½ å°è·å¾è«çªçç®è¤\"|cFFFF00CCæçéºéº|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 2 ) then
				return "ä½¿ç¨å¯æå¨ä¸å±æ¸¸æä¸­åªé |cffff6800å¿ è¯ä¹èº¯|ræè½ææ­»æ»å»åºå°çæäºº2500ä¸ª.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æçç®è¤\"|cFF6699FFçæ¥çä¸|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 3 ) then
				return "ä½¿ç¨çéªå¨ä¸å±æ¸¸æåæåä¾µå¥134ç§ä¸åççç©.(æ³¨æ,å¦æä½ éè¦è¿è¡è¯¥ææ,è¯·å¨ç¬¬ä¸æ³¢åè¾å¥-xxä»¥å¼å¯è¯¥è±éææ)\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾çéªçç®è¤\"|cFFFF0000åå°çº¢ç¯|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 4 ) then
				return "ä½¿ç¨æç±å¨ä¸å±æ¸¸æä¸­æææ°æ»¡125000.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æç±çç®è¤\"|cffff0000å°è¿¹å¤©ç¥|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 5 ) then
				return "ä½¿ç¨é¸ç»å¨ä½¿ç¨|cFFFF0099åæ³IVå¼ - æ°¸æ|ræè½ç»æåçè½ç¹è·ç¦»è±éå¨æ½æ¾è¯¥æè½çä½ç½®æ8000ç è¿.(æ³¨æ,å¦æä½ éè¦è¿è¡è¯¥ææ,è¯·å¨ç¬¬ä¸æ³¢åè¾å¥-bjä»¥å¼å¯è¯¥è±éææ,æ³¨æè¦ä½¿ç¨ä¸»è±éæ½æ¾,å¶ä»åèº«æ½æ¾æ æ)\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾é¸ç»çç®è¤\"|cFF6699FFå°éçé|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 6 ) then
				return "\n				ä½¿ç¨å¹»é¸è¾å¥-hyåè¿å¥ææ:å°ä¼éæºåºç°ä¸ä¸ªæè½åå­,åæ¢å°å¯¹åºåå­çæè½å³å¯,ç¶åç»§ç»­éæºåºç°ä¸ä¸ä¸ªæè½åå­,30ç§åæååæ¢25æ¬¡å³ä¸ºæææå.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¹»é¸çç®è¤\"|cffff6800å¤©ç½åç|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 7 ) then
				return "\n				ä½¿ç¨å¸å®¸å±æ§æ»åè¾¾å°3500W.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¸å®¸çç®è¤\"|cff33ccccç½è²å£æ¥Â·é»ç¾½é­æ|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 8 ) then
				return "\n				ä½¿ç¨èåå¨ä¸å±æ¸¸æä¸­ä¸ç­ççæ¶é´å å å°750ç§.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾èåçç®è¤\"|cff993366ç¿ç¿¼æµ®çµ|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 9 ) then
				return "\n				ä½¿ç¨é»éå¨ä¸å±ä½¿ç¨æ³£ç½å¹ç¥­åæ¿æ­»è¾¾å°300æ¬¡,ä¸èªèº«ä¸è½æ­»äº¡ä¸æ¬¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾é»éçç®è¤\"|cff0000ffä¸é´ä¹æ¸|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 10 ) then
				return "\n				ä½¿ç¨ç¦»é­å¨ä¸å±è§¦åå½±çæ¬¡æ°è¾¾å°100æ¬¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾ç¦»é­çç®è¤\"|cffff6800è°å¹»é¸ç©º|r\"(æ¥æå°éçå±æ§å æ)!"
			endif
		elseif ( page == 3 ) then
			if ( i == 1 ) then
				return "\n				ä½¿ç¨å¯æ®å¨ä¸å±æ¸¸æä¸­æ»å±è·å¾(æ¡èµ·)è¿520ç§ä¸åçç©å(åæ¬åçº§è£å¤çä¹¦æ¬).(éè¦è¾å¥-ljæ¥å¼å¯è¯¥ææ)\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾å¯æ®çç®è¤\"|cFF3333FFèéç¬å¿|r\"(æ¥æå°éçå±æ§å æ)!"
			elseif ( i == 2 ) then
				return "\n				ä½¿ç¨æè§å¨ä¸å±æ¸¸æä¸­æ»å±åçº§ç´¯è®¡30000æ¬¡.\n\n				å®æè¯¥é¡¹ææåä½ å°è·å¾æè§çç®è¤\"|cffff00ffç»¯æ³é¾å|r\"(æ¥æå°éçå±æ§å æ)!"
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
		elseif ( i == 5 ) then
			return "å¨çæ¬¢æ¨¡å¼ä¸­åäººéå³ä¸å«é¾åº¦.\n\n			è·å¾æå°±å" + GetAchievementName(418) + "ã\n			å¦æä½ åæ¶å®æäº" + GetAchievementName(419) + ",é£ä¹ä½ å°å¯ä»¥å¨è®¸æ¿æ¶è·å¾é¢å¤çå¥å±.\n			"
		elseif ( i == 6 ) then
			return "å¨çæ¬¢æ¨¡å¼ä¸­å¤äººéå³å¤©é­é¾åº¦.\n\n			è·å¾æå°±å" + GetAchievementName(419) + "ã\n			å¦æä½ åæ¶å®æäº" + GetAchievementName(418) + ",é£ä¹ä½ å°å¯ä»¥å¨è®¸æ¿æ¶è·å¾é¢å¤çå¥å±.\n			"
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
			return "ä½ ææçéã"
		elseif ( Constant__WPointer == 2 ) then
			return "è¾çä¸¶ç¥å·"
		elseif ( Constant__WPointer == 3 ) then
			return "ä¸¶7âã£è·å¨"
		elseif ( Constant__WPointer == 4 ) then
			return "æ·±éçå­¤ç¬ä¸¶"
		elseif ( Constant__WPointer == 5 ) then
			return "é·çå®å¤æå¼ºçè"
		elseif ( Constant__WPointer == 6 ) then
			return "ä½ ççå¥¶å¢ä¸¶"
		elseif ( Constant__WPointer == 7 ) then
			return "æµªé¼é­å°ç"
		elseif ( Constant__WPointer == 8 ) then
			return "å¾ç¦å¾ç®"
		elseif ( Constant__WPointer == 9 ) then
			return "sky"
		elseif ( Constant__WPointer == 10 ) then
			return "æ¢¦é²ä¸¶baby"
		elseif ( Constant__WPointer == 11 ) then
			return "0ä¸ç©çç©º0"
		elseif ( Constant__WPointer == 12 ) then
			return "åå¿ä¸ç¨å°é©¬ç²"
		elseif ( Constant__WPointer == 13 ) then
			return "æé¸¡é¸¡è´¼å¤§"
		elseif ( Constant__WPointer == 14 ) then
			return "æ æéæäº"
		elseif ( Constant__WPointer == 15 ) then
			return "æè¾°æ«æ¥"
		elseif ( Constant__WPointer == 16 ) then
			return "å¤å­å¥æ"
		elseif ( Constant__WPointer == 17 ) then
			return "Rascalä¸¶ææ"
		elseif ( Constant__WPointer == 18 ) then
			return "è¯·å¸¦çæé£"
		elseif ( Constant__WPointer == 19 ) then
			return "é´ä¼"
		elseif ( Constant__WPointer == 20 ) then
			return "czy888"
		elseif ( Constant__WPointer == 21 ) then
			return "Flowerä¸¶God"
		elseif ( Constant__WPointer == 22 ) then
			return "é¸ç¬ä»"
		elseif ( Constant__WPointer == 23 ) then
			return "è³ç®i"
		elseif ( Constant__WPointer == 24 ) then
			return "èººè½¦é¨å§ç¥"
		elseif ( Constant__WPointer == 25 ) then
			return "æµªé¼åº·å°å¸"
		elseif ( Constant__WPointer == 26 ) then
			return "7è¡è"
		elseif ( Constant__WPointer == 27 ) then
			return "å¿éª"
		elseif ( Constant__WPointer == 28 ) then
			return "Dearå·æ"
		elseif ( Constant__WPointer == 29 ) then
			return "å¢å¤´è¹²çº¢æ"
		elseif ( Constant__WPointer == 30 ) then
			return "oneä¸¶lifeã®ç±"
		elseif ( Constant__WPointer == 31 ) then
			return "çå¤´å±ç¶è½æå·¨è½"
		elseif ( Constant__WPointer == 32 ) then
			return "æ ç¼ä¹éª"
		elseif ( Constant__WPointer == 33 ) then
			return "é£å¤©1234"
		elseif ( Constant__WPointer == 34 ) then
			return "ç³ç³ä¸å¨ç"
		elseif ( Constant__WPointer == 35 ) then
			return "ç¨å®¿"
		elseif ( Constant__WPointer == 36 ) then
			return "å°ç±³é¥ä¸¶"
		elseif ( Constant__WPointer == 37 ) then
			return "æä¸¶æå½±"
		elseif ( Constant__WPointer == 38 ) then
			return "å£å¼ å"
		elseif ( Constant__WPointer == 39 ) then
			return "çµé­çç¼ ç»µ"
		elseif ( Constant__WPointer == 40 ) then
			return "1 1"
		elseif ( Constant__WPointer == 41 ) then
			return "ä¸¶å¿µå°ã"
		elseif ( Constant__WPointer == 42 ) then
			return "è¯å ã"
		elseif ( Constant__WPointer == 43 ) then
			return "ç¥å¤©ç¾½"
		elseif ( Constant__WPointer == 44 ) then
			return "ä½ æºå¾å²"
		elseif ( Constant__WPointer == 45 ) then
			return "å¸å®¸"
		elseif ( Constant__WPointer == 46 ) then
			return "ä¸ä½ ç«¥å¨"
		elseif ( Constant__WPointer == 47 ) then
			return "ï¼¿éå§¬ã"
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
        return ( ( GetItemTypeId(i) != 'mgtk' ) and ( GetItemTypeId(i) != 'k3m1' ) and ( GetItemTypeId(i) != 'pomn' ) and ( GetItemTypeId(i) != 'wild' ) and ( GetItemTypeId(i) != 'hlst' ) and ( GetItemTypeId(i) != 'totw' ) and ( GetItemTypeId(i) != 'sror' ) and ( GetItemTypeId(i) != 'fgrg' ) and ( GetItemTypeId(i) != 'wshs' ) and ( GetItemTypeId(i) != 'IXU1' ) and ( GetItemTypeId(i) != 'I049' ) and ( GetItemTypeId(i) != 'I04A' ) and ( GetItemTypeId(i) != 'I000' ) and ( GetItemTypeId(i) != 'I001' ) and ( GetItemTypeId(i) != 'I002' ) and ( GetItemTypeId(i) != 'I01D' ) and ( GetItemTypeId(i) != 'I02W' ) and ( GetItemTypeId(i) != 'sres' ) and ( GetItemTypeId(i) != 'I06A' ) and ( GetItemTypeId(i) != 'I06B' ) and ( GetItemTypeId(i) != 'I06C' ) and ( GetItemTypeId(i) != 'I06J' ) and ( GetItemTypeId(i) != 'I062' ) and ( GetItemTypeId(i) != 'ICS1' ) and ( GetItemTypeId(i) != 'I04W' ) and ( GetItemTypeId(i) != 'I04Y' ) and ( GetItemTypeId(i) != 'I05T' ) and ( GetItemTypeId(i) != 'I05W' ) and ( GetItemTypeId(i) != 'I05V' ) and ( GetItemTypeId(i) != 'ICY1' ) and ( GetItemTypeId(i) != 'I05X' ) and ( GetItemTypeId(i) != 'IB0A' ) and ( GetItemTypeId(i) != 'I04X' ) and ( GetItemTypeId(i) != 'ICX1' ) and ( GetItemTypeId(i) != 'I05Y' ) and ( GetItemTypeId(i) != 'I05Z' ) and ( GetItemTypeId(i) != 'I060' ) and ( GetItemTypeId(i) != 'I06N' ) and ( GetItemTypeId(i) != 'I07D' ) and ( GetItemTypeId(i) != 'I07T' ) and ( GetItemTypeId(i) != 'I07E' ) and ( GetItemTypeId(i) != 'I07F' ) and ( GetItemTypeId(i) != 'I07G' ) and ( GetItemTypeId(i) != 'I07H' ) and ( GetItemTypeId(i) != 'I07I' ) and ( GetItemTypeId(i) != 'I07J' ) and ( GetItemTypeId(i) != 'I07K' ) and ( GetItemTypeId(i) != 'I07O' ) and ( GetItemTypeId(i) != 'I07N' ) and ( GetItemTypeId(i) != 'I07P' ) and ( GetItemTypeId(i) != 'I07Q' ) and ( GetItemTypeId(i) != 'I07M' ) and ( GetItemTypeId(i) != 'I07L' ) and ( GetItemTypeId(i) != 'I05U' ) and ( GetItemTypeId(i) != 'I07R' ) and ( GetItemTypeId(i) != 'I02U' ) and ( GetItemTypeId(i) != 'I02V' ) and ( GetItemTypeId(i) != 'I02X' ) and ( GetItemTypeId(i) != 'I031' ) )
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
    

    //å¤æ­è¶
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
    
    function GetEnemyGroup takes player p,real x,real y,real radius returns group
        local group l_group= CreateGroup()
        local unit l_unit
        local group l_group2= CreateGroup()
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        call GroupAddGroup(l_group, l_group2)
        loop
            set l_unit=FirstOfGroup(l_group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group2, l_unit)
            if not ( IsEnemyMP(l_unit , p) ) then
                call GroupRemoveUnit(l_group, l_unit)
            endif
        endloop
        set l_unit=null
        call DestroyGroup(l_group2)
        set l_group2=null
        return l_group
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
        call ShowGameHint(p , "\n        è¿æ¯è±é" + GetUnitName(u) + "çç®è¤ã" + S3(false , "\n        åå»ä¸­é´çæå­æ¥çææåå®¹,\n        å®æå¯¹åºææå³å¯æ°¸ä¹è§£éè¯¥ç®è¤ã" , "\n        ä½¿ç¨é­å½äºé¸å®æ¹å¯¹æå¹³å°(dz.163.com)è¿è¡æ¸¸æ\n        å®æææå³å¯è·åè¯¥ç®è¤ã"))
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

        set Uwanjie=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14394.0, - 15446.0, 270.000)

        call SaveInteger(LHTable, GetHandleId(t), 1, 0)
        call TimerStart(t, 2, true, function LHBase__StartWanjieTimer)


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

 function Attr__InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library ChallangerDZ:
	

//---------------------------------------------------------------------------------------------------
	
 function GetAndSaveCangku takes player p,integer i returns nothing
  local integer index= GetConvertedPlayerId(p)
  local string temp= null
		//if (GetBit(Greward[index],i) < 1 and i < 9) then
		//	set Greward[index] = Greward[index] + R2I(Pow(10,i-1))
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
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
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æåæ°çä»åºæ¨¡åï¼|r")
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
	
 function ChallangerDZ__C3 takes integer i1,integer i2,integer i3 returns integer
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
	
 function IsKuanghuan takes nothing returns boolean
		return CType == - 1
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
		if ( CType == - 1 ) then
			set temp=null
			return
		endif
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
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ æåçå®æäº" + SgameMode + ".")
		set temp=null
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
			return "åééæ¯ææ"
		elseif ( i == 2 ) then
			return "çº¯è£å¤ææ"
		elseif ( i == 3 ) then
			return "é©»æ°¸æææ"
		elseif ( i == 4 ) then
			return "åä¸ç¯ææ"
		elseif ( i == 5 ) then
			return "éåææ"
		elseif ( i == 6 ) then
			return "éæºè±éææ"
		elseif ( i == 7 ) then
			return "ééç½©ææ"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChallangerContent takes integer i returns string
		if ( i == 1 ) then
			return "\n			åééæ¯ææåå®¹å¦ä¸:\n\n			è±éåå§ç­çº§ä¸º450çº§.\n			ä½æ¯è±éåå§å±æ§ä¸ºè´95%.\n			è¯¥æ¨¡å¼ä¸ç¦æ­¢ææè¶è¿20çº§çå® ç©.\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 2 ) then
			return "\n			çº¯è£å¤ææå¦ä¸:\n\n			ææç©å®¶è±éåªæ1ä¸ªè£å¤æ .\n			è±éè·åä»»ä½è£å¤æ¶,\n			é½å¢å è¯¥è£å¤ç6åå±æ§.\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 3 ) then
			return "\n			é©»æ°¸æææå¦ä¸:\n\n			è¯¥ææä¸è±éæ»å»éåº¦ææ¢,\n			ç§»å¨éåº¦-10000000%.\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 4 ) then
			return "\n			åä¸ç¯ææå¦ä¸:\n\n			è¯¥ææä¸è±éè·å¾éé±ä¸º1%,\n			è±éæ¯ç§åå°10%ççå½.\n			(13æ³¢å¼å§æ¯ç§åå°30%ççå½)\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 5 ) then
			return "\n			éåææå¦ä¸:\n\n			è¯¥ææä¸è¿æ»æªä¸ºè±éçè½¬çéå,\n			ä¸è½¬çç±»ä¼¼çå±æ§,ä¸æ¥æè½¬çæè½,\n			æ¥æä¸è±éä¸æ ·çç©å,\n			æ³¢æ°å¯¹åºä¸ºè½¬æ°,æªç©æ°éä¼å°3å.\n			(è¿æ»æªçç»éªåºå®å¨100/ä¸ª)\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n			é¾åº¦è¶å¤§æ¯æ³¢æªå¯¹åºçè½¬æ°è¶å¤§ã\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 6 ) then
			return "\n			éæºè±éææå¦ä¸:\n\n			åªè½éåéæºè±é.\n			ä½æ¯å¯ä»¥é¢å¤è·å¾5000éå¸.\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		elseif ( i == 7 ) then
			return "\n			ééç½©ææå¦ä¸:\n\n			ææè¿æ»æªä¸BOSSåªä¼æ»å»åºå°,\n			åæ¬é¨åå¯æ¬BOSS.\n			ä½æ¯ä½ åæ¢é²æ¤ç½©æ¶é¢å¤è·å¾2ä¸ª.\n\n			ç®åæä½éå³è¦æ±:(å¤©å½)\n			ä¸­ç­æä½éå³è¦æ±:(ç¼ç±)\n			å°é¾æä½éå³è¦æ±:(è½®å)\n\n			|cff00ccffå¨è¯¥æ¨¡å¼ä¸ä¸è½è·å¾æå°±åç®è¤.|r\n			"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChallangerDifficulty takes nothing returns integer
		if ( CType == 1 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 2 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 3 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 4 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 5 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 6 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		elseif ( CType == 7 ) then
			return ChallangerDZ__C3(1 , 5 , 8)
		endif
		return 0
	endfunction

//library ChallangerDZ ends
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

 function Printer__InitPrinter takes nothing returns nothing
		
	endfunction


//library Printer ends
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
	
		

  function s__OnlyAttackBase_flashAttack takes nothing returns nothing
   local integer this= sc__OnlyAttackBase__staticgetindex(GetExpiredTimer())
			if ( IsUnitAliveBJ(s__OnlyAttackBase_u[this]) or GetUnitAbilityLevel(s__OnlyAttackBase_u[this], 'A0KH') > 0 ) then
				call IssueTargetOrder(s__OnlyAttackBase_u[this], "attack", gg_unit_haro_0030)
			else
				call sc__OnlyAttackBase_deallocate(this)
			endif
  endfunction

        function s__OnlyAttackBase__staticgetindex takes handle h returns integer
            return (LoadInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
        endfunction

        function s__OnlyAttackBase__staticsetindex takes handle h,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))) )), ( value)) // INLINED!!
        endfunction

        function s__OnlyAttackBase_flush takes handle h returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h))))))) // INLINED!!
        endfunction

  function s__OnlyAttackBase_create takes unit u returns integer
      local integer this= s__OnlyAttackBase__allocate()
		   	set s__OnlyAttackBase_u[this]=u
			set s__OnlyAttackBase_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__OnlyAttackBase_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__OnlyAttackBase_t[this], 3, true, function s__OnlyAttackBase_flashAttack)
			call IssueTargetOrder(u, "attack", gg_unit_haro_0030)
			return this
  endfunction

  function s__OnlyAttackBase_onDestroy takes integer this returns nothing
			call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__OnlyAttackBase_t[this])))))))) // INLINED!!
			set s__OnlyAttackBase_u[this]=null
			call PauseTimer(s__OnlyAttackBase_t[this])
			call DestroyTimer(s__OnlyAttackBase_t[this])
			set s__OnlyAttackBase_t[this]=null
  endfunction

//Generated destructor of OnlyAttackBase
function s__OnlyAttackBase_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__OnlyAttackBase_V[this]!=-1) then
        return
    endif
    call s__OnlyAttackBase_onDestroy(this)
    set si__OnlyAttackBase_V[this]=si__OnlyAttackBase_F
    set si__OnlyAttackBase_F=this
endfunction

//---------------------------------------------------------------------------------------------------
	
		

  function s__Connect_connect takes nothing returns nothing
   local integer this= sc__Connect__staticgetindex(GetExpiredTimer())
			if ( s__Connect_BDie[this] ) then
				if ( not ( IsUnitAliveBJ(s__Connect_unit1[this]) ) or not ( IsUnitAliveBJ(s__Connect_unit2[this]) ) ) then
					call DestroyLightningBJ(s__Connect_l[this])
					set s__Connect_l[this]=null
				else
					if ( s__Connect_l[this] != null ) then
						call MoveLightning(s__Connect_l[this], true, GetUnitX(s__Connect_unit1[this]), GetUnitY(s__Connect_unit1[this]), GetUnitX(s__Connect_unit2[this]), GetUnitY(s__Connect_unit2[this]))
					endif
				endif
			else
				call MoveLightning(s__Connect_l[this], true, GetUnitX(s__Connect_unit1[this]), GetUnitY(s__Connect_unit1[this]), GetUnitX(s__Connect_unit2[this]), GetUnitY(s__Connect_unit2[this]))
			endif
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
		   	set s__Connect_BDie[this]=false
			set s__Connect_l[this]=AddLightning(lightningType, true, GetUnitX(unit1), GetUnitY(unit1), GetUnitX(unit2), GetUnitY(unit2))
			set s__Connect_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__Connect_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__Connect_t[this], 0.05, true, function s__Connect_connect)
			return this
  endfunction

  function s__Connect_setDieVanish takes integer this returns nothing
			set s__Connect_BDie[this]=true
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

  function s__Attract_setSpeed takes integer this,real speed returns nothing
			set s__Attract_speed[this]=speed
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


  function s__Missile_createXY takes unit caster,integer preview,string effx,real radius,real x,real y,real interval1,real interval2,real damage returns integer
      local integer this= s__Missile__allocate()
		   	set s__Missile_x[this]=x
		   	set s__Missile_y[this]=y
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

  function s__Missile_create takes unit caster,integer preview,string effx,real radius,real range,real interval1,real interval2,real damage returns integer
      local real Rangel= GetRandomReal(- 180, 180)
      local real Rradius= GetRandomReal(0, range)
			return s__Missile_createXY(caster , preview , effx , radius , GetUnitX(caster) + Rradius * CosBJ(Rangel) , GetUnitY(caster) + Rradius * SinBJ(Rangel) , interval1 , interval2 , damage)
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
	
//processed:     function interface AfterSucceed takes nothing returns nothing

				

		//å¤±è´¥
  function s__Questions_fail takes integer this returns nothing
	    	call PlaySoundBJ(gg_snd_kill_boss)
			set udg_I_Er_diansi[1]=IMaxBJ(0, udg_I_Er_diansi[1] - ( IMaxBJ(1, R2I(0.2 * udg_I_Er_diansi[1])) ))
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ré®é¢åç­éè¯¯,ä½ ä»¬å¤±å»äºäºåä¹ä¸çé²æ¤ç½©,è¿å©" + I2S(udg_I_Er_diansi[1]) + "ä¸ª...")
			call sc__Questions_deallocate(this)
  endfunction

		//æå
  function s__Questions_succeed takes integer this returns nothing
        	call PlaySoundBJ(gg_snd_GoodJob)
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ré®é¢åç­æ­£ç¡®,BOSSå¤±å»10%ççå½.")
        	if ( s__Questions_as[this] != 0 ) then
                call TriggerExecute(st___prototype38[(s__Questions_as[this])]) // INLINED!!
        	endif
			call sc__Questions_deallocate(this)
  endfunction

  function s__Questions_flashTimeout takes nothing returns nothing
   local integer this= LoadInteger(LHTable, GetHandleId(GetExpiredTimer()), 1)
			set s__Questions_time[this]=s__Questions_time[this] - 1
			if ( s__Questions_time[this] <= 0 ) then
				call s__Questions_fail(this)
			else
				call DialogSetMessage(s__Questions_d[this], s__Questions_question[this] + "(å©ä½æ¶é´:" + I2S(s__Questions_time[this]) + "s)")
			endif
  endfunction

  function s__Questions_chooseAnswer takes nothing returns nothing
   local integer this= LoadInteger(LHTable, GetHandleId(LoadTimerHandle(LHTable, GetHandleId(GetTriggeringTrigger()), 1)), 1)
   local integer i= 1
			loop
				exitwhen i > 10
		        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(s__Questions_d[this]), i) ) then
		        	if ( i == s__Questions_rightPos[this] ) then
		        		call s__Questions_succeed(this)
		        		return
		        	else
		        		call s__Questions_fail(this)
		        		return
		        	endif
		        endif
				set i=i + 1
			endloop
  endfunction

        function s__Questions_GetRightAnswer takes integer shu1,integer shu2,boolean jia returns integer
        	if ( jia ) then
        		return shu1 + shu2
        	else
        		return shu1 * shu2
        	endif
        endfunction

        function s__Questions_GetWrongAnswer takes integer shu,integer diff returns integer
         local integer result= 0
         local integer result2= 0
        	if ( GetRandomInt(1, 2) == 1 ) then
        		set result=shu + GetRandomInt(1, R2I(Pow(2, diff)))
        		if ( diff >= 10 ) then
        			set result2=S2I(SubStringBJ(I2S(result), 1, StringLength(I2S(result)) - 2) + SubStringBJ(I2S(shu), StringLength(I2S(shu)) - 1, StringLength(I2S(shu))))
        			if ( result2 != shu ) then
        				return result2
        			endif
        		endif
        		return result
        	else
        		set result=shu - GetRandomInt(1, R2I(Pow(2, diff)))
        		if ( diff >= 10 ) then
        			set result2=S2I(SubStringBJ(I2S(result), 1, StringLength(I2S(result)) - 2) + SubStringBJ(I2S(shu), StringLength(I2S(shu)) - 1, StringLength(I2S(shu))))
        			if ( result2 != shu ) then
        				return result2
        			endif
        		endif
        		return result
        	endif
        endfunction

        function s__Questions_create takes player p,integer diff,integer count,integer as returns integer
      local integer this= s__Questions__allocate()
      local string s= ""
      local boolean jia= ( GetRandomInt(1, 2) == 1 )
      local integer shu1= GetRandomInt(R2I(Pow(2, diff - 1)), R2I(Pow(2, diff)))
      local integer shu2= GetRandomInt(R2I(Pow(2, diff - 1)), R2I(Pow(2, diff)))
      local integer right= s__Questions_GetRightAnswer(shu1 , shu2 , jia)
      local integer i= 1

		   	if ( as != 0 ) then
		   		set s__Questions_as[this]=as
		   	endif
		   	set s__Questions_rightPos[this]=GetRandomInt(1, count)
		   	set s__Questions_time[this]=5
		   	set s__Questions_click[this]=CreateTrigger()
			set s__Questions_p[this]=p
			set s__Questions_t[this]=CreateTimer()
			set s__Questions_d[this]=DialogCreate()
			set s__Questions_question[this]=I2S(shu1) + S3(jia , "+" , "x") + I2S(shu2) + "=?"
			call DialogSetMessage(s__Questions_d[this], s__Questions_question[this] + "(å©ä½æ¶é´:5s)")
			loop
				exitwhen i > count
				if ( i == s__Questions_rightPos[this] ) then
					call SaveButtonHandle(LHTable, GetHandleId(s__Questions_d[this]), i, DialogAddButtonBJ(s__Questions_d[this], I2S(right)))
				else
					call SaveButtonHandle(LHTable, GetHandleId(s__Questions_d[this]), i, DialogAddButtonBJ(s__Questions_d[this], I2S(s__Questions_GetWrongAnswer(right , diff))))
				endif
				set i=i + 1
			endloop
			call SaveTimerHandle(LHTable, GetHandleId(s__Questions_click[this]), 1, s__Questions_t[this])
			call SaveInteger(LHTable, GetHandleId(s__Questions_t[this]), 1, this)
			call DialogDisplay(s__Questions_p[this], s__Questions_d[this], true)
			call TriggerRegisterDialogEvent(s__Questions_click[this], s__Questions_d[this])
			call TriggerAddAction(s__Questions_click[this], function s__Questions_chooseAnswer)
			call TimerStart(s__Questions_t[this], 1, true, function s__Questions_flashTimeout)
			return this
  endfunction

  function s__Questions_onDestroy takes integer this returns nothing
			call PauseTimer(s__Questions_t[this])
			call DestroyTimer(s__Questions_t[this])
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_t[this]))
			set s__Questions_t[this]=null
			set s__Questions_time[this]=0
			set s__Questions_rightPos[this]=0
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_click[this]))
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_d[this]))
			call DestroyTrigger(s__Questions_click[this])
	    	call DialogDisplay(s__Questions_p[this], s__Questions_d[this], false)
	        call DialogClear(s__Questions_d[this])
	        call DialogDestroy(s__Questions_d[this])
			set s__Questions_click[this]=null
			set s__Questions_p[this]=null
			set s__Questions_question[this]=null
			set s__Questions_d[this]=null
  endfunction

//Generated destructor of Questions
function s__Questions_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Questions_V[this]!=-1) then
        return
    endif
    call s__Questions_onDestroy(this)
    set si__Questions_V[this]=si__Questions_F
    set si__Questions_F=this
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
	
//processed:     function interface AfterLessLife takes unit u returns nothing

		
		
  function s__MultiLife_flashLoc takes nothing returns nothing
   local integer this= sc__MultiLife__staticgetindex(GetExpiredTimer())
			if ( s__MultiLife_times[this] < 2 ) then
				call UnitRemoveAbility(s__MultiLife_caster[this], 'A0KH')
			endif
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
				if ( s__MultiLife_al[this] != 0 ) then
					call sc___prototype31_execute(s__MultiLife_al[this],s__MultiLife_caster[this])
				endif
			endif
  endfunction

  function s__MultiLife_getTimes takes integer this returns integer
			return s__MultiLife_current[this]
  endfunction

  function s__MultiLife_setAL takes integer this,integer al returns nothing
			set s__MultiLife_al[this]=al
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
			set s__MultiLife_al[this]=0
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
				if not ( s__SuperShield_deathContinue[this] ) then
					call sc__SuperShield_deallocate(this)
				endif
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
			set s__SuperShield_deathContinue[this]=false
			set s__SuperShield_t[this]=CreateTimer()
			call SaveInteger(YDHT, StringHash(("SPellBase" )), StringHash(( I2S((GetHandleId(((s__SuperShield_t[this]))))) )), ( ( (this)))) // INLINED!!
			call TimerStart(s__SuperShield_t[this], 0.5, true, function s__SuperShield_flashLife)
			return this
  endfunction


  function s__SuperShield_SetDeathContinue takes integer this returns nothing
			set s__SuperShield_deathContinue[this]=true
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
            call sc___prototype228_execute(s__Buff_ab[this],s__Buff_p[this])
            call sc__Buff_deallocate(this)
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
			call TimerStart(s__Buff_t[this], time, false, function s__Buff_timeout)
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
//---------------------------------------------------------------------------------------------------
	

  function s__JudgeInvu_timeout takes nothing returns nothing
   local integer this= LoadInteger(LHTable, GetHandleId(GetExpiredTimer()), 1)
   local group g= null
			if ( IsUnitAliveBJ(s__JudgeInvu_u[this]) ) then
				set g=GetEnemyGroup(Player(10) , GetUnitX(s__JudgeInvu_u[this]) , GetUnitY(s__JudgeInvu_u[this]) , 900)
				if ( GetUnitAbilityLevel(s__JudgeInvu_u[this], 'Avul') < 1 and CountUnitsInGroup(g) == 0 ) then
					call UnitAddAbility(s__JudgeInvu_u[this], 'Avul')
					call PauseUnit(s__JudgeInvu_u[this], true)
					call SetUnitLifePercentBJ(s__JudgeInvu_u[this], 100)
				elseif ( GetUnitAbilityLevel(s__JudgeInvu_u[this], 'Avul') >= 1 and CountUnitsInGroup(g) != 0 ) then
					call UnitRemoveAbility(s__JudgeInvu_u[this], 'Avul')
					call PauseUnit(s__JudgeInvu_u[this], false)
				endif
				call DestroyGroup(g)
				set g=null
			else
            	call sc__JudgeInvu_deallocate(this)
			endif
  endfunction

  function s__JudgeInvu_create takes unit u,real time returns integer
      local integer this= s__JudgeInvu__allocate()
			set s__JudgeInvu_u[this]=u
			set s__JudgeInvu_t[this]=CreateTimer()
			call SaveInteger(LHTable, GetHandleId(s__JudgeInvu_t[this]), 1, this)
			call TimerStart(s__JudgeInvu_t[this], time, true, function s__JudgeInvu_timeout)
			return this
  endfunction

  function s__JudgeInvu_onDestroy takes integer this returns nothing
			call FlushChildHashtable(LHTable, GetHandleId(s__JudgeInvu_t[this]))
			set s__JudgeInvu_u[this]=null
			call PauseTimer(s__JudgeInvu_t[this])
			call DestroyTimer(s__JudgeInvu_t[this])
			set s__JudgeInvu_t[this]=null
  endfunction

//Generated destructor of JudgeInvu
function s__JudgeInvu_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__JudgeInvu_V[this]!=-1) then
        return
    endif
    call s__JudgeInvu_onDestroy(this)
    set si__JudgeInvu_V[this]=si__JudgeInvu_F
    set si__JudgeInvu_F=this
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
	
 function Achievement__GetAchievePage takes integer i returns integer
		return S2I(SubStringBJ(I2S(i), 1, 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement__GetAchieveTarget takes integer i returns integer
		return S2I(SubStringBJ(I2S(i), 2, StringLength(I2S(i))))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Achievement__SaveSpinData takes player p returns nothing
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreInteger(p , "spin" , spin[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "spin2" , spin2[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "spin3" , spin3[GetConvertedPlayerId(p)])
		else
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ¬å±æ¸¸æç®è¤æ°æ®è¯»åå¤±è´¥,è¯·éæ°å¼å§æ¸¸æ.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSpecifySpin takes player p,integer page,integer index returns nothing
  local integer judge= 0
		if ( page == 1 ) then
			set judge=spin[GetConvertedPlayerId(p)]
		elseif ( page == 2 ) then
			set judge=spin2[GetConvertedPlayerId(p)]
		elseif ( page == 3 ) then
			set judge=spin3[GetConvertedPlayerId(p)]
		endif
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(judge , index) < 1 ) then
			if ( page == 1 ) then
				set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + R2I(Pow(10, index - 1))
			elseif ( page == 2 ) then
				set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + R2I(Pow(10, index - 1))
			elseif ( page == 3 ) then
				set spin3[GetConvertedPlayerId(p)]=spin3[GetConvertedPlayerId(p)] + R2I(Pow(10, index - 1))
			endif
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ­åä½ æåè·åç®è¤\"" + GetHeroChallenageName(index , page) + "\"ï¼")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huoquspin takes player p,string chat returns nothing
  local integer i= 1
  local integer j= 1
  local integer result= 0
		loop
			exitwhen j > 3

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
	
 function SetHanshang1SpinOK takes player p returns nothing
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
	
 function GetHanshang2Spin takes player p returns boolean
		return GetBit(spin3[GetConvertedPlayerId(p)] , 1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHanshang2SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 3 , 1)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXinglong1Spin takes player p returns boolean
		return GetBit(spin3[GetConvertedPlayerId(p)] , 2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetXinglong1SpinOK takes player p returns nothing
		call GetSpecifySpin(p , 3 , 2)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsAchieveOK takes player p,integer achieveID returns boolean
  local integer id= GetConvertedPlayerId(p)
  local integer page= (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) // INLINED!!
  local integer target= Achievement__GetAchieveTarget(achieveID)
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
		//ä¸¤ä¸ªä»æçæææå°±
		if ( ( achieveID == 410 or achieveID == 411 or achieveID == 418 or achieveID == 419 ) and CType == 0 ) then
			return
		endif

		if ( achieveID != 410 and achieveID != 411 and CType > 0 ) then
			return
		endif

		if ( achieveID != 418 and achieveID != 419 and CType == - 1 ) then
			return
		endif

		//ä¸¤ä¸ªè¶çº§æå°±
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
		    	exitwhen i > 9
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 408) + S3(IsAchieveOK(p , i + 408) , "|cffff9900(å·²è§£é)|r" , "|cff33cccc(æªè§£é)|r")))
		    	set i=i + 1
		    endloop
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 17, DialogAddButtonBJ(d, "ä¸ä¸é¡µ"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "ä¸ä¸é¡µ"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "å³é­|cffff6800(Esc)|r", 512))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroDialogContent takes player p,dialog d,integer page returns nothing
  local integer i= 1
		if ( page == 1 ) then
			set i=2
			loop
				exitwhen i > 10
				call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetHeroChallenageName(i , 1) + S3(GetBit(spin[GetConvertedPlayerId(p)] , i) > 0 , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
				set i=i + 1
			endloop
		elseif ( page == 2 ) then
			set i=1
			loop
				exitwhen i > 10
				call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetHeroChallenageName(i , 2) + S3(GetBit(spin2[GetConvertedPlayerId(p)] , i) > 0 , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
				set i=i + 1
			endloop
		elseif ( page == 3 ) then
			set i=1
			loop
				exitwhen i > 2
				call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetHeroChallenageName(i , 3) + S3(GetBit(spin3[GetConvertedPlayerId(p)] , i) > 0 , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
				set i=i + 1
			endloop
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
		call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetSuperChallenageName(5) + S3(IsAchieveOK(p , 418) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
		call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetSuperChallenageName(6) + S3(IsAchieveOK(p , 419) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))

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

	    //ä¸ä¸é¡µ
	    if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 17) ) then
            call DialogClear(d)
	    	set page=I3(page <= 1 , PAGE_ACHIEVE , page - 1)
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
	    	call DialogSetMessage(d, "è±éææ|cffff6800(ç¬¬" + I2S(page) + "/" + I2S(PAGE_HERO_CHALLANGER) + "é¡µ)|r")
    		call SaveInteger(LHTable, GetHandleId(d), 12, page)
	    	call CreateHeroDialogContent(p , d , page)
        	call DialogDisplay(p, d, true)
		    set d=null
		    set p=null
	    	return
	    endif

	    //ç¹å»
	    loop
	        exitwhen i > 10
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
	    			call SaveAchievePointer(p)
		    	elseif ( i == 3 ) then
	    			call SetAchievement(p , 47)
	    			call SaveAchievePointer(p)
		    	elseif ( i == 4 ) then
	    			call SetAchievement(p , 48)
	    			call SaveAchievePointer(p)
		    	elseif ( i == 5 ) then
	    			call SetAchievement(p , 48)
	    			call SaveAchievePointer(p)
		    	elseif ( i == 6 ) then
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
	    call DialogSetMessage(d, "è±éææ|cffff6800(ç¬¬1/" + I2S(PAGE_HERO_CHALLANGER) + "é¡µ)|r")
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
//library Mirror:

//---------------------------------------------------------------------------------------------------
    
    function SetUnitMirror takes unit mirror,unit u1,integer times returns nothing
        local integer i= 1
        loop
            exitwhen i > 6
            call UnitAddItemByIdSwapped(GetItemTypeId(UnitItemInSlotBJ(u1, i)), mirror)
            set i=i + 1
        endloop
        call SetHeroInt(mirror, GetLimit(GetHeroInt(u1, true) * times), true)
        call SetHeroAgi(mirror, GetLimit(GetHeroAgi(u1, true) * times), true)
        call SetHeroStr(mirror, GetLimit(GetHeroStr(u1, true) * times), true)
        call SetAttack(mirror , (LoadInteger(YDHT, GetHandleId((u1)), 0x5039AFFB)) * times) // INLINED!!
        call SetDefense(mirror , (LoadInteger(YDHT, GetHandleId((u1)), 0x81FD3994)) * times) // INLINED!!
        call SetHP(mirror , (LoadInteger(YDHT, GetHandleId((u1)), 0xFCD961C9)) * times) // INLINED!!
        if ( u1 == kaisa ) then
            call UnitRemoveAbility(mirror, 'AOre')
        elseif ( u1 == taiya ) then
            call SetUnitAcquireRange(mirror, 600.00)
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function ShowLiuliProcess takes nothing returns nothing
        if ( udg_Z[GetConvertedPlayerId(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]))] < 42 ) then
            call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cffff00ffãèãçççç|r" + I2S(udg_Z[GetConvertedPlayerId(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]))]) + "/42.")
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Mirror__MirrorTimeOut takes nothing returns nothing
        //ç§»å¨åä½ååºå°
        call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ æªè½å¨éå®æ¶é´åéè¿è½¬çï¼")
        call SetUnitPositionLoc(udg_U_Zhuansheng_Dantiao[1], udg_Point_Fuhuo)
    endfunction

    function DestroyMirrorTimer takes nothing returns nothing
        call TimerDialogDisplay(TiDiaMirror, false)
        call DestroyTimerDialog(TiDiaMirror)
        call PauseTimer(TiMirror)
        call DestroyTimer(TiMirror)
        set TiMirror=null
        set TiDiaMirror=null
    endfunction

    function CreateMirrorTimer takes nothing returns nothing
        set TiMirror=CreateTimer()
        set TiDiaMirror=CreateTimerDialogBJ(TiMirror, "è½¬çæ¶é´")
        call TimerStart(TiMirror, 60, false, function Mirror__MirrorTimeOut)
        call TimerDialogDisplay(TiDiaMirror, true)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    
    function AddMirrorSpell takes nothing returns nothing
        local unit mirror= udg_U_Zhuansheng_Dantiao[2]
        local unit defier= udg_U_Zhuansheng_Dantiao[1]
        local integer count= udg_Z[GetConvertedPlayerId(GetOwningPlayer(defier))]
        if ( count == 20 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾33%30åæ»å»ä¸ç ´éæè½ã")
        elseif ( count == 40 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾ç¥å£æ¤ç²æè½ã")
        elseif ( count == 60 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾10%åè¡æè½ã")
        elseif ( count == 80 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾15ç§éçæè½ã")
        elseif ( count == 100 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾ç§æç®ç¥­æè½ã")
        elseif ( count == 120 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾ç ´é²10ä¸æè½ã")
        elseif ( count == 150 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾æ¥éç ´é­æè½ã")
        elseif ( count == 160 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°è·å¾åå°50%é­æ³ä¼¤å®³æè½ã")
        elseif ( count == 170 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°åºçäºè±éå¨å´ã")
        elseif ( count == 180 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä»" + I2S(count) + "è½¬å¼å§éåå°æ´å åå®³çç ´é­ã")
        endif

        if ( count >= 20 ) then
            call UnitAddAbility(mirror, 'A0GL')
            call UnitAddAbility(mirror, 'Adtg')
        endif
        if ( count >= 40 ) then
            call UnitAddAbility(mirror, 'A0F1')
        endif
        if ( count >= 60 ) then
            call UnitAddAbility(mirror, 'A0GM')
        endif
        if ( count >= 80 ) then
            call UnitAddAbility(mirror, 'A0GN')
        endif
        if ( count >= 100 ) then
            call UnitAddAbility(mirror, 'A0GO')
        endif
        if ( count >= 120 ) then
            call UnitAddAbility(mirror, 'A0GP')
        endif
        if ( count >= 150 ) then
            call UnitAddAbility(mirror, 'A0GQ')
        endif
        if ( count >= 160 ) then
            call UnitAddAbility(mirror, 'A052')
        endif
        if ( count >= 170 ) then
            call SetUnitX(mirror, GetUnitX(defier))
            call SetUnitY(mirror, GetUnitY(defier))
        endif
        if ( count >= 180 ) then
            call SetUnitAbilityLevel(mirror, 'A0GQ', 2)
        endif
    endfunction


//library Mirror ends
//library Fanzhuan:

//---------------------------------------------------------------------------------------------------
	
 function FanzhuanCondition takes player p,integer i returns boolean
		if not ( false ) then
			return (sPIV[GetConvertedPlayerId((p))]) // INLINED!!
		else
			return S2I(SubStringBJ(SFanzhaun[GetConvertedPlayerId(p)], i, i)) == 1 or GetSpecifyHeroTimes(p , i) >= 30 or (sPIV[GetConvertedPlayerId((p))]) // INLINED!!
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetFanzhuanFailString takes player p,integer i returns string
		if not ( false ) then
			return "\n			å¨è¯¥çæ¬ä¸­è·åèµå©åæ°¸ä¹è§£éä½¿ç¨.(è¯·çå¤æ´»ç¹ä»ç»)\n\n			æèå¨å®æ¹å¹³å°ä½¿ç¨è¯¥è±é30æ¬¡åè§£é.\n			"
		endif

		return "\n		è¯¥è±éä½¿ç¨æ¬¡æ°è¾¾å°30æ¬¡.\n\n		è¿åº¦:" + I2S(GetSpecifyHeroTimes(p , i)) + "/30"

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetFanzhuanOK takes player p,integer i returns nothing
  local integer index= GetConvertedPlayerId(p)
  local string temp= null
		if ( StringLength(SFanzhaun[index]) < 62 ) then
			set SFanzhaun[index]="00000000000000000000000000000000000000000000000000000000000000"
		endif
		if ( S2I(SubStringBJ(SFanzhaun[index], i, i)) != 1 ) then
			set temp=SFanzhaun[index]
			set SFanzhaun[index]=SubStringBJ(temp, 1, i - 1)
			set SFanzhaun[index]=SFanzhaun[index] + "1"
			set SFanzhaun[index]=SFanzhaun[index] + SubStringBJ(temp, i + 1, StringLength(temp))
			set temp=null
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æåè§£éè±é" + GetIndexHeroColorName(i) + "|cff3366ffæ°çæè½å½¢æ!|r")
		endif
	endfunction

//library Fanzhuan ends
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
	
 function IsKuanghuanTime takes nothing returns boolean
		return ( ( (0) / 10 ) < 150946560 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsTianyanOK takes nothing returns boolean
		return IsAchieveOK(Player(0) , 325)
	endfunction


//library Huodong ends
//library Jizi:


//---------------------------------------------------------------------------------------------------
	
 function Jizi__GetZhongqiuWord takes integer i returns string

		if ( i == 1 ) then
			return "å¹³"
		elseif ( i == 2 ) then
			return "å"
		elseif ( i == 3 ) then
			return "ç§"
		elseif ( i == 4 ) then
			return "è²"
		elseif ( i == 5 ) then
			return "ä¸"
		elseif ( i == 6 ) then
			return "è½®"
		elseif ( i == 7 ) then
			return "æ»¡"
		elseif ( i == 8 ) then
			return "é¿"
		elseif ( i == 9 ) then
			return "ä¼´"
		elseif ( i == 10 ) then
			return "äº"
		elseif ( i == 11 ) then
			return "è¡¢"
		elseif ( i == 12 ) then
			return "å"
		elseif ( i == 13 ) then
			return "é"
		elseif ( i == 14 ) then
			return "æ"
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi__GetRewardName takes integer days returns string
		if ( days == 14 ) then
			return "å¨ç®è¤ä½éªæ[æ´»å¨æé´]\n+ç»çä¸­ç§è±éæ­»äº¡å£°æ.[æ°¸ä¹]"
		elseif ( days == 10 ) then
			return "æ¹®ç­ç®è¤[æ°¸ä¹]"
		elseif ( days == 12 ) then
			return "å¸å®¸ç®è¤ä¸ä»åºç¬æ¯ä¸å¹´[æ°¸ä¹]"
		elseif ( days == 8 ) then
			return "è§£éæè§[æ´»å¨æé´]"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi__GetStateName takes integer i returns string
		if ( i == 1 ) then
			return "|cff99cc00éé±è·åç+100%æç»­3åéã|r"
		elseif ( i == 2 ) then
			return "|cff99cc00æè½ä¼¤å®³+50%æç»­4åéã|r"
		elseif ( i == 3 ) then
			return "|cffff66003ç§å¤æ´»æç»­5åéã|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi__GetNewWord takes player p,integer i returns boolean
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
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æ¶éå°ä»æªè·å¾ç|r" + Jizi__GetZhongqiuWord(i) + "å­.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æ¶éå°ä»æªè·å¾ç|r" + Jizi__GetZhongqiuWord(i) + "å­.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ffãæ¶æ¯ãæ­åä½ æ¶éå°ä»æªè·å¾ç|r" + Jizi__GetZhongqiuWord(i) + "å­.")
			endif
			call DzAPI_Map_StoreString(p , "SJizi" , SJizi[index])
			return true
		endif
		return false
	endfunction

 function Jizi__IsHasWord takes player p,integer i returns boolean
		return S2I(SubStringBJ(SJizi[GetConvertedPlayerId(p)], i, i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetPlayerWordCount takes player p returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 14
			if ( Jizi__IsHasWord(p , i) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction

 function HasAll14Word takes player p returns boolean
		return Jizi__IsHasWord(p , 15)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Get14Word takes player p returns string
  local string s= ""
  local integer i= 1
		loop
			exitwhen i > 14
			set s=s + S3(Jizi__IsHasWord(p , i) , "|cffff00ff" , "|cffffffff") + Jizi__GetZhongqiuWord(i) + "|r"
			if ( i == 7 ) then
				set s=s + "|cffff00ffï¼|r"
			elseif ( i == 14 ) then
				set s=s + "|cffff00ffã|r"
			endif
			set i=i + 1
		endloop
		return s
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jizi__GetWordCountReward takes player p returns nothing
		if ( GetPlayerWordCount(p) >= 10 ) then
			call GetSpecifySpin((p) , 1 , 4) // INLINED!!
		endif
		if ( GetPlayerWordCount(p) >= 12 ) then
			call GetSpecifySpin((p) , 2 , 7) // INLINED!!
			call GetAndSaveCangku(p , 5)
		endif
		if ( GetPlayerWordCount(p) >= 14 ) then
			call Jizi__GetNewWord(p , 15)
		endif
	endfunction

 function Jizi__AfterMoneyBuffTime takes player p returns nothing
		call AddMoneyPercent(GetConvertedPlayerId(p) , - 1.0)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾çéé±æ¶é´å°äº.")
	endfunction

 function Jizi__AfterSpellBuffTime takes player p returns nothing
		call AddSpellPercent(GetConvertedPlayerId(p) , - 0.5)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾çæè½ä¼¤å®³æ¶é´å°äº.")
	endfunction

 function Jizi__AfterReviveBuffTime takes player p returns nothing
		set B3SecondRevive[GetConvertedPlayerId(p)]=false
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾ç3ç§å¤æ´»æ¶é´å°äº.")
	endfunction

 function Jizi__GetStateReward takes player p,integer state returns nothing
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
		call Jizi__GetNewWord(p , iWord)

		set s="\n			ä½ å¼å¯è¯¥æé¥¼è·å¾äº:\n\n			" + Jizi__GetStateName(iState) + "\n			æ´»å¨å­\"|cffff00ff" + Jizi__GetZhongqiuWord(iWord) + "|r\"\n\n			ä½ ç®åæ¶éå°çæ»å­æ°ä¸º:\n			" + Get14Word(p) + "\n			(" + I2S(GetPlayerWordCount(p)) + "ä¸ªå­)\n\n			"
		loop
			exitwhen i > 14
        	if ( Jizi__GetRewardName(i) != null ) then
        		set s=s + I2S(i) + "å­:" + Jizi__GetRewardName(i) + S3(GetPlayerWordCount(p) >= i , "|cffff9900(å·²è·å¾)|r" , "|cff33cccc(æªè·å¾)|r") + "\n"
        	endif
			set i=i + 1
		endloop

		call Jizi__GetWordCountReward(p)
		call Jizi__GetStateReward(p , iState)
		call ShowGameHint(p , s)
		set s=null
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function CreateYuebingPlayer takes real x,real y,player p returns nothing
  local item it= null
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå°å¾åºç°äºä¸ä¸ªæé¥¼!")
		call PingMinimapForForce(GetPlayersAll(), x, y, 5.00)
		call PlaySoundBJ(gg_snd_MapPing)
		set it=CreateItem('I07T', x, y)
		if ( p != null ) then
	        call SaveInteger(YDHT, GetHandleId(it), 0xA75AD423, GetConvertedPlayerId(p))
		endif
		set it=null
	endfunction

 function CreateYuebing takes real x,real y returns nothing
		call CreateYuebingPlayer(x , y , null)
	endfunction

	
 function CreateAllYuebing takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) and udg_H[i] != null ) then
				call CreateYuebingPlayer(GetUnitX(udg_H[i]) , GetUnitY(udg_H[i]) , ConvertedPlayer(i))
			endif
			set i=i + 1
		endloop
	endfunction

//library Jizi ends
//library Qixi:
	
//---------------------------------------------------------------------------------------------------
	
 function Buchang takes player p returns nothing
		// local integer i = GetConvertedPlayerId(p)
		// if (playerName[i] == "Cyandrizzle") then
		// 	call GetAchievementAndSave(p,325)
		// 	call GetAchievementAndSave(p,35)
		// 	call GetAchievementAndSave(p,321)
		// 	call GetAchievementAndSave(p,412)
		// 	call GetAchievementAndSave(p,413)
		// 	call GetAchievementAndSave(p,414)
		// endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
//---------------------------------------------------------------------------------------------------
	
	
//---------------------------------------------------------------------------------------------------
	
	

//---------------------------------------------------------------------------------------------------
	
	

//---------------------------------------------------------------------------------------------------
	
 function Qixi__QixiHuodongFafang takes player p returns nothing
		//å¾éª
		//call Fafang1(p)

		//ææ­»
		//call Fafang2(p)

		//ç®è¤
		//call Fafang3(p)

		//å¹»é¸
		//call Fafang4(p)

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi__QixiHuodongJudgeTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local player p= LoadPlayerHandle(LHTable, id, 1)
		call Qixi__QixiHuodongFafang(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set p=null
		set t=null
	endfunction

 function QixiHuodong takes player p returns nothing
  local timer t= CreateTimer()
		call SavePlayerHandle(LHTable, GetHandleId(t), 1, p)
		call TimerStart(t, 1, false, function Qixi__QixiHuodongJudgeTimer)
		set t=null
	endfunction


//library Qixi ends
//library ChallangerMode:

//---------------------------------------------------------------------------------------------------
    
    function ShowChallangerDialog takes player p returns nothing
    	if ( CType != 0 ) then
        	call ShowGameHint(p , GetChallangerContent(CType))
    	endif
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
	
 function InitKuanghuan takes nothing returns nothing
		set CType=- 1
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__Tiaozhan2Timer takes nothing returns nothing
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
		call TimerStart(CreateTimer(), 1, true, function ChallangerMode__Tiaozhan2Timer)
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rä½ ä»¬å¼å¯äºæå°±ææ2,ææè±éè·å¾éé±ä¸º1%,è±éæ¯ç§åå°10%ççå½.(13æ³¢å¼å§æ¯ç§åå°30%ççå½)")
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitChallanger takes nothing returns nothing
		if ( (CType == 2) ) then // INLINED!!
			set EquipLoopingTime=6
		elseif ( (CType == 3) ) then // INLINED!!
			call StartTiaozhan1()
		elseif ( (CType == 4) ) then // INLINED!!
			call StartTiaozhan2()
		elseif ( (CType == 5) ) then // INLINED!!
			set GJingxiang=CreateGroup()
		elseif ( (CType == 7) ) then // INLINED!!
	    	call SetPlayerTechResearchedSwap('R01L', 1, Player(10))
	    	call SetPlayerTechResearchedSwap('R01L', 1, Player(11))
			set udg_I_Er_diansi[1]=udg_I_Er_diansi[1] + 5
		endif

		if ( CType != 0 ) then
			set SgameMode=S3(CDiff == 1 , "ç®å" , S3(CDiff == 2 , "ä¸­ç­" , "å°é¾")) + GetChallangerTitle(CType)
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChallanger2Hero takes unit u returns nothing
  local integer i= 2
  local item it= null
		if not ( (CType == 2) ) then // INLINED!!
			return
		endif
		loop
			exitwhen i > 6
			if ( UnitItemInSlotBJ(u, i) != null ) then
    			call UnitRemoveItemSwapped(UnitItemInSlotBJ(u, i), u)
			endif
			call UnitAddItemByIdSwapped('I079', u)
			set i=i + 1
		endloop
		if ( u == cangling ) then
			set i=8
			loop
				exitwhen i > 12
				set IBibo[i]=CreateItem('I079', 0, 0)
				call SetItemVisible(IBibo[i], false)
				set i=i + 1
			endloop
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitChallanger1Hero takes unit u returns nothing
  local integer int= 0
  local integer agi= 0
  local integer str= 0
		if not ( (CType == 1) ) then // INLINED!!
			return
		endif
		set int=GetHeroInt(u, true)
		set agi=GetHeroAgi(u, true)
		set str=GetHeroStr(u, true)
	    call SetHeroLevelBJ(u, 450, false)
	    call SetHeroInt(u, int, true)
	    call SetHeroAgi(u, agi, true)
	    call SetHeroStr(u, str, true)
	    call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)) , - 0.95)
	    call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)) , - 0.95)
	    call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)) , - 0.95)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChooseDifficulty takes integer i returns nothing
		call DialogSetMessage(udg_X_Nandu, "éæ©é¾åº¦")
	    if ( i < 2 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "å¤©å½ï¼24æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[1]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 3 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "å¤ªå¹³ï¼24æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[2]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 4 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "åè°ï¼24+5æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[3]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 5 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "æäºï¼24+5æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[4]=GetLastCreatedButtonBJ()
		endif
	    if ( i < 6 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "ç¼ç±ï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[5]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 7 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "å°ç±ï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[6]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 8 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cFFFF0000æ«æ¥|rï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[7]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 9 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cffff00ffè½®å|rï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[8]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 10 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff008000ä¸å«|rï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[9]=GetLastCreatedButtonBJ()
		endif

	    if ( (IsAchieveOK(Player(0) , 325)) ) then // INLINED!!
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff993366å¤©é­|rï¼24+5+2æ³¢ï¼")
		    set udg_X_Nandu_Chuangkou[10]=GetLastCreatedButtonBJ()
	    endif

	    call DialogDisplay(GetFirstPlayer(), udg_X_Nandu, true)

	    if ( CType != 0 and CType != - 1 ) then
	    	call InitChallanger()
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__ChooseSpeedClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åæ¸¸æéåº¦ä¸ºç»å¸(å¸¸é).")
			set mode=1
			set SgameMode=SgameMode + "C"
    	endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åæ¸¸æéåº¦ä¸ºå é(è¿é¶).")
			set mode=2
			set SgameMode=SgameMode + "S"
    	endif

    	call ChooseDifficulty(GetChallangerDifficulty())
        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__CreateCDialog4 takes nothing returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

    	call DialogSetMessage(d, "ç»å¸(å¸¸é)è¿æ¯å é?")
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç»å¸(æ¨è)"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "å é(è¿é¶)", 512))

	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseSpeedClick)
	    set d=null
	    set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__ChooseComfirmClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	call ChallangerMode__CreateCDialog4()
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå·²ç¡®è®¤ææåå®¹,æ­£å¨éæ©å éä¸é¾åº¦.")
    	endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
    		call TriggerExecute(st___prototype38[(1)]) // INLINED!!
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ræ­£å¨åæ¢ææç±»å.")
    	endif

        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__CreateCDialog3 takes integer i returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

    	call DialogSetMessage(d, GetChallangerContent(i))
    	//è®¾ç½®ç±»å
    	set CType=i
	    
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç¡®è®¤éæ©"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "è¿å|cffff6800(Esc)|r", 512))

	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseComfirmClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__ChooseChallangerClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()
     local integer i= 1

	    loop
	    	exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
        		call ChallangerMode__CreateCDialog3(i)
        		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åææä¸º" + GetChallangerTitle(i) + ".")
	    	endif
	    	set i=i + 1
	    endloop

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
    		call TriggerExecute(st___prototype38[(2)]) // INLINED!!
    		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ræ­£å¨åæ¢ææé¾åº¦.")
    	endif

        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateCDialog2 takes nothing returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
     local integer i= 1

	    if ( CDiff == 1 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(ç®å)")
	    elseif ( CDiff == 2 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(ä¸­ç­)")
	    elseif ( CDiff == 3 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(å°é¾)")
	    endif

	    call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetChallangerTitle(7) + S3(IsChallangerComplete(GetFirstPlayer() , 7) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))

	    loop
	    	exitwhen i > 6
		    call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer() , i) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
	    	set i=i + 1
	    endloop

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "è¿å|cffff6800(Esc)|r", 512))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseChallangerClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode__ChooseDifficultyClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	set CDiff=1
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæææ¨¡å¼é¾åº¦ä¸ºç®å.")
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
        	set CDiff=2
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæææ¨¡å¼é¾åº¦ä¸ºä¸­ç­.")
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 3) ) then
        	set CDiff=3
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæææ¨¡å¼é¾åº¦ä¸ºå°é¾.")
		endif

        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateCDialog1 takes nothing returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

	    call DialogSetMessage(d, "éæ©ææé¾åº¦")
	    if ( false ) then
		    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç®å(" + I2S(GetEasyComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "ä¸­ç­(" + I2S(GetMiddleComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "å°é¾(" + I2S(GetHardComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		else
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç®å"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "ä¸­ç­"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "å°é¾"))
	    endif
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseDifficultyClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowTiaozhanDialog takes nothing returns nothing
		call CreateCDialog1()
	endfunction
	

//library ChallangerMode ends
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
	
 function CreateJingongguai takes integer unitType,real facing returns nothing
  local integer id
		if ( (CType == 5) ) then // INLINED!!
			set id=GetNextPlayerID()
	    	call CreateNUnitsAtLoc(1, GetUnitTypeId(udg_H[id]), Player(11), udg_Point, facing)
	    	call SetUnitMirror(GetLastCreatedUnit() , udg_H[id] , I3(udg_Bo == 1 , 1 , udg_Bo * GetDiffculty()))
	    	call GroupAddUnit(GJingxiang, GetLastCreatedUnit())
		else
	    	call CreateNUnitsAtLoc(1, unitType, Player(11), udg_Point, facing)
		endif
	endfunction
	
 function IsWanjie takes nothing returns boolean
		return GetDiffculty() == 9
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function EnhanceDiffAttack takes unit u returns nothing
		if ( NanDiff <= 0 ) then
			return
		endif

		if ( IsTianyan ) then
			call UnitAddAbility(u, 'A0G5')
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
		call UnitRemoveAbility(u, 'A0G5')
		
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
	
 function GetHundun2Tech takes nothing returns integer

		if ( NanDiff == 1 ) then
			return 'R01M'
		elseif ( NanDiff == 2 ) then
			return 'R01N'
		elseif ( NanDiff == 3 ) then
			return 'R01O'
		else
			return 'R01P'
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
	
 function Diffculty__GameModeClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
			//ç»å¸æ¨¡å¼
			set mode=1
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"ç»å¸æ¨¡å¼\".")
			set SgameMode="ç»å¸"
			call ChooseDifficulty(1)
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 3) ) then
			//å éæ¨¡å¼
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"æææ¨¡å¼\".")
			set SgameMode="ææ"
			set mode=1
			call CreateCDialog1() // INLINED!!
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
			//æææ¨¡å¼
			set mode=2
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"å éæ¨¡å¼\".")
			set SgameMode="å é"
			call ChooseDifficulty(1)
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 5) ) then
			//æææ¨¡å¼
			set mode=2
			call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|rå½åçæ¸¸ææ¨¡å¼ä¸º\"çæ¬¢æ¨¡å¼\".")
			set SgameMode="çæ¬¢"
			set CType=- 1 // INLINED!!
			call ChooseDifficulty(4)
		endif

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
	    if ( (( (0) / 10 ) < 150946560) ) then // INLINED!!
	    	call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, "çæ¬¢æ¨¡å¼(æ´»å¨)"))
	    endif
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç»å¸æ¨¡å¼"))
	    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "æææ¨¡å¼"))
	    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "å éæ¨¡å¼(éé)"))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function Diffculty__GameModeClick)
	    set d=null
	    set t=null
	endfunction

//library Diffculty ends
//library ItemBase:


//---------------------------------------------------------------------------------------------------
	
 function IsChaoshen takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return id == 'I07F' or id == 'I07E' or id == 'ICS1' or id == 'I04W' or id == 'tlum'
	endfunction

	//å¤æ­æ¯å¦å¤§äº3çº§çç¥å¨
 function IsShen3 takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return IsChaoshen(i) or id == 'sksh' or id == 'oslo' or id == 'grsl' or id == 'flag' or id == 'ocor' or id == 'blba' or id == 'cosl' or id == 'shhn' or id == 'rat3' or id == 'pams' or id == 'jdrn' or id == 'shcw' or id == 'stre' or id == 'shrs' or id == 'kgal' or id == 'shtm' or id == 'lure' or id == 'thdm' or id == 'arsh' or id == 'srtl' or id == 'rots' or id == 'tmmt' or id == 'brag' or id == 'olig' or id == 'tbar' or id == 'ccmd' or id == 'iwbr'
	endfunction
	
 function IsShenAll takes item i returns boolean
  local integer id= GetItemTypeId(i)
		return IsShen3(i) or id == 'I04Z' or id == 'I056' or id == 'I057' or id == 'I050' or id == 'I055' or id == 'I03Y' or id == 'nflg' or id == 'spre' or id == 'fwss' or id == 'uflg' or id == 'tgxp' or id == 'dust' or id == 'esaz' or id == 'asbl' or id == 'ram4' or id == 'ram3' or id == 'ram2' or id == 'ram1'
	endfunction

	//å¤æ­èº«ä¸ç¥å¨çæ°é
 function Shen3Count takes unit u returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 6
			if ( IsShen3(UnitItemInSlotBJ(u, i)) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count

	endfunction

	//ç¥å¨ç ´é²æè½
 function GetShenPofangSpell takes unit u returns integer

		if ( UnitHasItemOfTypeBJ(u, 'I07F') ) then
			return 'A0DA'
		elseif ( UnitHasItemOfTypeBJ(u, 'I07E') ) then
			return 'A0CI'
		elseif ( UnitHasItemOfTypeBJ(u, 'ICS1') ) then
			return 'A0CH'
		elseif ( UnitHasItemOfTypeBJ(u, 'I04W') ) then
			return 'A0K5'
		elseif ( UnitHasItemOfTypeBJ(u, 'tlum') ) then
			return 'A0D9'
		elseif ( UnitHasItemOfTypeBJ(u, 'tbar') or UnitHasItemOfTypeBJ(u, 'ccmd') ) then
			return 'A0CQ'
		elseif ( UnitHasItemOfTypeBJ(u, 'shtm') or UnitHasItemOfTypeBJ(u, 'srtl') or UnitHasItemOfTypeBJ(u, 'olig') ) then
			return 'A0BK'
		elseif ( UnitHasItemOfTypeBJ(u, 'kgal') or UnitHasItemOfTypeBJ(u, 'arsh') or UnitHasItemOfTypeBJ(u, 'brag') ) then
			return 'A0BC'
		elseif ( UnitHasItemOfTypeBJ(u, 'shrs') or UnitHasItemOfTypeBJ(u, 'thdm') or UnitHasItemOfTypeBJ(u, 'tmmt') ) then
			return 'A0AX'
		elseif ( UnitHasItemOfTypeBJ(u, 'stre') or UnitHasItemOfTypeBJ(u, 'lure') or UnitHasItemOfTypeBJ(u, 'rots') ) then
			return 'A0A9'
		elseif ( UnitHasItemOfTypeBJ(u, 'ram3') or UnitHasItemOfTypeBJ(u, 'ram2') or UnitHasItemOfTypeBJ(u, 'ram1') ) then
			return 'A088'
		elseif ( UnitHasItemOfTypeBJ(u, 'uflg') or UnitHasItemOfTypeBJ(u, 'tgxp') or UnitHasItemOfTypeBJ(u, 'dust') ) then
			return 'A087'
		elseif ( UnitHasItemOfTypeBJ(u, 'I050') or UnitHasItemOfTypeBJ(u, 'I055') or UnitHasItemOfTypeBJ(u, 'I03Y') ) then
			return 'A041'
		endif
		
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsChaomo takes item i returns boolean
  local integer id= GetItemTypeId(i)
		return id == 'IB09' or id == 'IB0A' or id == 'I04X' or id == 'I07O' or id == 'I07N'
	endfunction

 function IsMo3 takes item i returns boolean
  local integer id= GetItemTypeId(i)
		return IsChaomo(i) or id == 'IB04' or id == 'IB05' or id == 'IB06' or id == 'IB07' or id == 'IB08'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsGui3 takes item i returns boolean
  local integer id= GetItemTypeId(i)
		
		return IsMaxRing(i) or id == 'lgdh' or id == 'clfm' or id == 'bgst' or id == 'belv' or id == 'hcun' or id == 'rag1' or id == 'penr' or id == 'brac'
	endfunction

 function IsGui takes item i returns boolean
  local integer id= GetItemTypeId(i)
		
		return IsGui3(i) or id == 'rat9' or id == 'rlif'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsChaoyao takes item i returns boolean
  local integer id= GetItemTypeId(i)
		
		return id == 'ICY1' or id == 'I05X' or id == 'I05F' or id == 'I07P' or id == 'I07Q'
	endfunction

 function IsYao3 takes item i returns boolean
  local integer id= GetItemTypeId(i)
		
		return IsChaoyao(i) or id == 'I041' or id == 'I04R' or id == 'I05C' or id == 'I05B'
	endfunction
		
 function Yao3Count takes unit u returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 6
			if ( IsYao3(UnitItemInSlotBJ(u, i)) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsXianglian takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return id == 'rde3' or id == 'ssil' or id == 'I04Y' or id == 'I05T' or id == 'I07H' or id == 'I07G'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsChaoren takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return id == 'tbsm' or id == 'tfar' or id == 'tbak' or id == 'I05Y' or id == 'I05Z' or id == 'I060' or id == 'I07K' or id == 'I07J' or id == 'I07I'
	endfunction
	
 function IsRen3 takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return IsChaoren(i) or id == 'frhg' or id == 'mlst' or id == 'nspi' or id == 'oli2' or id == 'rump' or id == 'shen' or id == 'stpg' or id == 'ofir' or id == 'soul' or id == 'sbok' or id == 'arsc' or id == 'rde0' or id == 'oflg' or id == 'frgd' or id == 'gldo' or id == 'gsou' or id == 'envl' or id == 'rugt' or id == 'shdt' or id == 'crdt' or id == 'pspd'
	endfunction

 function IsRen takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return IsRen3(i) or id == 'rugt' or id == 'drph' or id == 'oven' or id == 'rej4' or id == 'dtsb' or id == 'gobm' or id == 'gvsm' or id == 'pgin' or id == 'rej6' or id == 'tels'
	endfunction

 function GetRenTime takes unit u returns real
		if ( UnitHasItemOfTypeBJ(u, 'tbak') or UnitHasItemOfTypeBJ(u, 'I060') or UnitHasItemOfTypeBJ(u, 'I07I') ) then
			return 9.0
		elseif ( UnitHasItemOfTypeBJ(u, 'pspd') ) then
			return 8.5
		elseif ( UnitHasItemOfTypeBJ(u, 'crdt') or UnitHasItemOfTypeBJ(u, 'tfar') or UnitHasItemOfTypeBJ(u, 'tbsm') or UnitHasItemOfTypeBJ(u, 'I05Y') or UnitHasItemOfTypeBJ(u, 'I05Z') or UnitHasItemOfTypeBJ(u, 'I07K') or UnitHasItemOfTypeBJ(u, 'I07J') ) then
			return 8.0
		elseif ( UnitHasItemOfTypeBJ(u, 'shdt') or UnitHasItemOfTypeBJ(u, 'frgd') or UnitHasItemOfTypeBJ(u, 'stpg') ) then
			return 7.5
		elseif ( UnitHasItemOfTypeBJ(u, 'rugt') or UnitHasItemOfTypeBJ(u, 'oflg') or UnitHasItemOfTypeBJ(u, 'shen') ) then
			return 7.0
		elseif ( UnitHasItemOfTypeBJ(u, 'envl') or UnitHasItemOfTypeBJ(u, 'rde0') or UnitHasItemOfTypeBJ(u, 'rump') ) then
			return 6.5
		elseif ( UnitHasItemOfTypeBJ(u, 'gsou') or UnitHasItemOfTypeBJ(u, 'arsc') or UnitHasItemOfTypeBJ(u, 'oli2') ) then
			return 6.0
		elseif ( UnitHasItemOfTypeBJ(u, 'gldo') or UnitHasItemOfTypeBJ(u, 'sbok') or UnitHasItemOfTypeBJ(u, 'nspi') ) then
			return 5.5
		elseif ( UnitHasItemOfTypeBJ(u, 'gvsm') or UnitHasItemOfTypeBJ(u, 'soul') or UnitHasItemOfTypeBJ(u, 'mlst') ) then
			return 5.0
		elseif ( UnitHasItemOfTypeBJ(u, 'gobm') or UnitHasItemOfTypeBJ(u, 'ofir') or UnitHasItemOfTypeBJ(u, 'frhg') ) then
			return 4.5
		elseif ( UnitHasItemOfTypeBJ(u, 'pgin') or UnitHasItemOfTypeBJ(u, 'tels') or UnitHasItemOfTypeBJ(u, 'oven') ) then
			return 4.0
		elseif ( UnitHasItemOfTypeBJ(u, 'dtsb') or UnitHasItemOfTypeBJ(u, 'drph') ) then
			return 3.5
		elseif ( UnitHasItemOfTypeBJ(u, 'rej4') or UnitHasItemOfTypeBJ(u, 'rej6') ) then
			return 3.0
		endif
		return 0.
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsBox takes item i returns boolean
  local integer id= GetItemTypeId(i)

		return id == 'wild' or id == 'hlst' or id == 'totw' or id == 'sror' or id == 'fgrg' or id == 'wshs' or id == 'I06N' or id == 'I07T' or id == 'I02U'
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//å¤æ­èº«ä¸åé­çæ°é

 function Xian3Count takes unit u returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 6
			if ( IsZhanfa3(UnitItemInSlotBJ(u, i)) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction

 function Zhan0Count takes unit u returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 6
			if ( IsZhan0(UnitItemInSlotBJ(u, i)) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction

 function ChaoxianCount takes unit u returns integer
  local integer i= 1
  local integer count= 0
		loop
			exitwhen i > 6
			if ( IsZhanfaChao(UnitItemInSlotBJ(u, i)) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		return count
	endfunction

	//å¤æ´»æ¶é¿
 function GetZhanfaReviveTime takes unit u returns real
  local real time= 0
		if ( ChaoxianCount(u) >= 1 or playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "ä¿¡å²å¤§äºº" or B3SecondRevive[GetConvertedPlayerId(GetOwningPlayer(u))] ) then
			set time=3.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'tgrh') ) then
			set time=4.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'I078') or UnitHasItemOfTypeBJ(u, 'plcl') ) then
			set time=8.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'tcas') ) then
			set time=10.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'tsct') ) then
			set time=12.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'skul') ) then
			set time=14.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'vamp') ) then
			set time=16.0 / CModeH(1 , 2)
		elseif ( UnitHasItemOfTypeBJ(u, 'I01U') or UnitHasItemOfTypeBJ(u, 'rde2') ) then
			set time=18.0 / CModeH(1 , 2)
		else
			set time=20.0 / CModeH(1 , 2)
		endif

		if ( GetUnitTypeId(UDepot[GetConvertedPlayerId(GetOwningPlayer(u))]) == 'n02D' ) then
			set time=RMaxBJ(1.5, time - 1.0)
		endif

		return time
	endfunction

	//å¤æ´»åå¤é­æ³
 function GetZhanfaReviveMana takes unit u returns real
		if ( ChaoxianCount(u) >= 1 ) then
			return 1000.
		elseif ( UnitHasItemOfTypeBJ(u, 'shas') ) then
			return 600.
		elseif ( UnitHasItemOfTypeBJ(u, 'spro') ) then
			return 500.
		elseif ( UnitHasItemOfTypeBJ(u, 'phea') ) then
			return 400.
		elseif ( UnitHasItemOfTypeBJ(u, 'rin1') ) then
			return 300.
		elseif ( UnitHasItemOfTypeBJ(u, 'ward') ) then
			return 200.
		elseif ( UnitHasItemOfTypeBJ(u, 'rde1') or UnitHasItemOfTypeBJ(u, 'I027') ) then
			return 100.
		else
			return 0.
		endif
	endfunction

	//æé­å çå±æ§
 function GetZhanhunShuxing takes unit u returns integer
		if ( UnitHasItemOfTypeBJ(u, 'I05U') ) then
			return 10
		elseif ( UnitHasItemOfTypeBJ(u, 'ICX1') ) then
			return 9
		elseif ( UnitHasItemOfTypeBJ(u, 'rst1') ) then
			return 8
		elseif ( UnitHasItemOfTypeBJ(u, 'tgrh') ) then
			return 7
		elseif ( UnitHasItemOfTypeBJ(u, 'plcl') ) then
			return 6
		elseif ( UnitHasItemOfTypeBJ(u, 'tcas') ) then
			return 5
		elseif ( UnitHasItemOfTypeBJ(u, 'tsct') ) then
			return 4
		elseif ( UnitHasItemOfTypeBJ(u, 'skul') ) then
			return 3
		elseif ( UnitHasItemOfTypeBJ(u, 'vamp') ) then
			return 2
		elseif ( UnitHasItemOfTypeBJ(u, 'I01E') or UnitHasItemOfTypeBJ(u, 'rde2') ) then
			return 1
		else
			return 0
		endif
	endfunction	

	//åå°çä¼¤å®³
 function GetZhanhunJianshang takes item i returns integer
  local integer id= GetItemTypeId(i)
		if ( IsZhanfaChao(i) ) then
			return 50000
		elseif ( id == 'tgrh' ) then
			return 25000
		elseif ( id == 'plcl' ) then
			return 10000
		elseif ( id == 'tcas' ) then
			return 6000
		elseif ( id == 'tsct' ) then
			return 3000
		elseif ( id == 'skul' ) then
			return 1000
		elseif ( id == 'I02A' or id == 'rde2' ) then
			return 75
		else
			return 0
		endif
	endfunction

	
	//å¤æ´»æ¶é¿
 function GetZhanfaReviveCool takes unit u returns real
		if ( ChaoxianCount(u) >= 1 ) then
			return 29.
		elseif ( UnitHasItemOfTypeBJ(u, 'tgrh') ) then
			return 59.
		elseif ( UnitHasItemOfTypeBJ(u, 'I078') or UnitHasItemOfTypeBJ(u, 'plcl') ) then
			return 99.
		elseif ( UnitHasItemOfTypeBJ(u, 'tcas') ) then
			return 149.
		elseif ( UnitHasItemOfTypeBJ(u, 'tsct') ) then
			return 174.
		elseif ( UnitHasItemOfTypeBJ(u, 'skul') ) then
			return 199.
		elseif ( UnitHasItemOfTypeBJ(u, 'vamp') ) then
			return 219.
		elseif ( UnitHasItemOfTypeBJ(u, 'I01U') or UnitHasItemOfTypeBJ(u, 'rde2') ) then
			return 249.
		else
			return - 1.
		endif
	endfunction

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
	
 function ItemBase__TGetWingSpellCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] or GetManipulatingUnit() == udg_U_Zhuansheng_Dantiao[2] )
	endfunction
	
 function ItemBase__TGetWingSpellPickAct takes nothing returns nothing
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
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05X' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0KE')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'ICY1' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0KF')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I07P' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0KE')
			call SetUnitAbilityLevel(GetManipulatingUnit(), 'A0KE', 2)
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I07Q' ) then
			call UnitAddAbility(GetManipulatingUnit(), 'A0KF')
			call SetUnitAbilityLevel(GetManipulatingUnit(), 'A0KF', 2)
		endif
	endfunction
	
 function ItemBase__TGetWingSpellDropAct takes nothing returns nothing
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
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I05X' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0KE')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'ICY1' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0KF')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I07P' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0KE')
		elseif ( GetItemTypeId(GetManipulatedItem()) == 'I07Q' ) then
			call UnitRemoveAbility(GetManipulatingUnit(), 'A0KF')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function ItemBase__TBookBUGCon takes nothing returns boolean
		return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
	endfunction

 function ItemBase__TBookBUGAct takes nothing returns nothing
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
	
 function ItemBase__ReviveNecklace takes nothing returns nothing
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

 function ItemBase__ReviveRing takes nothing returns nothing
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
	        call TimerStart(CreateTimer(), 30, false, function ItemBase__ReviveRing)
	        call PolledWait(0.5)
	        call RemoveUnit(GetDyingUnit())
	    endif
	    if ( GetDyingUnit() == UCrainax ) then
	        call CreateItem('rde3', GetUnitX(UCrainax), GetUnitY(UCrainax))
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(UCrainax), GetUnitY(UCrainax)))
	        set t=CreateTimer()
	        set TiDiaNecklace=CreateTimerDialogBJ(t, "å£ä¸»åèº«å¤æ´»")
	        call TimerStart(t, 900, false, function ItemBase__ReviveNecklace)
	        call TimerDialogDisplay(TiDiaNecklace, true)
	        set t=null
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function ItemBase__InitItemBase takes nothing returns nothing

		//å é¤ä¹¦æ¬çå°ç¹BUG
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase__TBookBUGCon))
		call TriggerAddAction(t, function ItemBase__TBookBUGAct)

		//è·å¾ç¿èçæè½
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase__TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase__TGetWingSpellPickAct)

		//å æç¿èçæè½
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase__TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase__TGetWingSpellDropAct)

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
	
 function Continous__GetGoldReward takes integer day returns integer
		return I3(day == 1 , 500 , R2I(( SquareRoot(day) + 2. ) * 300.))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GiveJianianhuaGift takes player p returns nothing
  local integer i= IConDays[GetConvertedPlayerId(p)]
  local unit u= udg_H[GetConvertedPlayerId(p)]

		call AdjustPlayerStateBJ(Continous__GetGoldReward(i), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)

		if ( i >= 2 ) then
			call UnitAddItemByIdSwapped('ankh', u)
		endif

		if ( i >= 4 ) then
			call UnitAddItemByIdSwapped('k3m1', u)
		endif
		
		if ( i >= 7 ) then
			call UnitAddItemByIdSwapped('I07A', u)
			set BWuxing[GetConvertedPlayerId(p)]=true
		endif

		if ( i >= 12 ) then
			call UnitAddItemByIdSwapped('I05O', u)
			call SetItemPawnable(GetLastCreatedItem(), false)
		endif

		if ( i >= 14 ) then
			call GetSpecifySpin((p) , 1 , 9) // INLINED!!
		endif

		if ( i >= 20 ) then
			call UnitAddItemByIdSwapped('hlst', u)
		endif

		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetDailyReward takes integer days returns string
		if ( days == 2 ) then
			return "å¤©å°åºä½ * 2"
		elseif ( days == 4 ) then
			return "è¡ç²¾ç³ * 1"
		elseif ( days == 7 ) then
			return "|cffffff00ãå¦ãäºè¡ä¹æ|r * 1"
		elseif ( days == 12 ) then
			return "èå®Â·Lv0 * 1"
		elseif ( days == 14 ) then
			return "|cFF339933æ²éªæ ç|rç®è¤"
		elseif ( days == 20 ) then
			return "|cff808080ãEãå¹¸è¿å®ç®±|r"
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
        local string s= "\n        	è¿ç»­ç»å½å¥å±\n\n        	ä½ è·å¾äºç¬¬" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©å¯¹åºç" + I2S(Continous__GetGoldReward(IConDays[GetConvertedPlayerId(p)])) + "éå¸!\n        	æå¤©ç»§ç»­ç­¾å°å¯ä»¥è·å¾" + I2S(Continous__GetGoldReward(IConDays[GetConvertedPlayerId(p)] + 1)) + "çéå¸!\n\n        	\n        	"
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
	
 function Continous__GetCurrentStartTime takes nothing returns integer
		return TIMESTAMP_START + ( ( (0) - TIMESTAMP_START ) / 86400 ) * 86400 // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Continous__GetOldStartTime takes integer day returns integer
		return (TIMESTAMP_START + ( ( (0) - TIMESTAMP_START ) / 86400 ) * 86400) - ( ( day - 1 ) * 86400 ) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitContinousData takes player p returns nothing
		set IConDays[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "IConDays")
		set ILastTime[GetConvertedPlayerId(p)]=DzAPI_Map_GetStoredInteger(p , "ILastTime")
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
//---------------------------------------------------------------------------------------------------
	
 function SaveLoginState takes player p returns nothing
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreInteger(p , "IConDays" , IConDays[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "ILastTime" , ILastTime[GetConvertedPlayerId(p)])
			//call DzAPI_Map_StoreInteger( p,  "IQiandao2", IQiandao2[GetConvertedPlayerId(p)] )
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­æå!|r")
			//call CreateYuebingPlayer(GetUnitX(udg_H[GetConvertedPlayerId(p)]),GetUnitY(udg_H[GetConvertedPlayerId(p)]),p)
		else
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­å¤±è´¥,è¯·éå¯æ¸¸æ!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­å¤±è´¥,è¯·éå¯æ¸¸æ!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­å¤±è´¥,è¯·éå¯æ¸¸æ!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­å¤±è´¥,è¯·éå¯æ¸¸æ!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000ãæ¶æ¯ãè¿ç»­ç»å½æ°æ®ä¿å­å¤±è´¥,è¯·éå¯æ¸¸æ!|r")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Continous__UploadToNetEaseTimer takes nothing returns nothing
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
		call TimerStart(t, 600, false, function Continous__UploadToNetEaseTimer)
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

			//set IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(æ³¨æä»å¤©çç­¾å°éè¦ç­10åéæè½ä¿å­).")
		elseif ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1 ) then
			//ä¿æå½å¤©çå¥å±

			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(ä»å¤©çç­¾å°æ°æ®å·²ç»å¨åé¢æ¸¸æä¸­ä¿å­äºå¦).")
		else
			set ILastTime[GetConvertedPlayerId(p)]=(TIMESTAMP_START + ( ( (0) - TIMESTAMP_START ) / 86400 ) * 86400) // INLINED!!
			set IConDays[GetConvertedPlayerId(p)]=1

			//set IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å·²ç»æåè¿ç»­ç»å½" + I2S(IConDays[GetConvertedPlayerId(p)]) + "å¤©(æ³¨æä»å¤©çç­¾å°éè¦ç­10åéæè½ä¿å­).")
		endif

		call UploadToNetEase(p)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Buqian1 takes player p returns nothing
		if not ( BBuqian1 ) then
			set BBuqian1=true
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¡¥ç­¾1é¶æ®µ.")
		endif
	endfunction

 function Buqian2 takes player p,string s returns nothing
		if ( s == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)] , 19)) ) then
			set BBuqian2=true
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¡¥ç­¾2é¶æ®µ.")
		endif
		set BBuqian1=false
	endfunction

 function Buqian3 takes player p,string s returns nothing
  local integer i= 1
  local integer result= 0
		loop
			exitwhen i > 100

			if ( s == I2S(GetCycleHash(I2S(i) , 1)) ) then
				set IConDays[GetConvertedPlayerId(p)]=i
				set ILastTime[GetConvertedPlayerId(p)]=((TIMESTAMP_START + ( ( (0) - TIMESTAMP_START ) / 86400 ) * 86400) - ( ( (i) - 1 ) * 86400 )) // INLINED!!
				call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¡¥ç­¾ä¸º" + I2S(i) + "å¤©.")
				call SaveLoginState(p)
				exitwhen true
			endif

			set i=i + 1
		endloop
		set BBuqian2=false
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Continous__InitContinous takes nothing returns nothing
		
	endfunction


//library Continous ends
//library Version:
	

//---------------------------------------------------------------------------------------------------
	
 function SaveAllPlayerAchievement takes integer id returns nothing
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
	
 function ActivateAllSpin takes player p returns nothing
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
		// call QixiHuodong(p)
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
		return ( DzAPI_Map_GetMapLevel(p) >= 11 ) // or GetPlayerWordCount(p) >= 8
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaotingSelectedCon takes player p returns boolean
		return Version__IsPass(p , 5)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintMengjiPassword takes nothing returns nothing
	endfunction
 function PrintCanglingPassword takes nothing returns nothing
	endfunction
 function PrintXinglongPassword takes nothing returns nothing
	endfunction
 function PrintXiaotingPassword takes nothing returns nothing
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitAllAchievement takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
    			set achieve[i]=S2I(DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "achieve"))
    			set achieve2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve2")
    			set achieve3[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve3")
    			set achieve4[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "achieve4")
    			set vipCode[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "vip")
    			set achiPage[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "page")
    			set heroCountString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "hero")
    			set spin[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin")
    			set diyu[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "defense")
    			set mingcha[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "mingcha")
    			
    			set Idaixin[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "daixin")
    			set Ileishi[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "leishi")
    			set SDIY[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "diy")
    			set Greward[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "Greward")
    			set Greward2[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "Greward2")
    			set SJizi[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "SJizi")
    			set IConDays[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "IConDays")
    			set ILastTime[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "ILastTime")
    			//ç­¾å°ææ°
    			//set IQiandao2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "IQiandao2")
    			set spin2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin2")
    			set spin3[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin3")
    			set easyCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "easyCString")
    			set middleCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "middleCString")
    			set hardCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "hardCString")
    			set SBoxWord[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "SBoxWord")
    			set SFanzhaun[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "SFanzhaun")
    			
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rè¯»åæ°æ®ä¸­.....")
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function JudgeCundang takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			if ( GetPlayerServerValueSuccess(ConvertedPlayer(i)) ) then
				set Bdudang[i]=true
			else
				set Bdudang[i]=false
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
	
 function IncreaseYanmieFanzhuan takes player p returns nothing
  local integer i= GetConvertedPlayerId(p)
		if ( diyu[i] / 100000 < 5 ) then
			set diyu[i]=diyu[i] + 100000
			call DzAPI_Map_StoreInteger(ConvertedPlayer(i) , "defense" , diyu[i])
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ¹®ç­æè½ç¬¬äºå½¢æè¿åº¦:" + I2S(diyu[i] / 100000) + "/5")
		endif
		if ( diyu[i] / 100000 >= 5 ) then
			call SetFanzhuanOK(p , 2)
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
					call GetSpecifySpin((ConvertedPlayer(i)) , 1 , 5) // INLINED!!
				endif

				if ( level >= 4 ) then
					call IncreaseYanmieFanzhuan(ConvertedPlayer(i))
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

				if not ( BSlince ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 416)
				endif

				if not ( BZongshu ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 49)
				endif

				if ( (CType == 3) ) then // INLINED!!
					call GetAchievementAndSave(ConvertedPlayer(i) , 410)
				endif
				
				if ( (CType == 4) ) then // INLINED!!
					call GetAchievementAndSave(ConvertedPlayer(i) , 411)
				endif

				if ( CType != 0 and CType != - 1 ) then
					call ChallangerSuccess(ConvertedPlayer(i))
				endif

				if ( CType == - 1 and level == 9 and renshu == 1 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 418)
				endif

				if ( CType == - 1 and IsTianyan ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 419)
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

				if ( not ( BShengming ) and udg_RENSHU >= 4 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , 45)
				endif

			endif
			set i=i + 1
		endloop


	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievementKuilei2 takes nothing returns nothing

  local integer i= 1
  local integer level= GetDiffculty()

		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|ræ­£å¨ä¿å­æ¸¸ææ°æ®ä¸­....è¯·ä¸è¦é©¬ä¸éåºæ¸¸æ,ä»¥åä¿å­å¤±è´¥...")

		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then

				call GetAndSaveCangku(ConvertedPlayer(i) , 9)

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
			call GetSpecifySpin((p) , 1 , 4) // INLINED!!
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
		if not ( Bdudang[index] ) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ¬å±æ¸¸æè±éæ¬¡æ°æ°æ®è¯»åå¤±è´¥,è¯·éæ°å¼å§æ¸¸æ.")
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
		if not ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræ¬å±æ¸¸æè±éæ¬¡æ°æ°æ®è¯»åå¤±è´¥,è¯·éæ°å¼å§æ¸¸æ.")
			return
		endif
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
			call SaveAllPlayerAchievement(311)
		endif
		if ( JunengCount >= 20 ) then
			call SaveAllPlayerAchievement(312)
		endif
		if ( JunengCount >= 12 and GetDiffculty() >= 8 ) then
			call SaveAllPlayerAchievement(313)
		endif
		if ( JunengCount >= 40 and GetDiffculty() >= 8 ) then
			call SaveAllPlayerAchievement(314)
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
					if ( attr > 35000000 and udg_H[i] == sichen ) then
						call GetSpecifySpin((ConvertedPlayer(i)) , 2 , 7) // INLINED!!
					endif
					if ( attr > 50000000 ) then
						call GetAchievementAndSave(ConvertedPlayer(i) , 318)
					endif
				endif
			endif
			set i=i + 1
		endloop
		// if (udg_RENSHU > 0) then
		// 	if (ModuloInteger(udg_Second[2],60/udg_RENSHU) == 0 and (udg_Second[2] != 0 or udg_RENSHU > 1)) then
		// 		call CreateYuebing(GetRectRandomX(GetPlayableMapRect()),GetRectRandomY(GetPlayableMapRect()))
		// 	endif
		// endif
		
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
		if ( killCount[GetConvertedPlayerId(p)] >= 125000 and udg_H[GetConvertedPlayerId(p)] == sheyan ) then
			call GetSpecifySpin((p) , 2 , 4) // INLINED!!
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance1 takes unit u returns nothing
        local real percentThousand= ( GetUnitState(u, UNIT_STATE_LIFE) * 1000. ) / GetUnitState(u, UNIT_STATE_MAX_LIFE)
        if ( UnitHasBuffBJ(u, 'Bapl') or UnitHasBuffBJ(u, 'Bpoi') or UnitHasBuffBJ(u, 'Bpsd') ) then
        	call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ æ¥æä¸­æ¯BUFF.")
        	return
        endif
        if ( percentThousand < 10 and IsUnitAliveBJ(u) and not ( BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(u))] ) ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 412)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å½åççå½ä¸ºååä¹" + R2S(percentThousand) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance2 takes unit u returns nothing
        local real life= GetUnitState(u, UNIT_STATE_MAX_LIFE)
        if ( life > 500000000 ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 413)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å½åççå½ä¸º" + R2S(life) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance3 takes unit u returns nothing
        local integer defense= GetHeroAgi(u, true) / 100 + (LoadInteger(YDHT, GetHandleId((u)), 0x81FD3994)) // INLINED!!
        if ( defense > 1000000 ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 414)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CCãæ¶æ¯ã|rä½ å¤å®çé²å¾¡ä¸º" + R2S(defense) + ".")
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
	
 function Version__SaveAllHeroTimes takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local player p= ConvertedPlayer(LoadInteger(LHTable, id, kSaveHeroTimes))
  local integer i= GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)]))
		call IncreaseHeroCount(p , i)
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreString(p , "hero" , heroCountString[GetConvertedPlayerId(p)])
	    	call DzAPI_Map_Stat_SetStat(p , "hero" , GetIndexHeroName(GetBestHero(p)))
	    else
	    	call ShowGameHint(p , "\n	    		æ¬å±æ¸¸ææ°æ®è¯»åå¤±è´¥,å»ºè®®éæ°å¼å§æ¸¸æ.\n	    		(è¿æ¯è½æ­£å¸¸æ¸¸æ,ä½æ¯ä¸è½è·å¾æå°±ä¸ç®è¤)")
		endif
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
	
 function SetKuanghuanOK takes player p returns nothing
  local integer i= GetConvertedPlayerId(p)
		if ( mingcha[i] / 10000 < 9 ) then
			set mingcha[i]=mingcha[i] + 10000
			call DzAPI_Map_StoreInteger(ConvertedPlayer(i) , "mingcha" , mingcha[i])
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|rçæ¬¢åºæ°è¿åº¦:" + I2S(mingcha[i] / 10000) + "/9")
		endif
		if ( mingcha[i] / 10000 >= 9 ) then
			call DzAPI_Map_StoreInteger(p , "kuanghuan" , 1)
		endif
	endfunction

 function Version__AddKuanghuanTimes takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer index= LoadInteger(LHTable, id, 1)
		call SetKuanghuanOK(ConvertedPlayer(index))
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Version__AddKuanghuan takes player p returns nothing
  local timer t= CreateTimer()
		call SaveInteger(LHTable, GetHandleId(t), 1, GetConvertedPlayerId(p))
		call TimerStart(t, 300, false, function Version__AddKuanghuanTimes)
		set t=null
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

		call InitChallangerData(GetOwningPlayer(u))
		call Version__AddKuanghuan(GetOwningPlayer(u))
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
	
 function Huoquachi takes player p,string chat,integer page returns nothing
  local integer i= 1
  local integer result= 0

		loop
			exitwhen i > 40

			if ( chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)] + "ac" + I2S(page) + I2S(i) , 1)) ) then
				call GetAchievementAndSave(p , S2I(I2S(page) + I2S(i)))
				exitwhen true

			endif

			set i=i + 1
		endloop

		set BBuqian2=false
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function InitVersion takes nothing returns nothing
  local trigger t= CreateTrigger()
  local integer i= 1

    	call CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01L', - 9816.0, - 5968.0, 270.000)
    	set UChengjiu=CreateUnit(Player(6), 'n01K', - 14504.0, - 14040.0, 270.000)

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
	
 function Spin__CreateFanzhuanItemTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local item it= LoadItemHandle(LHTable, id, 1)
		if ( it != null ) then
			call RemoveItem(it)
		endif
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set it=null
		set t=null
	endfunction

 function CreateFanzhuanItem takes unit u returns nothing
     local timer t= CreateTimer()
    	call SaveItemHandle(LHTable, GetHandleId(t), 1, UnitAddItemByIdSwapped(GetFanzhuanItemType(u), u))
    	call TimerStart(t, 60, false, function Spin__CreateFanzhuanItemTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsSeyuSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsXiaoyueSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsYanmieSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsXuanxueSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsTaiyaSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 6) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsHanshangSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 8) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsChenjiSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 7) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsChenjiSpin2 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 10) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsLingxueSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin[GetConvertedPlayerId((p))] , 9) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsMoqiSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 1) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsKaisaSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 2) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsXuanxueSpin2 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 3) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsBajueSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 5) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsSheyanSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 4) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHuanyiSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 6) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsSichenSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 7) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsCanglingSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 8) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsHeiyanSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 9) > 0) ) // INLINED!!
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function IsHanshangSpin2 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin3[GetConvertedPlayerId((p))] , 1) > 0) ) // INLINED!!
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsLichiSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin2[GetConvertedPlayerId((p))] , 10) > 0) ) // INLINED!!
		//return true
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function IsXinglongSpin1 takes player p returns boolean
		return ( not ( BCancelSpin[GetConvertedPlayerId(p)] ) ) and ( (GetBit(spin3[GetConvertedPlayerId((p))] , 2) > 0) ) // INLINED!!
		//return true
	endfunction


//library Spin ends
//library Kaisa:
	

//---------------------------------------------------------------------------------------------------
	
 function Kaisa__CreateEffect1 takes real x,real y returns nothing
  local integer i= 1
		loop
		    exitwhen i > 6
		    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", (RMinBJ(RMaxBJ(((x + 400 * CosBJ(i * 360.0 / ( 6 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((y + 400 * SinBJ(i * 360.0 / ( 6 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
		    set i=i + 1
		endloop
	endfunction

 function SimulateDamageKaisa takes unit u returns boolean
		//å°çå¤´çä¼¤å®³
		if ( GetUnitTypeId(u) == 'h02R' ) then
			call Kaisa__CreateEffect1(GetUnitX(u) , GetUnitY(u))
			call DamageArea(kaisa , GetUnitX(u) , GetUnitY(u) , 600 , GetDamageStr(kaisa) * 0.4)
			if ( GetRandomInt(1, 7) == 1 ) then
				call CreateTextTagA(("å°é" ) , ( u ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 50 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
				call SimulateSpell(u , GetTriggerUnit() , 'A0NP' , 1 , 6 , "stomp" , false , true , false)
			endif
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SimulateDeathKaisa takes unit u returns nothing
		if ( GetUnitTypeId(u) == 'h02R' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(u), GetUnitY(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Kaisa__DestroyLiebianTimer takes nothing returns nothing
		call PauseTimer(Kaisa__TLiebian)
		call DestroyTimer(Kaisa__TLiebian)
		set Kaisa__TLiebian=null
		call SetUnitScalePercent(kaisa, 100.00, 100.00, 100.00)
		call s__TextTagBind_deallocate(Kaisa__TTBLiebian)
		set Kaisa__ILiebian=0
		set Kaisa__BLiebian=false
		set Kaisa__RLiebianX=0.
		set Kaisa__RLiebianY=0.
		set Kaisa__RDistanceLiebian=0.
		call DestroyEffect(Kaisa__ELiebian)
	endfunction

 function Kaisa__TiandiliebianTimer takes nothing returns nothing
		if ( IsUnitAliveBJ(kaisa) and Kaisa__BLiebian ) then
    		set Kaisa__ILiebian=IMinBJ(100, Kaisa__ILiebian + 1)
			call s__TextTagBind_setContent(Kaisa__TTBLiebian,I2S(Kaisa__ILiebian) + "%")
    		call SetUnitScalePercent(kaisa, 100.00 + 2 * Kaisa__ILiebian, 100.00 + 2 * Kaisa__ILiebian, 100.00 + 2 * Kaisa__ILiebian)
    		if ( Kaisa__RLiebianX != GetUnitX(kaisa) or Kaisa__RLiebianY != GetUnitY(kaisa) ) then
	    		set Kaisa__RDistanceLiebian=Kaisa__RDistanceLiebian + GetDistance(Kaisa__RLiebianX , Kaisa__RLiebianY , GetUnitX(kaisa) , GetUnitY(kaisa))
	    		set Kaisa__RLiebianX=GetUnitX(kaisa)
	    		set Kaisa__RLiebianY=GetUnitY(kaisa)
	    		if ( Kaisa__RDistanceLiebian >= 250.0 ) then
	    			call DamageArea(kaisa , GetUnitX(kaisa) , GetUnitY(kaisa) , 450.0 , GetDamageStr(kaisa) * 0.01 * Kaisa__ILiebian)
	    			call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", GetUnitX(kaisa), GetUnitY(kaisa)))
	    			set Kaisa__RDistanceLiebian=0.0
	    		endif
    		endif
    	else
    		call Kaisa__DestroyLiebianTimer()
		endif
	endfunction

 function Tiandiliebian takes nothing returns nothing
		set Kaisa__TLiebian=CreateTimer()
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(kaisa), GetUnitY(kaisa)))
		call TimerStart(Kaisa__TLiebian, 0.1, true, function Kaisa__TiandiliebianTimer)
		set Kaisa__ILiebian=0
		set Kaisa__BLiebian=true
		set Kaisa__TTBLiebian=s__TextTagBind_create(kaisa , 35 , 35)
		set Kaisa__ELiebian=AddSpecialEffectTargetUnitBJ("chest", kaisa, "war3mapImported\\DefenceMatrix.mdl")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Kaisa__CreateEffect2 takes real x,real y returns nothing
  local integer i= 1
		loop
		    exitwhen i > 6
		    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", (RMinBJ(RMaxBJ(((x + 300 * CosBJ(i * 360.0 / ( 6 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((y + 300 * SinBJ(i * 360.0 / ( 6 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
		    set i=i + 1
		endloop
	endfunction

 function Kaisa__ChongzhuangTimer takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local integer id= GetHandleId(t)
	    //iæ¯éåº¦
     local integer i= LoadInteger(spellTable, id, 1)
  local real facing= LoadReal(spellTable, GetHandleId(t), 2)
  local group temp= GetEnemyGroup(GetOwningPlayer(kaisa) , GetUnitX(kaisa) , GetUnitY(kaisa) , 400)
  local real xp= GetUnitX(kaisa) + CosBJ(facing) * I2R(i)
  local real yp= GetUnitY(kaisa) + SinBJ(facing) * I2R(i)
		//å¤æ­æ°é
	    if ( CountUnitsInGroup(temp) == 0 or xp > yd_MapMaxX or xp < yd_MapMinX or yp > yd_MapMaxY or yp < yd_MapMinY ) then
	    	//éåº¦å å¿«
	        set i=i + 5
	        call SaveInteger(spellTable, GetHandleId(t), 1, i)
			call SetUnitX(kaisa, xp)
			call SetUnitY(kaisa, yp)
			if ( ModuloInteger(i, 100) == 0 ) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl", GetUnitX(kaisa), GetUnitY(kaisa)))
    		    call SetUnitAnimation(kaisa, "move")
			endif
	    else
	    	//ä¼¤å®³ï¼æ¯2ç§å 100%ï¼
	    	call DamageArea(kaisa , GetUnitX(kaisa) , GetUnitY(kaisa) , 600 , GetDamageStr(kaisa) * ( i / 100 ))
	    	call Kaisa__CreateEffect2(GetUnitX(kaisa) , GetUnitY(kaisa))
	    	call PrintSpellAdd((GetOwningPlayer(kaisa) ) , ( GetAbilityName('A0NQ') ) , (( GetDamageStr(kaisa) * ( i / 200 ))*1.0) , "") // INLINED!!
	    	call SimulateSpell(kaisa , kaisa , 'A0NN' , i / 100 , 6 , "stomp" , false , true , false)
	    	call PauseUnit(kaisa, false)
	    	call UnitRemoveAbility(kaisa, 'Avul')
	        call PauseTimer(t)
	        call FlushChildHashtable(spellTable, id)
	        call DestroyTimer(t)
	    endif
	    call DestroyGroup(temp)
	    set temp=null
	    set t=null
	endfunction

 function Tianlingchongzhuang takes nothing returns nothing
  local real facing= GetFacingBetweenXY(GetUnitX(kaisa) , GetUnitY(kaisa) , GetSpellTargetX() , GetSpellTargetY())
  local timer t= CreateTimer()
		call PauseUnit(kaisa, true)
		call UnitAddAbility(kaisa, 'Avul')
		call SetUnitFacing(kaisa, facing)
		call SaveInteger(spellTable, GetHandleId(t), 1, 20)
		call SaveReal(spellTable, GetHandleId(t), 2, facing)
		call TimerStart(t, 0.05, true, function Kaisa__ChongzhuangTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Kaisa__PeriodicCreateNiutou takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, GetHandleId(t), 1)
  local unit temp= null
  local real x= 0.0
  local real y= 0.0
	    if ( IsUnitAliveBJ(u) ) then
	    	set x=(RMinBJ(RMaxBJ(((GetUnitX(u) + GetRandomReal(- 600.0, 600.0))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
	    	set y=(RMinBJ(RMaxBJ(((GetUnitY(u) + GetRandomReal(- 600.0, 600.0))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
	    	set temp=CreateUnit(GetOwningPlayer(u), 'h02R', x, y, 0)
			call DestroyEffect(AddSpecialEffect("war3mapImported\\LionSong.mdx", GetUnitX(u), GetUnitY(u)))
	    	call UnitApplyTimedLifeBJ(5.00, 'BHwe', temp)
	    else
	        call PauseTimer(t)
	        call FlushChildHashtable(spellTable, id)
	        call DestroyTimer(t)
	    endif
	    set temp=null
	    set t=null
	endfunction

 function Kaisa__TimerCreateNiutou takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(spellTable, GetHandleId(t), 1, u)
		call TimerStart(t, 5, true, function Kaisa__PeriodicCreateNiutou)
		set t=null
	endfunction

 function Tuteng takes nothing returns nothing
  local unit u= null
		if ( BFanzhuanKS and IsFifthSpellOK(kaisa) and GetUnitAbilityLevel(kaisa, 'A0NO') == 1 ) then
			if ( CountUnitsInGroup(Kaisa__GTuteng) > 3 ) then
				set u=FirstOfGroup(Kaisa__GTuteng)
				call DestroyEffect(AddSpecialEffect("war3mapImported\\LionSong.mdx", GetUnitX(u), GetUnitY(u)))
				call GroupRemoveUnit(Kaisa__GTuteng, u)
				call RemoveUnit(u)
			endif
			set u=CreateUnit(GetOwningPlayer(kaisa), 'h02S', GetUnitX(kaisa), GetUnitY(kaisa), 0)
			call DestroyEffect(AddSpecialEffect("war3mapImported\\LionSong.mdx", GetUnitX(u), GetUnitY(u)))
			call GroupAddUnit(Kaisa__GTuteng, u)
			call Kaisa__TimerCreateNiutou(u)
	    	call PrintSpellContent((GetOwningPlayer(kaisa) ) , ( GetAbilityName('A0NO')) , "") // INLINED!!
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CountKaisa takes unit u returns nothing
		if not ( (GetBit(spin2[GetConvertedPlayerId((GetOwningPlayer(kaisa)))] , 2) > 0) ) then // INLINED!!
			if not ( IsUnitAliveBJ(u) ) then
				set Kaisa__INiuSpinCount=Kaisa__INiuSpinCount + 1
				if ( ModuloInteger(Kaisa__INiuSpinCount, 100) == 0 ) then
					call DisplayTextToPlayer(GetOwningPlayer(kaisa), 0., 0., "ã|cFF6699FFçæ¥çä¸|rãå®æè¿åº¦" + I2S(Kaisa__INiuSpinCount) + "/2500.")
				endif
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function KaisaSanjiejuxing takes nothing returns nothing
		if ( BJuexing3[GetConvertedPlayerId(GetOwningPlayer(kaisa))] ) then
			call SetUnitManaPercentBJ(kaisa, 100)
			call ImmuteDamageInterval(kaisa , 3)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(seyu), GetUnitY(seyu)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Kaisa__Lianxueyiji takes nothing returns nothing
  local unit target= GetSpellTargetUnit()
     local real facing= Atan2BJ(GetUnitY(target) - GetUnitY(kaisa), GetUnitX(target) - GetUnitX(kaisa))
  local real damage= ( GetUnitState(kaisa, UNIT_STATE_LIFE) / 500.0 ) * SquareRoot(I2R(GetHeroLevel(kaisa))) * GetUnitState(kaisa, UNIT_STATE_MANA)
     local integer i= 1
	    call PrintSpellAdd((GetOwningPlayer(kaisa) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( damage)*1.0) , "") // INLINED!!
	    loop
	    	exitwhen i > 6
       		call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", (RMinBJ(RMaxBJ(((GetUnitX(kaisa) + 300.00 * I2R(i) * CosBJ(facing))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(kaisa) + 300.00 * I2R(i) * SinBJ(facing))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
	    	set i=i + 1
	    endloop
	    call UnitDamageTarget(kaisa, target, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	    call SetUnitManaPercentBJ(kaisa, 1)
	    call SetUnitLifePercentBJ(kaisa, 1)
	    set target=null
	endfunction

//---------------------------------------------------------------------------------------------------
	

 function Kaisa__TSpellKaisaAct takes nothing returns nothing
		if ( GetSpellAbilityId() == 'AOhx' ) then
			call Kaisa__Lianxueyiji()
		elseif ( GetSpellAbilityId() == 'A0NR' ) then
			call Tiandiliebian()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitFanzhuanKaisa takes nothing returns nothing
		call UnitAddAbility(kaisa, 'A0NM')
		call SetPlayerAbilityAvailable(GetOwningPlayer(kaisa), 'A0NM', false)
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r" + GetPlayerName(GetOwningPlayer(kaisa)) + "ååäºè±é|cffff0000å¯æ|rçæè½å½¢æ!")
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r" + GetPlayerName(GetOwningPlayer(kaisa)) + "ååäºè±é|cffff0000å¯æ|rçæè½å½¢æ!")
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r" + GetPlayerName(GetOwningPlayer(kaisa)) + "ååäºè±é|cffff0000å¯æ|rçæè½å½¢æ!")
		call BJDebugMsg("|cFFFF66CCãæ¶æ¯ã|r" + GetPlayerName(GetOwningPlayer(kaisa)) + "ååäºè±é|cffff0000å¯æ|rçæè½å½¢æ!")
		set BFanzhuanKS=true
		call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 0, 0, 0)
		call PlaySoundBJ(gg_snd_fanzhuan)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Kaisa__InitKaisaSpin takes unit u returns unit
		if ( IsKaisaSpin1(GetOwningPlayer(u)) ) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]=CreateUnit(GetOwningPlayer(u), 'O002', GetUnitX(u), GetUnitY(u), 0)
			set gg_unit_Ocbh_0251=udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], 1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitKaisa takes unit u returns nothing
		set kaisa=Kaisa__InitKaisaSpin(u)

		//ä¸»è±éæè½
		set Kaisa__TSpellKaisa=CreateTrigger()
	    call TriggerRegisterUnitEvent(Kaisa__TSpellKaisa, kaisa, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Kaisa__TSpellKaisa, function Kaisa__TSpellKaisaAct)

		call TriggerRegisterUnitEvent(gg_trg_____________7, kaisa, EVENT_UNIT_DAMAGED)

	    	call CreateFanzhuanItem(kaisa)
	endfunction


//library Kaisa ends

// BEGIN IMPORT OF Kaisa.j


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
// BEGIN IMPORT OF PIVInterface.j
// END IMPORT OF PIVInterface.j


// END IMPORT OF LHBase.j

 
// END IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// BEGIN IMPORT OF Spin.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF NetVersion.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Diffculty.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF ChallangerMode.j
// IGNORE DOUBLE IMPORT OF LHBase.j
/////! import "Huodong.j"
// BEGIN IMPORT OF ChallangerDZ.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF ChallangerDZ.j
// BEGIN IMPORT OF Mirror.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j

// END IMPORT OF Mirror.j

// END IMPORT OF ChallangerMode.j
/////! import "Kuanghuan.j"
/////! import "Huodong.j"
// END IMPORT OF Diffculty.j
// BEGIN IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF ChallangerDZ.j

// END IMPORT OF Achievement.j
// BEGIN IMPORT OF Huodong.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j

// END IMPORT OF Huodong.j
// BEGIN IMPORT OF Continous.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF item.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Diffculty.j
// END IMPORT OF item.j
// IGNORE DOUBLE IMPORT OF Huodong.j
// IGNORE DOUBLE IMPORT OF Achievement.j
/////! import "Jizi.j"

// END IMPORT OF Continous.j
// BEGIN IMPORT OF Jizi.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF ChallangerDZ.j
// IGNORE DOUBLE IMPORT OF Attr.j
// BEGIN IMPORT OF Structs.j
// IGNORE DOUBLE IMPORT OF LHBase.j




// END IMPORT OF Structs.j



// END IMPORT OF Jizi.j
// BEGIN IMPORT OF Qixi.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j


// END IMPORT OF Qixi.j
// BEGIN IMPORT OF Fanzhuan.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j

// END IMPORT OF Fanzhuan.j

// END IMPORT OF NetVersion.j

// END IMPORT OF Spin.j

// END IMPORT OF Kaisa.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs121974531")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Attr__InitAttr")
call ExecuteFunc("Printer__InitPrinter")
call ExecuteFunc("ItemBase__InitItemBase")
call ExecuteFunc("Continous__InitContinous")
call ExecuteFunc("InitVersion")

endfunction




//Struct method generated initializers/callers:
function sa__OnlyAttackBase__staticgetindex takes nothing returns boolean
local handle h=f__arg_handle1
set f__result_integer= (LoadInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId((h)))))))) // INLINED!!
   return true
endfunction
function sa__OnlyAttackBase_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call RemoveSavedInteger(YDHT, StringHash(("SpellBase" )), StringHash(( I2S((GetHandleId(((s__OnlyAttackBase_t[this])))))))) // INLINED!!
			set s__OnlyAttackBase_u[this]=null
			call PauseTimer(s__OnlyAttackBase_t[this])
			call DestroyTimer(s__OnlyAttackBase_t[this])
			set s__OnlyAttackBase_t[this]=null
   return true
endfunction
function sa__JudgeInvu_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call FlushChildHashtable(LHTable, GetHandleId(s__JudgeInvu_t[this]))
			set s__JudgeInvu_u[this]=null
			call PauseTimer(s__JudgeInvu_t[this])
			call DestroyTimer(s__JudgeInvu_t[this])
			set s__JudgeInvu_t[this]=null
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
function sa__Questions_onDestroy takes nothing returns boolean
local integer this=f__arg_this
			call PauseTimer(s__Questions_t[this])
			call DestroyTimer(s__Questions_t[this])
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_t[this]))
			set s__Questions_t[this]=null
			set s__Questions_time[this]=0
			set s__Questions_rightPos[this]=0
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_click[this]))
			call FlushChildHashtable(LHTable, GetHandleId(s__Questions_d[this]))
			call DestroyTrigger(s__Questions_click[this])
	    	call DialogDisplay(s__Questions_p[this], s__Questions_d[this], false)
	        call DialogClear(s__Questions_d[this])
	        call DialogDestroy(s__Questions_d[this])
			set s__Questions_click[this]=null
			set s__Questions_p[this]=null
			set s__Questions_question[this]=null
			set s__Questions_d[this]=null
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
function sa___prototype228_Jizi__AfterMoneyBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		call AddMoneyPercent(GetConvertedPlayerId(p) , - 1.0)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾çéé±æ¶é´å°äº.")
    return true
endfunction
function sa___prototype228_Jizi__AfterSpellBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		call AddSpellPercent(GetConvertedPlayerId(p) , - 0.5)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾çæè½ä¼¤å®³æ¶é´å°äº.")
    return true
endfunction
function sa___prototype228_Jizi__AfterReviveBuffTime takes nothing returns boolean
 local player p=f__arg_player1

		set B3SecondRevive[GetConvertedPlayerId(p)]=false
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CCãæ¶æ¯ã|ræé¥¼ç»ä½ æä¾ç3ç§å¤æ´»æ¶é´å°äº.")
    return true
endfunction
function sa___prototype38_CreateCDialog2 takes nothing returns boolean

     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
     local integer i= 1
	    if ( CDiff == 1 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(ç®å)")
	    elseif ( CDiff == 2 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(ä¸­ç­)")
	    elseif ( CDiff == 3 ) then
	    	call DialogSetMessage(d, "éæ©ææç±»å«(å°é¾)")
	    endif
	    call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetChallangerTitle(7) + S3(IsChallangerComplete(GetFirstPlayer() , 7) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
	    loop
	    	exitwhen i > 6
		    call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer() , i) , "|cffff9900(å·²å®æ)|r" , "|cff33cccc(æªå®æ)|r")))
	    	set i=i + 1
	    endloop
    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "è¿å|cffff6800(Esc)|r", 512))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseChallangerClick)
	    set d=null
	    set t=null
    return true
endfunction
function sa___prototype38_CreateCDialog1 takes nothing returns boolean

     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
	    call DialogSetMessage(d, "éæ©ææé¾åº¦")
	    if ( false ) then
		    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç®å(" + I2S(GetEasyComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "ä¸­ç­(" + I2S(GetMiddleComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "å°é¾(" + I2S(GetHardComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		else
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "ç®å"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "ä¸­ç­"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "å°é¾"))
	    endif
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode__ChooseDifficultyClick)
	    set d=null
	    set t=null
    return true
endfunction

function jasshelper__initstructs121974531 takes nothing returns nothing
    set st__OnlyAttackBase__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__OnlyAttackBase__staticgetindex,Condition( function sa__OnlyAttackBase__staticgetindex))
    set st__OnlyAttackBase_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__OnlyAttackBase_onDestroy,Condition( function sa__OnlyAttackBase_onDestroy))
    set st__JudgeInvu_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__JudgeInvu_onDestroy,Condition( function sa__JudgeInvu_onDestroy))
    set st__Buff__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Buff__staticgetindex,Condition( function sa__Buff__staticgetindex))
    set st__Buff_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Buff_onDestroy,Condition( function sa__Buff_onDestroy))
    set st__TextTagBind__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__TextTagBind__staticgetindex,Condition( function sa__TextTagBind__staticgetindex))
    set st__TextTagBind_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__TextTagBind_onDestroy,Condition( function sa__TextTagBind_onDestroy))
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
    set st__Questions_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Questions_onDestroy,Condition( function sa__Questions_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__Connect__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Connect__staticgetindex,Condition( function sa__Connect__staticgetindex))
    set st__Connect_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Connect_onDestroy,Condition( function sa__Connect_onDestroy))
    set st___prototype228[1]=CreateTrigger()
    call TriggerAddAction(st___prototype228[1],function sa___prototype228_Jizi__AfterMoneyBuffTime)
    call TriggerAddCondition(st___prototype228[1],Condition(function sa___prototype228_Jizi__AfterMoneyBuffTime))
    set st___prototype228[2]=CreateTrigger()
    call TriggerAddAction(st___prototype228[2],function sa___prototype228_Jizi__AfterSpellBuffTime)
    call TriggerAddCondition(st___prototype228[2],Condition(function sa___prototype228_Jizi__AfterSpellBuffTime))
    set st___prototype228[3]=CreateTrigger()
    call TriggerAddAction(st___prototype228[3],function sa___prototype228_Jizi__AfterReviveBuffTime)
    call TriggerAddCondition(st___prototype228[3],Condition(function sa___prototype228_Jizi__AfterReviveBuffTime))
    set st___prototype38[1]=CreateTrigger()
    call TriggerAddAction(st___prototype38[1],function sa___prototype38_CreateCDialog2)
    call TriggerAddCondition(st___prototype38[1],Condition(function sa___prototype38_CreateCDialog2))
    set st___prototype38[2]=CreateTrigger()
    call TriggerAddAction(st___prototype38[2],function sa___prototype38_CreateCDialog1)
    call TriggerAddCondition(st___prototype38[2],Condition(function sa___prototype38_CreateCDialog1))
















endfunction

