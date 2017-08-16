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
	
    //刷新战斗力
trigger gg_trg_zhandouli2
    //复活
location udg_Point_Fuhuo
	//主基地的区域
rect gg_rct________1
	//难度等级，最高7
integer udg_Nandu_JJJ
integer udg_Nandu
    //技能触发
trigger gg_trg_____________71
trigger gg_trg_______21
        //基地总区域
rect gg_rct__________u
        //杀阵
unit gg_unit_h00K_0254
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
leaderboard array udg_Paihang
        //基地
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
        //七星
unit array udg_Unit_Qixing

        //辰寂剑灵判断
trigger gg_trg_____________127
trigger gg_trg_____________129
        //狼
unit array udg_Lang
        //湮灭
trigger gg_trg_____________3

        //经验
real array udg_I_Jingyan
boolean array udg_T1

        //混沌专区
rect gg_rct_Hundun

        //出怪
rect gg_rct________6
rect gg_rct________3

        //计时器
timer udg_Time_BOSS
timerdialog udg_Timer_BOSS

        //小游戏场地
rect gg_rct_Game1
unit gg_unit_n01Q_0273

        //声音
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

        //传承区域
rect gg_rct_Chuangcheng

        //战斗力
integer array udg_Zhandouli

        //光环
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
        //是否变色
timer array TBianse

        //是否正在禁用天赋
boolean BTianfu= false

boolean array BYeguaiFirst

        //是否显示伤害
boolean array BHideDamage

        //是否可以跳关
boolean BSkipKuilei= false

        //英雄死了
boolean array BHeroDeath
//endglobals from LHBase
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
constant integer kUImmuteDamage=8
//endglobals from SpellBase
//globals from Aura:
constant boolean LIBRARY_Aura=true
integer array Aura__YKillCount
trigger Aura__TSpellYanmie3= null
trigger Aura__TSpellMengji3= null

		
boolean array Aura__shunHints

//endglobals from Aura
//globals from Xiaoting:
constant boolean LIBRARY_Xiaoting=true
		
trigger Xiaoting__TSpellXiaoting= null
trigger Xiaoting__TAttackXT= null
		
real Xiaoting__RDamageXiaoting= 0.

		
integer Xiaoting__ISpellState= 0
		
real ICombo= 0

		
texttag Xiaoting__TTCombo= null

		
integer Xiaoting__IMaxCombo= 0
timer Xiaoting__TArrow= null
unit array Xiaoting__UArrow
group array Xiaoting__GArrow
		//整秒读数
integer Xiaoting__IZhengmiao= 0
		//反弹读秒
integer Xiaoting__IFantan= 0
		//绝焱读秒
integer Xiaoting__IJueyan= 0
		//静止布尔
boolean Xiaoting__BJingzhi= false
		//御箭
boolean Xiaoting__BYujian= false
		//穿刺
boolean Xiaoting__BChuanci= false
		//Combo判断
		
timer Xiaoting__TComboAdd= null
integer Xiaoting__IAdd= 0

		//两个科技(前者射出,后者未射出)
unit Xiaoting__UJianKeji1= null
unit Xiaoting__UJianKeji2= null

			
real Xiaoting__RAddtion= 0.


		//攻击保留特效
effect Xiaoting__EAttackXT= null
integer Xiaoting__IAttackAdd= 0
integer Xiaoting__ITimeAttackadd= 0

		//
