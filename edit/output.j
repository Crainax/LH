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
constant integer PAGE_HERO_CHALLANGER= 2
		
integer renshu= 0
		
		
integer mode= 0
constant integer COUNT_WANJIE= 47
integer Constant__WPointer= 1
//endglobals from Constant
//globals from Test:
constant boolean LIBRARY_Test=true
location udg_Point
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
sound gg_snd_lichidazhao

        
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
dialog udg_X_Nandu= DialogCreate()
        
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
rect gg_rct_Game2
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
//endglobals from LHBase
//globals from Attr:
constant boolean LIBRARY_Attr=true
integer array IStr
integer array IAgi
integer array IInt
//endglobals from Attr
//globals from ChallangerDZ:
constant boolean LIBRARY_ChallangerDZ=true
constant integer COUNT_CHALLANGER= 6

string array easyCString
string array middleCString
string array hardCString

		//挑战难度
integer CDiff= 0
		//挑战类型
integer CType= 0

		//判断是否读取成功
boolean array Bdudang
//endglobals from ChallangerDZ
//globals from Mirror:
constant boolean LIBRARY_Mirror=true
timer TiMirror
timerdialog TiDiaMirror

//endglobals from Mirror
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
constant integer kUImmuteDamage=9
//endglobals from SpellBase
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
//globals from Aura:
constant boolean LIBRARY_Aura=true
integer array Aura___YKillCount
trigger Aura___TSpellYanmie3= null
trigger Aura___TSpellMengji3= null

		
boolean array Aura___shunHints

//endglobals from Aura
//globals from Cangling:
constant boolean LIBRARY_Cangling=true
		
		
item array IBibo
boolean Cangling___BiBo= false

trigger Cangling___TSpellCangling= null
trigger Cangling___TSpellCangling2= null
		
unit Cangling___UGuang= null
effect Cangling___EGuang= null
real Cangling___RGuang= 0.
integer Cangling___IGuang= 10
timer Cangling___TGuang= null
		
unit Cangling___UCangHuo= null
unit Cangling___UCangFeng= null
		
unit Cangling___UTanlang= null
		
boolean array Cangling___BWusuo
//endglobals from Cangling
//globals from Huodong:
constant boolean LIBRARY_Huodong=true
//endglobals from Huodong
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
integer array IZhanhun
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
integer array vipCode
		
integer array diyu
		
integer array mingcha
		
integer array passTimes
		
integer array petTimes
		
constant integer kSaveHeroTimes=10
		
		

		
integer array deathCount
		
integer array killCount
		
boolean BBaseDamage= false
		
integer JunengCount= 0
		
integer array Idaixin
boolean BJiulun= false
boolean BHaojie= false

		//杀擂台十的英雄统计
integer array Ileishi
		//DIY名字
string array SDIY

		//没被碰到
boolean BShengming= false


		//签到指数
integer array IQiandao2

		//总数不存在20个
boolean BZongshu= false
//endglobals from Version
//globals from MiniGame:
constant boolean LIBRARY_MiniGame=true
timer MiniGame___TGame1= null
texttag MiniGame___TTGame1= null
integer array MiniGame___IGoldGame1
integer MiniGame___TTimeGame1= 0
group MiniGame___GGame1= null

		//中级挑战
timer MiniGame___TGame2= null
texttag MiniGame___TTGame2= null
integer array MiniGame___IGoldGame2
integer MiniGame___TTimeGame2= 0
group MiniGame___GGame2= null
unit MiniGame___UGame2= null
//endglobals from MiniGame
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
boolean array s__Connect_BDie
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
trigger array st___prototype37
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
function sc___prototype37_execute takes integer i returns nothing

    call TriggerExecute(st___prototype37[i])
endfunction
function sc___prototype37_evaluate takes integer i returns nothing

    call TriggerEvaluate(st___prototype37[i])

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
//library Constant:
	
//---------------------------------------------------------------------------------------------------
	
 function GetVersion takes nothing returns string
		return "3.379"
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
		return GetUnitTypeId(u) == 'E00F' or GetUnitTypeId(u) == 'E00E' or GetUnitTypeId(u) == 'U001' or GetUnitTypeId(u) == 'H01V' or GetUnitTypeId(u) == 'H01W' or GetUnitTypeId(u) == 'E00G' or GetUnitTypeId(u) == 'O002' or GetUnitTypeId(u) == 'H01X' or GetUnitTypeId(u) == 'U002' or GetUnitTypeId(u) == 'O004' or GetUnitTypeId(u) == 'N01W' or GetUnitTypeId(u) == 'H026' or GetUnitTypeId(u) == 'H02C'
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
		elseif ( heroType == 'Udea' ) then
			return 13
		elseif ( heroType == 'Hkal' ) then
			return 14
		elseif ( heroType == 'Hant' or heroType == 'H026' ) then
			return 15
		elseif ( heroType == 'Nsjs' ) then
			return 16
		elseif ( heroType == 'Hhkl' or heroType == 'H02C' ) then
			return 17
		elseif ( heroType == 'Hapm' or heroType == 'H01I' ) then
			return 18
		elseif ( heroType == 'H01Y' ) then
			return 19
		elseif ( heroType == 'H027' ) then
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47 or achieveID == 48 or achieveID == 49 or achieveID == 410 or achieveID == 411 or achieveID == 412 or achieveID == 413 or achieveID == 414
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
			elseif ( i == 3 ) then
				return "|cFFFF0000凝冰红灯|r"
			elseif ( i == 4 ) then
				return "|cFF6699FF封霜玄锋|r"
			elseif ( i == 5 ) then
				return "|cffff0000凰迹天知|r"
			elseif ( i == 6 ) then
				return "|cffff6800天罚四界|r"
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
				return "目前该皮肤是七夕活动提前放出,英雄挑战需要在9月中旬才会上线.\n\n				完成该项挑战后你将获得幻逸的皮肤\"|cffff6800天罚四界|r\"(拥有少量的属性加成)!"
			elseif ( i == 7 ) then
				return "\n				目前该皮肤可以通过每周六YY90163抽奖活动抽取,英雄挑战需要在9月下旬才会上线.\n\n				完成该项挑战后你将获得司宸的皮肤\"|cff33cccc白莲圣日·黑羽魔月|r\"(拥有少量的属性加成)!"
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
			return "你把我灌醉。"
		elseif ( Constant__WPointer == 2 ) then
			return "心亦"
		elseif ( Constant__WPointer == 3 ) then
			return "幻、神"
		elseif ( Constant__WPointer == 4 ) then
			return "深邃的孤独丶"
		elseif ( Constant__WPointer == 5 ) then
			return "雷瑟守备最强王者"
		elseif ( Constant__WPointer == 6 ) then
			return "你的牛奶呢丶"
		elseif ( Constant__WPointer == 7 ) then
			return "浪逼郭小癞"
		elseif ( Constant__WPointer == 8 ) then
			return "很烦很皮"
		elseif ( Constant__WPointer == 9 ) then
			return "sky"
		elseif ( Constant__WPointer == 10 ) then
			return "梦露丶baby"
		elseif ( Constant__WPointer == 11 ) then
			return "丶念少。"
		elseif ( Constant__WPointer == 12 ) then
			return "0万物皆空0"
		elseif ( Constant__WPointer == 13 ) then
			return "辉煌丶神偷"
		elseif ( Constant__WPointer == 14 ) then
			return "丶7℃ャ跃娃"
		elseif ( Constant__WPointer == 15 ) then
			return "星辰末日"
		elseif ( Constant__WPointer == 16 ) then
			return "夕子奈月"
		elseif ( Constant__WPointer == 17 ) then
			return "枫烨桦"
		elseif ( Constant__WPointer == 18 ) then
			return "请带着我飞"
		elseif ( Constant__WPointer == 19 ) then
			return "树林里故事"
		elseif ( Constant__WPointer == 20 ) then
			return "我鸡鸡贼大"
		elseif ( Constant__WPointer == 21 ) then
			return "至简i"
		elseif ( Constant__WPointer == 22 ) then
			return "阴优"
		elseif ( Constant__WPointer == 23 ) then
			return "逸灬仙"
		elseif ( Constant__WPointer == 24 ) then
			return "躺车门始祖"
		elseif ( Constant__WPointer == 25 ) then
			return "Rascal丶恋情"
		elseif ( Constant__WPointer == 26 ) then
			return "7葡萄"
		elseif ( Constant__WPointer == 27 ) then
			return "心雪"
		elseif ( Constant__WPointer == 28 ) then
			return "Ma—LePYe"
		elseif ( Constant__WPointer == 29 ) then
			return "墙头蹲红杏"
		elseif ( Constant__WPointer == 30 ) then
			return "one丶lelseifeの爱"
		elseif ( Constant__WPointer == 31 ) then
			return "czy888"
		elseif ( Constant__WPointer == 32 ) then
			return "Flower丶God"
		elseif ( Constant__WPointer == 33 ) then
			return "月丶暗影"
		elseif ( Constant__WPointer == 34 ) then
			return "牛头居然能打巨能"
		elseif ( Constant__WPointer == 35 ) then
			return "Dear冷月"
		elseif ( Constant__WPointer == 36 ) then
			return "无缘之邪"
		elseif ( Constant__WPointer == 37 ) then
			return "话唠。"
		elseif ( Constant__WPointer == 38 ) then
			return "那天1234"
		elseif ( Constant__WPointer == 39 ) then
			return "糖糖不在甜"
		elseif ( Constant__WPointer == 40 ) then
			return "1 1"
		elseif ( Constant__WPointer == 41 ) then
			return "浪逼康小帅"
		elseif ( Constant__WPointer == 42 ) then
			return "与你童在"
		elseif ( Constant__WPointer == 43 ) then
			return "神天羽"
		elseif ( Constant__WPointer == 44 ) then
			return "你挺得劲"
		elseif ( Constant__WPointer == 45 ) then
			return "＿雅姬ベ"
		elseif ( Constant__WPointer == 46 ) then
			return "灵魂的缠绵"
		elseif ( Constant__WPointer == 47 ) then
			return "司宸"
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
        call ShowGameHint(p , "该英雄是" + GetUnitName(u) + "英雄的皮肤" + GetHeroProperName(u) + "。" + S3(false , "\n        使用英雄" + GetUnitName(u) + "完成对应的英雄挑战即可获取该皮肤。\n        前往基地左边商店处可以查看该挑战的详细内容。" , "\n        使用魔兽争霸官方对战平台(dz.163.com)进行游戏\n        完成挑战即可获取该皮肤。"))
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
		endif
		return 0
	endfunction

//library ChallangerDZ ends
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
            call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cffff00ff【虚】琉璃璞玉|r" + I2S(udg_Z[GetConvertedPlayerId(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]))]) + "/42.")
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function Mirror___MirrorTimeOut takes nothing returns nothing
        //移动单位回基地
        call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cFFFF66CC【消息】|r你未能在限定时间内通过转生！")
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
        set TiDiaMirror=CreateTimerDialogBJ(TiMirror, "转生时间")
        call TimerStart(TiMirror, 60, false, function Mirror___MirrorTimeOut)
        call TimerDialogDisplay(TiDiaMirror, true)
    endfunction
//---------------------------------------------------------------------------------------------------
    
    
    function AddMirrorSpell takes nothing returns nothing
        local unit mirror= udg_U_Zhuansheng_Dantiao[2]
        local unit defier= udg_U_Zhuansheng_Dantiao[1]
        local integer count= udg_Z[GetConvertedPlayerId(GetOwningPlayer(defier))]
        if ( count == 20 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得33%30倍攻击与破隐技能。")
        elseif ( count == 40 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得神圣护甲技能。")
        elseif ( count == 60 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得10%回血技能。")
        elseif ( count == 80 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得15秒重生技能。")
        elseif ( count == 100 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得秒杀献祭技能。")
        elseif ( count == 120 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得破防10万技能。")
        elseif ( count == 150 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得急速破魔技能。")
        elseif ( count == 160 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将获得减少50%魔法伤害技能。")
        elseif ( count == 170 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将出生于英雄周围。")
        elseif ( count == 180 ) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从" + I2S(count) + "转开始镜像将更加厉害的破魔。")
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

 function Printer___InitPrinter takes nothing returns nothing
		
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
		else
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r本局游戏皮肤数据读取失败,请重新开始游戏.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSeyu1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 2) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetSeyuSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 2) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取瑟雨皮肤\"|cffff66cc赤血白燕|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaoyue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 3) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXiaoyueSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 3) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取晓月皮肤\"|cff99ccff月轮绯狱|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetYanmie1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 4) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetYanmieSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 4) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取湮灭皮肤\"|cFFFF0000殛霆无迹|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXuanxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 5) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetXuanxue1SpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 5) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取玄雪武器模型\"|cFF33FF33末日权杖|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetTaiya1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetTaiyaSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 6) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取泰雅皮肤\"|cFFCCFF66三弦星谧|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji1SpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 7) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取辰寂武器模型\"|cFFFF3333霜夜之哀|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHanshang1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHanshangSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 8) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 10000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取寒殇武器模型\"|cFF3333FF獠牙之匕|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetLingxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetLingxueSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 9) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 100000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取凌雪皮肤\"|cFF339933沐雪无瑕|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetChenji2Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)] , 10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetChenji2SpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin[GetConvertedPlayerId(p)] , 10) < 1 ) then
			set spin[GetConvertedPlayerId(p)]=spin[GetConvertedPlayerId(p)] + 1000000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取辰寂皮肤\"|cFFFF3333双流贯恒|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMoqiSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetMoqiSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 1) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 1
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取莫琪皮肤\"|cFFFF00CC星界麒麟|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetKaisaSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetKaisaSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 2) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 10
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取凯撒皮肤\"|cFF6699FF熔日煌世|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXuanxue2Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 3) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetXuanxue2SpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 3) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 100
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取玄雪皮肤\"|cFFFF0000凝冰红灯|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSheyan1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 4) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetSheyanSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 4) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 1000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取摄焱皮肤\"|cffff0000凰迹天知|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetBajue1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 5) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetBajueSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 5) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 10000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取霸绝皮肤\"|cFF6699FF封霜玄锋|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyi1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetHuanyiSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 6) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 100000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取幻逸皮肤\"|cffff6800天罚四界|r\"！")
			call Achievement__SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetSichen1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)] , 7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetSichenSpinOK takes player p returns nothing
		if ( CType != 0 ) then
			return
		endif
		if ( GetBit(spin2[GetConvertedPlayerId(p)] , 7) < 1 ) then
			set spin2[GetConvertedPlayerId(p)]=spin2[GetConvertedPlayerId(p)] + 1000000
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取司宸皮肤\"|cff33cccc白莲圣日·黑羽魔月|r\"！")
			call Achievement__SaveSpinData(p)
		endif
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
			exitwhen i > 414
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
				set achieve2[id]=SetIntegerBit(achieve2[id] , Achievement__GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 3 ) then // INLINED!!
				set achieve3[id]=SetIntegerBit(achieve3[id] , Achievement__GetAchieveTarget(achieveID) , true)
			elseif ( (S2I(SubStringBJ(I2S((achieveID)), 1, 1))) == 4 ) then // INLINED!!
				set achieve4[id]=SetIntegerBit(achieve4[id] , Achievement__GetAchieveTarget(achieveID) , true)
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
		    	exitwhen i > 6
		    	call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetAchievementName(i + 408) + S3(IsAchieveOK(p , i + 408) , "|cffff9900(已解锁)|r" , "|cff33cccc(未解锁)|r")))
		    	set i=i + 1
		    endloop
		endif

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButtonBJ(d, "下一页"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 11, DialogAddButton(d, "关闭|cffff6800(Esc)|r", 512))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateHeroDialogContent takes player p,dialog d,integer page returns nothing
		if ( page == 1 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(3 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(4 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetHeroChallenageName(5 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 7) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetHeroChallenageName(6 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 6) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetHeroChallenageName(7 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 8) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 8, DialogAddButtonBJ(d, GetHeroChallenageName(8 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 10) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 9, DialogAddButtonBJ(d, GetHeroChallenageName(9 , 1) + S3((GetBit(spin[GetConvertedPlayerId((p))] , 9) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
		elseif ( page == 2 ) then
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, GetHeroChallenageName(1 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 2) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, GetHeroChallenageName(2 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 1) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, GetHeroChallenageName(3 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 3) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 4, DialogAddButtonBJ(d, GetHeroChallenageName(4 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 5) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 5, DialogAddButtonBJ(d, GetHeroChallenageName(5 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 4) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
			call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetHeroChallenageName(6 , 2) + S3((GetBit(spin2[GetConvertedPlayerId((p))] , 6) > 0) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r"))) // INLINED!!
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
	    	call DialogSetMessage(d, "英雄挑战")
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
	    call DialogSetMessage(d, "英雄挑战")
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
		//湮灭新光环Todo
		call UnitAddAbility(gg_unit_n01S_0258, 'A0HF')
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		endfunction
//---------------------------------------------------------------------------------------------------
	
 function Aura___SanchuanShunTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer playerID= LoadInteger(spellTable, GetHandleId(t), 1)
		if not ( Aura___shunHints[playerID] ) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66cc【消息】|r你已获得来自|cffffff00阴阳三川箭|r光环的效果,|cffffcc00使用M键可以瞬移至任意地点|r,冷却2.5s.")
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
	        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达.")
	        return
		endif
	    if ( IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY) ) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,瞬移失败！")
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
		
	    //英雄第三个技能瞬移事件
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
	
 function InitLichiAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258, 'A0MR')
		call UnitAddAbility(gg_unit_n01S_0258, 'A0MS')
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
		elseif ( index == 20 ) then
			call InitLichiAura()
		endif
	endfunction


//library Aura ends
//library Cangling:

//---------------------------------------------------------------------------------------------------
	
 function IsSwitchItemCangling takes unit u,item it returns boolean
  local integer i= I3(Cangling___BiBo , 7 , 1)

		if ( u != cangling ) then
			return true
		endif

		if not ( IsItemPawnable(it) ) then
			return true
		endif

		loop
			exitwhen i > I3(Cangling___BiBo , 12 , 6)
			if ( it == IBibo[i] ) then

				return false
			endif
			set i=i + 1
		endloop

		return true
	endfunction

//---------------------------------------------------------------------------------------------------
	
	
//---------------------------------------------------------------------------------------------------

	
 function Cangling___BiBoBaoZhuo takes nothing returns nothing
  local integer i= 1
  local integer ii= 1
  local integer iii
  local integer iiii= 1
  local item temp= null

		//判断是否有不可丢弃的法魂
		loop
			exitwhen iiii > 6
			if ( IsZhanfahun(UnitItemInSlotBJ(cangling, iiii)) and not ( IsItemPawnable(UnitItemInSlotBJ(cangling, iiii)) ) ) then
				call DisplayTextToPlayer(GetOwningPlayer(cangling), 0., 0., "|cFFFF66CC【消息】|r战魂与法魂冷却期间不能切换装备栏,请等冷却结束.")
				return
			endif
			set iiii=iiii + 1
		endloop
		//保存装备
		loop
			exitwhen i > 6
			set IBibo[i + I3(Cangling___BiBo , 6 , 0)]=UnitItemInSlotBJ(cangling, i)
			set i=i + 1
		endloop
		//丢弃装备
		loop
			exitwhen ii > 6
			set temp=UnitItemInSlotBJ(cangling, ii)
			//call UnitRemoveItemSwapped(temp,mengji)
			call SetItemPosition(temp, 0, 0)
			call SetItemVisible(temp, false)
			set ii=ii + 1
		endloop
		set Cangling___BiBo=not ( Cangling___BiBo )
		//获得装备
		set iii=I3(Cangling___BiBo , 7 , 1)
		loop
			exitwhen iii > I3(Cangling___BiBo , 12 , 6)
			call UnitAddItem(cangling, IBibo[iii])
			set IBibo[iii]=null
			set iii=iii + 1
		endloop
		set temp=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___BiBoBaoZhuoTimer takes nothing returns nothing
		if ( IsUnitAliveBJ(cangling) ) then
			if ( GetUnitState(cangling, UNIT_STATE_LIFE) < ( 0.05 + RJ1(cangling , 0.05 , 0) + RJ2(cangling , 0.05 , 0) ) * GetUnitState(cangling, UNIT_STATE_MAX_LIFE) ) then
				call SetUnitLifePercentBJ(cangling, 10)
			endif
		endif

		if ( IsUnitAliveBJ(Cangling___UCangFeng) ) then
			if ( GetUnitState(Cangling___UCangFeng, UNIT_STATE_LIFE) < ( 0.05 + RJ1(cangling , 0.05 , 0) + RJ2(cangling , 0.05 , 0) ) * GetUnitState(Cangling___UCangFeng, UNIT_STATE_MAX_LIFE) ) then
				call SetUnitLifePercentBJ(Cangling___UCangFeng, 10)
			endif
		endif

		if ( IsUnitAliveBJ(Cangling___UCangHuo) ) then
			if ( GetUnitState(Cangling___UCangHuo, UNIT_STATE_LIFE) < ( 0.05 + RJ1(cangling , 0.05 , 0) + RJ2(cangling , 0.05 , 0) ) * GetUnitState(Cangling___UCangHuo, UNIT_STATE_MAX_LIFE) ) then
				call SetUnitLifePercentBJ(Cangling___UCangHuo, 10)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	
	
 function SimulateDamageCangling takes unit u returns boolean

		if ( GetUnitTypeId(u) == 'h00V' ) then
			call UnitDamageTarget(cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.33, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			if ( IsUnitDeadBJ(GetTriggerUnit()) ) then
				call SetUnitUserData(GetEventDamageSource(), GetUnitUserData(GetEventDamageSource()) + 1)
			endif
			return true
		endif
		if ( GetUnitTypeId(u) == 'h00W' ) then
			call UnitDamageTarget(cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.20, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		if ( GetUnitTypeId(u) == 'h00Y' ) then
			call SimulateSpell(GetEventDamageSource() , GetTriggerUnit() , 'A0HU' , 1 , 5 , "hex" , false , false , true)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___BuMieZhenYanTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, 1)
  local texttag tt= LoadTextTagHandle(spellTable, id, 2)
  local integer value= GetUnitUserData(u) - 1
		if ( value > 0 ) then
			call SetTextTagTextBJ(tt, I2S(value) + "秒", 20)
			call SetUnitUserData(u, value)
		else
			call RemoveUnit(u)
			call DestroyTextTag(tt)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
		set tt=null
	endfunction

 function Cangling___BuMieZhenYan takes integer lifeTime,integer abilityID,real x,real y returns nothing
  local real damage= GetDamageAgi(cangling) * 0.4
  local timer t= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(cangling), 'h00V', x, y, 270)
		call SetUnitUserData(u, lifeTime)
		call SaveUnitHandle(spellTable, GetHandleId(t), 1, u)
		call SaveTextTagHandle(spellTable, GetHandleId(t), 2, CreateTextTagUnitBJ(I2S(lifeTime) + "秒", u, 0, 20, 100, 0, 100, 0))
		call TimerStart(t, 1, true, function Cangling___BuMieZhenYanTimer)
	    call PrintSpellAdd((GetOwningPlayer(cangling) ) , ( GetAbilityName(abilityID) ) , (( damage)*1.0) , "") // INLINED!!
	    set u=null
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___LianJieDiMeng takes nothing returns nothing
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(cangling), GetUnitY(cangling)))
	    call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HJ') , "结盟成功！")
    	call SetPlayerAllianceStateBJ(Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION)
    	call SetPlayerAllianceStateBJ(Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION)
    	call ImmuteDamageInterval(cangling , 1)
    	call PolledWait(10)
    	call SetPlayerAllianceStateBJ(Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED)
    	call SetPlayerAllianceStateBJ(Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(cangling), GetUnitY(cangling)))
	    call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HJ') , "结盟结束！")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___TSpellCangling2Con takes nothing returns boolean
		return ( GetAttacker() == cangling or ( GetAttacker() == Cangling___UCangFeng and Cangling___UCangFeng != null ) or ( GetAttacker() == Cangling___UCangHuo and Cangling___UCangHuo != null ) ) and (GetPlayerTechCountSimple('R006', GetOwningPlayer((cangling))) == 1) == true and GetUnitState(cangling, UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(cangling, 'A0HJ') == 1 and GetRandomInt(1, 20) == 1 // INLINED!!
	endfunction

 function Cangling___TSpellCangling2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Cangling___BuMieZhenYan(2 , 'A0HJ' , GetUnitX(GetAttackedUnitBJ()) , GetUnitY(GetAttackedUnitBJ()))
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___DestroyGuangYin takes nothing returns nothing
		if ( Cangling___TGuang != null ) then
			call PauseTimer(Cangling___TGuang)
			call DestroyTimer(Cangling___TGuang)
			set Cangling___TGuang=null
		endif
		if ( Cangling___EGuang != null ) then
			call DestroyEffect(Cangling___EGuang)
			set Cangling___EGuang=null
		endif
		set Cangling___UGuang=null
		set Cangling___RGuang=0.
		set Cangling___IGuang=0
	endfunction

 function Cangling___GuangYinWuSuoTimer takes nothing returns nothing
		set Cangling___IGuang=Cangling___IGuang - 1
		if ( IsUnitAliveBJ(Cangling___UGuang) and Cangling___IGuang > 0 ) then
			call UnitDamageTarget(cangling, Cangling___UGuang, GetDamageAgi(cangling) * Cangling___RGuang, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	    	call CreateTextTagA((I2S(R2I(Cangling___RGuang * 100)) + "%X!" ) , ( Cangling___UGuang ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		else
			call Cangling___DestroyGuangYin()
		endif
	endfunction

 function Cangling___GuangYinWuSuo takes nothing returns nothing
		if ( Cangling___UGuang != GetSpellTargetUnit() ) then
			call Cangling___DestroyGuangYin()
			set Cangling___UGuang=GetSpellTargetUnit()
		endif
		set Cangling___RGuang=R3(Cangling___RGuang == 0. , 0.3 , Cangling___RGuang + 0.1)
		set Cangling___IGuang=10
		if ( Cangling___TGuang == null ) then
			set Cangling___TGuang=CreateTimer()
			call TimerStart(Cangling___TGuang, 1, true, function Cangling___GuangYinWuSuoTimer)
		endif
		if ( Cangling___EGuang == null ) then
			set Cangling___EGuang=AddSpecialEffectTargetUnitBJ("head", GetSpellTargetUnit(), "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl")
		endif
	    call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HK') , "百分比伤害" + I2S(R2I(Cangling___RGuang * 100)) + "%!")
	endfunction
//---------------------------------------------------------------------------------------------------
	

    function Cangling___GuangyinResetTimer takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local integer id= GetHandleId(t)
     local integer pID= LoadInteger(spellTable, id, 1)
    	set Cangling___BWusuo[pID]=false
		call PauseTimer(t)
		call FlushChildHashtable(spellTable, id)
		call DestroyTimer(t)
    	set t=null
    endfunction

    function Cangling___StartTimerGuangyin takes unit u returns nothing
     local timer t= CreateTimer()
	    call SaveInteger(spellTable, GetHandleId(t), 1, GetConvertedPlayerId(GetOwningPlayer(u)))
	    call TimerStart(t, 42, false, function Cangling___GuangyinResetTimer)
	    set t=null
    endfunction

 function IsGuangyinRevive takes nothing returns boolean
		if ( GetUnitAbilityLevel(gg_unit_n01S_0258, 'A0HR') == 1 and not ( Cangling___BWusuo[GetConvertedPlayerId(GetOwningPlayer(GetDyingUnit()))] ) ) then
			set Cangling___BWusuo[GetConvertedPlayerId(GetOwningPlayer(GetDyingUnit()))]=true
			call BJDebugMsg("|cFFFF66CC【消息】|r" + GetPlayerName(GetOwningPlayer(GetDyingUnit())) + "被" + GetUnitName(GetKillingUnitBJ()) + "干掉了，被|cff808000光阴无梭|r救起,等待3秒原地复活.")
		    call PolledWait(3.00)
		    call Cangling___StartTimerGuangyin(GetDyingUnit())
		    call ReviveHero(GetDyingUnit(), GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()), true)
		    call SetUnitManaBJ(GetDyingUnit(), 0.5 * GetUnitState(GetDyingUnit(), UNIT_STATE_MAX_MANA))
			return true
		else
			return false
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___ZiLeiHuTi takes nothing returns nothing
		if ( Cangling___UCangFeng != null ) then
			if ( IsUnitAliveBJ(Cangling___UCangFeng) ) then
	    		call DamageArea(cangling , GetUnitX(Cangling___UCangFeng) , GetUnitY(Cangling___UCangFeng) , 450 , GetDamageAgi(cangling) * 0.2)
			endif
		else
		    call PauseTimer(GetExpiredTimer())
		    call DestroyTimer(GetExpiredTimer())
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___YangYanWuShuang takes nothing returns nothing
  local group l_group= GetUnitsOfTypeIdAll('h00V')
  local unit l_unit= null
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(GetSpellAbilityUnit()), GetUnitY(GetSpellAbilityUnit())))
		loop
		    set l_unit=FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
			call SetUnitUserData(l_unit, GetUnitUserData(l_unit) + 6)
		endloop
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null
	    call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HS') , "成功续命6秒！")
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Cangling___YiQiSanHuaTimer takes nothing returns nothing
	    call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HL') , "技能时间结束！")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", GetUnitX(Cangling___UCangFeng), GetUnitY(Cangling___UCangFeng)))
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(Cangling___UCangHuo), GetUnitY(Cangling___UCangHuo)))
	    call FlushChildHashtable(YDHT, GetHandleId(Cangling___UCangFeng))
	    call FlushChildHashtable(YDHT, GetHandleId(Cangling___UCangHuo))
	    call RemoveUnit(Cangling___UCangFeng)
	    call RemoveUnit(Cangling___UCangHuo)
	    set Cangling___UCangHuo=null
	    set Cangling___UCangFeng=null
	    call PauseTimer(GetExpiredTimer())
	    call DestroyTimer(GetExpiredTimer())
	endfunction

 function Cangling___YiQiSanHua takes nothing returns nothing
	    call PrintSpellContent((GetOwningPlayer(cangling) ) , ( GetAbilityName('A0HL')) , "") // INLINED!!
	    set Cangling___UCangFeng=CreateUnit(GetOwningPlayer(cangling), 'Ogld', (RMinBJ(RMaxBJ(((GetUnitX(cangling) + GetRandomReal(- 200, 200))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(cangling) + GetRandomReal(- 200, 200))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", GetUnitX(Cangling___UCangFeng), GetUnitY(Cangling___UCangFeng)))
	    call SetHeroInt(Cangling___UCangFeng, GetHeroInt(cangling, true), true)
	    call SetHeroAgi(Cangling___UCangFeng, GetHeroAgi(cangling, true), true)
	    call SetHeroStr(Cangling___UCangFeng, GetHeroStr(cangling, true), true)
	    call SetHeroLevel(Cangling___UCangFeng, GetHeroLevel(cangling), false)
	    call SelectHeroSkill(Cangling___UCangFeng, 'A0HI')
	    call SelectHeroSkill(Cangling___UCangFeng, 'A0HJ')
	    call SelectHeroSkill(Cangling___UCangFeng, 'A0HK')
	    call SetAttack(Cangling___UCangFeng , (LoadInteger(YDHT, GetHandleId((cangling)), 0x5039AFFB))) // INLINED!!
	    call SetDefense(Cangling___UCangFeng , (LoadInteger(YDHT, GetHandleId((cangling)), 0x81FD3994))) // INLINED!!
	    call SetHP(Cangling___UCangFeng , (LoadInteger(YDHT, GetHandleId((cangling)), 0xFCD961C9))) // INLINED!!
	    set Cangling___UCangHuo=CreateUnit(GetOwningPlayer(cangling), 'Orex', (RMinBJ(RMaxBJ(((GetUnitX(cangling) + GetRandomReal(- 200, 200))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(cangling) + GetRandomReal(- 200, 200))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
	    call SetHeroInt(Cangling___UCangHuo, GetHeroInt(cangling, true), true)
	    call SetHeroAgi(Cangling___UCangHuo, GetHeroAgi(cangling, true), true)
	    call SetHeroStr(Cangling___UCangHuo, GetHeroStr(cangling, true), true)
	    call SetHeroLevel(Cangling___UCangHuo, GetHeroLevel(cangling), false)
	    call SelectHeroSkill(Cangling___UCangHuo, 'A0HI')
	    call SelectHeroSkill(Cangling___UCangHuo, 'A0HJ')
	    call SelectHeroSkill(Cangling___UCangHuo, 'A0HK')
	    call SetAttack(Cangling___UCangHuo , (LoadInteger(YDHT, GetHandleId((cangling)), 0x5039AFFB))) // INLINED!!
	    call SetDefense(Cangling___UCangHuo , (LoadInteger(YDHT, GetHandleId((cangling)), 0x81FD3994))) // INLINED!!
	    call SetHP(Cangling___UCangHuo , (LoadInteger(YDHT, GetHandleId((cangling)), 0xFCD961C9))) // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(Cangling___UCangHuo), GetUnitY(Cangling___UCangHuo)))
		call TimerStart(CreateTimer(), 120, false, function Cangling___YiQiSanHuaTimer)
		call TimerStart(CreateTimer(), 1, true, function Cangling___ZiLeiHuTi)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Cangling___CreateTanlang takes nothing returns nothing
  local integer i= GetRandomInt(1, 3)
  local integer ty= 0
  local real x= (RMinBJ(RMaxBJ(((GetUnitX(Cangling___UTanlang) + GetRandomReal(- 400, 400))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
  local real y= (RMinBJ(RMaxBJ(((GetUnitY(Cangling___UTanlang) + GetRandomReal(- 400, 400))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
  local unit u= null
		if ( i == 1 ) then
			set ty='h00W'
		elseif ( i == 2 ) then
			set ty='h00Y'
		else
			set ty='h00Z'
		endif
		set u=CreateUnit(GetOwningPlayer(cangling), ty, x, y, GetRandomReal(0, 360))
		call UnitApplyTimedLifeBJ(10, 'BHwe', u)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(u), GetUnitY(u)))
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Cangling___TanLangMangYaoTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer i= LoadInteger(spellTable, id, 1)
		if ( i > 0 ) then
			call SaveInteger(spellTable, id, 1, i - 1)
			call Cangling___CreateTanlang()
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable, id)
			call DestroyTimer(t)
	    	call PrintSpellContent(GetOwningPlayer(cangling) , GetAbilityName('A0HM') , "技能时间结束！")
		endif
		set t=null
	endfunction

	
 function Cangling___TanLangMangYaoRotateTimer takes nothing returns nothing
		if ( IsUnitAliveBJ(Cangling___UTanlang) ) then
			call SetUnitFacing(Cangling___UTanlang, ModuloReal(GetUnitFacing(Cangling___UTanlang) + 7.2, 360))
		else
			call PauseTimer(GetExpiredTimer())
			call DestroyTimer(GetExpiredTimer())
			set Cangling___UTanlang=null
		endif
	endfunction

 function Cangling___TanLangMangYao takes nothing returns nothing
  local timer t= CreateTimer()
		set Cangling___UTanlang=CreateUnit(GetOwningPlayer(cangling), 'h013', GetUnitX(cangling), GetUnitY(cangling), 0)
		call UnitApplyTimedLifeBJ(25, 'BHwe', Cangling___UTanlang)
		call SaveInteger(spellTable, GetHandleId(t), 1, 15)
		call TimerStart(t, 1, true, function Cangling___TanLangMangYaoTimer)
		call TimerStart(CreateTimer(), 0.05, true, function Cangling___TanLangMangYaoRotateTimer)
    	call PlaySoundBJ(gg_snd_cangling_5)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Cangling___TSpellCanglingCon takes nothing returns boolean
		return GetOwningPlayer(GetSpellAbilityUnit()) == GetOwningPlayer(cangling)
	endfunction

 function Cangling___TSpellCanglingAct takes nothing returns nothing
		if ( GetSpellAbilityId() == 'A0HI' ) then
			call Cangling___BuMieZhenYan(5 , GetSpellAbilityId() , GetSpellTargetX() , GetSpellTargetY())
		elseif ( GetSpellAbilityId() == 'A0HJ' and GetSpellAbilityUnit() == cangling ) then
			call Cangling___LianJieDiMeng()
		elseif ( GetSpellAbilityId() == 'A0HK' ) then
			call Cangling___GuangYinWuSuo()
		elseif ( GetSpellAbilityId() == 'A0HL' ) then
			call Cangling___YiQiSanHua()
		elseif ( GetSpellAbilityId() == 'A0HM' ) then
			call Cangling___TanLangMangYao()
		//切换背包
		elseif ( GetSpellAbilityId() == 'A0HH' ) then
			if ( IsInRect(GetUnitX(cangling) , GetUnitY(cangling) , gg_rct_______a3) and IsInRect(GetUnitX(cangling) , GetUnitY(cangling) , gg_rct_______a3) ) then
				call DisplayTextToPlayer(GetOwningPlayer(cangling), 0., 0., "|cFFFF66CC【消息】|r此处禁止切换背包.")
			else
				call Cangling___BiBoBaoZhuo()
			endif
		//阳炎无双
		elseif ( GetSpellAbilityId() == 'A0HS' ) then
			call Cangling___YangYanWuShuang()

		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillCanglingI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == cangling ) then
			if ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((cangling))) == 1) == true and GetUnitAbilityLevel(cangling, 'A0HK') == 1 ) then // INLINED!!
				//技能3初始化
				call AddSpecialEffectTargetUnitBJ("origin", cangling, "war3mapImported\\yanbao.mdl")
				call UnitAddAbility(gg_unit_n01S_0258, 'A0HR') // INLINED!!
			endif
		endif
	endfunction

 function LearnSkillCangling takes unit learner,integer learnSpellID returns nothing
		if ( learner == cangling ) then
			if ( learnSpellID == 'A0HI' ) then
				call LearnSkillCanglingI(learner , 1)
			elseif ( learnSpellID == 'A0HJ' ) then
				call LearnSkillCanglingI(learner , 2)
			elseif ( learnSpellID == 'A0HK' ) then
				call LearnSkillCanglingI(learner , 3)
			elseif ( learnSpellID == 'A0HL' ) then
				call LearnSkillCanglingI(learner , 4)
			elseif ( learnSpellID == 'A0HM' ) then
				call LearnSkillCanglingI(learner , 5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function InitCangling takes unit u returns nothing
		set cangling=u

	    //英雄第二个技能攻击事件
	    set Cangling___TSpellCangling2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Cangling___TSpellCangling2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Cangling___TSpellCangling2, Condition(function Cangling___TSpellCangling2Con))
	    call TriggerAddAction(Cangling___TSpellCangling2, function Cangling___TSpellCangling2Act)

	    //苍凌的所有技能
		set Cangling___TSpellCangling=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Cangling___TSpellCangling, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(Cangling___TSpellCangling, Condition(function Cangling___TSpellCanglingCon))
	    call TriggerAddAction(Cangling___TSpellCangling, function Cangling___TSpellCanglingAct)


	    call TimerStart(CreateTimer(), 0.05, true, function Cangling___BiBoBaoZhuoTimer)

	endfunction


//library Cangling ends
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
//library Qixi:
	
//---------------------------------------------------------------------------------------------------
	
 function Buchang takes player p returns nothing
  local integer i= GetConvertedPlayerId(p)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi___Fafang1 takes player p returns nothing
		if ( GetPlayerName(p) == "你挺得劲" or GetPlayerName(p) == "ㅈ轩轩" or GetPlayerName(p) == "利绝天" or GetPlayerName(p) == "躺车门始祖" ) then
			call GetAndSaveCangku(p , 3)
		endif
		endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi___Fafang2 takes player p returns nothing
		if ( GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "肆虐De疼痛" or GetPlayerName(p) == "叹之奈何也" or GetPlayerName(p) == "文能题笔安天下" ) then
			call GetAndSaveCangku(p , 4)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi___Fafang3 takes player p returns nothing
		if ( GetPlayerName(p) == "FJ风云" ) then
			call SetMoqiSpinOK(p)
			call SetSeyuSpinOK(p)
			call SetXiaoyueSpinOK(p)
		elseif ( GetPlayerName(p) == "伊人泪。" ) then
			call SetXiaoyueSpinOK(p)
		elseif ( GetPlayerName(p) == "话唠。" ) then
			call SetHuanyiSpinOK(p)
			call SetKaisaSpinOK(p)
		elseif ( GetPlayerName(p) == "天子脚下一堆坑" ) then
			call SetXuanxue2SpinOK(p)
			call SetSheyanSpinOK(p)
		elseif ( GetPlayerName(p) == "Cyandrizzle" ) then
			call SetHuanyiSpinOK(p)
		elseif ( GetPlayerName(p) == "肆虐De疼痛" ) then
			call SetXuanxue2SpinOK(p)
		elseif ( GetPlayerName(p) == "好声音更动人" ) then
			call SetHuanyiSpinOK(p)
		elseif ( GetPlayerName(p) == "与你童在" ) then
			call SetHuanyiSpinOK(p)
		elseif ( GetPlayerName(p) == "魔兽2333" ) then
			call SetHuanyiSpinOK(p)
		elseif ( GetPlayerName(p) == "躺车门始祖" ) then
			call SetKaisaSpinOK(p)
			call SetMoqiSpinOK(p)
			call SetLingxueSpinOK(p)
		elseif ( GetPlayerName(p) == "天狱灬孤狼" ) then
			call SetXuanxue1SpinOK(p)
		elseif ( GetPlayerName(p) == "傻傻的芒果" ) then
			call SetXuanxue1SpinOK(p)
			call SetXuanxue2SpinOK(p)
		elseif ( GetPlayerName(p) == "神天羽" ) then
			call SetHuanyiSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi___Fafang4 takes player p returns nothing
		if ( GetPlayerName(p) == "因我而空虚" or GetPlayerName(p) == "青山绿水丶" or GetPlayerName(p) == "Buckethead" or GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "丶念少。" ) then
			call SetSichenSpinOK(p)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Qixi___QixiHuodongFafang takes player p returns nothing
		//倾雪
		call Qixi___Fafang1(p)

		//救死
		call Qixi___Fafang2(p)

		//皮肤
		call Qixi___Fafang3(p)

		//幻逸
		call Qixi___Fafang4(p)

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Qixi___QixiHuodongJudgeTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local player p= LoadPlayerHandle(LHTable, id, 1)
		call Qixi___QixiHuodongFafang(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable, id)
		call DestroyTimer(t)
		set p=null
		set t=null
	endfunction

 function QixiHuodong takes player p returns nothing
  local timer t= CreateTimer()
		call SavePlayerHandle(LHTable, GetHandleId(t), 1, p)
		call TimerStart(t, 1, false, function Qixi___QixiHuodongJudgeTimer)
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
		call BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战1,所有英雄失去攻击速度与100000%的移动速度.")
		set u=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___Tiaozhan2Timer takes nothing returns nothing
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
		call TimerStart(CreateTimer(), 1, true, function ChallangerMode___Tiaozhan2Timer)
		call BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战2,所有英雄获得金钱为1%,英雄每秒减少10%的生命.(13波开始每秒减少30%的生命)")
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
		endif

		if ( CType != 0 ) then
			set SgameMode=S3(CDiff == 1 , "简单" , S3(CDiff == 2 , "中等" , "困难")) + GetChallangerTitle(CType)
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
		call DialogSetMessage(udg_X_Nandu, "选择难度")
	    if ( i < 2 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "天国（24波）")
		    set udg_X_Nandu_Chuangkou[1]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 3 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "太平（24波）")
		    set udg_X_Nandu_Chuangkou[2]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 4 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "和谐（24+5波）")
		    set udg_X_Nandu_Chuangkou[3]=GetLastCreatedButtonBJ()
	    endif
	    if ( i < 5 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "战争（24+5波）")
		    set udg_X_Nandu_Chuangkou[4]=GetLastCreatedButtonBJ()
		endif
	    if ( i < 6 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "炼狱（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[5]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 7 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "地狱（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[6]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 8 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cFFFF0000末日|r（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[7]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 9 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cffff00ff轮回|r（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[8]=GetLastCreatedButtonBJ()
		endif
		
	    if ( i < 10 ) then
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff008000万劫|r（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[9]=GetLastCreatedButtonBJ()
		endif

	    if ( (IsAchieveOK(Player(0) , 325)) ) then // INLINED!!
		    call DialogAddButtonBJ(udg_X_Nandu, "|cff993366天魇|r（24+5+1波）")
		    set udg_X_Nandu_Chuangkou[10]=GetLastCreatedButtonBJ()
	    endif

	    call DialogDisplay(GetFirstPlayer(), udg_X_Nandu, true)

	    if ( CType != 0 ) then
	    	call InitChallanger()
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___ChooseSpeedClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为经典(常速).")
			set mode=1
			set SgameMode=SgameMode + "C"
    	endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为加速(进阶).")
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
	
 function ChallangerMode___CreateCDialog4 takes nothing returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

    	call DialogSetMessage(d, "经典(常速)还是加速?")
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "经典(推荐)"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "加速(进阶)", 512))

	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseSpeedClick)
	    set d=null
	    set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___ChooseComfirmClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	call ChallangerMode___CreateCDialog4()
        	call BJDebugMsg("|cFFFF66CC【消息】|r已确认挑战内容,正在选择加速与难度.")
    	endif

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
    		call TriggerExecute(st___prototype37[(1)]) // INLINED!!
        	call BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战类型.")
    	endif

        call FlushChildHashtable(LHTable, GetHandleId(d))
    	call DialogDisplay(Player(0), d, false)
        call DialogClear(d)
        call DialogDestroy(d)
        set d=null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___CreateCDialog3 takes integer i returns nothing
     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()

    	call DialogSetMessage(d, GetChallangerContent(i))
    	//设置类型
    	set CType=i
	    
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "确认选择"))
    	call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "返回|cffff6800(Esc)|r", 512))

	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseComfirmClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___ChooseChallangerClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()
     local integer i= 1

	    loop
	    	exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i) ) then
        		call ChallangerMode___CreateCDialog3(i)
        		call BJDebugMsg("|cFFFF66CC【消息】|r当前挑战为" + GetChallangerTitle(i) + ".")
	    	endif
	    	set i=i + 1
	    endloop

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10) ) then
    		call TriggerExecute(st___prototype37[(2)]) // INLINED!!
    		call BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战难度.")
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
	    	call DialogSetMessage(d, "选择挑战类别(简单)")
	    elseif ( CDiff == 2 ) then
	    	call DialogSetMessage(d, "选择挑战类别(中等)")
	    elseif ( CDiff == 3 ) then
	    	call DialogSetMessage(d, "选择挑战类别(困难)")
	    endif

	    call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetChallangerTitle(6) + S3(IsChallangerComplete(GetFirstPlayer() , 6) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))

	    loop
	    	exitwhen i > 5
		    call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer() , i) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
	    	set i=i + 1
	    endloop

    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "返回|cffff6800(Esc)|r", 512))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseChallangerClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ChallangerMode___ChooseDifficultyClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
        	set CDiff=1
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为简单.")
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
        	set CDiff=2
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为中等.")
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 3) ) then
        	set CDiff=3
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为困难.")
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

	    call DialogSetMessage(d, "选择挑战难度")
	    if ( false ) then
		    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单(" + I2S(GetEasyComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等(" + I2S(GetMiddleComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难(" + I2S(GetHardComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		else
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难"))
	    endif
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseDifficultyClick)
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

		//100倍攻击加强
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
				//60倍技能
				call UnitAddAbility(u, 'A0GL')
			endif

			//闪烁技能
			call UnitAddAbility(u, 'ANbl')
			call UnitAddAbility(u, 'A0HE')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintDifficulty takes nothing returns nothing
  local integer d= GetDiffculty()
		if ( d == 6 ) then
			call BJDebugMsg("|cFFFF66CC【消息】|r地狱难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高100%,生命提高66%.")
		elseif ( d == 7 ) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cffff0000末日|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高200%,生命提高133%.")
		elseif ( d == 8 ) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cffff00ff轮回|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.")
		elseif ( d == 9 ) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cff008000万劫|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱前30层与天庭均会增强同上属性.")
			call BJDebugMsg("|cFFFF66CC【消息】|r所有单位增加50%基础防御,所有非英雄单位增加2%生命回复速度.")
			call BJDebugMsg("|cFFFF66CC【消息】|r野怪每次升级会升3级.")
			call BJDebugMsg("|cFFFF66CC【消息】|r进攻怪获得技能\"闪烁\",10波以后怪物提高20倍生命与20倍攻击.")
			call BJDebugMsg("|cFFFF66CC【消息】|r熊猫与大法BOSS提高50倍生命与20倍生命.")
			call BJDebugMsg("|cFFFF66CC【消息】|r英雄获得经验减少25%.")
			call BJDebugMsg("|cFFFF66CC【消息】|r通关该难度可以加轮回之狱主群把你名字永久保存在|cff99cc00封帝万劫录|r中哦!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitWanjie takes nothing returns nothing

		//光环（加防和回血）
    	set UWanjieGuanghuan=CreateUnit(Player(10), 'h00U', 0, 0, 0)
    	if ( IsTianyan ) then
    		call SetUnitAbilityLevel(UWanjieGuanghuan, 'A0HD', 2)
    		call UnitAddAbility(UWanjieGuanghuan, 'A0JJ')
    	endif
    	call ShowUnitHide(UWanjieGuanghuan)

		//前三野与前30层科技 3倍生命
    	call SetPlayerTechResearchedSwap('R00X', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R00X', 1, Player(11))
    	//11-24波怪物，10倍生命
    	call SetPlayerTechResearchedSwap('R00Y', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R00Y', 1, Player(11))
    	//加宝石射程
    	call SetPlayerTechResearchedSwap('R010', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R010', 1, Player(11))
    	call SetPlayerTechResearchedSwap('R011', 1, Player(10))
    	call SetPlayerTechResearchedSwap('R011', 1, Player(11))
    	//冥刹30000E
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
		call ShowGameHintAll("\n		感谢对本地图的支持！\n    	你选择的难度在这波就结束了.\n    	后续的关卡请选择\"和谐\"难度(难度3)或以上进行体验\n    	(前5个难度其实提升不大)")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Show2451Dialog takes nothing returns nothing
		call ShowGameHintAll("\n			感谢对本地图的支持！\n	    	你选择的难度在这波就结束了.\n	    	后续的关卡请选择\"炼狱\"难度(难度35)或以上进行体验\n	    	(前5个难度其实提升不大)")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowMingjieDialog takes nothing returns nothing
		call ShowGameHintAll("\n			|cffff6800新任务:|r\n			击败来自冥界的5波攻击并击败|cffff0000冥刹|r.")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ShowKuileiDialog takes nothing returns nothing
		call ShowGameHintAll("\n			|cffff6800新任务:|r\n			击败六界傀儡|cffffff00穆晴|r与白浅.")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Diffculty___GameModeClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()

        if ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1) ) then
			//经典模式
			set mode=1
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"经典模式\".")
			set SgameMode="经典"
			call ChooseDifficulty(1)
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 3) ) then
			//加速模式
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"挑战模式\".")
			set SgameMode="挑战"
			set mode=1
			call CreateCDialog1() // INLINED!!
		elseif ( GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2) ) then
			//挑战模式
			set mode=2
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"加速模式\".")
			set SgameMode="加速"
			call ChooseDifficulty(1)
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

	    call DialogSetMessage(d, "请选择游戏模式")
	    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "经典模式"))
	    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "挑战模式(New)"))
	    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "加速模式(进阶)"))
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
	        call DisplayTextToForce(GetPlayersAll(), "|cFFFF66CC【消息】|r|cffff9900圣主Crainax的分身|r复活.")
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
	        call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r|cFFFF6699千年孤魂|r|cffffcc00弑魂|r复活了。" ))
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
	        set TiDiaNecklace=CreateTimerDialogBJ(t, "圣主分身复活")
	        call TimerStart(t, 900, false, function ItemBase___ReviveNecklace)
	        call TimerDialogDisplay(TiDiaNecklace, true)
	        set t=null
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function ItemBase___InitItemBase takes nothing returns nothing


		//删除书本的小点BUG
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TBookBUGCon))
		call TriggerAddAction(t, function ItemBase___TBookBUGAct)

		//获得翅膀的技能
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase___TGetWingSpellPickAct)

		//删掉翅膀的技能
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TGetWingSpellCon))
		call TriggerAddAction(t, function ItemBase___TGetWingSpellDropAct)

		//死亡掉落戒指和项链
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddAction(t, function BossDeathDropItem)
		set UCrainax=CreateUnit(Player(10), 'Ekgg', - 1661.7, - 14985.1, 180.000)



		set t=null

	endfunction