//endglobals from Xiaoting
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
		return "3.322"
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
			return "开局在第一波前输入-tz1进入挑战1,完成并通关.\n			该挑战下英雄攻击速度极慢,移动速度-10000000%.\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif ( achieveID == 411 ) then
			return "开局在第一波前输入-tz2进入挑战2,完成并通关.\n			该挑战下英雄获得金钱为1%,英雄每秒减少10%的生命.(13波开始每秒减少30%的生命)\n			\n			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!\n			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
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
				return "|cffff66cc赤血白燕|r"
			elseif ( i == 2 ) then
				return "|cff99ccff月轮绯狱|r"
			elseif ( i == 3 ) then
				return "|cFFFF0000殛霆无迹|r"
			elseif ( i == 4 ) then
				return "|cFF33FF33末日权杖|r"
			elseif ( i == 5 ) then
				return "|cFFFF3333霜夜之哀|r"
			elseif ( i == 6 ) then
				return "|cFFCCFF66三弦星谧|r"
			elseif ( i == 7 ) then
				return "|cFF3333FF獠牙之匕|r"
			elseif ( i == 8 ) then
				return "|cFFFF3333双流贯恒|r"
			elseif ( i == 9 ) then
				return "|cFF339933沐雪无瑕|r"
			endif
		elseif ( page == 2 ) then
			if ( i == 1 ) then
				return "|cFF6699FF熔日煌世|r"
			elseif ( i == 2 ) then
				return "|cFFFF00CC星界麒麟|r"
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
				return "嘉年华活动中连续签到满10天.\n\n				完成该项挑战后你将获得辰寂的皮肤\"|cFFFF3333双流贯恒|r\"(拥有少量的属性加成)!"
			elseif ( i == 9 ) then
				return "在8月20号前成功击败六界傀儡.\n\n				完成该项挑战后你将获得凌雪的皮肤\"|cFF339933沐雪无瑕|r\"(拥有少量的属性加成)!"
			endif
		elseif ( page == 2 ) then
			if ( i == 1 ) then
				return "使用凯撒在一局游戏中只靠|cffff6800忠诚之躯|r技能杀死攻击基地的敌人2500个.\n\n				完成该项挑战后你将获得凯撒的皮肤\"|cFF6699FF熔日煌世|r\"(拥有少量的属性加成)!"
			elseif ( i == 2 ) then
				return "使用莫琪在使用|cffffcc00裁决|r技能时的施法角度在89.9-90.1度之内.\n						(换句话说即为完全垂直向上射)\n				完成该项挑战后你将获得莫琪的皮肤\"|cFFFF00CC星界麒麟|r\"(拥有少量的属性加成)!"
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
		set Constant__WPointer=Constant__WPointer - 1
		if ( Constant__WPointer <= 0 ) then
			set Constant__WPointer=COUNT_WANJIE
		endif

		if ( Constant__WPointer == 1 ) then
			return "八零大叔"
		elseif ( Constant__WPointer == 2 ) then
			return "Wqnmmp丶"
		elseif ( Constant__WPointer == 3 ) then
			return "满地打滚的猫猫"
		elseif ( Constant__WPointer == 4 ) then
			return "暗夜魔王丶诺爹"
		elseif ( Constant__WPointer == 5 ) then
			return "俏公子"
		elseif ( Constant__WPointer == 6 ) then
			return "猫儿丶"
		elseif ( Constant__WPointer == 7 ) then
			return "你把我灌醉。"
		elseif ( Constant__WPointer == 8 ) then
			return "心亦"
		elseif ( Constant__WPointer == 9 ) then
			return "灵魂的缠绵"
		elseif ( Constant__WPointer == 10 ) then
			return "幻、神"
		elseif ( Constant__WPointer == 11 ) then
			return "枫落秋扬"
		elseif ( Constant__WPointer == 12 ) then
			return "深邃的孤独丶"
		elseif ( Constant__WPointer == 13 ) then
			return "雷瑟守备最强王者"
		elseif ( Constant__WPointer == 14 ) then
			return "你的牛奶呢丶"
		elseif ( Constant__WPointer == 15 ) then
			return "浪逼康小帅"
		elseif ( Constant__WPointer == 16 ) then
			return "浪逼郭小癞"
		elseif ( Constant__WPointer == 17 ) then
			return "糖糖不在甜"
		elseif ( Constant__WPointer == 18 ) then
			return "那天1234"
		elseif ( Constant__WPointer == 19 ) then
			return "无缘之邪"
		elseif ( Constant__WPointer == 20 ) then
			return "Flower丶God"
		elseif ( Constant__WPointer == 21 ) then
			return "与你童在"
		elseif ( Constant__WPointer == 22 ) then
			return "话唠。"
		elseif ( Constant__WPointer == 23 ) then
			return "很烦很皮"
		elseif ( Constant__WPointer == 24 ) then
			return "sky"
		elseif ( Constant__WPointer == 25 ) then
			return "梦露丶baby"
		elseif ( Constant__WPointer == 26 ) then
			return "丶念少。"
		elseif ( Constant__WPointer == 27 ) then
			return "造世财"
		elseif ( Constant__WPointer == 28 ) then
			return "0万物皆空0"
		elseif ( Constant__WPointer == 29 ) then
			return "辉煌丶神偷"
		elseif ( Constant__WPointer == 30 ) then
			return "我真的是你老子"
		elseif ( Constant__WPointer == 31 ) then
			return "逸灬仙"
		elseif ( Constant__WPointer == 32 ) then
			return "沐情"
		elseif ( Constant__WPointer == 33 ) then
			return "星辰末日"
		elseif ( Constant__WPointer == 34 ) then
			return "神天羽"
		elseif ( Constant__WPointer == 35 ) then
			return "墙头蹲红杏"
		elseif ( Constant__WPointer == 36 ) then
			return "7葡萄"
		elseif ( Constant__WPointer == 37 ) then
			return "我鸡鸡贼大"
		elseif ( Constant__WPointer == 38 ) then
			return "1 1"
		elseif ( Constant__WPointer == 39 ) then
			return "枫烨桦"
		elseif ( Constant__WPointer == 40 ) then
			return "夕子奈月"
		elseif ( Constant__WPointer == 41 ) then
			return "司宸"
		elseif ( Constant__WPointer == 42 ) then
			return "Ma—LePYe"
		elseif ( Constant__WPointer == 43 ) then
			return "one丶lifeの爱"
		elseif ( Constant__WPointer == 44 ) then
			return "树林里故事"
		elseif ( Constant__WPointer == 45 ) then
			return "请带着我飞"
		elseif ( Constant__WPointer == 46 ) then
			return "心雪"
		elseif ( Constant__WPointer == 47 ) then
			return "Rascal丶恋情"
		elseif ( Constant__WPointer == 48 ) then
			return "阴优"
		elseif ( Constant__WPointer == 49 ) then
			return "至简i"
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
        call DialogAddButton(d, "我知道了|cffff6800(Esc)|r", 512)
        call DialogDisplay(p, d, true)
        set d=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    
    function ChooseSpinHero takes player p,unit u returns nothing
        call ShowGameHint(p , "该英雄是" + GetUnitName(u) + "英雄的皮肤" + GetHeroProperName(u) + "。\n        使用英雄" + GetUnitName(u) + "完成对应的英雄挑战即可获取该皮肤。\n        前往基地左边商店处可以查看该挑战的详细内容。")
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

 function Attr__InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library Printer:

	