//library ItemBase ends
//library Continous:


//---------------------------------------------------------------------------------------------------
	
 function Continous___GetGoldReward takes integer day returns integer
		return I3(day == 1 , 500 , R2I(( SquareRoot(day) + 2. ) * 300.))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GiveJianianhuaGift takes player p returns nothing
  local integer i= IConDays[GetConvertedPlayerId(p)]
  local unit u= udg_H[GetConvertedPlayerId(p)]

		call AdjustPlayerStateBJ(Continous___GetGoldReward(i), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)

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
			call SetLingxueSpinOK(p)
		endif

		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetDailyReward takes integer days returns string
		if ( days == 2 ) then
			return "天地庇佑 * 2"
		elseif ( days == 4 ) then
			return "血精石 * 1"
		elseif ( days == 7 ) then
			return "|cffffff00【妖】五行之杖|r * 1"
		elseif ( days == 12 ) then
			return "聚宝·Lv0 * 1"
		elseif ( days == 14 ) then
			return "|cFF339933沐雪无瑕|r皮肤"
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
        local string s= "\n        	连续登录奖励\n\n        	你获得了第" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天对应的" + I2S(Continous___GetGoldReward(IConDays[GetConvertedPlayerId(p)])) + "金币!\n        	明天继续签到可以获得" + I2S(Continous___GetGoldReward(IConDays[GetConvertedPlayerId(p)] + 1)) + "的金币!\n\n        	\n        	"
        local integer i= 1
        loop
        	exitwhen i > 26
        	if ( GetDailyReward(i) != null ) then
        		set s=s + "第" + I2S(i) + "天:" + GetDailyReward(i) + S3(IConDays[GetConvertedPlayerId(p)] >= i , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r") + "\n        		"
        	endif
        	set i=i + 1
        endloop
                		set s=s + "\n        你已经连续签到了" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天,注意断签了会重新计算哦."
        call DialogSetMessage(d, s)
        call DialogAddButton(d, "10分钟之后当天才签到成功|cffff6800(Esc)|r", 512)
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
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的签到指数为" + I2S(IQiandao2[GetConvertedPlayerId(p)]) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveLoginState takes player p returns nothing
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreInteger(p , "IConDays" , IConDays[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "ILastTime" , ILastTime[GetConvertedPlayerId(p)])
			call DzAPI_Map_StoreInteger(p , "IQiandao2" , IQiandao2[GetConvertedPlayerId(p)])
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
		else
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r")
			call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r")
		endif
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
		//活动还没开始，或者说是首次
		if ( (0) < TIMESTAMP_START ) then // INLINED!!
			call BJDebugMsg("|cFFFF66CC【消息】|r ")
			call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r嘉年华时间未开始.")
			return
		endif

		if ( ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START ) then
			set ILastTime[GetConvertedPlayerId(p)]=TIMESTAMP_START
			set IConDays[GetConvertedPlayerId(p)]=0
		endif

		//断签啦重新存储

		if ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] ) then
			//首次连续登录的提示与奖励
			set IConDays[GetConvertedPlayerId(p)]=GetContinousDay(p) + 1

			set IQiandao2[GetConvertedPlayerId(p)]=IQiandao2[GetConvertedPlayerId(p)] + (0) - Continous___GetCurrentStartTime(p) // INLINED!!
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(注意今天的签到需要等10分钟才能保存).")
		elseif ( GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1 ) then
			//保持当天的奖励

			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(今天的签到数据已经在前面游戏中保存了哦).")
		else
			set ILastTime[GetConvertedPlayerId(p)]=Continous___GetCurrentStartTime(p)
			set IConDays[GetConvertedPlayerId(p)]=1

			set IQiandao2[GetConvertedPlayerId(p)]=IQiandao2[GetConvertedPlayerId(p)] + (0) - Continous___GetCurrentStartTime(p) // INLINED!!
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(注意今天的签到需要等10分钟才能保存).")
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
		return "|cff99ccff需要地图等级达到2级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetMengjiHint takes nothing returns string
		return "|cff99ccff需要地图等级达到6级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetCanglingHint takes nothing returns string
		return "|cff99ccff需要地图等级达到8级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXinglongHint takes nothing returns string
		return "|cff99ccff需要地图等级达到11级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetXiaotingHint takes nothing returns string
		return "|cff99ccff考虑到操作对新手可能不友好,通关炼狱难度后证明自己的实力即可选取|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function PrintCurrentPlatformLevel takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r当前你的平台地图等级为：" + I2S(DzAPI_Map_GetMapLevel(p)) + "！")
		call QixiHuodong(p)
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
    			
    			set Idaixin[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "daixin")
    			set Ileishi[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "leishi")
    			set SDIY[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "diy")
    			set Greward[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "Greward")
    			set IConDays[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "IConDays")
    			set ILastTime[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "ILastTime")
    			set IQiandao2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "IQiandao2")
    			set spin2[i]=DzAPI_Map_GetStoredInteger(ConvertedPlayer(i) , "spin2")
    			set easyCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "easyCString")
    			set middleCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "middleCString")
    			set hardCString[i]=DzAPI_Map_GetStoredString(ConvertedPlayer(i) , "hardCString")
    			
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r读取数据中.....")
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

		call BJDebugMsg("|cFFFF66CC【消息】|r正在保存游戏数据中....请不要马上退出游戏,以免保存失败...")

		loop
			exitwhen i > 6
			if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
				//通关称号
				call GetAchievementAndSave(ConvertedPlayer(i) , I3(level == 9 , 325 , 10 + level))

				//单通称号
				if ( renshu == 1 and level != 9 ) then
					call GetAchievementAndSave(ConvertedPlayer(i) , I3(level < 8 , 217 - level , 29))
				endif

				//玄雪末日权杖
				if ( renshu == 1 and udg_H[i] == xuanxue and level >= 4 ) then
					call SetXuanxue1SpinOK(ConvertedPlayer(i))
				endif

				//基地的血
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

				if ( (CType == 3) ) then // INLINED!!
					call GetAchievementAndSave(ConvertedPlayer(i) , 410)
				endif
				
				if ( (CType == 4) ) then // INLINED!!
					call GetAchievementAndSave(ConvertedPlayer(i) , 411)
				endif

				if ( CType != 0 ) then
					call ChallangerSuccess(ConvertedPlayer(i))
				endif

			endif
			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SaveAchievementKuilei1 takes nothing returns nothing

  local integer i= 1
  local integer level= GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r正在保存游戏数据中....请不要马上退出游戏,以免保存失败...")

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

				//通关称号,时间
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
		if not ( Bdudang[index] ) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r本局游戏英雄次数数据读取失败,请重新开始游戏.")
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
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r本局游戏英雄次数数据读取失败,请重新开始游戏.")
			return
		endif
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的所有英雄使用次数如下所示：")
		loop
			exitwhen i > HERO_COUNT
			set result=result + GetIndexHeroColorName(i) + "的使用次数:" + I2S(GetSpecifyHeroTimes(p , i)) + ","
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
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想调节视角高度,请输入-+")
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想隐藏技能伤害,请输入-sh(不推荐新手输入)")
		//call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想取消彩色皮肤,请输入-qc")

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
		if ( killCount[GetConvertedPlayerId(p)] >= 125000 and udg_H[GetConvertedPlayerId(p)] == sheyan ) then
			call SetSheyanSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance1 takes unit u returns nothing
        local real percentThousand= ( GetUnitState(u, UNIT_STATE_LIFE) * 1000. ) / GetUnitState(u, UNIT_STATE_MAX_LIFE)
        if ( UnitHasBuffBJ(u, 'Bapl') or UnitHasBuffBJ(u, 'Bpoi') or UnitHasBuffBJ(u, 'Bpsd') ) then
        	call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你拥有中毒BUFF.")
        	return
        endif
        if ( percentThousand < 10 and IsUnitAliveBJ(u) and not ( BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(u))] ) ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 412)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你当前的生命为千分之" + R2S(percentThousand) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance2 takes unit u returns nothing
        local real life= GetUnitState(u, UNIT_STATE_MAX_LIFE)
        if ( life > 500000000 ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 413)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你当前的生命为" + R2S(life) + ".")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Jiance3 takes unit u returns nothing
        local integer defense= GetHeroAgi(u, true) / 100 + (LoadInteger(YDHT, GetHandleId((u)), 0x81FD3994)) // INLINED!!
        if ( defense > 1000000 ) then
			call GetAchievementAndSave(GetOwningPlayer(u) , 414)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你判定的防御为" + R2S(defense) + ".")
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
		if ( Bdudang[GetConvertedPlayerId(p)] ) then
			call DzAPI_Map_StoreString(p , "hero" , heroCountString[GetConvertedPlayerId(p)])
	    	call DzAPI_Map_Stat_SetStat(p , "hero" , GetIndexHeroName(GetBestHero(p)))
	    else
	    	call ShowGameHint(p , "\n	    		本局游戏数据读取失败,建议重新开始游戏.\n	    		(还是能正常游戏,但是不能获得成就与皮肤)")
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
		call SetPlayerName(p, GetRandomColor() + "【" + GetRandomColor() + SDIY[id] + GetRandomColor() + "】" + GetRandomColor() + playerName[id] + "|r")
		call DzAPI_Map_Stat_SetStat(p , "achi" , SDIY[id])
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitAchievementName takes unit u returns nothing
  local integer id= GetConvertedPlayerId(GetOwningPlayer(u))
		//计时英雄数
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
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u)) + "|cff00ff00受到了来自圣界的欢迎!!!|r")
		endif

		call InitChallangerData(GetOwningPlayer(u))

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetDIYName takes player p,string s returns nothing
  local integer i= GetConvertedPlayerId(p)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成就将成就自定义成:" + s + ".")
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
//library MiniGame:
	
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___XiaojunengTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(LHTable, id, 1)
		if ( IsUnitAliveBJ(u) ) then
     		call IssuePointOrder(u, "stampede", GetRectCenterX(gg_rct_Game1), GetRectCenterY(gg_rct_Game1))
		else
			call PauseTimer(t)
			call FlushChildHashtable(LHTable, id)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
	endfunction

 function MiniGame___StartTimerXiaojuneng takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(LHTable, GetHandleId(t), 1, u)
		call TimerStart(t, 5, true, function MiniGame___XiaojunengTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CreateGame1Majia takes real angle returns nothing
  local real x= GetRectCenterX(gg_rct_Game1) + 200. * CosBJ(angle)
  local real y= GetRectCenterY(gg_rct_Game1) + 200. * SinBJ(angle)
  local unit u= CreateUnit(Player(10), 'h01U', x, y, angle + 180)
	    call UnitAddAbility(u, 'A0DY')
	    call SetUnitAbilityLevel(u, 'A0DY', I3((GetDiffculty() == 9) , 7 , 3)) // INLINED!!
     	call IssuePointOrder(u, "stampede", GetRectCenterX(gg_rct_Game1), GetRectCenterY(gg_rct_Game1))
     	call GroupAddUnit(MiniGame___GGame1, u)
     	call MiniGame___StartTimerXiaojuneng(u)
     	set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___MiniMissileBoom takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(LHTable, id, 1)
		if ( IsUnitAliveBJ(u) ) then
			call s__Missile_create(u , 'hs01' , "Units\\Demon\\Infernal\\InfernalBirth.mdl" , 300 , 1800 , 3 , 1 , 1000000000)
		else
			call PauseTimer(t)
			call FlushChildHashtable(LHTable, id)
			call DestroyTimer(t)
		endif
		set u=null
		set t=null
	endfunction

 function MiniGame___RefreshMiniMingcha takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(LHTable, GetHandleId(t), 1, u)
		call TimerStart(t, 0.4, true, function MiniGame___MiniMissileBoom)
		set t=null
	endfunction

 function CreateGame2Majia takes nothing returns nothing
  local real x= GetRandomReal(GetRectMinX(gg_rct_Game2), GetRectMaxX(gg_rct_Game2))
  local real y= GetRandomReal(GetRectMinY(gg_rct_Game2), GetRectMaxY(gg_rct_Game2))
  local unit u= CreateUnit(Player(10), 'h01U', x, y, GetRandomReal(0, 360))
		call MiniGame___RefreshMiniMingcha(u)
     	call GroupAddUnit(MiniGame___GGame2, u)
     	set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
	//奖励值
 function MiniGame___GetSpecifyTimeGold takes nothing returns integer
		return R2I(( ( I2R(MiniGame___TTimeGame1) / 50. ) + 1. ) * ( 2.5 * ( I2R(udg_Bo) / 2. + 1 ) ))
	endfunction

 function MiniGame___FlashGame1Reward takes nothing returns nothing
  local integer i= 1
  local string s= ""
		set MiniGame___TTimeGame1=MiniGame___TTimeGame1 + 1
		loop
			exitwhen i > 6
			if ( MiniGame___IGoldGame1[i] != 0 ) then
				set MiniGame___IGoldGame1[i]=MiniGame___IGoldGame1[i] + (R2I(( ( I2R(MiniGame___TTimeGame1) / 50. ) + 1. ) * ( 2.5 * ( I2R(udg_Bo) / 2. + 1 ) ))) * CModeH(1 , 2) // INLINED!!
				set s=s + GetUnitName(udg_H[i]) + ":" + I2S(MiniGame___IGoldGame1[i]) + "\n				"
			endif
			set i=i + 1
		endloop
		set s=s + "时间:" + I2S(MiniGame___TTimeGame1 / 10) + "s"
		call SetTextTagTextBJ(MiniGame___TTGame1, s, 10)
		set s=null
		if ( MiniGame___TTimeGame1 == 50 ) then
			call CreateGame1Majia(45.)
		elseif ( MiniGame___TTimeGame1 == 100 ) then
			call CreateGame1Majia(135.)
		elseif ( MiniGame___TTimeGame1 == 150 ) then
			call CreateGame1Majia(225.)
		elseif ( MiniGame___TTimeGame1 == 200 ) then
			call CreateGame1Majia(0.)
		elseif ( MiniGame___TTimeGame1 == 250 ) then
			call CreateGame1Majia(90.)
		elseif ( MiniGame___TTimeGame1 == 300 ) then
			call CreateGame1Majia(180.)
		elseif ( MiniGame___TTimeGame1 == 350 ) then
			call CreateGame1Majia(270.)
		elseif ( ModuloInteger(MiniGame___TTimeGame1, 50) == 0 ) then
			call CreateGame1Majia(GetRandomReal(0., 360.))
		endif
	endfunction

 function MiniGame___StartGame1 takes nothing returns nothing
		if ( MiniGame___TGame1 == null ) then
			set MiniGame___TGame1=CreateTimer()
			set MiniGame___GGame1=CreateGroup()
			call TimerStart(MiniGame___TGame1, 0.1, true, function MiniGame___FlashGame1Reward)
			set MiniGame___TTGame1=CreateTextTagUnitBJ("奖励", gg_unit_n01Q_0273, 0, 10, 0, 100, 0, 0)
			set MiniGame___TTimeGame1=0
			call CreateGame1Majia(315.)
		endif
	endfunction

 function MiniGame___RemoveAllMini takes nothing returns nothing
		call RemoveUnit(GetEnumUnit())
	endfunction

 function MiniGame___DestroyGame1 takes nothing returns nothing
		if ( MiniGame___TGame1 != null ) then
			call PauseTimer(MiniGame___TGame1)
			call DestroyTimer(MiniGame___TGame1)
			call DestroyTextTag(MiniGame___TTGame1)
			set MiniGame___TGame1=null
			call ForGroup(MiniGame___GGame1, function MiniGame___RemoveAllMini)
			call DestroyGroup(MiniGame___GGame1)
			set MiniGame___GGame1=null
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___FlashGame2Reward takes nothing returns nothing
  local integer i= 1
  local string s= ""
		set MiniGame___TTimeGame2=MiniGame___TTimeGame2 + 1
		loop
			exitwhen i > 6
			if ( MiniGame___IGoldGame2[i] != 0 ) then
				set MiniGame___IGoldGame2[i]=MiniGame___IGoldGame2[i] + (R2I(( ( I2R(MiniGame___TTimeGame1) / 50. ) + 1. ) * ( 2.5 * ( I2R(udg_Bo) / 2. + 1 ) ))) * CModeH(1 , 2) * 4 // INLINED!!
				set s=s + GetUnitName(udg_H[i]) + ":" + I2S(MiniGame___IGoldGame2[i]) + "\n				"
			endif
			set i=i + 1
		endloop
		set s=s + "时间:" + I2S(MiniGame___TTimeGame2 / 10) + "s"
		call SetTextTagTextBJ(MiniGame___TTGame2, s, 10)
		set s=null
		if ( ModuloInteger(MiniGame___TTimeGame2, 50) == 0 ) then
			call CreateGame2Majia()
		endif
	endfunction

 function MiniGame___DestroyGame2 takes nothing returns nothing
		if ( MiniGame___TGame2 != null ) then
			call PauseTimer(MiniGame___TGame2)
			call DestroyTimer(MiniGame___TGame2)
			call DestroyTextTag(MiniGame___TTGame2)
			set MiniGame___TGame2=null
			call ForGroup(MiniGame___GGame2, function MiniGame___RemoveAllMini)
			call DestroyGroup(MiniGame___GGame2)
			set MiniGame___GGame2=null
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___StartGame2 takes nothing returns nothing
		if ( MiniGame___TGame2 == null ) then
			set MiniGame___TGame2=CreateTimer()
			call TimerStart(MiniGame___TGame2, 0.1, true, function MiniGame___FlashGame2Reward)
			set MiniGame___GGame2=CreateGroup()
			set MiniGame___TTGame1=CreateTextTagUnitBJ("奖励", MiniGame___UGame2, 0, 10, 0, 100, 0, 0)
			set MiniGame___TTimeGame2=0
			call CreateGame2Majia()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function EnterMiniGame takes nothing returns nothing
  local real x
  local real y
		if ( ( GetItemTypeId(GetSoldItem()) == 'I06K' ) ) then
			set x=GetRectCenterX(gg_rct_Game1)
			set y=GetRectCenterY(gg_rct_Game1)

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	        return
	    elseif ( ( GetItemTypeId(GetSoldItem()) == 'I06M' ) and GetBuyingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))] and RectContainsUnit(gg_rct_Game1, GetBuyingUnit()) ) then
	    	call MiniGame___StartGame1()
	    	call BJDebugMsg("|cFFFF66CC【消息】|r迷你挑战-骷髅海开始啦!")
            call PingMinimapForForce(GetPlayersAll(), GetRectCenterX(gg_rct_Game1), GetRectCenterY(gg_rct_Game1), 5.00)
		elseif ( ( GetItemTypeId(GetSoldItem()) == 'I07B' ) ) then
			set x=GetRectCenterX(gg_rct_Game2)
			set y=GetRectCenterY(gg_rct_Game2)

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	        return
	    elseif ( ( GetItemTypeId(GetSoldItem()) == 'I07C' ) and GetBuyingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))] and RectContainsUnit(gg_rct_Game2, GetBuyingUnit()) ) then
	    	call MiniGame___StartGame2()
	    	call BJDebugMsg("|cFFFF66CC【消息】|r迷你挑战-陨石雨开始啦!")
            call PingMinimapForForce(GetPlayersAll(), GetRectCenterX(gg_rct_Game2), GetRectCenterY(gg_rct_Game2), 5.00)
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___MiniGamePlayerFilter takes nothing returns boolean
		return GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___TMiniGameCon takes nothing returns boolean
		return GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	endfunction

	//离开1事件
 function MiniGame___TLeaveMiniGameAct takes nothing returns nothing
  local integer id= GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))
        local group group1= GetUnitsInRectMatching(gg_rct_Game1, Condition(function MiniGame___MiniGamePlayerFilter))
		if ( MiniGame___IGoldGame1[id] != 1 ) then
		 	call AddHeroXP(udg_H[id], R2I(MiniGame___IGoldGame1[id] * 0.4 * udg_I_Jingyan[id]), true)
		    call AdjustPlayerStateBJ(R2I(MiniGame___IGoldGame1[id] * udg_I_Jinqianhuodelv[id]), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你通过迷你挑战获得了" + I2S(R2I(MiniGame___IGoldGame1[id] * udg_I_Jinqianhuodelv[id])) + "的金钱奖励和" + I2S(R2I(MiniGame___IGoldGame1[id] * 0.4 * udg_I_Jingyan[id])) + "的经验奖励,成功坚持了" + I2S(MiniGame___TTimeGame1 / 10) + "秒.")
		endif
		set MiniGame___IGoldGame1[id]=0
        if ( CountUnitsInGroup(group1) == 0 ) then
        	call MiniGame___DestroyGame1()
        endif
        call DestroyGroup(group1)
        set group1=null
	endfunction	

	//离开2事件
 function MiniGame___TLeaveMiniGame2Act takes nothing returns nothing
  local integer id= GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))
        local group group1= GetUnitsInRectMatching(gg_rct_Game2, Condition(function MiniGame___MiniGamePlayerFilter))
		if ( MiniGame___IGoldGame1[id] != 1 ) then
		 	call AddHeroXP(udg_H[id], R2I(MiniGame___IGoldGame1[id] * 0.4 * udg_I_Jingyan[id]), true)
		    call AdjustPlayerStateBJ(R2I(MiniGame___IGoldGame1[id] * udg_I_Jinqianhuodelv[id]), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
		    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你通过迷你挑战获得了" + I2S(R2I(MiniGame___IGoldGame1[id] * udg_I_Jinqianhuodelv[id])) + "的金钱奖励和" + I2S(R2I(MiniGame___IGoldGame1[id] * 0.4 * udg_I_Jingyan[id])) + "的经验奖励,成功坚持了" + I2S(MiniGame___TTimeGame1 / 10) + "秒.")
		endif
		set MiniGame___IGoldGame1[id]=0
        if ( CountUnitsInGroup(group1) == 0 ) then
        	call MiniGame___DestroyGame1()
        endif
        call DestroyGroup(group1)
        set group1=null
	endfunction
	
	//进入事件
 function MiniGame___TEnterMiniGameAct takes nothing returns nothing
		if ( RectContainsUnit(gg_rct_Game1, GetTriggerUnit()) ) then
			set MiniGame___IGoldGame1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=1
		elseif ( RectContainsUnit(gg_rct_Game2, GetTriggerUnit()) ) then
			set MiniGame___IGoldGame2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]=1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SimulateDamageMiniGame takes unit u returns boolean
		if ( GetUnitTypeId(u) == 'h01U' and GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) then
				call SetUnitPositionLoc((GetTriggerUnit()), udg_Point_Fuhuo) // INLINED!!
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MiniGame___InitMiniGame takes nothing returns nothing
		//离开1的事件
        local trigger t= CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct_Game1)
        call TriggerAddCondition(t, Condition(function MiniGame___TMiniGameCon))
        call TriggerAddAction(t, function MiniGame___TLeaveMiniGameAct)

        //进入12的事件
        set t=CreateTrigger()
        call TriggerRegisterEnterRectSimple(t, gg_rct_Game1)
        call TriggerAddCondition(t, Condition(function MiniGame___TMiniGameCon))
        call TriggerAddAction(t, function MiniGame___TEnterMiniGameAct)

        //离开2的事件
        set t=CreateTrigger()
        call TriggerRegisterLeaveRectSimple(t, gg_rct_Game2)
        call TriggerAddCondition(t, Condition(function MiniGame___TMiniGameCon))
        call TriggerAddAction(t, function MiniGame___TLeaveMiniGame2Act)

        set MiniGame___UGame2=CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n022', GetRectCenterX(gg_rct_Game2), GetRectCenterY(gg_rct_Game2), 270)
        set t=null
	endfunction