//---------------------------------------------------------------------------------------------------
	

 function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
		if ( BHideDamage[GetConvertedPlayerId(whichPlayer)] ) then
			return
		endif
		if ( damage > 10000 ) then
	    	call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r伤害加成" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage / 10000)) + "万" + addtional + "." ) ) ))
	    else
	    	call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r伤害加成" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage)) + addtional + "." ) ) ))
		endif
	endfunction

 function PrintSpell takes player whichPlayer,string spellName,real damage returns nothing
		call PrintSpellAdd(whichPlayer , spellName , damage , "")
	endfunction
	
 function PrintSpellContent takes player whichPlayer,string spellName,string content returns nothing
		if ( BHideDamage[GetConvertedPlayerId(whichPlayer)] ) then
			return
		endif
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r" + content ))
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
				call SetTextTagTextBJ(s__MultiLife_ttHint[this], I2S(s__MultiLife_current[this]) + "/" + I2S(s__MultiLife_times[this]) + "次生命", 20)
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
			set s__MultiLife_ttHint[this]=CreateTextTagUnitBJ("1/" + I2S(times) + "次生命", caster, 0, 20, 0, 100, 100, 0)
			set s__MultiLife_current[this]=1
			//加上复活技能
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
		    		call CreateTextTagA((I2S(s__SuperShield_current[this]) + "/" + I2S(s__SuperShield_times[this]) + "段无敌" ) , ( s__SuperShield_caster[this] ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
		call UnitAddAbility(gg_unit_n01S_0258, 'A0JU')
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitYanmieAura takes nothing returns nothing
		set Aura__TSpellYanmie3=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(Aura__TSpellYanmie3, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(Aura__TSpellYanmie3, Condition(function Aura__TSpellYanmie3Con))
		call TriggerAddAction(Aura__TSpellYanmie3, function Aura__TSpellYanmie3Act)
		//湮灭新光环Todo
		call UnitAddAbility(gg_unit_n01S_0258, 'A0HF')
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		endfunction
//---------------------------------------------------------------------------------------------------
	
 function Aura__SanchuanShunTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer playerID= LoadInteger(spellTable, GetHandleId(t), 1)
		if not ( Aura__shunHints[playerID] ) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66cc【消息】|r你已获得来自|cffffff00阴阳三川箭|r光环的效果,|cffffcc00使用M键可以瞬移至任意地点|r,冷却2.5s.")
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
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达.")
	        return
		endif
	    if ( IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY) ) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,瞬移失败！")
	    	return
	    endif
		set Aura__shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=true
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
		call SetUnitX(GetTriggerUnit(), GetOrderPointX())
		call SetUnitY(GetTriggerUnit(), GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetOrderPointX(), GetOrderPointY()))
		call PolledWait(2.5)
		set Aura__shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=false

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
		
	    //英雄第三个技能瞬移事件
	    set Aura__TSpellMengji3=CreateTrigger()
	    call TriggerAddCondition(Aura__TSpellMengji3, Condition(function Aura__TSpellMengji3Con))
	    call TriggerAddAction(Aura__TSpellMengji3, function Aura__TSpellMengji3Act)
		call UnitAddAbility(gg_unit_n01S_0258, 'A0EL')
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
//library Xiaoting:
	


//---------------------------------------------------------------------------------------------------
	
    function Xiaoting__TAttackXTCon takes nothing returns boolean
    	return GetAttacker() == xiaoting
    endfunction
    
    function Xiaoting__TAttackXTAct takes nothing returns nothing
     local integer attack= IMinBJ(500000000, Xiaoting__IAttackAdd + GetHeroAgi(xiaoting, true) / 4)
    	if ( Xiaoting__EAttackXT == null ) then
			set Xiaoting__EAttackXT=AddSpecialEffectTargetUnitBJ("overhead", xiaoting, "Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl")
    	endif
    	call AddAttack(xiaoting , attack - Xiaoting__IAttackAdd)
    	set Xiaoting__IAttackAdd=attack
    	set Xiaoting__ITimeAttackadd=5
    endfunction

    //时间减少
    function Xiaoting__AttackTimeReduce takes nothing returns nothing
    	set Xiaoting__ITimeAttackadd=IMaxBJ(0, Xiaoting__ITimeAttackadd - 1)
    	if ( Xiaoting__ITimeAttackadd == 0 and Xiaoting__EAttackXT != null ) then
    		call DestroyEffect(Xiaoting__EAttackXT)
    		set Xiaoting__EAttackXT=null
	    	call AddAttack(xiaoting , 0 - Xiaoting__IAttackAdd)
	    	set Xiaoting__IAttackAdd=0
    	endif
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__GetComboMulti takes nothing returns integer

		if not ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((xiaoting))) == 1) and GetUnitAbilityLevel(xiaoting, 'A0LZ') == 1 ) then // INLINED!!
			return 1
		endif

		if ( ICombo > 1000 ) then
			return 4
		elseif ( ICombo > 100 ) then
			return 3
		elseif ( ICombo > 10 ) then
			return 2
		else
			return 1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageXiaoting takes unit u returns boolean
		//绝焱
		if ( GetUnitTypeId(u) == 'h022' ) then
			call UnitDamageTarget(xiaoting, GetTriggerUnit(), Xiaoting__RDamageXiaoting * 0.3 * Xiaoting__GetComboMulti(), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__SetShe1Tech takes nothing returns nothing
		if ( Xiaoting__UJianKeji2 != null ) then
			call RemoveUnit(Xiaoting__UJianKeji2)
			set Xiaoting__UJianKeji2=null
		endif
		if ( Xiaoting__UJianKeji1 == null ) then
			set Xiaoting__UJianKeji1=CreateUnit(GetOwningPlayer(xiaoting), 'h01Z', 0, 0, 0)
			call ShowUnitHide(Xiaoting__UJianKeji1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__SetShe2Tech takes nothing returns nothing
		if ( Xiaoting__UJianKeji1 != null ) then
			call RemoveUnit(Xiaoting__UJianKeji1)
			set Xiaoting__UJianKeji1=null
		endif
		if ( Xiaoting__UJianKeji2 == null ) then
			set Xiaoting__UJianKeji2=CreateUnit(GetOwningPlayer(xiaoting), 'h020', 0, 0, 0)
			call ShowUnitHide(Xiaoting__UJianKeji2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__ClearRestArrow takes integer start returns nothing
  local integer i= start
		loop
			exitwhen i > 16
			if ( Xiaoting__UArrow[i] != null ) then
				call RemoveUnit(Xiaoting__UArrow[i])
				set Xiaoting__UArrow[i]=null
				call DestroyGroup(Xiaoting__GArrow[i])
				set Xiaoting__GArrow[i]=null
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__ClearAllArrow takes nothing returns nothing
		call PauseTimer(Xiaoting__TArrow)
		call DestroyTimer(Xiaoting__TArrow)
		set Xiaoting__IZhengmiao=0
		set Xiaoting__TArrow=null
		call Xiaoting__ClearRestArrow(1)
		set Xiaoting__IFantan=0
		set Xiaoting__IJueyan=0
		set Xiaoting__BJingzhi=false
		set Xiaoting__BYujian=false
		call Xiaoting__SetShe1Tech()
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__CreateJueyan takes unit u returns nothing
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h022', GetUnitX(u), GetUnitY(u), 0)
		call UnitApplyTimedLifeBJ(3.00, 'BHwe', temp)
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__FantanFilter takes nothing returns boolean
		return GetUnitTypeId(GetFilterUnit()) == 'hwtw' or GetUnitTypeId(GetFilterUnit()) == 'h021'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__ChangeFacing takes integer i,real facing returns nothing
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h024', GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i]), facing)
		call RemoveUnit(Xiaoting__UArrow[i])
		set Xiaoting__UArrow[i]=temp
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__FlashArrowMove takes integer index returns nothing
  local real x= GetUnitX(Xiaoting__UArrow[index])
  local real y= GetUnitY(Xiaoting__UArrow[index])
        local real xp= x + 100. * CosBJ(GetUnitFacing(Xiaoting__UArrow[index]))
        local real yp= y + 100. * SinBJ(GetUnitFacing(Xiaoting__UArrow[index]))
        local group l_group= null
        local unit l_unit
        local integer times= Xiaoting__GetComboMulti()
        local real radius= 300
        local integer IBing= 0

        //如果英雄死亡则清除
        if ( BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(xiaoting))] ) then
        	call Xiaoting__ClearAllArrow()
        	return
        endif
        //御箭
        if ( Xiaoting__BYujian and index == 1 ) then
    		call RecoverUnitHP(xiaoting , 0.1)
        	call SetUnitManaPercentBJ(xiaoting, 100)
        	call SetUnitX(xiaoting, GetUnitX(Xiaoting__UArrow[1]))
        	call SetUnitY(xiaoting, GetUnitY(Xiaoting__UArrow[1]))
        endif

        //绝焱
        if ( Xiaoting__IJueyan > 0 ) then
        	if ( ModuloInteger(Xiaoting__IZhengmiao, 3) == 0 ) then
        		call Xiaoting__CreateJueyan(Xiaoting__UArrow[index])
        	endif
        endif

        if ( Xiaoting__BJingzhi ) then
        	if ( Xiaoting__IZhengmiao == 1 ) then
        		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", GetUnitX(Xiaoting__UArrow[index]), GetUnitY(Xiaoting__UArrow[index])))
        	endif
        	return
        endif

        set l_group=CreateGroup()
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit=FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if ( IsEnemy(l_unit , xiaoting) and not ( IsUnitInGroup(l_unit, Xiaoting__GArrow[index]) ) ) then
            	call UnitDamageTarget(xiaoting, l_unit, Xiaoting__RDamageXiaoting, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
            	call GroupAddUnit(Xiaoting__GArrow[index], l_unit)
            	if ( Xiaoting__BChuanci ) then
	            	call UnitDamageTarget(xiaoting, l_unit, Xiaoting__RDamageXiaoting * 2.5 * ( 0.5 * ( times + 1 ) ), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	            	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
	            	set Xiaoting__BChuanci=false
            	endif
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group=null
        set l_unit=null

        set l_group=CreateGroup()
        call GroupEnumUnitsInRange(l_group, xp, yp, 100, Condition(function Xiaoting__FantanFilter))
        set IBing=I3(CountUnitsInGroup(l_group) > 0 , GetUnitUserData(FirstOfGroup(l_group)) , 0)
        call DestroyGroup(l_group)
        set l_group=null

        //反弹与静滞
    	if ( IsTerrainPathable(xp, yp, PATHING_TYPE_WALKABILITY) or IBing != 0 ) then
    		if ( xp > yd_MapMaxX or xp < yd_MapMinX ) then
					call Xiaoting__ChangeFacing(index , 180 - GetUnitFacing(Xiaoting__UArrow[index]))
        			return
        	elseif ( yp > yd_MapMaxY or yp < yd_MapMinY ) then
					call Xiaoting__ChangeFacing(index , - GetUnitFacing(Xiaoting__UArrow[index]))
        			return
    		endif

	        if ( Xiaoting__IFantan > 0 ) then
        		if ( IBing != 0 ) then
        			call GroupClear(Xiaoting__GArrow[index])
					call Xiaoting__ChangeFacing(index , R3(IBing >= 1000 , 180 + GetUnitFacing(Xiaoting__UArrow[index]) , 2 * IBing - GetUnitFacing(Xiaoting__UArrow[index])))
					return
        		endif
        		if not ( IsTerrainPathable(xp, y, PATHING_TYPE_WALKABILITY) ) then
        			call GroupClear(Xiaoting__GArrow[index])
					call Xiaoting__ChangeFacing(index , - GetUnitFacing(Xiaoting__UArrow[index]))
        		elseif not ( IsTerrainPathable(x, yp, PATHING_TYPE_WALKABILITY) ) then
        			call GroupClear(Xiaoting__GArrow[index])
					call Xiaoting__ChangeFacing(index , 180 - GetUnitFacing(Xiaoting__UArrow[index]))
        		elseif not ( IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY) ) then
					call Xiaoting__ChangeFacing(index , 180 + GetUnitFacing(Xiaoting__UArrow[index]))
        			call GroupClear(Xiaoting__GArrow[index])
        		else
		        	call SetUnitX(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
		        	call SetUnitY(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
        		endif
        	else
	        	call SetUnitX(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
	        	call SetUnitY(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
			endif
    	else
        	call SetUnitX(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((xp)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
        	call SetUnitY(Xiaoting__UArrow[index], (RMinBJ(RMaxBJ(((yp)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
    	endif

	endfunction

 function Xiaoting__FlashArrowMoveTimer takes nothing returns nothing
  local integer i= 1

		set Xiaoting__IZhengmiao=I3(Xiaoting__IZhengmiao >= 20 , 1 , Xiaoting__IZhengmiao + 1)
		if ( Xiaoting__IZhengmiao == 1 ) then
			set Xiaoting__IFantan=I3(Xiaoting__IFantan > 0 , Xiaoting__IFantan - 1 , 0)
			set Xiaoting__IJueyan=I3(Xiaoting__IJueyan > 0 , Xiaoting__IJueyan - 1 , 0)
		endif
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
				call Xiaoting__FlashArrowMove(i)
			endif
			set i=i + 1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Guanhongjian takes real x,real y,real facing,boolean spellID returns nothing
  local integer i= 1
		call Xiaoting__SetShe2Tech()
		if ( spellID ) then
	    	call PrintSpellAdd((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( Xiaoting__RDamageXiaoting * Xiaoting__GetComboMulti())*1.0) , "") // INLINED!!
		endif
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] == null ) then
				set Xiaoting__UArrow[i]=CreateUnit(GetOwningPlayer(xiaoting), 'h024', x, y, facing)
				if ( Xiaoting__TArrow == null ) then
					set Xiaoting__TArrow=CreateTimer()
					set Xiaoting__IZhengmiao=1
					call TimerStart(Xiaoting__TArrow, 0.05, true, function Xiaoting__FlashArrowMoveTimer)
				endif
				set Xiaoting__GArrow[i]=CreateGroup()
				return
			endif
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Zhefan takes nothing returns nothing
		set Xiaoting__IFantan=Xiaoting__IFantan + 10
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "折返剩余时间" + I2S(Xiaoting__IFantan) + "s.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Yanzhi takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
				call DamageArea(xiaoting , GetUnitX(Xiaoting__UArrow[i]) , GetUnitY(Xiaoting__UArrow[i]) , 600 * ( 0.5 * ( Xiaoting__GetComboMulti() + 1 ) ) , Xiaoting__RDamageXiaoting)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i])))
			endif
			set i=i + 1
		endloop
		call Xiaoting__ClearAllArrow()
	    call PrintSpellAdd((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( Xiaoting__RDamageXiaoting)*1.0) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Chenmo takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
				call Xiaoting__ChangeFacing(i , GetFacingBetweenXY(GetUnitX(Xiaoting__UArrow[i]) , GetUnitY(Xiaoting__UArrow[i]) , GetSpellTargetX() , GetSpellTargetY()))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Zhuixin takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
				call Xiaoting__ChangeFacing(i , GetFacingBetweenXY(GetUnitX(Xiaoting__UArrow[i]) , GetUnitY(Xiaoting__UArrow[i]) , GetUnitX(xiaoting) , GetUnitY(xiaoting)))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Bingqiang takes nothing returns nothing
     local integer i= 1
     local real facing= Atan2BJ(GetSpellTargetY() - GetUnitY(xiaoting), GetSpellTargetX() - GetUnitX(xiaoting))
     local unit u= null
	    loop
	    	exitwhen i > ( 6 + 4 * Xiaoting__GetComboMulti() )
	    	set u=CreateUnit(GetOwningPlayer(xiaoting), 'hwtw', (RMinBJ(RMaxBJ(((GetUnitX(xiaoting) + 200.00 * I2R(i) * CosBJ(facing))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(xiaoting) + 200.00 * I2R(i) * SinBJ(facing))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    	if ( i == 1 or i == ( 6 + 4 * Xiaoting__GetComboMulti() ) ) then

	    	endif
	    	call SetUnitUserData(u, R2I(facing) + I3(( i == 1 or i == ( 6 + 4 * Xiaoting__GetComboMulti() ) ) , 2000 , 0))
	    	call UnitApplyTimedLifeBJ(60.00, 'BHwe', u)
	    	set i=i + 1
	    endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__JingtiTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real intTimes= LoadReal(spellTable, GetHandleId(t), 1)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , - 1 * intTimes)
		call FlushChildHashtable(spellTable, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Xiaoting__Jingti takes nothing returns nothing
  local real intTimes= Xiaoting__GetComboMulti() * 0.25
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), 1, intTimes)
		call TimerStart(t, 30, false, function Xiaoting__JingtiTimer)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , intTimes)
		call YDWETimerDestroyEffect(30 , AddSpecialEffectTargetUnitBJ("overhead", xiaoting, "war3mapImported\\state_xiaoting.mdx"))
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "成功增加" + I2S(Xiaoting__GetComboMulti() * 25) + "%的敏捷，持续30秒。")
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Fenlie takes nothing returns nothing
  local integer i= 1
  local integer max= 0
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] == null ) then
				set max=i - 1
				exitwhen true
			endif
			set i=i + 1
		endloop
		set i=1
		loop
			exitwhen i > max
			if ( Xiaoting__UArrow[i] != null ) then
				call Xiaoting__Guanhongjian(GetUnitX(Xiaoting__UArrow[i]) , GetUnitY(Xiaoting__UArrow[i]) , GetUnitFacing(Xiaoting__UArrow[i]) + GetRandomReal(- 15, 15) , false)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i])))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Shunti takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i])))
			    call SetUnitX(Xiaoting__UArrow[i], GetUnitX(xiaoting))
				call SetUnitY(Xiaoting__UArrow[i], GetUnitY(xiaoting))
			endif
			set i=i + 1
		endloop
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------
	
    function Xiaoting__DuyueTimer takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local integer id= GetHandleId(t)
     local integer attract= LoadInteger(spellTable, id, 1)
    	call s__Attract_deallocate(attract)
		call PauseTimer(t)
		call FlushChildHashtable(spellTable, id)
		call DestroyTimer(t)
    	set t=null
    endfunction

 function Xiaoting__Duyue takes nothing returns nothing
  local integer i= 1
     local timer t= CreateTimer()
     local integer attract= s__Attract_create(xiaoting , 900 * Xiaoting__GetComboMulti() , 0.05 , 50 * Xiaoting__GetComboMulti())
	    call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "范围" + I2S(900 * Xiaoting__GetComboMulti()) + ".")
		call YDWETimerDestroyEffect(5 , AddSpecialEffectTargetUnitBJ("overhead", xiaoting, "war3mapImported\\hole.mdl"))
		set s__Attract_forbitHero[(attract)]=true // INLINED!!
		set s__Attract_deathContinue[(attract)]=true // INLINED!!
	    call s__Attract_start(attract)
	    call SaveInteger(spellTable, GetHandleId(t), 1, attract)
	    call TimerStart(t, 5, false, function Xiaoting__DuyueTimer)
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Yujian takes nothing returns nothing
		set Xiaoting__BYujian=not ( Xiaoting__BYujian )
		if ( Xiaoting__BYujian ) then
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "开启御箭形态.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "关闭御箭形态.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Jueyan takes nothing returns nothing
		set Xiaoting__IJueyan=Xiaoting__IJueyan + 10
	    call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Jingzhi takes nothing returns nothing
		set Xiaoting__BJingzhi=not ( Xiaoting__BJingzhi )
		if ( Xiaoting__BJingzhi ) then
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "开启静滞形态.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "关闭静滞形态.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Jianling takes nothing returns nothing
  local integer times= Xiaoting__GetComboMulti()
  local integer attack= IMinBJ(1000000000, ( GetHeroInt(xiaoting, true) + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0x5039AFFB)) ) * 4) // INLINED!!
  local integer defense=( GetHeroAgi(xiaoting, true) / 100 + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0x81FD3994)) ) // INLINED!!
  local integer hp=( GetHeroStr(xiaoting, true) * 10 + (LoadInteger(YDHT, GetHandleId((xiaoting)), 0xFCD961C9)) ) // INLINED!!
  local unit u
  local integer i= 1
		loop
			exitwhen i > Xiaoting__IMaxCombo
			if ( Xiaoting__UArrow[i] != null ) then
				set u=CreateUnit(GetOwningPlayer(xiaoting), 'n01V', GetUnitX(Xiaoting__UArrow[i]), GetUnitY(Xiaoting__UArrow[i]), 0)
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
	
 function Xiaoting__Chuanci takes nothing returns nothing
		set Xiaoting__BChuanci=true
		call PrintSpellContent(GetOwningPlayer(xiaoting) , GetAbilityName(GetSpellAbilityId()) , "穿透就绪.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__PingzhangTimer takes nothing returns nothing
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

 function Xiaoting__Pingzhang takes nothing returns nothing
  local integer i= 1
  local unit u= null
  local timer t= CreateTimer()
  local unit temp= CreateUnit(GetOwningPlayer(xiaoting), 'h023', GetUnitX(xiaoting), GetUnitY(xiaoting), 0)
		call UnitApplyTimedLifeBJ(20 + 10 * Xiaoting__GetComboMulti(), 'BHwe', temp)
		call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)) , 0.3)
		call PrintSpellContent((GetOwningPlayer(xiaoting) ) , ( GetAbilityName(GetSpellAbilityId())) , "") // INLINED!!
		loop
			exitwhen i > 24
			set u=CreateUnit(GetOwningPlayer(xiaoting), 'h021', (RMinBJ(RMaxBJ(((GetUnitX(xiaoting) + 600 * CosBJ(i * 15))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(xiaoting) + 600 * SinBJ(i * 15))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    	call SetUnitUserData(u, i * 15 + 90)
 			call UnitApplyTimedLifeBJ(20 + 10 * Xiaoting__GetComboMulti(), 'BHwe', u)
			set i=i + 1
		endloop
		//不断伤害
		call SaveUnitHandle(spellTable, GetHandleId(t), 1, temp)
		call TimerStart(t, 1, true, function Xiaoting__PingzhangTimer)
        call PlaySoundBJ(gg_snd_xiaoting1)
		//快速升级
		set t=null
		set u=null
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__Jianjuetianji takes nothing returns nothing
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
	
 function Xiaoting__FlashComboPos takes nothing returns nothing
		call SetTextTagPosUnitBJ(Xiaoting__TTCombo, xiaoting, 20)
	endfunction

 function Xiaoting__FlashComboData takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(xiaoting))
  local integer ILimit= 0
  local real delta= 0.
		set ICombo=RMaxBJ(0.99 * ICombo, 0.)
		set ILimit=R2I(ICombo)
		call SetTextTagTextBJ(Xiaoting__TTCombo, "Combo:" + R2S(ICombo), 20)

		if ( Xiaoting__GetComboMulti() == 4 and Xiaoting__IMaxCombo != 16 ) then
			set Xiaoting__IMaxCombo=16
		elseif ( Xiaoting__GetComboMulti() == 3 and Xiaoting__IMaxCombo != 12 ) then
			set Xiaoting__IMaxCombo=12
			call Xiaoting__ClearRestArrow(13)
		elseif ( Xiaoting__GetComboMulti() == 2 and Xiaoting__IMaxCombo != 8 ) then
			set Xiaoting__IMaxCombo=8
			call Xiaoting__ClearRestArrow(9)
		elseif ( Xiaoting__GetComboMulti() == 1 and Xiaoting__IMaxCombo != 4 ) then
			set Xiaoting__IMaxCombo=4
			call Xiaoting__ClearRestArrow(5)
		endif
		set ILimit=IMinBJ(ILimit, 2000)
		set delta=I2R(( ( ILimit / 10 ) * 10 )) / 1000.
		if ( Xiaoting__RAddtion != delta ) then

			call AddStrPercent(index , delta - Xiaoting__RAddtion)
			call AddIntPercent(index , delta - Xiaoting__RAddtion)
			call AddAgiPercent(index , delta - Xiaoting__RAddtion)
			set Xiaoting__RAddtion=delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting)))
    		call CreateTextTagA((I2S(R2I(delta * 100)) + "%全属性提高" ) , ( xiaoting ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
		endif
	endfunction


//---------------------------------------------------------------------------------------------------

	
 function Xiaoting__InitCombo takes nothing returns nothing
		set ICombo=0
		set Xiaoting__TTCombo=CreateTextTagUnitBJ("Combo:0", xiaoting, 0, 20, 100, 0, 50, 0)
		call TimerStart(CreateTimer(), 0.05, true, function Xiaoting__FlashComboPos)
		call TimerStart(CreateTimer(), 1, true, function Xiaoting__FlashComboData)
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__SetSpellSet takes integer i returns nothing

		set Xiaoting__ISpellState=i
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
	
	//判断16个都是否一致

	//判断4个都是否不在同一套中

	
 function Xiaoting__ComboDuan takes nothing returns nothing
		set Xiaoting__IAdd=0
    	call CreateTextTagA(("Combo连加断了" ) , ( xiaoting ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
	endfunction

 function Xiaoting__AddCombo takes nothing returns nothing
		if not ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LT') == 1 ) then // INLINED!!
			return
		endif
		set Xiaoting__IAdd=Xiaoting__IAdd + 1
		//set IComboPointer = I3(IComboPointer>=16,1,IComboPointer+1)
		//set IComboHistory[IComboPointer] = GetSpellAbilityId()
		//set ITypePointer = I3(ITypePointer>=4,1,ITypePointer + 1)
		//set ITypeHistory[ITypePointer] = ISpellState

		//if (Judge16Same()) then
		//	call SetUnitLifePercentBJ(xiaoting,100)
		//	call SetUnitManaPercentBJ(xiaoting,100)
		//	set add = 25 * IJ3(xiaoting,2,1)
		//elseif (Judge4Same()) then
	    //	call RecoverUnitHP(xiaoting,0.2)
	    //	call RecoverUnitMP(xiaoting,50)
		//	set add = 5 * IJ3(xiaoting,2,1)
	    //else
		//	set add = 1 * IJ3(xiaoting,2,1)
		//endif
		set ICombo=ICombo + Xiaoting__IAdd
		call TimerStart(Xiaoting__TComboAdd, 2, false, function Xiaoting__ComboDuan)
    	call CreateTextTagA(("Combo+" + I2S(Xiaoting__IAdd) ) , ( xiaoting ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 3)*1.0) , 16) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Xiaoting__TSpellXiaotingAct takes nothing returns nothing
		//切换技能套
		if ( GetSpellAbilityId() == 'A0LJ' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LJ', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LK', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LK', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting__SetSpellSet(1)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LK' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LK', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LL', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LL', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting__SetSpellSet(2)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LL' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LL', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LM', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LM', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting__SetSpellSet(3)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		elseif ( GetSpellAbilityId() == 'A0LM' ) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LM', false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting), 'A0LJ', true)
			call SetUnitAbilityLevel(xiaoting, 'A0LJ', 1 + IJ1(xiaoting , 1 , 0) + IJ2(xiaoting , 1 , 0) + IJ3(xiaoting , 1 , 0))
			call Xiaoting__SetSpellSet(0)
			set ICombo=ICombo + IJ1(xiaoting , 1 , 0) * IJ3(xiaoting , 2 , 1)
		//大招-箭绝天技
		elseif ( GetSpellAbilityId() == 'A0M3' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Jianjuetianji()
		//贯虹箭
		elseif ( GetSpellAbilityId() == 'A0LN' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Guanhongjian(GetSpellTargetX() , GetSpellTargetY() , GetFacingBetweenXY(GetUnitX(xiaoting) , GetUnitY(xiaoting) , GetSpellTargetX() , GetSpellTargetY()) , true)
		//箭技-折返
		elseif ( GetSpellAbilityId() == 'A0LO' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Zhefan()
		//箭技-炎止
		elseif ( GetSpellAbilityId() == 'A0LP' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Yanzhi()
		//箭技-沉默
		elseif ( GetSpellAbilityId() == 'A0LQ' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Chenmo()
		//箭技-瞬体
		elseif ( GetSpellAbilityId() == 'A0LT' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Shunti()
		//绝技-冰墙
		elseif ( GetSpellAbilityId() == 'A0LR' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Bingqiang()
		//绝技-静体
		elseif ( GetSpellAbilityId() == 'A0LU' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Jingti()
		//箭技-分裂
		elseif ( GetSpellAbilityId() == 'A0LS' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Fenlie()
		//箭技-渡越
		elseif ( GetSpellAbilityId() == 'A0LV' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Duyue()
		//箭技-追心
		elseif ( GetSpellAbilityId() == 'A0LY' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Zhuixin()
		//箭技-御箭
		elseif ( GetSpellAbilityId() == 'A0LW' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Yujian()
		//箭技-绝焱
		elseif ( GetSpellAbilityId() == 'A0LX' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Jueyan()
		//箭技-静滞
		elseif ( GetSpellAbilityId() == 'A0LZ' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Jingzhi()
		//箭技-箭灵
		elseif ( GetSpellAbilityId() == 'A0M0' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Jianling()
		//箭技-穿刺
		elseif ( GetSpellAbilityId() == 'A0M1' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Chuanci()
		//绝技-屏障
		elseif ( GetSpellAbilityId() == 'A0M2' ) then
			call Xiaoting__AddCombo()
			call Xiaoting__Pingzhang()
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function Xiaoting__FlashXiaotingDamage takes nothing returns nothing
		set Xiaoting__RDamageXiaoting=GetDamageAgi(xiaoting)

		call Xiaoting__AttackTimeReduce()
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillXiaotingI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == xiaoting ) then
			if ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LT') == 1 ) then // INLINED!!
				//技能2初始化
				call Xiaoting__InitCombo()
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((xiaoting))) == 1) == true and GetUnitAbilityLevel(xiaoting, 'A0LY') == 1 ) then // INLINED!!
				call UnitAddAbility(gg_unit_n01S_0258, 'A0M5') // INLINED!!
				call AddSpecialEffectTargetUnitBJ("origin", xiaoting, "war3mapImported\\oakaura.mdx")
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
		//主英雄技能
		set Xiaoting__TSpellXiaoting=CreateTrigger()
	    call TriggerRegisterUnitEvent(Xiaoting__TSpellXiaoting, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Xiaoting__TSpellXiaoting, function Xiaoting__TSpellXiaotingAct)

	    //刷新伤害
	    call TimerStart(CreateTimer(), 1, true, function Xiaoting__FlashXiaotingDamage)

	    set Xiaoting__TAttackXT=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Xiaoting__TAttackXT, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Xiaoting__TAttackXT, Condition(function Xiaoting__TAttackXTCon))
	    call TriggerAddAction(Xiaoting__TAttackXT, function Xiaoting__TAttackXTAct)

	    set Xiaoting__TComboAdd=CreateTimer()

	    //初始化技能状态
	    call UnitAddAbility(xiaoting, 'A0LO')
	    call UnitAddAbility(xiaoting, 'A0LP')
	    call UnitAddAbility(xiaoting, 'A0LQ')
	    call UnitAddAbility(xiaoting, 'A0LR')
	    call UnitAddAbility(xiaoting, 'A0LU')
	    call UnitAddAbility(xiaoting, 'A0LS')
	    call UnitAddAbility(xiaoting, 'A0LV')
	    call UnitAddAbility(xiaoting, 'A0LW')
	    call UnitAddAbility(xiaoting, 'A0LX')
	    call UnitAddAbility(xiaoting, 'A0M0')
	    call UnitAddAbility(xiaoting, 'A0M1')
	    call UnitAddAbility(xiaoting, 'A0M2')
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

		//箭分裂的上限
		set Xiaoting__IMaxCombo=4

		//科技
		call Xiaoting__SetShe1Tech()

	endfunction


//library Xiaoting ends

// BEGIN IMPORT OF Xiaoting.j

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

// END IMPORT OF Xiaoting.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs621151093")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Attr__InitAttr")
call ExecuteFunc("Printer__InitPrinter")

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

function jasshelper__initstructs621151093 takes nothing returns nothing
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