//library MiniGame ends

// BEGIN IMPORT OF MiniGame.j
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
// BEGIN IMPORT OF Diffculty.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF ChallangerMode.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Huodong.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF Achievement.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF ChallangerDZ.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF ChallangerDZ.j

// END IMPORT OF Achievement.j

// END IMPORT OF Huodong.j
// IGNORE DOUBLE IMPORT OF ChallangerDZ.j
// BEGIN IMPORT OF CangLing.j

// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j

 
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




// END IMPORT OF CangLing.j
// BEGIN IMPORT OF Mirror.j

// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Mirror.j

// END IMPORT OF ChallangerMode.j
/////! import "Huodong.j"
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
// BEGIN IMPORT OF Qixi.j
// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Achievement.j


// END IMPORT OF Qixi.j
// END IMPORT OF NetVersion.j
// IGNORE DOUBLE IMPORT OF SpellBase.j

// END IMPORT OF MiniGame.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs1478573906")
call ExecuteFunc("Constant__InitConstant")
call ExecuteFunc("Test__InitTest")
call ExecuteFunc("LHBase__InitLHBase")
call ExecuteFunc("Attr___InitAttr")
call ExecuteFunc("Printer___InitPrinter")
call ExecuteFunc("ItemBase___InitItemBase")
call ExecuteFunc("Continous___InitContinous")
call ExecuteFunc("InitVersion")
call ExecuteFunc("MiniGame___InitMiniGame")

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
function sa___prototype37_CreateCDialog2 takes nothing returns boolean

     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
     local integer i= 1
	    if ( CDiff == 1 ) then
	    	call DialogSetMessage(d, "选择挑战类别(简单)")
	    elseif ( CDiff == 2 ) then
	    	call DialogSetMessage(d, "选择挑战类别(中等)")
	    elseif ( CDiff == 3 ) then
	    	call DialogSetMessage(d, "选择挑战类别(困难)")
	    endif
	    call SaveButtonHandle(LHTable, GetHandleId(d), 6, DialogAddButtonBJ(d, GetChallangerTitle(6) + S3(IsChallangerComplete(GetFirstPlayer() , 6) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
	    loop
	    	exitwhen i > 5
		    call SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer() , i) , "|cffff9900(已完成)|r" , "|cff33cccc(未完成)|r")))
	    	set i=i + 1
	    endloop
    	call SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "返回|cffff6800(Esc)|r", 512))
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseChallangerClick)
	    set d=null
	    set t=null
    return true
endfunction
function sa___prototype37_CreateCDialog1 takes nothing returns boolean

     local trigger t= CreateTrigger()
     local dialog d= DialogCreate()
	    call DialogSetMessage(d, "选择挑战难度")
	    if ( false ) then
		    call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单(" + I2S(GetEasyComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等(" + I2S(GetMiddleComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难(" + I2S(GetHardComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"))
		else
			call SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等"))
		    call SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难"))
	    endif
	    call DialogDisplay(GetFirstPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function ChallangerMode___ChooseDifficultyClick)
	    set d=null
	    set t=null
    return true
endfunction

function jasshelper__initstructs1478573906 takes nothing returns nothing
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
    set st___prototype37[1]=CreateTrigger()
    call TriggerAddAction(st___prototype37[1],function sa___prototype37_CreateCDialog2)
    call TriggerAddCondition(st___prototype37[1],Condition(function sa___prototype37_CreateCDialog2))
    set st___prototype37[2]=CreateTrigger()
    call TriggerAddAction(st___prototype37[2],function sa___prototype37_CreateCDialog1)
    call TriggerAddCondition(st___prototype37[2],Condition(function sa___prototype37_CreateCDialog1))








endfunction

