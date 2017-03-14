globals
//globals from Constant:
constant boolean LIBRARY_Constant=true
string diffculty= ""
//endglobals from Constant
//globals from ItemBase:
constant boolean LIBRARY_ItemBase=true
timerdialog TiDiaNecklace
unit UCrainax
//endglobals from ItemBase
//globals from Purgatory:
constant boolean LIBRARY_Purgatory=true
		// body...
//endglobals from Purgatory
//globals from Version:
constant boolean LIBRARY_Version=true
boolean Version___Bheiyan= false
boolean Version___Bhuanyi= false
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
//endglobals from Test
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
unit learnSkillHero
        
unit array UDepot

hashtable itemTable= InitHashtable()
//endglobals from LHBase
//globals from Attr:
constant boolean LIBRARY_Attr=true
//endglobals from Attr
//globals from Beast:
constant boolean LIBRARY_Beast=true

		
constant integer Beast___kU=7
constant integer Beast___kr=9
constant integer Beast___kg=11
constant integer Beast___kb=13
constant integer Beast___ksr=15
constant integer Beast___ksg=17
constant integer Beast___ksb=19
constant integer Beast___kBeastItem=21

		
unit array Unit_Beast

constant integer DAMAGE_BEAST_00= 30000
constant integer DAMAGE_BEAST_01= 160000
constant integer DAMAGE_BEAST_02= 500000
constant integer DAMAGE_BEAST_03= 1300000
constant integer DAMAGE_BEAST_04= 3500000
constant integer DAMAGE_BEAST_05= 8000000
constant integer DAMAGE_BEAST_06= 20000000
constant integer DAMAGE_BEAST_07= 40000000
constant integer DAMAGE_BEAST_08= 60000000
constant integer DAMAGE_BEAST_09= 120000000
		
constant integer CHARGES_BEAST= 100
//endglobals from Beast
//globals from CenterBase:
constant boolean LIBRARY_CenterBase=true
//endglobals from CenterBase
//globals from Diamond:
constant boolean LIBRARY_Diamond=true
constant string DIAMOND_CANT_UPDATE= "|cFFFF66CC【消息】|r该宝石不能升级该物品。"
//endglobals from Diamond
//globals from Exercise:
constant boolean LIBRARY_Exercise=true
rect array regionAll
		//怪物的区域
rect array regionM1
rect array regionM2
rect array regionM3
rect array regionM4
rect array regionM5
rect array regionM6
timer array Exercise__TiExercise
//endglobals from Exercise
//globals from GoldSystem:
constant boolean LIBRARY_GoldSystem=true
//endglobals from GoldSystem
//globals from Mirror:
constant boolean LIBRARY_Mirror=true
timer TiMirror
timerdialog TiDiaMirror
//endglobals from Mirror
//globals from MonsterSpell:
constant boolean LIBRARY_MonsterSpell=true
trigger TSpellQianfa
trigger TSpellDart
		
constant real DRAT_JUNENG= 30000000
constant real DRAT_XIANLIAN= 15000000
integer level_juneng= 1
//endglobals from MonsterSpell
//globals from Multiboard:
constant boolean LIBRARY_Multiboard=true
		
integer array centerCredit

//endglobals from Multiboard
//globals from Pet:
constant boolean LIBRARY_Pet=true
group array GPet
//endglobals from Pet
//globals from Printer:
constant boolean LIBRARY_Printer=true
//endglobals from Printer
//globals from SpellBase:
constant boolean LIBRARY_SpellBase=true
hashtable spellTable= InitHashtable()
constant integer kUImmuteDamage=23
//endglobals from SpellBase
//globals from TouristTrap:
constant boolean LIBRARY_TouristTrap=true
		
boolean array HasCombineHalf
//endglobals from TouristTrap
//globals from Arena:
constant boolean LIBRARY_Arena=true

constant integer ARENA_MAX_LEVEL= 50

		
trigger Arena___TDieEvent

		
trigger Arena___TSpellLinger= null
trigger Arena___TSpellZhousi= null
trigger Arena___TSpellXuemo1= null
trigger Arena___TSpellXuemo2= null
trigger Arena___TSpellFuwang= null
trigger Arena___TSpellMeidusha1= null
trigger Arena___TSpellMeidusha2= null
trigger Arena___TSpellKiller1= null
trigger Arena___TSpellKiller2= null
trigger Arena___TSpellJinxuan1= null
trigger Arena___TSpellJinxuan2= null
trigger Arena___TSpellJinxuan3= null
trigger Arena___TSpellJinxuan4= null

		
integer array Arena___currentArena
		
integer Arena___currentLevel= 1
		
unit Arena___challenager= null
		
unit Arena___defier= null
		
texttag Arena___textTag_Level
//endglobals from Arena
//globals from Boss:
constant boolean LIBRARY_Boss=true
		
hashtable bossTable
trigger Boss___TSpellZuo
trigger Boss___TSpellYou
		
timer Boss___TiMissile


//endglobals from Boss
//globals from Chenji:
constant boolean LIBRARY_Chenji=true
unit chenji= null
        
trigger Chenji___TSpellChenji4= null
real Chenji___RDamage
//endglobals from Chenji
//globals from Combine:
constant boolean LIBRARY_Combine=true
//endglobals from Combine
//globals from Hanshang:
constant boolean LIBRARY_Hanshang=true
unit hanshang= null

boolean Hanshang___IsLianhuan= false
		
trigger Hanshang___TSpellHanshang= null

trigger Hanshang___TSpellHanshang2= null

trigger Hanshang___TSpellHanshang3= null

trigger Hanshang___TSpellHanshang4= null
		
real Hanshang___RLianjin= 0
real Hanshang___RLianjin2= 0
constant integer kLianhuanBoomX=25
constant integer kLianhuanBoomY=27
//endglobals from Hanshang
//globals from Heiyan:
constant boolean LIBRARY_Heiyan=true
		
trigger Heiyan___TSpellHeiyan1
trigger Heiyan___TSpellHeiyan00
trigger Heiyan___TSpellHeiyan2
trigger Heiyan___TSpellHeiyan40
trigger Heiyan___TSpellHeiyan41
trigger Heiyan___TDamageSacri
		
boolean Heiyan___BIsMojie= true
		
unit Heiyan= null

		
constant integer kUYanluo=29
		
unit Heiyan___UZangJiuTian= null

boolean Heiyan___IsDouble= false
		
integer Heiyan___ISacriMaxCount= 3
		
group Heiyan___GSacri= null

		
real Heiyan___DamageSacri
//endglobals from Heiyan
//globals from Huanyi:
constant boolean LIBRARY_Huanyi=true
		
unit Huanyi= null

		
trigger Huanyi___TSpellHuanyi= null

		
boolean Huanyi___IsFire= false
boolean Huanyi___IsWater= false
boolean Huanyi___IsLumber= false
boolean Huanyi___IsWind= false
integer Huanyi___ICurrentSpell
		
integer Huanyi___IMoneng= 0

		
constant integer kNoneIntTimes=31
		
constant integer kUHuanyiQuan=33
		
constant integer kIGuCan=35
		
constant integer kHuanyuTimes=37

		
texttag Huanyi___TTMoneng
effect Huanyi___ELowMoneng= null

unit Huanyi___UGucan= null
//endglobals from Huanyi
//globals from Kaisa:
constant boolean LIBRARY_Kaisa=true
unit kaisa= null
//endglobals from Kaisa
//globals from Lingxue:
constant boolean LIBRARY_Lingxue=true
unit lingxue= null
//endglobals from Lingxue
//globals from PIV:
constant boolean LIBRARY_PIV=true
boolean array sPIV
boolean PIV___isFirst= true
hashtable PIV___PIVTable= InitHashtable()
constant integer kPIV=39
constant integer kPIVStr=41
constant integer kPIVPlayer=43
constant integer kPIVPointer=45

//endglobals from PIV
//globals from Seyu:
constant boolean LIBRARY_Seyu=true
unit seyu= null

		
texttag Seyu___TTPower= null
integer Seyu___IPower
			
real Seyu___RAddtion

		
trigger Seyu___TSpellSeyu= null
trigger Seyu___TSpellSeyu2= null
trigger Seyu___TSpellSeyu3= null
constant integer kAnShaCount=47
//endglobals from Seyu
//globals from Yanmie:
constant boolean LIBRARY_Yanmie=true
unit yanmie= null

group Yanmie___GShadow= null
constant integer ICountShadowMAX= 2
//endglobals from Yanmie
//globals from CenterCredit:
constant boolean LIBRARY_CenterCredit=true
constant integer CenterCredit__CREDIT_SOLIDER_1= 2500
constant integer CenterCredit__CREDIT_SOLIDER_2= 5000
constant integer CenterCredit__CREDIT_SOLIDER_3= 8000
constant integer CenterCredit__CREDIT_SOLIDER_4= 15000
//endglobals from CenterCredit
//globals from ChatCommand:
constant boolean LIBRARY_ChatCommand=true
item array ChatCommand___IBox
integer ChatCommand___IBoxSucceed= 0
integer ChatCommand___IBoxCount= 0
//endglobals from ChatCommand
//globals from HeroSpellBase:
constant boolean LIBRARY_HeroSpellBase=true
//endglobals from HeroSpellBase
//globals from Revive:
constant boolean LIBRARY_Revive=true
//endglobals from Revive
//globals from Debug:
constant boolean LIBRARY_Debug=true
boolean debug_show_damage= false
boolean debug_show_attr= false
unit testDyingUnit= null
//endglobals from Debug
//globals from Simulate:
constant boolean LIBRARY_Simulate=true
//endglobals from Simulate
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
trigger st__Attract__staticgetindex
trigger st__Attract_onDestroy
trigger st__Attract_destroy
trigger st__Missile__staticgetindex
trigger st__Missile_onDestroy
trigger st__Missile_destroy
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

//library Constant:
	
//---------------------------------------------------------------------------------------------------
	
 function GetVersion takes nothing returns string
		return "2.64"
	endfunction
//---------------------------------------------------------------------------------------------------



//library Constant ends
//library ItemBase:

//-------------------------------------------------------------------------------
	
 function ItemBase___UnitHasHumanInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'frhg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'mlst' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'nspi' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oli2' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'ofir' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'soul' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'sbok' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'arsc' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gldo' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gsou' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'envl' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rugt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'shdt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'crdt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'pspd' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rump' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rump' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'shen' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'stpg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rde0' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oflg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'frgd' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tbsm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tfar' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'drph' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oven' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rej4' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'dtsb' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gobm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gvsm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'pgin' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rej6' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tels' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tbak'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsSharedItem takes item i returns boolean
		return GetItemTypeId(i) == 'fgrg' or GetItemTypeId(i) == 'hlst' or GetItemTypeId(i) == 'wshs' or GetItemTypeId(i) == 'wild' or GetItemTypeId(i) == 'totw' or GetItemTypeId(i) == 'sror' or GetItemTypeId(i) == 'olig' or GetItemTypeId(i) == 'srtl' or GetItemTypeId(i) == 'shhn' or GetItemTypeId(i) == 'flag' or GetItemTypeId(i) == 'shcw' or GetItemTypeId(i) == 'shtm' or GetItemTypeId(i) == 'IXU1'
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function ItemBase___UnitHasJubaoInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'I05P' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'I05Q' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'I05R'
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function ItemBase___TOnlyOneItemAct takes nothing returns nothing
  local integer i= 1
  local integer count= 0

		//多个人器的判断
		loop
			exitwhen i > 6
			if ( ItemBase___UnitHasHumanInSlot(GetTriggerUnit() , i) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( count > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时装备一个人器！")
		endif

		//多个聚宝的判断
		set i=1
		set count=0
		loop
			exitwhen i > 6
			if ( ItemBase___UnitHasJubaoInSlot(GetTriggerUnit() , i) ) then
				set count=count + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( count > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时装备一个1级以上的聚宝！")
		endif


	endfunction

 function ItemBase___TOnlyOneItemCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true )
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
	        call ReflashCrainaxAttr()
	        call DisplayTextToForce(GetPlayersAll(), "|cFFFF66CC【消息】|r|cffff9900圣主Crainax的分身|r复活.")
	        call TimerDialogDisplay(TiDiaNecklace, false)
	        call DestroyTimerDialog(TiDiaNecklace)
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	        set TiDiaNecklace=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function BossDeathDropItem takes nothing returns nothing
  local timer t
	    if ( ( GetUnitTypeId(GetDyingUnit()) == 'Naka' ) ) then
	        call CreateItem('rat9', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
	        call PolledWait(30.00)
	        call PingMinimap(- 10630.00, - 8642.00, 2.00)
	        call ReviveHero(GetDyingUnit(), - 10630.00, - 8642.00, true)
	        call SetHeroLevel(GetDyingUnit(), ( GetHeroLevel(GetDyingUnit()) + 1 ), true)
	        call DisplayTextToForce(GetPlayersAll(), ( "|cFFFF66CC【消息】|r|cFFFF6699千年孤魂|r|cffffcc00弑魂|r复活了。" ))
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
		//人器或者聚宝只能装备一个
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TOnlyOneItemCon))
		call TriggerAddAction(t, function ItemBase___TOnlyOneItemAct)

		//删除书本的小点BUG
		set t=CreateTrigger()
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
//library Purgatory:
	

//---------------------------------------------------------------------------------------------------
	
 function TPurgatoryItemCon takes nothing returns boolean
	    return ( ( IsUnitIllusionBJ(GetDyingUnit()) != true ) and ( ( GetUnitTypeId(GetDyingUnit()) == 'nfra' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nwld' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nwzd' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ndqp' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsc2' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nwns' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsoc' ) or ( GetUnitTypeId(GetDyingUnit()) == 'npfl' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ninm' ) ) )
	endfunction

 function TPurgatoryItemAct takes nothing returns nothing
  local integer dyingUnitId= GetUnitTypeId(GetDyingUnit())

//textmacro instance: CreatePurgatoryItem("nfra","IB00")
		if ( dyingUnitId == 'nfra' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB00', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nfra","IB00")
//textmacro instance: CreatePurgatoryItem("nwld","IMJ1")
		if ( dyingUnitId == 'nwld' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ1', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nwld","IMJ1")
//textmacro instance: CreatePurgatoryItem("nwzd","IMJ2")
		if ( dyingUnitId == 'nwzd' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ2', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nwzd","IMJ2")
//textmacro instance: CreatePurgatoryItem("ndqp","IMJ3")
		if ( dyingUnitId == 'ndqp' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ3', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("ndqp","IMJ3")
//textmacro instance: CreatePurgatoryItem("nsc2","IMJ4")
		if ( dyingUnitId == 'nsc2' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ4', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsc2","IMJ4")
//textmacro instance: CreatePurgatoryItem("nwns","IMJ5")
		if ( dyingUnitId == 'nwns' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ5', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nwns","IMJ5")
//textmacro instance: CreatePurgatoryItem("nsoc","IMJ6")
		if ( dyingUnitId == 'nsoc' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ6', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsoc","IMJ6")
//textmacro instance: CreatePurgatoryItem("npfl","IMJ7")
		if ( dyingUnitId == 'npfl' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ7', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("npfl","IMJ7")
//textmacro instance: CreatePurgatoryItem("ninm","IMJ8")
		if ( dyingUnitId == 'ninm' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IMJ8', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("ninm","IMJ8")
	endfunction
//---------------------------------------------------------------------------------------------------


 function Purgatory___InitPurgatory takes nothing returns nothing
  local trigger t= CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddCondition(t, Condition(function TPurgatoryItemCon))
	    call TriggerAddAction(t, function TPurgatoryItemAct)

	endfunction


//library Purgatory ends
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
		return Version___Bheiyan
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function GetHuanyiSelectedCon takes player p returns boolean
		return Version___Bhuanyi
	endfunction
//---------------------------------------------------------------------------------------------------\
    
    function Version___GetHuanyiCode takes string s returns integer
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
			set Version___Bheiyan=true
		elseif ( chat == "hy" + I2S(Version___GetHuanyiCode(GetPlayerName(GetTriggerPlayer()))) ) then
			set Version___Bhuanyi=true
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

 function Version___InitVersion takes nothing returns nothing
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
//library Test:


 function Test___InitTest takes nothing returns nothing
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
        return IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitAliveBJ(u) == true and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster)) and GetUnitAbilityLevel(u, 'Avul') < 1 and GetUnitPointValue(u) != 123 and GetUnitPointValue(u) != 0
    endfunction   
//---------------------------------------------------------------------------------------------------

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsEnemyM(u , caster)
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
    function LHBase___InitLHBase takes nothing returns nothing
        
        set UDepot[1]=CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2]=CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3]=CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4]=CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5]=CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6]=CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

    endfunction

//library LHBase ends
//library Attr:
	
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
    	call TriggerExecute(gg_trg_papa9____________u)
	endfunction

	
 function GetAgiPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 6 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddStrPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID )]=udg_I_Xianglian[( playerID )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddStrPercentImme takes integer playerID,real value returns nothing
		call AddStrPercent(playerID , value)
    	call TriggerExecute(gg_trg_papa8____________u)
	endfunction

	
 function GetStrPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddIntPercent takes integer playerID,real value returns nothing
		set udg_I_Xianglian[( playerID + 12 )]=udg_I_Xianglian[( playerID + 12 )] + value
		call TriggerExecute(gg_trg_D7)
	endfunction

	
 function AddIntPercentImme takes integer playerID,real value returns nothing
		call AddIntPercent(playerID , value)
    call TriggerExecute(gg_trg_papa10____________u)
	endfunction

	
 function GetIntPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 12 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddMoneyPercent takes integer playerID,real value returns nothing
		set udg_I_Jinqianhuodelv[playerID]=udg_I_Jinqianhuodelv[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddSpellPercent takes integer playerID,real value returns nothing
		set udg_I_Jinengjiacheng[playerID]=udg_I_Jinengjiacheng[playerID] + value
		call TriggerExecute(gg_trg_D7)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetAttack takes unit u,integer attack returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x5039AFFB, attack)
	    call TriggerExecute(gg_trg_____________800W)
	endfunction	
//---------------------------------------------------------------------------------------------------
	
 function SetDefense takes unit u,integer defense returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0x81FD3994, defense)
	    call TriggerExecute(gg_trg___________________4000______u)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SetHP takes unit u,integer hp returns nothing
	    set udg_Unit=u
	    call SaveInteger(YDHT, GetHandleId(u), 0xFCD961C9, hp)
    	call TriggerExecute(gg_trg_HP_____________________u)
	endfunction
//---------------------------------------------------------------------------------------------------

 function Attr___InitAttr takes nothing returns nothing
		


	endfunction


//library Attr ends
//library Beast:
	

//---------------------------------------------------------------------------------------------------
	

 function Beast___isOutOfRange takes integer i returns boolean
		return ( ( i > 255 ) or ( i < 0 ) )
	endfunction

 function Beast___GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i), 255)
	endfunction

 function Beast___DiscolorTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(itemTable, id, Beast___kU)
  local integer r= LoadInteger(itemTable, id, Beast___kr)
  local integer g= LoadInteger(itemTable, id, Beast___kg)
  local integer b= LoadInteger(itemTable, id, Beast___kb)
  local integer sr= LoadInteger(itemTable, id, Beast___ksr)
  local integer sg= LoadInteger(itemTable, id, Beast___ksg)
  local integer sb= LoadInteger(itemTable, id, Beast___ksb)
		if ( ( IsUnitAliveBJ(u) == true ) or ( IsUnitType(u, UNIT_TYPE_HERO) == true ) ) then


//textmacro instance: ChangeColor("r")
				
			if ( sr > 0 ) then
				set r=r + GetRandomInt(0, sr)
			else
				set r=r + GetRandomInt(sr, 0)
			endif
			if ( Beast___isOutOfRange(r) ) then
				set r=(IMinBJ(IAbsBJ((r)), 255)) // INLINED!!
				if ( sr > 0 ) then
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksr, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksr, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(itemTable, GetHandleId(t), Beast___kr, r)
//end of: ChangeColor("r")
//textmacro instance: ChangeColor("g")
				
			if ( sg > 0 ) then
				set g=g + GetRandomInt(0, sg)
			else
				set g=g + GetRandomInt(sg, 0)
			endif
			if ( Beast___isOutOfRange(g) ) then
				set g=(IMinBJ(IAbsBJ((g)), 255)) // INLINED!!
				if ( sg > 0 ) then
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksg, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksg, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(itemTable, GetHandleId(t), Beast___kg, g)
//end of: ChangeColor("g")
//textmacro instance: ChangeColor("b")
				
			if ( sb > 0 ) then
				set b=b + GetRandomInt(0, sb)
			else
				set b=b + GetRandomInt(sb, 0)
			endif
			if ( Beast___isOutOfRange(b) ) then
				set b=(IMinBJ(IAbsBJ((b)), 255)) // INLINED!!
				if ( sb > 0 ) then
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksb, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(itemTable, GetHandleId(t), Beast___ksb, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(itemTable, GetHandleId(t), Beast___kb, b)
//end of: ChangeColor("b")
    		call SetUnitVertexColor(u, r, g, b, 255)

		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(itemTable, id)
		endif
		set t=null
		set u=null
	endfunction

 function Discolor takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(itemTable, GetHandleId(t), Beast___kU, u)
		call SaveInteger(itemTable, GetHandleId(t), Beast___kr, GetRandomInt(0, 254))
		call SaveInteger(itemTable, GetHandleId(t), Beast___kg, GetRandomInt(0, 254))
		call SaveInteger(itemTable, GetHandleId(t), Beast___kb, GetRandomInt(0, 254))
		call SaveInteger(itemTable, GetHandleId(t), Beast___ksr, GetRandomInt(20, 60))
		call SaveInteger(itemTable, GetHandleId(t), Beast___ksg, GetRandomInt(20, 60))
		call SaveInteger(itemTable, GetHandleId(t), Beast___ksb, GetRandomInt(20, 60))

		call TimerStart(t, 0.1, true, function Beast___DiscolorTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Beast___CreateBeast takes unit captain,integer itemId returns nothing
  local integer unitID= LoadInteger(itemTable, Beast___kBeastItem, itemId)
  local unit u= CreateUnit(GetOwningPlayer(captain), unitID, GetUnitX(captain), GetUnitY(captain), 0)
		//变色
		if ( ( unitID == 'ub08' ) or ( unitID == 'ub09' ) ) then
			call Discolor(u)
		endif
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))]=u
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(captain), GetUnitY(captain)))
		call YDWESetGuard(u , captain , 1 , 600 , 600 , 600 , 100)
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___IsBeast takes item i returns boolean
		return GetItemTypeId(i) == 'IB00' or GetItemTypeId(i) == 'IB01' or GetItemTypeId(i) == 'IB02' or GetItemTypeId(i) == 'IB03' or GetItemTypeId(i) == 'IB04' or GetItemTypeId(i) == 'IB05' or GetItemTypeId(i) == 'IB06' or GetItemTypeId(i) == 'IB07' or GetItemTypeId(i) == 'IB08' or GetItemTypeId(i) == 'IB09'
	endfunction
	
 function Beast___UnitHasBeastInSlot takes unit u,integer slot returns boolean
		return Beast___IsBeast(UnitItemInSlotBJ(u, slot))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___GetBeastInUnit takes unit u returns item

  local integer i= 1
		loop
			exitwhen i > 6
			if ( (Beast___IsBeast(UnitItemInSlotBJ((u ), ( i)))) ) then // INLINED!!
				return UnitItemInSlotBJ(u, i)
			endif
			set i=i + 1
		endloop
		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___TBeastEquitAct takes nothing returns nothing
  local integer i= 1
  local integer beastCount= 0
		loop
			exitwhen i > 6
			if ( (Beast___IsBeast(UnitItemInSlotBJ((GetTriggerUnit() ), ( i)))) ) then // INLINED!!
				set beastCount=beastCount + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( beastCount > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时装备上一个魔兽！")
			return
		elseif ( beastCount == 1 ) then
		//产生相对应的魔兽操作
			call Beast___CreateBeast(GetTriggerUnit() , GetItemTypeId(GetManipulatedItem()))
		endif

	endfunction

 function Beast___TBeastEquitCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true ) and ( Beast___IsBeast(GetManipulatedItem()) == true )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function RemoveBeast takes unit u returns nothing
		call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))])
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))]=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function ReviveBeast takes unit u returns nothing
		if ( Beast___GetBeastInUnit(u) != null ) then
			call Beast___CreateBeast(u , GetItemTypeId(Beast___GetBeastInUnit(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___TBeastDropAct takes nothing returns nothing

  local integer i= 1
  local integer beastCount= 0
		loop
			exitwhen i > 6
			if ( (Beast___IsBeast(UnitItemInSlotBJ((GetTriggerUnit() ), ( i)))) ) then // INLINED!!
				set beastCount=beastCount + 1
			endif
			set i=i + 1
		endloop
		if ( beastCount != 2 ) then
			call RemoveBeast(GetManipulatingUnit())
		endif
	endfunction

 function Beast___TBeastDropCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true ) and ( Beast___IsBeast(GetManipulatedItem()) == true )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___TBeastDamageAct takes nothing returns nothing
  local integer unitID= GetUnitTypeId(GetEventDamageSource())
  local integer playerID= GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
  local item beast= Beast___GetBeastInUnit(udg_H[playerID])


		//魔兽怒吼
		if ( GetUnitAbilityLevel(Unit_Beast[playerID], 'ABe9') >= 1 ) then
			
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
			if ( GetItemCharges(beast) > CHARGES_BEAST ) then
					call CreateTextTagA(("魔兽怒吼!" ) , ( Unit_Beast[playerID] ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
 					call SimulateSpell(Unit_Beast[playerID] , Unit_Beast[playerID] , 'A0CR' , 1 , 5 , "stomp" , false , true , false)
					call SetItemCharges(beast, 0)
			endif
		endif

		

//textmacro instance: DamageBeast1("00")
		if ( unitID == 'ub00' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_00, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("00")
//textmacro instance: DamageBeast1("01")
		if ( unitID == 'ub01' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_01, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("01")
//textmacro instance: DamageBeast1("02")
		if ( unitID == 'ub02' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_02, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("02")
//textmacro instance: DamageBeast1("03")
		if ( unitID == 'ub03' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_03, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("03")
//textmacro instance: DamageBeast1("04")
		if ( unitID == 'ub04' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_04, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("04")
//textmacro instance: DamageBeast1("05")
		if ( unitID == 'ub05' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_05, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("05")
//textmacro instance: DamageBeast1("06")
		if ( unitID == 'ub06' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_06, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("06")
//textmacro instance: DamageBeast1("07")
		if ( unitID == 'ub07' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_07, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("07")
//textmacro instance: DamageBeast1("08")
		if ( unitID == 'ub08' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_08, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("08")
//textmacro instance: DamageBeast1("09")
		if ( unitID == 'ub09' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(Unit_Beast[playerID], GetTriggerUnit(), DAMAGE_BEAST_09, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			set beast=null
			return
		endif
//end of: DamageBeast1("09")

	endfunction

 function Beast___TBeastDamageCon takes nothing returns boolean
		return ( ( GetEventDamage() > 0 ) and ( IsUnitIllusion(GetEventDamageSource()) == false ) and ( GetEventDamageSource() == Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))] ) )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CombineBeast takes unit u returns nothing

		
//textmacro instance: SummonBeast("IB00","IMJ1","IB01")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB00')) == 'IB00' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ1')) == 'IMJ1' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB00')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ1')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ1'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB00'))
            call UnitAddItemById(u, 'IB01')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB00","IMJ1","IB01")
//textmacro instance: SummonBeast("IB01","IMJ2","IB02")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB01')) == 'IB01' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ2')) == 'IMJ2' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB01')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ2')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ2'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB01'))
            call UnitAddItemById(u, 'IB02')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB01","IMJ2","IB02")
//textmacro instance: SummonBeast("IB02","IMJ3","IB03")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB02')) == 'IB02' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ3')) == 'IMJ3' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB02')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ3')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ3'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB02'))
            call UnitAddItemById(u, 'IB03')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB02","IMJ3","IB03")
//textmacro instance: SummonBeast("IB03","IMJ4","IB04")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB03')) == 'IB03' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ4')) == 'IMJ4' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB03')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ4')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ4'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB03'))
            call UnitAddItemById(u, 'IB04')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB03","IMJ4","IB04")
//textmacro instance: SummonBeast("IB04","IMJ5","IB05")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB04')) == 'IB04' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ5')) == 'IMJ5' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB04')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ5')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ5'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB04'))
            call UnitAddItemById(u, 'IB05')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB04","IMJ5","IB05")
//textmacro instance: SummonBeast("IB05","IMJ6","IB06")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB05')) == 'IB05' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ6')) == 'IMJ6' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB05')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ6')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ6'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB05'))
            call UnitAddItemById(u, 'IB06')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB05","IMJ6","IB06")
//textmacro instance: SummonBeast("IB06","IMJ7","IB07")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB06')) == 'IB06' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ7')) == 'IMJ7' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB06')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ7')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ7'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB06'))
            call UnitAddItemById(u, 'IB07')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB06","IMJ7","IB07")
//textmacro instance: SummonBeast("IB07","IMJ8","IB08")
		if ( ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IB07')) == 'IB07' ) and ( GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IMJ8')) == 'IMJ8' ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IB07')) == true ) and ( IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'IMJ8')) == true ) ) then
			call PolledWait(0.1)
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IMJ8'))
            call RemoveItem(GetItemOfTypeFromUnitBJ(u, 'IB07'))
            call UnitAddItemById(u, 'IB08')
			call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你成功召唤新的魔兽!")
			return
		endif
//end of: SummonBeast("IB07","IMJ8","IB08")
	endfunction        
     
//---------------------------------------------------------------------------------------------------

	
 function Beast___initBeastItem takes nothing returns nothing
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB00', 'ub00')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB01', 'ub01')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB02', 'ub02')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB03', 'ub03')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB04', 'ub04')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB05', 'ub05')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB06', 'ub06')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB07', 'ub07')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB08', 'ub08')
		call SaveInteger(itemTable, Beast___kBeastItem, 'IB09', 'ub09')
	endfunction
//---------------------------------------------------------------------------------------------------

 function Beast___InitBeast takes nothing returns nothing
		//初始化
  local trigger t= CreateTrigger()
		call Beast___initBeastItem()

		//只能同时装备一个魔兽
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function Beast___TBeastEquitCon))
		call TriggerAddAction(t, function Beast___TBeastEquitAct)

		//魔兽伤害事件
		set t=CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddCondition(t, Condition(function Beast___TBeastDamageCon))
		call TriggerAddAction(t, function Beast___TBeastDamageAct)

		//丢弃魔兽事件
		set t=CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function Beast___TBeastDropCon))
		call TriggerAddAction(t, function Beast___TBeastDropAct)
		set t=null
	endfunction

//library Beast ends
//library CenterBase:
	
 function CenterBase___TAttackCenterBaseCon takes nothing returns boolean
		return ( ( IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == true ) and ( GetOwningPlayer(GetAttackedUnitBJ()) == Player(6) ) and ( IsUnitAlly(GetAttacker(), Player(6)) == true ) )
	endfunction
	
 function CenterBase___TAttackCenterBaseAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(), "stop")
			call KillSelf(GetAttacker())
			call DisplayTimedTextToForce(GetPlayersAll(), 30, "|cFFFF66CC【提示】|r有人企图攻打自己的基地，被伟大的Crainax处死了。")
	endfunction

 function CenterBase___InitCenterBase takes nothing returns nothing

  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function CenterBase___TAttackCenterBaseCon))
		call TriggerAddAction(t, function CenterBase___TAttackCenterBaseAct)

		set t=null
	endfunction


//library CenterBase ends
//library Diamond:


//---------------------------------------------------------------------------------------------------
    
    function Diamond___Diamond100 takes integer itemID,integer newItemID returns boolean

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
    
    function Diamond___DiamondA takes integer itemID,integer newItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
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
    
    function Diamond___DiamondB takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
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
    
    function Diamond___DiamondC takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetTriggerUnit()), 'IXU1')) == 'IXU1') == true ) then // INLINED!!
            return Diamond___Diamond100(itemID , newItemID)
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
    
    function Diamond___AddOneDiamond takes nothing returns nothing
                //复制出来的不能升级
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

	
 function Diamond___InitDiamond takes nothing returns nothing
		
        local trigger t= CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddAction(t, function Diamond___TSpellDiamondAct)

        set t=null
	endfunction


//library Diamond ends
//library Exercise:

//---------------------------------------------------------------------------------------------------
	
	
 function TMonsterFilter1 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nano' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nanw' ) ) )
	endfunction

 function TMonsterFilter2 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nenf' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nbld' ) ) )
	endfunction

 function TMonsterFilter3 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nbda' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nbdo' ) ) )
	endfunction

 function TMonsterFilter4 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'ncim' ) or ( GetUnitTypeId(GetFilterUnit()) == 'ncnk' ) ) )
	endfunction

 function TMonsterFilter5 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'ngns' ) or ( GetUnitTypeId(GetFilterUnit()) == 'ngnw' ) ) )
	endfunction

 function TMonsterFilter6 takes nothing returns boolean
	    return ( ( GetOwningPlayer(GetFilterUnit()) == Player(10) ) and ( ( GetUnitTypeId(GetFilterUnit()) == 'nhfp' ) or ( GetUnitTypeId(GetFilterUnit()) == 'nenc' ) ) )
	endfunction

	
 function TMonsterPlayerFilter takes nothing returns boolean
	    return ( ( GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER ) and ( IsUnitAliveBJ(GetFilterUnit()) == true ) )
	endfunction

//---------------------------------------------------------------------------------------------------
	
	
//textmacro instance: FlashMonster("1")
 function FlashMonsterPlayer1 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[1], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[1]), GetRectCenterY(regionM1[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[1]), GetRectCenterY(regionM1[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[1], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[1]), GetRectCenterY(regionM2[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[1]), GetRectCenterY(regionM2[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[1], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[1]), GetRectCenterY(regionM3[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[1]), GetRectCenterY(regionM3[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[1], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[1]), GetRectCenterY(regionM4[1]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[1]), GetRectCenterY(regionM4[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[1], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[1]), GetRectCenterY(regionM5[1]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[1]), GetRectCenterY(regionM5[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[1], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[1], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[1], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[1]), GetRectCenterY(regionM6[1]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[1]), GetRectCenterY(regionM6[1]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("1")
//textmacro instance: FlashMonster("2")
 function FlashMonsterPlayer2 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[2], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[2]), GetRectCenterY(regionM1[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[2]), GetRectCenterY(regionM1[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[2], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[2]), GetRectCenterY(regionM2[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[2]), GetRectCenterY(regionM2[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[2], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[2]), GetRectCenterY(regionM3[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[2]), GetRectCenterY(regionM3[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[2], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[2]), GetRectCenterY(regionM4[2]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[2]), GetRectCenterY(regionM4[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[2], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[2]), GetRectCenterY(regionM5[2]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[2]), GetRectCenterY(regionM5[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[2], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[2], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[2], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[2]), GetRectCenterY(regionM6[2]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[2]), GetRectCenterY(regionM6[2]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("2")
//textmacro instance: FlashMonster("3")
 function FlashMonsterPlayer3 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[3], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[3]), GetRectCenterY(regionM1[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[3]), GetRectCenterY(regionM1[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[3], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[3]), GetRectCenterY(regionM2[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[3]), GetRectCenterY(regionM2[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[3], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[3]), GetRectCenterY(regionM3[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[3]), GetRectCenterY(regionM3[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[3], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[3]), GetRectCenterY(regionM4[3]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[3]), GetRectCenterY(regionM4[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[3], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[3]), GetRectCenterY(regionM5[3]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[3]), GetRectCenterY(regionM5[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[3], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[3], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[3], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[3]), GetRectCenterY(regionM6[3]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[3]), GetRectCenterY(regionM6[3]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("3")
//textmacro instance: FlashMonster("4")
 function FlashMonsterPlayer4 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[4], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[4]), GetRectCenterY(regionM1[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[4]), GetRectCenterY(regionM1[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[4], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[4]), GetRectCenterY(regionM2[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[4]), GetRectCenterY(regionM2[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[4], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[4]), GetRectCenterY(regionM3[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[4]), GetRectCenterY(regionM3[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[4], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[4]), GetRectCenterY(regionM4[4]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[4]), GetRectCenterY(regionM4[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[4], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[4]), GetRectCenterY(regionM5[4]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[4]), GetRectCenterY(regionM5[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[4], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[4], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[4], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[4]), GetRectCenterY(regionM6[4]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[4]), GetRectCenterY(regionM6[4]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("4")
//textmacro instance: FlashMonster("5")
 function FlashMonsterPlayer5 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[5], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[5]), GetRectCenterY(regionM1[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[5]), GetRectCenterY(regionM1[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[5], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[5]), GetRectCenterY(regionM2[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[5]), GetRectCenterY(regionM2[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[5], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[5]), GetRectCenterY(regionM3[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[5]), GetRectCenterY(regionM3[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[5], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[5]), GetRectCenterY(regionM4[5]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[5]), GetRectCenterY(regionM4[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[5], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[5]), GetRectCenterY(regionM5[5]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[5]), GetRectCenterY(regionM5[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[5], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[5], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[5], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[5]), GetRectCenterY(regionM6[5]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[5]), GetRectCenterY(regionM6[5]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("5")
//textmacro instance: FlashMonster("6")
 function FlashMonsterPlayer6 takes nothing returns nothing

  local group g
  local group g2

		//区域1
		set g=GetUnitsInRectMatching(regionM1[6], Condition(function TMonsterFilter1))
		set g2=GetUnitsInRectMatching(regionM1[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then


			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nano', GetRectCenterX(regionM1[6]), GetRectCenterY(regionM1[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nanw', GetRectCenterX(regionM1[6]), GetRectCenterY(regionM1[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

		//区域2
		set g=GetUnitsInRectMatching(regionM2[6], Condition(function TMonsterFilter2))
		set g2=GetUnitsInRectMatching(regionM2[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nenf', GetRectCenterX(regionM2[6]), GetRectCenterY(regionM2[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nbld', GetRectCenterX(regionM2[6]), GetRectCenterY(regionM2[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域3
		set g=GetUnitsInRectMatching(regionM3[6], Condition(function TMonsterFilter3))
		set g2=GetUnitsInRectMatching(regionM3[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nbda', GetRectCenterX(regionM3[6]), GetRectCenterY(regionM3[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nbdo', GetRectCenterX(regionM3[6]), GetRectCenterY(regionM3[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域4
		set g=GetUnitsInRectMatching(regionM4[6], Condition(function TMonsterFilter4))
		set g2=GetUnitsInRectMatching(regionM4[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'ncim', GetRectCenterX(regionM4[6]), GetRectCenterY(regionM4[6]), 270)
			    else
			        call CreateUnit(Player(10), 'ncnk', GetRectCenterX(regionM4[6]), GetRectCenterY(regionM4[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域5
		set g=GetUnitsInRectMatching(regionM5[6], Condition(function TMonsterFilter5))
		set g2=GetUnitsInRectMatching(regionM5[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'ngns', GetRectCenterX(regionM5[6]), GetRectCenterY(regionM5[6]), 270)
			    else
			        call CreateUnit(Player(10), 'ngnw', GetRectCenterX(regionM5[6]), GetRectCenterY(regionM5[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    //区域6
		set g=GetUnitsInRectMatching(regionM6[6], Condition(function TMonsterFilter6))
		set g2=GetUnitsInRectMatching(regionM6[6], Condition(function TMonsterPlayerFilter))
		if ( CountUnitsInGroup(g2) != 0 ) then
			//刷怪
			if ( CountUnitsInGroup(g) == 0 ) then
			    if ( IsUnitInGroup(udg_H[6], g2) != true ) then
			        call CreateUnit(Player(10), 'nhfp', GetRectCenterX(regionM6[6]), GetRectCenterY(regionM6[6]), 270)
			    else
			        call CreateUnit(Player(10), 'nenc', GetRectCenterX(regionM6[6]), GetRectCenterY(regionM6[6]), 270)
			    endif
			endif
		else
			if ( CountUnitsInGroup(g) != 0 ) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup(g)
	    call DestroyGroup(g2)

	    set g=null
	    set g2=null

	endfunction

//end of: FlashMonster("6")
//---------------------------------------------------------------------------------------------------
		

//textmacro instance: TExerciseForbitCon("1")
  function Exercise__TExerciseForbitCon1 takes nothing returns boolean
			return ( ( ConvertedPlayer(1) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("1")
//textmacro instance: TExerciseForbitCon("2")
  function Exercise__TExerciseForbitCon2 takes nothing returns boolean
			return ( ( ConvertedPlayer(2) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("2")
//textmacro instance: TExerciseForbitCon("3")
  function Exercise__TExerciseForbitCon3 takes nothing returns boolean
			return ( ( ConvertedPlayer(3) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("3")
//textmacro instance: TExerciseForbitCon("4")
  function Exercise__TExerciseForbitCon4 takes nothing returns boolean
			return ( ( ConvertedPlayer(4) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("4")
//textmacro instance: TExerciseForbitCon("5")
  function Exercise__TExerciseForbitCon5 takes nothing returns boolean
			return ( ( ConvertedPlayer(5) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("5")
//textmacro instance: TExerciseForbitCon("6")
  function Exercise__TExerciseForbitCon6 takes nothing returns boolean
			return ( ( ConvertedPlayer(6) != GetOwningPlayer(GetTriggerUnit()) ) and IsEnemy3(GetTriggerUnit() , Player(10)) == true )
		endfunction
//end of: TExerciseForbitCon("6")

 function Exercise__TExerciseForbitAct takes nothing returns nothing
		call SetUnitX(GetTriggerUnit(), GetUnitX(gg_unit_haro_0030))
		call SetUnitY(GetTriggerUnit(), GetUnitY(gg_unit_haro_0030))
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你不能进入其他玩家的房间！")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Exercise__InitExerciseTrigger takes nothing returns nothing
  local trigger t


//textmacro instance: CreateMonsterTrigger("1")
			if ( ( GetPlayerSlotState(ConvertedPlayer(1)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(1)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[1])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon1))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[1]) + 300, GetRectCenterY(regionM1[1]) - 300, 270)
			    set Exercise__TiExercise[1]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[1], 5, true, function FlashMonsterPlayer1)
			endif
//end of: CreateMonsterTrigger("1")
//textmacro instance: CreateMonsterTrigger("2")
			if ( ( GetPlayerSlotState(ConvertedPlayer(2)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(2)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[2])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon2))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[2]) + 300, GetRectCenterY(regionM1[2]) - 300, 270)
			    set Exercise__TiExercise[2]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[2], 5, true, function FlashMonsterPlayer2)
			endif
//end of: CreateMonsterTrigger("2")
//textmacro instance: CreateMonsterTrigger("3")
			if ( ( GetPlayerSlotState(ConvertedPlayer(3)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(3)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[3])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon3))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[3]) + 300, GetRectCenterY(regionM1[3]) - 300, 270)
			    set Exercise__TiExercise[3]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[3], 5, true, function FlashMonsterPlayer3)
			endif
//end of: CreateMonsterTrigger("3")
//textmacro instance: CreateMonsterTrigger("4")
			if ( ( GetPlayerSlotState(ConvertedPlayer(4)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(4)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[4])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon4))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[4]) + 300, GetRectCenterY(regionM1[4]) - 300, 270)
			    set Exercise__TiExercise[4]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[4], 5, true, function FlashMonsterPlayer4)
			endif
//end of: CreateMonsterTrigger("4")
//textmacro instance: CreateMonsterTrigger("5")
			if ( ( GetPlayerSlotState(ConvertedPlayer(5)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(5)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[5])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon5))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[5]) + 300, GetRectCenterY(regionM1[5]) - 300, 270)
			    set Exercise__TiExercise[5]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[5], 5, true, function FlashMonsterPlayer5)
			endif
//end of: CreateMonsterTrigger("5")
//textmacro instance: CreateMonsterTrigger("6")
			if ( ( GetPlayerSlotState(ConvertedPlayer(6)) == PLAYER_SLOT_STATE_PLAYING ) and GetPlayerController(ConvertedPlayer(6)) == MAP_CONTROL_USER ) then
				set t=CreateTrigger()
			    call TriggerRegisterEnterRectSimple(t, regionAll[6])
			    call TriggerAddCondition(t, Condition(function Exercise__TExerciseForbitCon6))
			    call TriggerAddAction(t, function Exercise__TExerciseForbitAct)
				call CreateUnit(Player(15), 'uS02', GetRectCenterX(regionM1[6]) + 300, GetRectCenterY(regionM1[6]) - 300, 270)
			    set Exercise__TiExercise[6]=CreateTimer()
			    call TimerStart(Exercise__TiExercise[6], 5, true, function FlashMonsterPlayer6)
			endif
//end of: CreateMonsterTrigger("6")

		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function CloseExerciseTimer takes player p returns nothing
		call PauseTimer(Exercise__TiExercise[GetConvertedPlayerId(p)])
		call DestroyTimer(Exercise__TiExercise[GetConvertedPlayerId(p)])
	endfunction
	
//---------------------------------------------------------------------------------------------------
	
 function Exercise__InitExerciseRegions takes nothing returns nothing

		set regionM1[1]=Rect(- 15488.0, 13952.0, - 14240.0, 15232.0)
	    set regionM2[1]=Rect(- 13280.0, 13952.0, - 12096.0, 15232.0)
	    set regionM3[1]=Rect(- 15488.0, 12288.0, - 14208.0, 13536.0)
	    set regionM4[1]=Rect(- 13312.0, 12288.0, - 12064.0, 13568.0)
	    set regionM5[1]=Rect(- 15488.0, 10624.0, - 14208.0, 11904.0)
	    set regionM6[1]=Rect(- 13312.0, 10624.0, - 12032.0, 11904.0)
		
	    set regionM1[2]=Rect(- 15488.0, 8960.0, - 14240.0, 10240.0)
	    set regionM2[2]=Rect(- 13280.0, 8960.0, - 12096.0, 10240.0)
	    set regionM3[2]=Rect(- 15488.0, 7296.0, - 14208.0, 8544.0)
	    set regionM4[2]=Rect(- 13312.0, 7296.0, - 12064.0, 8576.0)
	    set regionM5[2]=Rect(- 15488.0, 5632.0, - 14208.0, 6912.0)
	    set regionM6[2]=Rect(- 13312.0, 5632.0, - 12032.0, 6912.0)

	    set regionM1[3]=Rect(- 11104.0, 13984.0, - 9888.0, 15232.0)
	    set regionM2[3]=Rect(- 8960.0, 13952.0, - 7680.0, 15232.0)
	    set regionM3[3]=Rect(- 11136.0, 12288.0, - 9888.0, 13536.0)
	    set regionM4[3]=Rect(- 8928.0, 12288.0, - 7680.0, 13568.0)
	    set regionM5[3]=Rect(- 11136.0, 10624.0, - 9856.0, 11904.0)
	    set regionM6[3]=Rect(- 8960.0, 10624.0, - 7680.0, 11904.0)
		
	    set regionM1[4]=Rect(- 11104.0, 8992.0, - 9888.0, 10240.0)
	    set regionM2[4]=Rect(- 8960.0, 8960.0, - 7680.0, 10240.0)
	    set regionM3[4]=Rect(- 11136.0, 7296.0, - 9888.0, 8544.0)
	    set regionM4[4]=Rect(- 8928.0, 7296.0, - 7680.0, 8576.0)
	    set regionM5[4]=Rect(- 11136.0, 5632.0, - 9856.0, 6912.0)
	    set regionM6[4]=Rect(- 8960.0, 5632.0, - 7680.0, 6912.0)
		
	    set regionM1[5]=Rect(- 6752.0, 13952.0, - 5536.0, 15200.0)
	    set regionM2[5]=Rect(- 4736.0, 13952.0, - 3456.0, 15232.0)
	    set regionM3[5]=Rect(- 6784.0, 12256.0, - 5536.0, 13504.0)
	    set regionM4[5]=Rect(- 4704.0, 12288.0, - 3456.0, 13568.0)
	    set regionM5[5]=Rect(- 6784.0, 10592.0, - 5504.0, 11872.0)
	    set regionM6[5]=Rect(- 4736.0, 10624.0, - 3456.0, 11904.0)

	    set regionM1[6]=Rect(- 6752.0, 8960.0, - 5536.0, 10208.0)
	    set regionM2[6]=Rect(- 4736.0, 8960.0, - 3456.0, 10240.0)
	    set regionM3[6]=Rect(- 6784.0, 7264.0, - 5536.0, 8512.0)
	    set regionM4[6]=Rect(- 4704.0, 7296.0, - 3456.0, 8576.0)
	    set regionM5[6]=Rect(- 6784.0, 5600.0, - 5504.0, 6880.0)
	    set regionM6[6]=Rect(- 4736.0, 5632.0, - 3456.0, 6912.0)

	    set regionAll[1]=Rect(- 15808.0, 10400.0, - 11744.0, 15456.0)
	    set regionAll[2]=Rect(- 15808.0, 5344.0, - 11712.0, 10400.0)
	    set regionAll[3]=Rect(- 11744.0, 10400.0, - 7232.0, 15456.0)
	    set regionAll[4]=Rect(- 11744.0, 5312.0, - 7232.0, 10400.0)
	    set regionAll[5]=Rect(- 7264.0, 10432.0, - 3136.0, 15456.0)
	    set regionAll[6]=Rect(- 7264.0, 5312.0, - 3136.0, 10432.0)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function EnterExerciseRegion takes nothing returns nothing
  local real x
  local real y


//textmacro instance: EnterSpecifyExercise("I05J","1")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I05J' ) ) then
			set x=GetRectCenterX(regionM1[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM1[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I05J","1")
//textmacro instance: EnterSpecifyExercise("I053","2")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I053' ) ) then
			set x=GetRectCenterX(regionM2[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM2[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I053","2")
//textmacro instance: EnterSpecifyExercise("I05K","3")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I05K' ) ) then
			set x=GetRectCenterX(regionM3[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM3[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I05K","3")
//textmacro instance: EnterSpecifyExercise("I06Y","4")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I06Y' ) ) then
			set x=GetRectCenterX(regionM4[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM4[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I06Y","4")
//textmacro instance: EnterSpecifyExercise("I06Z","5")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I06Z' ) ) then
			set x=GetRectCenterX(regionM5[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM5[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I06Z","5")
//textmacro instance: EnterSpecifyExercise("I03Z","6")
		if ( ( GetItemTypeId(GetSoldItem()) == 'I03Z' ) ) then
			set x=GetRectCenterX(regionM6[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y=GetRectCenterY(regionM6[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(), x)
	        call SetUnitY(GetBuyingUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	    endif
//end of: EnterSpecifyExercise("I03Z","6")
	endfunction
//---------------------------------------------------------------------------------------------------

 function Exercise__InitExercise takes nothing returns nothing
		call Exercise__InitExerciseRegions()
		call Exercise__InitExerciseTrigger()

	endfunction


//library Exercise ends
//library GoldSystem:
	
//---------------------------------------------------------------------------------------------------
	
 function TGoldDeathCon takes nothing returns boolean
	    return ( ( HaveSavedInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395) == true ) and ( IsUnitIllusionBJ(GetDyingUnit()) != true ) and ( GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(GetOwningPlayer(GetKillingUnitBJ())) == PLAYER_SLOT_STATE_PLAYING ) )
	endfunction

 function TGoldDeathAct takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
	    set udg_gold[index]=R2I(I2R(LoadInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395)) * udg_I_Jinqianhuodelv[index]) + udg_gold[index] + udg_gold[index + 6]
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddGoldForPlayerTimer takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6

			if ( ( udg_gold[i] != 0 ) ) then
		        call AdjustPlayerStateBJ(udg_gold[i], ConvertedPlayer(i), PLAYER_STATE_RESOURCE_GOLD)
	    		call CreateTextTagA(("黄金+" + I2S(udg_gold[i]) ) , ( udg_H[i] ) , (( 255 )*1.0) , (( 255 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
		        set udg_gold[i]=0
		    endif

			set i=i + 1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
 function GoldSystem__InitGoldSystem takes nothing returns nothing

		//怪物死亡事件
     local trigger t= CreateTrigger()
     local timer ti= CreateTimer()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddCondition(t, Condition(function TGoldDeathCon))
	    call TriggerAddAction(t, function TGoldDeathAct)

	    //每秒增加黄金
	    call TimerStart(ti, 1, true, function AddGoldForPlayerTimer)
	    set t=null
	    set ti=null
	endfunction


//library GoldSystem ends
//library Mirror:


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
    endfunction


//library Mirror ends
//library MonsterSpell:
	


	
 function FocusCow takes unit selected returns nothing
		if ( GetUnitAbilityLevel(selected, 'A09W') >= 1 and IsUnitAliveBJ(selected) ) then
			call SetUnitState(selected, UNIT_STATE_LIFE, GetUnitState(selected, UNIT_STATE_LIFE) + GetUnitState(selected, UNIT_STATE_MAX_LIFE) * 0.1)
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
 function MonsterSpell___TSpellQianFaEnemyFilter takes nothing returns boolean
	    return ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) == true ) ) )
	endfunction

 function MonsterSpell___TSpellQianFaAct takes nothing returns nothing
     local integer i
     local group ydl_group
     local unit ydl_unit
     local real x
     local real y

	    set x=GetUnitX(GetAttackedUnitBJ())
	    set y=GetUnitY(GetAttackedUnitBJ())
	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 333.00 ))
	    //特效
	    set i=1
	    loop
	        exitwhen i > 8
	        call UnitApplyTimedLifeBJ(5.00, 'BHwe', CreateUnit(GetOwningPlayer(GetAttacker()), 'h00J', x, y, 45 * I2R(i)))
	        set i=i + 1
	    endloop

	    //巨能
	    if ( ( GetUnitTypeId(GetAttacker()) == 'N00Q' ) ) then
	    		set ydl_group=CreateGroup()
			    call GroupEnumUnitsInRange(ydl_group, x, y, 900, Condition(function MonsterSpell___TSpellQianFaEnemyFilter))
			    loop
			        set ydl_unit=FirstOfGroup(ydl_group)
			        exitwhen ydl_unit == null
			        call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成75%生命的伤害
		            call UnitDamageTarget(GetAttacker(), ydl_unit, ( 0.5 * GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
			    endloop
		 	elseif ( ( GetUnitTypeId(GetAttacker()) == 'Nngs' ) or ( GetUnitTypeId(GetAttacker()) == 'Nbrn' ) ) then
		//仙炼或生克
	    		set ydl_group=CreateGroup()
				call GroupEnumUnitsInRange(ydl_group, x, y, 900, Condition(function MonsterSpell___TSpellQianFaEnemyFilter))
				loop
				    set ydl_unit=FirstOfGroup(ydl_group)
				    exitwhen ydl_unit == null
				    call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成50%生命的伤害
			        call UnitDamageTarget(GetAttacker(), ydl_unit, ( 0.3 * GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
				endloop

	    endif

	    //文字
	    call CreateTextTagA(("虚--千罚之光" ) , ( GetAttacker() ) , (( 100 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!

	    call PolledWait(5.00)
	    call EnableTrigger(GetTriggeringTrigger())

	    call DestroyGroup(ydl_group)
	    set ydl_group=null
	    set ydl_unit=null
	endfunction

 function MonsterSpell___TSpellQianFaCon takes nothing returns boolean
	    return ( ( ( GetUnitTypeId(GetAttacker()) == 'Nngs' ) or ( GetUnitTypeId(GetAttacker()) == 'Nbrn' ) or ( GetUnitTypeId(GetAttacker()) == 'N00Q' ) ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 333.00 ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

//---------------------------------------------------------------------------------------------------
	

 function MonsterSpell___TSpellJunlinAct takes nothing returns nothing
        call SetUnitOwner(GetAttackedUnitBJ(), GetOwningPlayer(GetAttacker()), true)
	    call CreateTextTagA(("臣服于我" ) , ( GetAttacker() ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ())))
	endfunction

 function MonsterSpell___TSpellJunlinCon takes nothing returns boolean
	    return ( ( GetUnitAbilityLevel(GetAttacker(), 'A0P1') >= 1 ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 100.00 ) and ( GetRandomInt(1, 100) <= udg_Nandu_JJJ * 3 ) and ( IsEnemyM(GetAttackedUnitBJ() , GetAttacker()) == true ) and ( GetPlayerController(GetOwningPlayer(GetAttackedUnitBJ())) == MAP_CONTROL_USER ) and ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) != true ) )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function MonsterSpell___TSpellPetAct takes nothing returns nothing
  local real per= ( 0.02 * ( GetUnitLevel(GetAttacker()) - GetUnitLevel(GetAttackedUnitBJ()) + 1 ) )
		call UnitDamageTarget(GetAttacker(), GetAttackedUnitBJ(), GetUnitState(GetAttacker(), UNIT_STATE_MAX_LIFE) * per, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
	endfunction

 function MonsterSpell___TSpellPetCon takes nothing returns boolean
	    return ( ( ( GetUnitAbilityLevel(GetAttackedUnitBJ(), 'A0P0') >= 1 ) or ( GetUnitAbilityLevel(GetAttackedUnitBJ(), 'A0P0') >= 1 ) ) and ( IsEnemy(GetAttackedUnitBJ() , GetAttacker()) == true ) and GetUnitLevel(GetAttacker()) >= 50 and GetUnitLevel(GetAttacker()) >= GetUnitLevel(GetAttackedUnitBJ()) )
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function MonsterSpell___TSpellDratAct takes nothing returns nothing
  local integer i= - 1
     local real x1
     local real y1
     local real x2
     local real y2
     local unit drat
     local real facing

	    set x1=GetUnitX(GetAttackedUnitBJ())
	    set y1=GetUnitY(GetAttackedUnitBJ())
	    set x2=GetUnitX(GetAttacker())
	    set y2=GetUnitY(GetAttacker())
	    set facing=Atan2BJ(y2 - y1, x2 - x1)

	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 333.00 ))

	    //巨能
	    if ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q' ) ) then
	    	loop
	    		exitwhen i > 1
	    		set drat=CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'hs00', x1, y1, facing)
	        	call UnitApplyTimedLifeBJ(10.00, 'BHwe', drat)
	        	    call DIYRushSlide(drat , facing + i * 30 , 20000.00 , 10.00 , 0.05 , DRAT_JUNENG * ( 1 + 0.2 * I2R(level_juneng) ) , 60. , false , true , false , "origin" , "" , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
	    		set i=i + 1
	    	endloop
		 	elseif ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn' ) ) then
		//仙炼或生克
	    		set drat=CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'hs00', x1, y1, facing)
	        	call UnitApplyTimedLifeBJ(10.00, 'BHwe', drat)
	        	    call DIYRushSlide(drat , facing , 20000.00 , 10.00 , 0.05 , DRAT_XIANLIAN , 60. , false , true , false , "origin" , "" , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
	    endif

	    //文字
	    call CreateTextTagA(("虚--弹射飞镖" ) , ( GetAttacker() ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 1000 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(10.00)
	    call EnableTrigger(GetTriggeringTrigger())

	    set drat=null
	endfunction

 function MonsterSpell___TSpellDratCon takes nothing returns boolean
	    return ( ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q' ) ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 333.00 ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction
//---------------------------------------------------------------------------------------------------
 function MonsterSpell___InitMonsterSpell takes nothing returns nothing
  local trigger t= CreateTrigger()
		//巨能,仙炼还有生克的千罚之光
	    set TSpellQianfa=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellQianfa, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellQianfa, Condition(function MonsterSpell___TSpellQianFaCon))
	    call TriggerAddAction(TSpellQianfa, function MonsterSpell___TSpellQianFaAct)
	    call DisableTrigger(TSpellQianfa)

	    //巨能,仙炼还有生克的手里剑
	    set TSpellDart=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellDart, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellDart, Condition(function MonsterSpell___TSpellDratCon))
	    call TriggerAddAction(TSpellDart, function MonsterSpell___TSpellDratAct)
	    call DisableTrigger(TSpellDart)

	    //臣服于我
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(t, Condition(function MonsterSpell___TSpellJunlinCon))
	    call TriggerAddAction(t, function MonsterSpell___TSpellJunlinAct)

	    //宠物掉血
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(t, Condition(function MonsterSpell___TSpellPetCon))
	    call TriggerAddAction(t, function MonsterSpell___TSpellPetAct)

	    set t=null
	endfunction

//library MonsterSpell ends
//library Multiboard:

//---------------------------------------------------------------------------------------------------
	
 function AddCenterCredit takes unit u returns nothing
  local integer index
		if ( udg_RENSHU > 1 ) then
			set index=GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index]=centerCredit[index] + udg_Bo
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
 function Multiboard___InitMultiboard takes nothing returns nothing
		
	endfunction

//library Multiboard ends
//library Pet:

    
//---------------------------------------------------------------------------------------------------
    
    function Pet___CreatePet takes player owner,unit pet returns nothing
        local unit u= pet

        call PlaySoundBJ(gg_snd_GoodJob)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(pet), GetUnitY(pet)))

        //删除原有的宠物并清空缓存
        call SetUnitOwner(pet, owner, true)
        

        //添加技能
        call UnitAddAbilityBJ('AInv', u)
        call UnitAddAbilityBJ('A06E', u)
        call UnitAddAbilityBJ('A06F', u)
        call UnitAddAbilityBJ('A0P0', u)
        call UnitAddType(u, UNIT_TYPE_PEON)
        call SetUnitAcquireRange(u, 600.00)
        call UnitAddAbilityBJ('A08M', u)
        call GroupAddUnitSimple(u, GPet[GetConvertedPlayerId(owner)])
        call UnitAddAbilityBJ('Avul', u)
        call DisplayTextToPlayer(owner, 0, 0, "|cFFFF66CC【消息】|r捕捉成功！")
        call SetPlayerStateBJ(owner, PLAYER_STATE_RESOURCE_FOOD_USED, ( GetPlayerState(owner, PLAYER_STATE_RESOURCE_FOOD_USED) + 1 ))
        set u=null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    function TCatchPetAct takes nothing returns nothing


//textmacro instance: CatchPet("A06D","I073","10000")
            //忠诚单位
            if ( GetSpellAbilityId() == 'A06D' ) then
                //忠诚单位无效:
                if ( IsLoyalUnit(GetSpellTargetUnit()) ) then
                    call UnitAddItemByIdSwapped('I073', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。")
                    return
                endif
                if ( GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I073', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要" + I2S(GetUnitLevel(GetSpellTargetUnit())) + "级你才能捕捉该单位.")
                    return
                endif
                if ( ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ) ) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I073', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数.")
                    return
                endif
                if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= 10000 ) ) then
                    call UnitAddItemByIdSwapped('I073', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为" + I2S(R2I(GetUnitState(GetSpellTargetUnit(), UNIT_STATE_LIFE) / 10000)) + "万血,超过了网的" + I2S(10000) + "HP捕捉上限!")
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    return
                endif
                call Pet___CreatePet(GetOwningPlayer(GetTriggerUnit()) , GetSpellTargetUnit())
                return
            endif
//end of: CatchPet("A06D","I073","10000")
//textmacro instance: CatchPet("A04P","I074","100000")
            //忠诚单位
            if ( GetSpellAbilityId() == 'A04P' ) then
                //忠诚单位无效:
                if ( IsLoyalUnit(GetSpellTargetUnit()) ) then
                    call UnitAddItemByIdSwapped('I074', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。")
                    return
                endif
                if ( GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I074', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要" + I2S(GetUnitLevel(GetSpellTargetUnit())) + "级你才能捕捉该单位.")
                    return
                endif
                if ( ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ) ) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I074', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数.")
                    return
                endif
                if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= 100000 ) ) then
                    call UnitAddItemByIdSwapped('I074', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为" + I2S(R2I(GetUnitState(GetSpellTargetUnit(), UNIT_STATE_LIFE) / 10000)) + "万血,超过了网的" + I2S(100000) + "HP捕捉上限!")
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    return
                endif
                call Pet___CreatePet(GetOwningPlayer(GetTriggerUnit()) , GetSpellTargetUnit())
                return
            endif
//end of: CatchPet("A04P","I074","100000")
//textmacro instance: CatchPet("A04Q","I075","500000")
            //忠诚单位
            if ( GetSpellAbilityId() == 'A04Q' ) then
                //忠诚单位无效:
                if ( IsLoyalUnit(GetSpellTargetUnit()) ) then
                    call UnitAddItemByIdSwapped('I075', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。")
                    return
                endif
                if ( GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I075', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要" + I2S(GetUnitLevel(GetSpellTargetUnit())) + "级你才能捕捉该单位.")
                    return
                endif
                if ( ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ) ) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I075', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数.")
                    return
                endif
                if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= 500000 ) ) then
                    call UnitAddItemByIdSwapped('I075', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为" + I2S(R2I(GetUnitState(GetSpellTargetUnit(), UNIT_STATE_LIFE) / 10000)) + "万血,超过了网的" + I2S(500000) + "HP捕捉上限!")
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    return
                endif
                call Pet___CreatePet(GetOwningPlayer(GetTriggerUnit()) , GetSpellTargetUnit())
                return
            endif
//end of: CatchPet("A04Q","I075","500000")
//textmacro instance: CatchPet("A04R","I072","2000000")
            //忠诚单位
            if ( GetSpellAbilityId() == 'A04R' ) then
                //忠诚单位无效:
                if ( IsLoyalUnit(GetSpellTargetUnit()) ) then
                    call UnitAddItemByIdSwapped('I072', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。")
                    return
                endif
                if ( GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I072', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要" + I2S(GetUnitLevel(GetSpellTargetUnit())) + "级你才能捕捉该单位.")
                    return
                endif
                if ( ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ) ) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I072', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数.")
                    return
                endif
                if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= 2000000 ) ) then
                    call UnitAddItemByIdSwapped('I072', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为" + I2S(R2I(GetUnitState(GetSpellTargetUnit(), UNIT_STATE_LIFE) / 10000)) + "万血,超过了网的" + I2S(2000000) + "HP捕捉上限!")
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    return
                endif
                call Pet___CreatePet(GetOwningPlayer(GetTriggerUnit()) , GetSpellTargetUnit())
                return
            endif
//end of: CatchPet("A04R","I072","2000000")
//textmacro instance: CatchPet("A0E1","I071","2000000")
            //忠诚单位
            if ( GetSpellAbilityId() == 'A0E1' ) then
                //忠诚单位无效:
                if ( IsLoyalUnit(GetSpellTargetUnit()) ) then
                    call UnitAddItemByIdSwapped('I071', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。")
                    return
                endif
                if ( GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I071', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要" + I2S(GetUnitLevel(GetSpellTargetUnit())) + "级你才能捕捉该单位.")
                    return
                endif
                if ( ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ) ) ) then
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    call UnitAddItemByIdSwapped('I071', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数.")
                    return
                endif
                if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= 2000000 ) ) then
                    call UnitAddItemByIdSwapped('I071', GetTriggerUnit())
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为" + I2S(R2I(GetUnitState(GetSpellTargetUnit(), UNIT_STATE_LIFE) / 10000)) + "万血,超过了网的" + I2S(2000000) + "HP捕捉上限!")
                    call PlaySoundBJ(gg_snd_Jidibeida)
                    return
                endif
                call Pet___CreatePet(GetOwningPlayer(GetTriggerUnit()) , GetSpellTargetUnit())
                return
            endif
//end of: CatchPet("A0E1","I071","2000000")


    endfunction

//---------------------------------------------------------------------------------------------------
    
    function TAttackForbitCon takes nothing returns boolean
        return ( ( GetUnitAbilityLevelSwapped('A06F', GetAttacker()) == 1 ) and IsUnitInGroup(GetAttacker(), GPet[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))]) == true )
    endfunction

    function TAttackForbitAct takes nothing returns nothing
        call DisplayTextToPlayer(GetOwningPlayer(GetAttacker()), 0, 0, "|cFFFF66CC【消息】|r想攻击的话使用技能“切换形态”。")
        //停止命令
        call IssueImmediateOrderById(GetAttacker(), 851972)
    endfunction

//---------------------------------------------------------------------------------------------------
    
    function Pet___TPetChangeForm takes nothing returns nothing
        //切换形态1:
        if ( GetSpellAbilityId() == 'A06G' ) then
            call UnitAddType(GetTriggerUnit(), UNIT_TYPE_PEON)
            call UnitAddAbilityBJ('A06F', GetTriggerUnit())
            call UnitRemoveAbilityBJ('A06G', GetTriggerUnit())
            call UnitAddAbilityBJ('Avul', GetTriggerUnit())
        endif

        //切换形态2:
        if ( GetSpellAbilityId() == 'A06F' ) then
            call UnitRemoveType(GetTriggerUnit(), UNIT_TYPE_PEON)
            call UnitRemoveAbilityBJ('Avul', GetTriggerUnit())
            call UnitAddAbilityBJ('A06G', GetTriggerUnit())
            call UnitRemoveAbilityBJ('A06F', GetTriggerUnit())
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    

    function Pet___TPetDeathCon takes nothing returns boolean
        return ( IsUnitIllusionBJ(GetDyingUnit()) == false and ( ( IsUnitInGroup(GetDyingUnit(), GPet[1]) == true ) or ( IsUnitInGroup(GetDyingUnit(), GPet[2]) == true ) or ( IsUnitInGroup(GetDyingUnit(), GPet[3]) == true ) or ( IsUnitInGroup(GetDyingUnit(), GPet[4]) == true ) or ( IsUnitInGroup(GetDyingUnit(), GPet[5]) == true ) or ( IsUnitInGroup(GetDyingUnit(), GPet[6]) == true ) ) )
    endfunction

    function Pet___TPetDeathAct takes nothing returns nothing
        local integer index= - 1
        local integer i= 1
        local integer ii= 1

        loop
            exitwhen ii > 6
            if ( IsUnitInGroup(GetDyingUnit(), GPet[ii]) == true ) then
                set index=ii
            endif
            set ii=ii + 1
        endloop

        if ( index == - 1 ) then
            return
        endif

        call SetPlayerStateBJ(ConvertedPlayer(index), PLAYER_STATE_RESOURCE_FOOD_USED, ( GetPlayerState(ConvertedPlayer(index), PLAYER_STATE_RESOURCE_FOOD_USED) - 1 ))
        //物品给仓库
        loop
            exitwhen i > 6
            call UnitAddItemSwapped(UnitItemInSlotBJ(GetDyingUnit(), i), UDepot[index])
            set i=i + 1
        endloop
        call PingMinimapForForce(GetForceOfPlayer(ConvertedPlayer(index)), GetUnitX(UDepot[index]), GetUnitY(UDepot[index]), 10.00)
        call DisplayTextToPlayer(ConvertedPlayer(index), 0, 0, ( "|cFFFF66CC【消息】|r你的宠物“" + ( GetUnitName(GetDyingUnit()) + "”已阵亡，物品存放于你的仓库。" ) ))
        call FlushChildHashtable(YDHT, GetHandleId(GetDyingUnit()))
        call GroupRemoveUnit(GPet[index], GetDyingUnit())
        call RemoveUnit(GetDyingUnit())

    endfunction
//---------------------------------------------------------------------------------------------------
    

    function TPetItemCon takes nothing returns boolean
        return ( ( not ( IsUnitIllusionBJ(GetTriggerUnit()) ) ) and ( IsUnitInGroup(GetTriggerUnit(), GPet[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ) )
    endfunction

    //得到物品
    function TPetItemPickAct takes nothing returns nothing
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'sbch' ) and ( GetUnitAbilityLevelSwapped('A06R', GetTriggerUnit()) != 1 ) ) then
            call UnitAddAbilityBJ('A06R', GetTriggerUnit())
        endif
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'gcel' ) and ( GetUnitAbilityLevelSwapped('A0B9', GetTriggerUnit()) != 1 ) ) then
            call UnitAddAbilityBJ('A0B9', GetTriggerUnit())
        endif
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'crys' ) and ( GetUnitAbilityLevelSwapped('A0CG', GetTriggerUnit()) != 1 ) ) then
            call UnitAddAbilityBJ('A0CG', GetTriggerUnit())
        endif
    endfunction

    //丢弃物品
    function TPetItemDropAct takes nothing returns nothing
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'sbch' ) and ( GetUnitAbilityLevelSwapped('A06R', GetTriggerUnit()) == 1 ) ) then
            call UnitRemoveAbility(GetTriggerUnit(), 'A06R')
        else
        endif
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'gcel' ) and ( GetUnitAbilityLevelSwapped('A0B9', GetTriggerUnit()) == 1 ) ) then
            call UnitRemoveAbility(GetTriggerUnit(), 'A0B9')
        else
        endif
        if ( ( GetItemTypeId(GetManipulatedItem()) == 'crys' ) and ( GetUnitAbilityLevelSwapped('A0CG', GetTriggerUnit()) == 1 ) ) then
            call UnitRemoveAbility(GetTriggerUnit(), 'A0CG')
        else
        endif
    endfunction
//---------------------------------------------------------------------------------------------------

    function Pet___InitPet takes nothing returns nothing
        local trigger t= CreateTrigger()
        local integer i= 1
        loop
            exitwhen i > 6
            set GPet[i]=CreateGroup()
            set i=i + 1
        endloop

        //抓宠物与宠物切换形态
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddAction(t, function TCatchPetAct)
        call TriggerAddAction(t, function Pet___TPetChangeForm)

        //没切换攻击形态时
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(t, Condition(function TAttackForbitCon))
        call TriggerAddAction(t, function TAttackForbitAct)

        //宠物死亡事件
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
        call TriggerAddCondition(t, Condition(function Pet___TPetDeathCon))
        call TriggerAddAction(t, function Pet___TPetDeathAct)

        //宠物获得物品事件
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
        call TriggerAddCondition(t, Condition(function TPetItemCon))
        call TriggerAddAction(t, function TPetItemPickAct)

        //宠物丢弃物品事件
        set t=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
        call TriggerAddCondition(t, Condition(function TPetItemCon))
        call TriggerAddAction(t, function TPetItemDropAct)

        set t=null
    endfunction


//library Pet ends
//library Printer:

//---------------------------------------------------------------------------------------------------
	

 function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r伤害加成" + I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage)) + addtional + "." ) ) ))
	endfunction

 function PrintSpell takes player whichPlayer,string spellName,real damage returns nothing
		call PrintSpellAdd(whichPlayer , spellName , damage , "")
	endfunction
	
 function PrintSpellContent takes player whichPlayer,string spellName,string content returns nothing
	    call DisplayTextToPlayer(whichPlayer, 0, 0, ( "|cFFFF66CC【|r" + spellName + "|cFFFF66CC】|r" + content ))
	endfunction

 function PrintSpellName takes player whichPlayer,string spellName returns nothing
		call DisplayTextToPlayer((whichPlayer ), 0, 0, ( "|cFFFF66CC【|r" + ( spellName ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

 function Printer___InitPrinter takes nothing returns nothing
		
	endfunction


//library Printer ends
//library SpellBase:


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
				    if ( IsEnemyM(l_unit , s__Attract_caster[this]) and ( GetUnitMoveSpeed(l_unit) > 0 ) and not ( s__Attract_forbitHero[this] and IsUnitType(l_unit, UNIT_TYPE_HERO) ) ) then
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
			    if ( IsEnemyM(l_unit , s__Missile_caster[this]) == true ) then
			    	call UnitDamageTarget(s__Missile_caster[this], l_unit, s__Missile_damage[this], false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
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

	
 function SpellBase___ImmuteDamageTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(spellTable, id, kUImmuteDamage)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(spellTable, id)
		call SetUnitInvulnerable(u, false)
		set u=null
		set t=null
	endfunction

 function ImmuteDamageInterval takes unit u,real time returns nothing
  local timer t= CreateTimer()
		call SetUnitInvulnerable(u, true)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUImmuteDamage, u)
		call TimerStart(t, time, false, function SpellBase___ImmuteDamageTimer)
		set t=null
	endfunction

 function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u , 0)
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function GetDamageStr takes unit u returns real
  local unit uH= udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
  local real damage= ( ( GetHeroStr(uH, true) * 1.80 ) + ( GetHeroAgi(uH, true) ) + ( GetHeroInt(uH, true) * 1.20 ) ) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
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
//library TouristTrap:

	
//---------------------------------------------------------------------------------------------------
	
 function TouristTrap___TTouristTrapSellCon takes nothing returns boolean
		return ( GetUnitTypeId(GetSellingUnit()) == 'uS01' )
	endfunction
	
 function TouristTrap___TTouristTrapSellAct takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
  local integer lumber
		if not ( HasCombineHalf[index] ) then
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r你从未合成过任一半超神器！")
			return
		endif
		if ( (GetItemTypeId(GetItemOfTypeFromUnitBJ((GetBuyingUnit()), 'IXU1')) == 'IXU1') ) then // INLINED!!
			set lumber=3000
		else
			set lumber=8000
		endif

		if ( GetPlayerState(GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER) < lumber ) then
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r你没有" + I2S(lumber) + "的木头！")
			return
		endif

		call AdjustPlayerStateBJ(- 1 * lumber, ConvertedPlayer(index), PLAYER_STATE_RESOURCE_LUMBER)
		call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r购买成功！")


//textmacro instance: GiveMaxShen("IXU2","olig")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU2' ) ) then
				call UnitAddItemByIdSwapped('olig', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU2","olig")
//textmacro instance: GiveMaxShen("IXU3","srtl")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU3' ) ) then
				call UnitAddItemByIdSwapped('srtl', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU3","srtl")
//textmacro instance: GiveMaxShen("IXU4","shhn")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU4' ) ) then
				call UnitAddItemByIdSwapped('shhn', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU4","shhn")
//textmacro instance: GiveMaxShen("IXU5","flag")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU5' ) ) then
				call UnitAddItemByIdSwapped('flag', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU5","flag")
//textmacro instance: GiveMaxShen("IXU6","shcw")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU6' ) ) then
				call UnitAddItemByIdSwapped('shcw', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU6","shcw")
//textmacro instance: GiveMaxShen("IXU7","shtm")
			if ( ( GetItemTypeId(GetSoldItem()) == 'IXU7' ) ) then
				call UnitAddItemByIdSwapped('shtm', GetBuyingUnit())
        		call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
//end of: GiveMaxShen("IXU7","shtm")
	endfunction
		
//---------------------------------------------------------------------------------------------------
	
 function TouristTrap___InitTouristTrap takes nothing returns nothing


  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
		call TriggerAddCondition(t, Condition(function TouristTrap___TTouristTrapSellCon))
		call TriggerAddAction(t, function TouristTrap___TTouristTrapSellAct)
		set t=null
	endfunction

//library TouristTrap ends
//library Arena:


//---------------------------------------------------------------------------------------------------
	
 function Arena___updateLevel takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer int= GetHeroInt(Arena___challenager, true)
  local integer agi= GetHeroAgi(Arena___challenager, true)
  local integer str= GetHeroStr(Arena___challenager, true)

		if ( IsUnitAliveBJ(Arena___challenager) and ( Arena___currentLevel < ARENA_MAX_LEVEL ) ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Arena___challenager), GetUnitY(Arena___challenager)))
			call SetHeroInt(Arena___challenager, IMinBJ(2100000000, int + int / Arena___currentLevel), true)
			call SetHeroAgi(Arena___challenager, IMinBJ(2100000000, agi + agi / Arena___currentLevel), true)
			call SetHeroStr(Arena___challenager, IMinBJ(2100000000, str + str / Arena___currentLevel), true)
			set Arena___currentLevel=Arena___currentLevel + 1
			//设置技能等级
			call IncUnitAbilityLevel(Arena___challenager, 'ACbh')
			call IncUnitAbilityLevel(Arena___challenager, 'A0ET')
			call IncUnitAbilityLevel(Arena___challenager, 'A0EU')
			call IncUnitAbilityLevel(Arena___challenager, 'ACt2')
			call IncUnitAbilityLevel(Arena___challenager, 'AL04')
			call IncUnitAbilityLevel(Arena___challenager, 'AL05')
			call IncUnitAbilityLevel(Arena___challenager, 'A0EY')
			call SetTextTagTextBJ(Arena___textTag_Level, I2S(Arena___currentLevel) + "级", 20)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
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
	    call DestroyTrigger(GetTriggeringTrigger())
	    call IssueImmediateOrder(GetAttacker(), "creepthunderclap")
	    loop
	    	exitwhen i > 6
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(Arena___challenager) + SinBJ(i * 60) * 400, GetUnitY(Arena___challenager) + CosBJ(i * 60) * 400))
	    	set i=i + 1
	    endloop
	    call CreateTextTagA(("千煞破击！" ) , ( Arena___challenager ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!

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
	        call SetUnitAbilityLevel(u, 'A0EV', IMinBJ(Arena___currentLevel, 20))
	        call IssueTargetOrderById(u, 852274, GetAttackedUnitBJ())
	    	set i=i + 1
	    endloop

	    call CreateTextTagA(("幻魔灵枭！" ) , ( Arena___challenager ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!

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
        call SetUnitAbilityLevel(u, 'AL01', IMinBJ(Arena___currentLevel, 20))
	    call IssuePointOrderLoc(u, "rainoffire", point)
	    call RemoveLocation(point)
	    set u=null
	    set point=null
	    call CreateTextTagA(("天玄星陨！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 100 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Arena___TSpellFuwangCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function Arena___TSpellFuwangAct takes nothing returns nothing
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ())))
			call UnitDamageTarget(Arena___challenager, GetAttackedUnitBJ(), ( 0.1 * GetUnitStateSwap(UNIT_STATE_LIFE, GetAttackedUnitBJ()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)

		    call CreateTextTagA(("淘汰之刃！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
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
	    call IssuePointOrderLoc(u, "ward", point)
	    call CreateTextTagA(("阴魂螣蛇！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
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
	    call CreateTextTagA(("石化凝视！" ) , ( Arena___challenager ) , (( 51 )*1.0) , (( 51 )*1.0) , (( 51 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
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
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitAbilityLevel(GetAttacker(), 'Amim') < 1 ) and UnitHasBuffBJ(GetAttacker(), 'BEsh') != true )
	endfunction

 function TSpellKiller1Act takes nothing returns nothing
     local unit u= CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'h000', GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ('AL02', u)
        call SetUnitAbilityLevel(u, 'AL02', IMinBJ(Arena___currentLevel, 20))
	    call IssueTargetOrder(u, "shadowstrike", GetAttacker())
	    call CreateTextTagA(("致命毒镖！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
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
	    call CreateTextTagA(("死亡潜行！" ) , ( Arena___challenager ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function TSpellJinxuan1Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function TSpellJinxuan1Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttacker() , GetAttackedUnitBJ() , 'ACrf' , IMinBJ(Arena___currentLevel, 20) , 6 , "rainoffire" , true , false , false)
	    call CreateTextTagA(("瞬闪雷鸣！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 0 )*1.0) , (( 100 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(7.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00 ) )
	endfunction

 function TSpellJinxuan2Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttackedUnitBJ() , GetAttacker() , 'ANst' , IMinBJ(Arena___currentLevel, 20) , 5 , "stampede" , true , false , false)
	    call CreateTextTagA(("逆合玄天！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 0 )*1.0) , (( 100 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(5.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan3Con takes nothing returns boolean
	    return ( ( GetAttacker() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00 ) )
	endfunction

 function TSpellJinxuan3Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttacker() , GetAttackedUnitBJ() , 'AHtb' , IMinBJ(Arena___currentLevel, 20) , 5 , "thunderbolt" , false , false , true)
	    call CreateTextTagA(("魔化射线！" ) , ( Arena___challenager ) , (( 100 )*1.0) , (( 0 )*1.0) , (( 100 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(7.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

	
 function TSpellJinxuan4Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == Arena___challenager ) and ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function TSpellJinxuan4Act takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 500.00 ))
	    call CreateTextTagA(("魔法窃取！" ) , ( Arena___challenager ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", GetUnitX(GetAttacker()), GetUnitY(GetAttacker())))
	    call PolledWait(2.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function TArenaStartAct takes nothing returns nothing
  local timer t
  local integer attract

		//符合条件再开始
	    if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	        if ( ( Arena___challenager == null ) ) then
	            if ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] != 9 ) ) then
	            	//开始啦
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。")
	                
	                set t=CreateTimer()
	                if ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 0 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Huth', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 1 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hpb1', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 2 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hgam', GetRectCenterX(gg_rct_Arena_2), GetRectCenterY(gg_rct_Arena_2), 180.00)
	                    call TimerStart(t, 2, TRUE, function Arena___LingerAssemble)
				        //灵儿技能
					    set Arena___TSpellLinger=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellLinger, Condition(function Arena___TSpellLingerCon))
					    call TriggerAddAction(Arena___TSpellLinger, function Arena___TSpellLingerAct)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 3 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hmbr', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    set attract=s__Attract_create(Arena___challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
					    //宙斯技能
					    set Arena___TSpellZhousi=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellZhousi, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellZhousi, Condition(function Arena___TSpellZhousiCon))
					    call TriggerAddAction(Arena___TSpellZhousi, function Arena___TSpellZhousiAct)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 4 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Odrt', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                	call UnitAddAbilityBJ('A0F1', Arena___challenager)
	                	call UnitAddAbilityBJ('Adtg', Arena___challenager)
					    //血魔技能
					    set Arena___TSpellXuemo1=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellXuemo1, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellXuemo1, Condition(function Arena___TSpellXuemo1Con))
					    call TriggerAddAction(Arena___TSpellXuemo1, function Arena___TSpellXuemo1Act)
					    set Arena___TSpellXuemo2=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellXuemo2, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellXuemo2, Condition(function Arena___TSpellXuemo2Con))
					    call TriggerAddAction(Arena___TSpellXuemo2, function Arena___TSpellXuemo2Act)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 5 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Ogrh', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    set attract=s__Attract_create(Arena___challenager , 600 , 0.05 , 20)
	                    call s__Attract_start(attract)
	                	call UnitAddAbilityBJ('A0F1', Arena___challenager)
	                	call UnitAddAbilityBJ('Adtg', Arena___challenager)
	                	//斧王技能
					    set Arena___TSpellFuwang=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellFuwang, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellFuwang, Condition(function Arena___TSpellFuwangCon))
					    call TriggerAddAction(Arena___TSpellFuwang, function Arena___TSpellFuwangAct)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 6 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hvsh', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
					    //美杜莎技能
					    set Arena___TSpellMeidusha1=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellMeidusha1, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellMeidusha1, Condition(function Arena___TSpellMeidusha1Con))
					    call TriggerAddAction(Arena___TSpellMeidusha1, function Arena___TSpellMeidusha1Act)

					    set Arena___TSpellMeidusha2=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellMeidusha2, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellMeidusha2, Condition(function Arena___TSpellMeidusha2Con))
					    call TriggerAddAction(Arena___TSpellMeidusha2, function Arena___TSpellMeidusha2Act)
	                	call UnitAddAbilityBJ('Adtg', Arena___challenager)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 7 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hpb2', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                	call UnitAddAbilityBJ('A0F1', Arena___challenager)
	                	call UnitAddAbilityBJ('Adtg', Arena___challenager)
					    //杀手技能

					    set Arena___TSpellKiller1=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellKiller1, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellKiller1, Condition(function TSpellKiller1Con))
					    call TriggerAddAction(Arena___TSpellKiller1, function TSpellKiller1Act)

					    set Arena___TSpellKiller2=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellKiller2, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellKiller2, Condition(function TSpellKiller2Con))
					    call TriggerAddAction(Arena___TSpellKiller2, function TSpellKiller2Act)
	                elseif ( ( Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] == 8 ) ) then
	                    set Arena___challenager=CreateUnit(Player(10), 'Hlgr', GetRandomReal(GetRectMinX(gg_rct_Arena_all), GetRectMaxX(gg_rct_Arena_all)), GetRandomReal(GetRectMinY(gg_rct_Arena_all), GetRectMaxY(gg_rct_Arena_all)), 180.00)

	                    //瑾轩技能
					    set Arena___TSpellJinxuan1=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan1, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellJinxuan1, Condition(function TSpellJinxuan1Con))
					    call TriggerAddAction(Arena___TSpellJinxuan1, function TSpellJinxuan1Act)

					    set Arena___TSpellJinxuan2=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan2, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellJinxuan2, Condition(function TSpellJinxuan2Con))
					    call TriggerAddAction(Arena___TSpellJinxuan2, function TSpellJinxuan2Act)

					    set Arena___TSpellJinxuan3=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellJinxuan3, Condition(function TSpellJinxuan3Con))
					    call TriggerAddAction(Arena___TSpellJinxuan3, function TSpellJinxuan3Act)

					    set Arena___TSpellJinxuan4=CreateTrigger()
					    call TriggerRegisterAnyUnitEventBJ(Arena___TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED)
					    call TriggerAddCondition(Arena___TSpellJinxuan4, Condition(function TSpellJinxuan4Con))
					    call TriggerAddAction(Arena___TSpellJinxuan4, function TSpellJinxuan4Act)

	                	call UnitAddAbilityBJ('A0F1', Arena___challenager)
	                	call UnitAddAbilityBJ('Adtg', Arena___challenager)
	                endif

	                //初始化单位
					call SetUnitX(Arena___defier, GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(Arena___defier, GetRectCenterY(gg_rct_Arena_1))
	                call SetUnitInvulnerable(Arena___challenager, true)
	                call PauseUnitBJ(true, Arena___challenager)
	                set Arena___currentLevel=1
	                call UnitAddAbilityBJ('A0ES', Arena___challenager)
	                call UnitAddAbilityBJ('A0B9', Arena___challenager)
	                call UnitAddAbilityBJ('A09W', Arena___challenager)
	                call UnitAddAbilityBJ('A0P1', Arena___challenager)
	                set Arena___textTag_Level=CreateTextTagUnitBJ(I2S(Arena___currentLevel) + "级", Arena___challenager, 0, 20, 100, 0, 0, 0)
	                call PolledWait(3.00)
	                if ( ( Arena___challenager != null ) ) then
	                    call SetUnitInvulnerable(Arena___challenager, false)
	                    call PauseUnitBJ(false, Arena___challenager)
	                    call DisplayTextToPlayer(GetOwningPlayer(Arena___defier), 0, 0, "|cFFFF66CC【消息】|r挑战开始！")
	                    //5秒更新一次等级
	                    set t=CreateTimer()
	                    call TimerStart(t, 5, TRUE, function Arena___updateLevel)
	                    //0.05秒更新一次等级提示的位置
	                    set t=CreateTimer()
	                    call TimerStart(t, 0.05, TRUE, function Arena___updateLevelLoc)
   						call TriggerRegisterUnitEvent(Arena___TDieEvent, Arena___challenager, EVENT_UNIT_DEATH)
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
	    
	    set t=null
	endfunction

 function Arena___TArenaStartCon takes nothing returns boolean
	    return ( ( GetItemTypeId(GetSoldItem()) == 'I04D' ) and (GetUnitTypeId((GetBuyingUnit())) != 'N018') == true and ( GetBuyingUnit() == Arena___defier ) ) // INLINED!!
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
	    	set Arena___currentLevel=1
	    endif

        call DestroyTrigger(Arena___TSpellLinger)
		call DestroyTrigger(Arena___TSpellZhousi)
		call DestroyTrigger(Arena___TSpellXuemo1)
		call DestroyTrigger(Arena___TSpellXuemo2)
		call DestroyTrigger(Arena___TSpellFuwang)
		call DestroyTrigger(Arena___TSpellMeidusha1)
		call DestroyTrigger(Arena___TSpellMeidusha2)
		call DestroyTrigger(Arena___TSpellKiller1)
		call DestroyTrigger(Arena___TSpellKiller2)
		call DestroyTrigger(Arena___TSpellJinxuan1)
		call DestroyTrigger(Arena___TSpellJinxuan2)
		call DestroyTrigger(Arena___TSpellJinxuan3)
		call DestroyTrigger(Arena___TSpellJinxuan4)

		set Arena___TSpellLinger=null
		set Arena___TSpellZhousi=null
		set Arena___TSpellXuemo1=null
		set Arena___TSpellXuemo2=null
		set Arena___TSpellFuwang=null
		set Arena___TSpellMeidusha1=null
		set Arena___TSpellMeidusha2=null
		set Arena___TSpellKiller1=null
		set Arena___TSpellKiller2=null
		set Arena___TSpellJinxuan1=null
		set Arena___TSpellJinxuan2=null
		set Arena___TSpellJinxuan3=null
		set Arena___TSpellJinxuan4=null
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
     local integer ty= ( GetUnitTypeId(GetDyingUnit()) )
	    if ( ty == 'Huth' ) then
	        call CreateItemLoc('prvt', point)
	    elseif ( ty == 'Hpb1' ) then
	        call CreateItemLoc('cnob', point)
	    elseif ( ty == 'Hgam' ) then
	        call CreateItemLoc('rhth', point)
	    elseif ( ty == 'Hmbr' ) then
	        call CreateItemLoc('hval', point)
	    elseif ( ty == 'Odrt' ) then
	        call CreateItemLoc('afac', point)
	    elseif ( ty == 'Ogrh' ) then
	        call CreateItemLoc('pmna', point)
	    elseif ( ty == 'Hvsh' ) then
	        call CreateItemLoc('evtl', point)
	    elseif ( ty == 'Hpb2' ) then
	        call CreateItemLoc('bspd', point)
	    elseif ( ty == 'Hlgr' ) then
	        call CreateItemLoc('mcou', point)
	    endif


	    set Arena___currentLevel=1
	    set Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))]=Arena___currentArena[GetConvertedPlayerId(GetOwningPlayer(Arena___defier))] + 1
	    call RemoveLocation(point)
	    set point=null
	    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!")
	    call RemoveUnit(Arena___challenager)
	    set Arena___challenager=null

        call DestroyTrigger(Arena___TSpellLinger)
		call DestroyTrigger(Arena___TSpellZhousi)
		call DestroyTrigger(Arena___TSpellXuemo1)
		call DestroyTrigger(Arena___TSpellXuemo2)
		call DestroyTrigger(Arena___TSpellFuwang)
		call DestroyTrigger(Arena___TSpellMeidusha1)
		call DestroyTrigger(Arena___TSpellMeidusha2)
		call DestroyTrigger(Arena___TSpellKiller1)
		call DestroyTrigger(Arena___TSpellKiller2)
		call DestroyTrigger(Arena___TSpellJinxuan1)
		call DestroyTrigger(Arena___TSpellJinxuan2)
		call DestroyTrigger(Arena___TSpellJinxuan3)
		call DestroyTrigger(Arena___TSpellJinxuan4)

		set Arena___TSpellLinger=null
		set Arena___TSpellZhousi=null
		set Arena___TSpellXuemo1=null
		set Arena___TSpellXuemo2=null
		set Arena___TSpellFuwang=null
		set Arena___TSpellMeidusha1=null
		set Arena___TSpellMeidusha2=null
		set Arena___TSpellKiller1=null
		set Arena___TSpellKiller2=null
		set Arena___TSpellJinxuan1=null
		set Arena___TSpellJinxuan2=null
		set Arena___TSpellJinxuan3=null
		set Arena___TSpellJinxuan4=null
	endfunction
//---------------------------------------------------------------------------------------------------
 function Arena___InitArena takes nothing returns nothing
		//挑战开始--买了"挑战开始"
  local trigger t= CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddCondition(t, Condition(function Arena___TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //离开擂台后判负
	    set t=CreateTrigger()
	    call TriggerRegisterLeaveRectSimple(t, gg_rct_Arena_forbit)
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //进入挑战场--买了"进入擂台"
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddAction(t, function Arena___TArenaEnterAct)

	    //擂主死亡事件
	    set Arena___TDieEvent=CreateTrigger()
	    call TriggerAddCondition(Arena___TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(Arena___TDieEvent, function TDieEventActions)


	    set t=null
	endfunction

//library Arena ends
//library Boss:

//---------------------------------------------------------------------------------------------------

 function CycleFangKa takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(bossTable, id, 1)
  local real x2= GetUnitX(u)
  local real y2= GetUnitY(u)
  local real x1
  local real y1
  local real distance
  local real facing
  local integer count= 0
  local group l_group= CreateGroup()
  local unit l_unit
		if ( IsUnitAliveBJ(u) ) then
			call GroupEnumUnitsInRange(l_group, x2, y2, 900, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( ( IsUnitAliveBJ(l_unit) == true ) and ( GetUnitAbilityLevel(l_unit, 'Avul') < 1 ) and ( GetUnitPointValue(l_unit) != 123 ) and ( IsUnitEnemy(l_unit, Player(11)) == true ) ) then
			    	set count=count + 1
			    endif
			endloop
			if ( count == 0 ) then
		    	set x1=GetRectCenterX(gg_rct________1)
		    	set y1=GetRectCenterY(gg_rct________1)
		    	set distance=SquareRoot(( x1 - x2 ) * ( x1 - x2 ) + ( y1 - y2 ) * ( y1 - y2 ))
		    	if ( distance > 600 ) then
			    	set facing=Atan2BJ(y1 - y2, x1 - x2)
			    	call SetUnitX(u, (RMinBJ(RMaxBJ(((x2 + CosBJ(facing) * 40)*1.0), yd_MapMinX), yd_MapMaxX))) // INLINED!!
			    	call SetUnitY(u, (RMinBJ(RMaxBJ(((y2 + SinBJ(facing) * 40)*1.0), yd_MapMinY), yd_MapMaxY))) // INLINED!!
		    	endif
			endif
		else
			call PauseTimer(t)
			call DestroyTimer(t)
	    	call FlushChildHashtable(bossTable, id)
		endif
		set t=null
		set u=null
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null
	endfunction
	
 function StartFangKa takes unit fangka returns nothing
  local timer t=CreateTimer()
	    call SaveUnitHandle(bossTable, GetHandleId(t), 1, fangka)
		call TimerStart(t, 0.1, true, function CycleFangKa)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function TSpellZuoCon takes nothing returns boolean
	    return ( ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function TSpellZuoAct takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttackedUnitBJ() , GetAttacker() , 'AB00' , udg_Nandu_JJJ , 5 , "magicleash" , false , false , true)
	    call CreateTextTagA(("死亡枷锁！" ) , ( gg_unit_Uear_0242 ) , (( 100 )*1.0) , (( 75 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(4.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function TSpellYouCon takes nothing returns boolean
	    return ( ( IsUnitAliveBJ(GetAttackedUnitBJ()) == true ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

 function TSpellYouAct takes nothing returns nothing
	    call DisableTrigger(GetTriggeringTrigger())
 		call SimulateSpell(GetAttackedUnitBJ() , GetAttacker() , 'ANc2' , udg_Nandu_JJJ , 5 , "clusterrockets" , true , false , false)
	    call CreateTextTagA(("异界冰封！" ) , ( gg_unit_Npld_0253 ) , (( 25 )*1.0) , (( 100 )*1.0) , (( 25 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	    call PolledWait(4.00)
	    call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function startMissile takes nothing returns nothing
		call s__Missile_create(gg_unit_Nkjx_0241 , 'hs01' , "Units\\Demon\\Infernal\\InfernalBirth.mdl" , 300 , 1800 , 3 , 1 , 1000000000)
	endfunction

 function refreshMissile takes nothing returns nothing
  local real interval
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(gg_unit_Nkjx_0241) == true ) then
			set interval=( GetUnitState(gg_unit_Nkjx_0241, UNIT_STATE_LIFE) / GetUnitState(gg_unit_Nkjx_0241, UNIT_STATE_MAX_LIFE) * 0.2 ) + 0.2
			call TimerStart(Boss___TiMissile, interval, true, function startMissile)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call PauseTimer(Boss___TiMissile)
			call DestroyTimer(Boss___TiMissile)
		endif
		set t=null
	endfunction

 function starthaha takes nothing returns nothing
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function InitMingwang takes nothing returns nothing
  local timer refresh= CreateTimer()
		
        local integer attract= s__Attract_create(gg_unit_Nkjx_0241 , 1800 , 0.05 , 10)
        call s__Attract_start(attract)

        //左右护法的技能
	    set Boss___TSpellZuo=CreateTrigger()
	    call TriggerRegisterUnitEvent(Boss___TSpellZuo, gg_unit_Uear_0242, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(Boss___TSpellZuo, Condition(function TSpellZuoCon))
	    call TriggerAddAction(Boss___TSpellZuo, function TSpellZuoAct)

	    set Boss___TSpellYou=CreateTrigger()
	    call TriggerRegisterUnitEvent(Boss___TSpellYou, gg_unit_Npld_0253, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(Boss___TSpellYou, Condition(function TSpellYouCon))
	    call TriggerAddAction(Boss___TSpellYou, function TSpellYouAct)

	    //冥刹的死亡导弹
		set Boss___TiMissile=CreateTimer()
		//开始疯狂导弹
		call TimerStart(Boss___TiMissile, 0.4, true, function startMissile)
		call TimerStart(refresh, 3, true, function refreshMissile)
		set refresh=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function DestroyMingwang takes nothing returns nothing
		// body...
	endfunction
//---------------------------------------------------------------------------------------------------

 function InitSaisilier takes unit u returns nothing
        local integer attract= s__Attract_create(u , 1800 , 0.05 , 20)
        call s__Attract_start(attract)
	endfunction

	
//---------------------------------------------------------------------------------------------------

 function Boss___InitBoss takes nothing returns nothing
		// body...
		set bossTable=InitHashtable()
	endfunction

//library Boss ends
//library Chenji:
    
//---------------------------------------------------------------------------------------------------
    

    function TSpellChenji4Con takes nothing returns boolean
        return ( ( GetUnitStateSwap(UNIT_STATE_MANA, chenji) > 800.00 ) and ( GetEventDamage() >= 1. ) and ( GetEventDamage() <= 100000000.00 ) )
    endfunction

    function TSpellChenji4Act takes nothing returns nothing
        local unit u
        call DisableTrigger(GetTriggeringTrigger())
        set Chenji___RDamage=Chenji___RDamage + GetEventDamage()
        if ( Chenji___RDamage >= GetUnitState(chenji, UNIT_STATE_MAX_LIFE) * 0.1 ) then
            set Chenji___RDamage=0
        else
            call EnableTrigger(GetTriggeringTrigger())
            return
        endif

        set u=CreateUnit(GetOwningPlayer(chenji), 'h00P', (RMinBJ(RMaxBJ(((( GetUnitX(chenji) + GetRandomReal(- 300.00, 300.00) ))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((( GetUnitY(chenji) + GetRandomReal(- 300.00, 300.00) ))*1.0), yd_MapMinY), yd_MapMaxY)), 0.00) // INLINED!!
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(u), GetUnitY(u)))
        call UnitApplyTimedLifeBJ(5.00, 'BTLF', u)
        if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, chenji) <= ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, chenji) * 0.30 ) ) ) then
            call UnitAddAbilityBJ('A0FA', u)
        else
        endif
        set u=null
        call PolledWait(0.10)
        call EnableTrigger(GetTriggeringTrigger())
    endfunction
//---------------------------------------------------------------------------------------------------
    

    //按照12345来判断
    function LearnSkillChenjiI takes unit learner,integer whichSpell returns nothing
        local integer i
        if ( learner == chenji ) then
            if ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((chenji))) == 1) == true and GetUnitAbilityLevel(chenji, 'A0F8') == 1 ) then // INLINED!!
                set Chenji___TSpellChenji4=CreateTrigger()
                call TriggerRegisterUnitEvent(Chenji___TSpellChenji4, chenji, EVENT_UNIT_DAMAGED)
                call TriggerAddCondition(Chenji___TSpellChenji4, Condition(function TSpellChenji4Con))
                call TriggerAddAction(Chenji___TSpellChenji4, function TSpellChenji4Act)
            endif
        endif
    endfunction

    function LearnSkillChenji takes unit learner,integer learnSpellID returns nothing
        if ( learner == chenji ) then
            if ( learnSpellID == 'A0F8' ) then
                call LearnSkillChenjiI(learner , 4)
            endif
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    function InitChenji takes unit u returns nothing

        set chenji=u
    endfunction


//library Chenji ends
//library Combine:
	
 function Combine___TCombineAllCon takes nothing returns boolean
		return ( IsUnitIllusionBJ(GetManipulatingUnit()) != true )
	endfunction
	
 function Combine___TCombineAllAct takes nothing returns nothing
		call CombineBeast(GetManipulatingUnit())
	endfunction

//---------------------------------------------------------------------------------------------------
 function Combine___InitCombine takes nothing returns nothing
		
     local trigger t= CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	    call TriggerAddCondition(t, Condition(function Combine___TCombineAllCon))
	    call TriggerAddAction(t, function Combine___TCombineAllAct)

	    set t=null
	endfunction


//library Combine ends
//library Hanshang:
	

//---------------------------------------------------------------------------------------------------
	
 function SiShenZhaDan takes unit speller,real x,real y,real damageRate,integer abilityID returns nothing
  local real n
  local unit u= speller
  local real damage= GetDamageAgi(u) * damageRate * 2
  local real x1= GetUnitX(u)
     local real y1= GetUnitY(u)
     local real facing= Atan2(y - y1, x - x1)
     local real distance= SquareRoot(( y - y1 ) * ( y - y1 ) + ( x - x1 ) * ( x - x1 ))
	    set n=RMaxBJ(0.1, 1 - distance / 24000)
	    set damage=damage * n
	    if ( abilityID != 0 ) then
	    	call PrintSpellAdd(GetOwningPlayer(u) , GetAbilityName(abilityID) , damage , ",距离伤害衰减" + I2S(100 - R2I(n * 100)) + "%.")
	    endif
	    call DamageArea(hanshang , x , y , 450 , damage)
	    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", x, y))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Hanshang___TSpellHanshang2Con takes nothing returns boolean
	    return ( ( GetAttackedUnitBJ() == hanshang ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((hanshang))) == 1) == true ) and ( GetRandomInt(1, 10) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, hanshang) > 200.00 ) and GetUnitAbilityLevel(hanshang, 'AHbn') >= 1 ) // INLINED!!
	endfunction

 function Hanshang___TSpellHanshang2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call SiShenZhaDan(hanshang , GetUnitX(GetAttacker()) , GetUnitY(GetAttacker()) , 0.33 , 'AHbn')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Hanshang___LianJinZhiShuTimer takes nothing returns nothing
  local integer lumber= GetPlayerState(GetOwningPlayer(hanshang), PLAYER_STATE_RESOURCE_LUMBER)
  local integer update= 0
  local real Rupdate
		if ( lumber > 100000 ) then
			set update=90
			set Hanshang___RLianjin2=0.72
		elseif ( lumber > 10000 ) then
			set update=75
			set Hanshang___RLianjin2=0.6
		elseif ( lumber > 1000 ) then
			set update=60
			set Hanshang___RLianjin2=0.48
		elseif ( lumber > 100 ) then
			set update=45
			set Hanshang___RLianjin2=0.36
		elseif ( lumber > 10 ) then
			set update=30
			set Hanshang___RLianjin2=0.24
		elseif ( lumber > 1 ) then
			set update=15
			set Hanshang___RLianjin2=0.12
		endif
		set Rupdate=I2R(update) / 100
		if ( Hanshang___RLianjin != Rupdate ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(hanshang), GetUnitY(hanshang)))
			call DisplayTextToPlayer((GetOwningPlayer(hanshang) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('A0BN') ) + "|cFFFF66CC】|r" + ( "额外技能伤害加成" + I2S(update) + "%.") )) // INLINED!!
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)) , Rupdate - Hanshang___RLianjin)
			set Hanshang___RLianjin=Rupdate
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
	
 function Hanshang___LianhuanBoomTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local real x= LoadReal(spellTable, id, kLianhuanBoomX)
  local real y= LoadReal(spellTable, id, kLianhuanBoomY)
		if ( ( GetUnitState(hanshang, UNIT_STATE_MANA) >= 200 ) and ( Hanshang___IsLianhuan == true ) ) then
			call SetUnitManaBJ(hanshang, GetUnitState(hanshang, UNIT_STATE_MANA) - 200)
			call SiShenZhaDan(hanshang , x , y , 2 , 0)
		else
        	call IssueImmediateOrder(hanshang, "stop")
        	set Hanshang___IsLianhuan=false
			call DisplayTextToPlayer((GetOwningPlayer(hanshang) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('A0F0') ) + "|cFFFF66CC】|r" + ( "施法结束.") )) // INLINED!!
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable, id)
		endif
		set t=null
	endfunction
	
 function Hanshang___LianhuanBoom takes nothing returns nothing
  local timer t= CreateTimer()
		set Hanshang___IsLianhuan=true
		call EnableTrigger(Hanshang___TSpellHanshang4)
		call SaveReal(spellTable, GetHandleId(t), kLianhuanBoomX, GetSpellTargetX())
		call SaveReal(spellTable, GetHandleId(t), kLianhuanBoomY, GetSpellTargetY())
		call TimerStart(t, 1, true, function Hanshang___LianhuanBoomTimer)
		call DisplayTextToPlayer(((GetOwningPlayer(hanshang) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName('A0F0')) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
		set t=null
	endfunction

	
 function Hanshang___TSpellHanshang4Con takes nothing returns boolean
	    return ( ( GetSpellAbilityId() == 'A0F0' ) )
	endfunction

 function Hanshang___TSpellHanshang4Act takes nothing returns nothing
		set Hanshang___IsLianhuan=false
		call DisableTrigger(Hanshang___TSpellHanshang4)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Hanshang___TSpellHanshangCon takes nothing returns boolean
	    return ( GetSpellAbilityUnit() == hanshang )
	endfunction

 function Hanshang___TSpellHanshangAct takes nothing returns nothing
		if ( ( GetSpellAbilityId() == 'AOs2' ) ) then
			call SiShenZhaDan(hanshang , GetSpellTargetX() , GetSpellTargetY() , 1 , GetSpellAbilityId())
		elseif ( ( GetSpellAbilityId() == 'A0F0' ) ) then
			call Hanshang___LianhuanBoom()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Hanshang___TSpellHanshang3Con takes nothing returns boolean
		return (GetPlayerTechCountSimple('R007', GetOwningPlayer((hanshang))) == 1) == true and GetUnitAbilityLevel(hanshang, 'A0BN') == 1 // INLINED!!
	endfunction
	
 function Hanshang___TSpellHanshang3Act takes nothing returns nothing
		call SetUnitLifeBJ(hanshang, GetUnitState(hanshang, UNIT_STATE_LIFE) + GetEventDamage() * Hanshang___RLianjin2)
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillHanshangI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == hanshang ) then
			if ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((hanshang))) == 1) == true and GetUnitAbilityLevel(hanshang, 'A0BN') == 1 ) then // INLINED!!
				//技能3初始化
		        call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)) , 0.25)
				set i=1
       			loop
       				exitwhen i > 6
       				
		            if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
		                call AddMoneyPercent(i , 0.25)
		            endif

       				set i=i + 1
       			endloop

       			//炼金之术
       			call TimerStart(CreateTimer(), 3, true, function Hanshang___LianJinZhiShuTimer)
       		endif
		endif
	endfunction

 function LearnSkillHanshang takes unit learner,integer learnSpellID returns nothing
		if ( learner == hanshang ) then
			if ( learnSpellID == 'AOs2' ) then
				call LearnSkillHanshangI(learner , 1)
			elseif ( learnSpellID == 'AHbn' ) then
				call LearnSkillHanshangI(learner , 2)
			elseif ( learnSpellID == 'A0BN' ) then
				call LearnSkillHanshangI(learner , 3)
			elseif ( learnSpellID == 'A0F0' ) then
				call LearnSkillHanshangI(learner , 4)
			elseif ( learnSpellID == 'AUfa' ) then
				call LearnSkillHanshangI(learner , 5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitHanshang takes unit u returns nothing
		set hanshang=u

		//1
	    set Hanshang___TSpellHanshang=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Hanshang___TSpellHanshang, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(Hanshang___TSpellHanshang, Condition(function Hanshang___TSpellHanshangCon))
	    call TriggerAddAction(Hanshang___TSpellHanshang, function Hanshang___TSpellHanshangAct)

	    //2
	    set Hanshang___TSpellHanshang2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Hanshang___TSpellHanshang2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Hanshang___TSpellHanshang2, Condition(function Hanshang___TSpellHanshang2Con))
	    call TriggerAddAction(Hanshang___TSpellHanshang2, function Hanshang___TSpellHanshang2Act)

	    //魔能等级低于5则减少受到的50%伤害
	    set Hanshang___TSpellHanshang3=CreateTrigger()
	    call TriggerRegisterUnitEvent(Hanshang___TSpellHanshang3, hanshang, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(Hanshang___TSpellHanshang3, Condition(function Hanshang___TSpellHanshang3Con))
	    call TriggerAddAction(Hanshang___TSpellHanshang3, function Hanshang___TSpellHanshang3Act)

	    //4
	    set Hanshang___TSpellHanshang4=CreateTrigger()
	    call DisableTrigger(Hanshang___TSpellHanshang4)
	    call TriggerRegisterAnyUnitEventBJ(Hanshang___TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
	    call TriggerRegisterAnyUnitEventBJ(Hanshang___TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_FINISH)
	    call TriggerAddCondition(Hanshang___TSpellHanshang4, Condition(function Hanshang___TSpellHanshang4Con))
	    call TriggerAddAction(Hanshang___TSpellHanshang4, function Hanshang___TSpellHanshang4Act)

		call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)) , 0.3)
	endfunction

//library Hanshang ends
//library Heiyan:
	
//---------------------------------------------------------------------------------------------------
	
 function Heiyan___IsFull takes nothing returns boolean
		return CountUnitsInGroup(Heiyan___GSacri) >= Heiyan___ISacriMaxCount
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Heiyan___CreateBasicSacrifice takes real tx,real ty returns nothing
  local unit u
  local real angle
  local real x
  local real y
  local integer i= 3
		if ( (CountUnitsInGroup(Heiyan___GSacri) >= Heiyan___ISacriMaxCount) ) then // INLINED!!
			return
		endif
		if ( Heiyan___IsDouble == true ) then
			set i=1
		endif
		loop
			exitwhen i > 3

			set angle=GetRandomReal(0, 360)
			set x=(RMinBJ(RMaxBJ(((tx + 80 * CosBJ(angle))*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
			set y=(RMinBJ(RMaxBJ(((ty + 80 * SinBJ(angle))*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
			if ( Heiyan___BIsMojie == true ) then
				set u=CreateUnit(Player(11), 'h012', x, y, 0)
			else
				set u=CreateUnit(GetOwningPlayer(Heiyan), 'h012', x, y, 0)
			endif
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", x, y))
		    call UnitApplyTimedLifeBJ(9, 'BHwe', u)
	    	call GroupAddUnit(Heiyan___GSacri, u)
			//无敌
		    call SetUnitInvulnerable(u, true)

		    set i=i + 1
		endloop

		set u=null
	endfunction

 function Heiyan___CreateSuperSacrifice takes real x,real y returns nothing
  local unit u
  local integer i= 3
		if ( Heiyan___IsDouble == true ) then
			set i=1
		endif
		loop
			exitwhen i > 3

			set u=CreateUnit(GetOwningPlayer(Heiyan), 'h011', x, y, 0)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", x, y))
		    call UnitApplyTimedLifeBJ(30, 'BHwe', u)
			//三秒无敌
		    call SetUnitInvulnerable(u, true)

			set i=i + 1
		endloop
		set u=null
	endfunction

 function Heiyan___CreateSacrifice takes unit creater returns nothing
		call Heiyan___CreateBasicSacrifice(GetUnitX(creater) , GetUnitY(creater))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Heiyan___SacriDamageFlash takes nothing returns nothing
		set Heiyan___DamageSacri=GetDamageStr(Heiyan) * 0.01
	endfunction
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageHeiyan takes unit u returns boolean
		//祭品的伤害
		if ( IsUnitInGroup(u, Heiyan___GSacri) == true ) then
			call DisableTrigger(GetTriggeringTrigger())
			if ( IsEnemy(GetTriggerUnit() , Heiyan) ) then
				call UnitDamageTarget(u, GetTriggerUnit(), Heiyan___DamageSacri * 10, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			else
				call SetUnitLifeBJ(GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE) + GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE) * 0.12)
				call SetUnitManaBJ(GetTriggerUnit(), GetUnitState(GetTriggerUnit(), UNIT_STATE_MANA) + 12)
			endif
			call EnableTrigger(GetTriggeringTrigger())
			return true
		endif

		//泣罗刹后续与高级祭品
		if ( GetUnitTypeId(u) == 'h011' or GetUnitTypeId(u) == 'hh04' ) then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget(u, GetTriggerUnit(), Heiyan___DamageSacri * 60, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			return true
		endif
		return false
	endfunction

//---------------------------------------------------------------------------------------------------
	
	//魔界
 function Heiyan___YeShenJi takes nothing returns nothing
  local unit u= GetSpellAbilityUnit()
  local group l_group= CreateGroup()
  local unit l_unit
		set Heiyan___BIsMojie=not ( Heiyan___BIsMojie )
		call GroupAddGroup(Heiyan___GSacri, l_group)
		if ( Heiyan___BIsMojie == true ) then
		    call DisplayTextToPlayer((GetOwningPlayer(u) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "当前祭品控制权为魔界.") )) // INLINED!!

		    loop
		        set l_unit=FirstOfGroup(l_group)
		        exitwhen l_unit == null
		        call GroupRemoveUnit(l_group, l_unit)

		        call SetUnitOwner(l_unit, Player(11), true)
		    endloop
		else
		    call DisplayTextToPlayer((GetOwningPlayer(u) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "当前祭品控制权为自己.") )) // INLINED!!
		    loop
		        set l_unit=FirstOfGroup(l_group)
		        exitwhen l_unit == null
		        call GroupRemoveUnit(l_group, l_unit)

		    	call SetUnitOwner(l_unit, GetOwningPlayer(Heiyan), true)
		    endloop
		endif
		call DestroyGroup(l_group)
		set l_group=null
		set u=null
		set l_unit=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Heiyan___TSpellHeiyan00Con takes nothing returns boolean
		return ( GetKillingUnitBJ() == Heiyan and IsUnitIllusion(GetKillingUnitBJ()) == false and GetUnitPointValue(GetDyingUnit()) != 123 and GetUnitPointValue(GetDyingUnit()) != 0 and IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) and GetUnitTypeId(GetDyingUnit()) != 'h012' and GetRandomInt(1, 6) == 1 )
	endfunction

 function Heiyan___TSpellHeiyan00Act takes nothing returns nothing
		call Heiyan___CreateSacrifice(GetDyingUnit())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Heiyan___HeiyanFilter takes nothing returns boolean
		return ( IsEnemy(GetFilterUnit() , Heiyan) or IsUnitInGroup(GetFilterUnit(), Heiyan___GSacri) )
	endfunction

 function Heiyan___QianGuiXie takes unit speller,unit target,real damageRate,integer abilityID returns nothing
  local unit u= speller
  local real damage= GetDamageStr(u) * damageRate
     local group l_group= CreateGroup()
     local unit l_unit
     local integer count
	    call CreateUnitEffectSpecifyTime((GetOwningPlayer(u) ) , ( 'h008' ) , (( GetUnitX(target) )*1.0) , (( GetUnitY(target) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	    call GroupEnumUnitsInRange(l_group, GetUnitX(target), GetUnitY(target), 600, Condition(function Heiyan___HeiyanFilter))
	    set count=CountUnitsInGroup(l_group)
	    set damage=damage * ( 0.5 + 0.20 * count )
	    loop
	        set l_unit=FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
	        if not ( IsUnitInGroup(l_unit, Heiyan___GSacri) ) then
	        	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
	    		call UnitDamageTarget(u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	        endif
	    endloop
	    //输出伤害
	    call PrintSpellAdd(GetOwningPlayer(u) , GetAbilityName(abilityID) , damage , ",敌人数量" + I2S(count) + "个")
	    call DestroyGroup(l_group)
	    set l_group=null
	    set l_unit=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
    function Heiyan___TSpellHeiyan2Con takes nothing returns boolean
    	return GetAttacker() == Heiyan and (GetPlayerTechCountSimple('R006', GetOwningPlayer((Heiyan))) == 1) == true and GetUnitState(Heiyan, UNIT_STATE_MANA) >= 250 and CountUnitsInGroup(Heiyan___GSacri) >= 1 and GetUnitAbilityLevel(Heiyan, 'A0C8') == 1 // INLINED!!
    endfunction
    
    function Heiyan___TSpellHeiyan2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call Heiyan___QianGuiXie(Heiyan , GetAttackedUnitBJ() , 0.4 , 'A0C8')
		call PolledWait(5)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction

    

    function Heiyan___YanLuoDianCreate takes nothing returns nothing
     local timer t= GetExpiredTimer()
     local unit u= LoadUnitHandle(spellTable, GetHandleId(t), kUYanluo)
    	if ( IsUnitAliveBJ(u) == true ) then
    		call Heiyan___CreateSacrifice(u)
    	else
    		call PauseTimer(t)
    		call DestroyTimer(t)
    		call FlushChildHashtable(spellTable, GetHandleId(t))
    	endif
    	set u=null
    	set t=null
    endfunction

    function Heiyan___YanLuoDian takes nothing returns nothing
     local timer t= CreateTimer()
     local unit u= CreateUnit(GetOwningPlayer(GetSpellAbilityUnit()), 'hh02', GetSpellTargetX(), GetSpellTargetY(), 0)
	    call UnitApplyTimedLifeBJ(30.00, 'BHwe', u)
    	call SaveUnitHandle(spellTable, GetHandleId(t), kUYanluo, u)
    	call TimerStart(t, 6, true, function Heiyan___YanLuoDianCreate)
		call DisplayTextToPlayer(((GetOwningPlayer(u) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
    	set u=null
    	set t=null
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function Heiyan___SheHunJue takes nothing returns nothing
		call Heiyan___CreateSuperSacrifice(GetSpellTargetX() , GetSpellTargetY())
		call PrintSpellAdd((GetOwningPlayer(GetSpellAbilityUnit()) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( Heiyan___DamageSacri)*1.0) , "") // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------
	

 function Heiyan___SimulateDeathHeiyanBoom takes unit u returns nothing
	    call CreateUnitEffectSpecifyTime(GetOwningPlayer(Heiyan) , 'hh04' , GetUnitX(u) , GetUnitY(u) , 0 , 1.8)
	endfunction
	
 function SimulateDeathHeiyan takes unit u returns nothing
		if not ( IsUnitInGroup(u, Heiyan___GSacri) == true ) then
			return
		endif

		call GroupRemoveUnit(Heiyan___GSacri, GetDyingUnit())
		if ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((Heiyan))) == 1) == true and GetUnitAbilityLevel(Heiyan, 'A0C9') == 1 and GetUnitState(Heiyan, UNIT_STATE_MANA) >= 600 ) then // INLINED!!
			call Heiyan___SimulateDeathHeiyanBoom(u)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	
 function Heiyan___QiLuoCha takes nothing returns nothing
		set Heiyan___IsDouble=true
		call DisplayTextToPlayer(((GetOwningPlayer(GetSpellAbilityUnit()) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName(GetSpellAbilityId())) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
		call YDWETimerDestroyEffect(60 , AddSpecialEffectTargetUnitBJ("chest", Heiyan, "war3mapImported\\doomtargetpurpl.mdx"))
		call PolledWait(60)
		call DisplayTextToPlayer((GetOwningPlayer(GetSpellAbilityUnit()) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) ) + "|cFFFF66CC】|r" + ( "加速结束。") )) // INLINED!!
		set Heiyan___IsDouble=false
	endfunction

	
 function Heiyan___TSpellHeiyan41Con takes nothing returns boolean
		return ( GetEventDamage() > GetUnitState(Heiyan, UNIT_STATE_LIFE) and ( CountUnitsInGroup(Heiyan___GSacri) >= 1 ) and ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((Heiyan))) == 1) == true ) and ( GetUnitAbilityLevel(Heiyan, 'A0D2') == 1 ) ) // INLINED!!
	endfunction
	
 function Heiyan___TSpellHeiyan41Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call KillUnit(FirstOfGroup(Heiyan___GSacri))
		call SetUnitLifePercentBJ(Heiyan, 100)
		call ImmuteDamageInterval(Heiyan , 1)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(Heiyan), GetUnitY(Heiyan)))
		call DisplayTextToPlayer((GetOwningPlayer(Heiyan) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('A0D2') ) + "|cFFFF66CC】|r" + ( "抵消致死伤害.") )) // INLINED!!
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Heiyan___ZangJiuTianTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real x= GetUnitX(Heiyan___UZangJiuTian)
  local real y= GetUnitY(Heiyan___UZangJiuTian)
  local integer ii= 1
		//如果祭品没有了则阵消失
		if ( CountUnitsInGroup(Heiyan___GSacri) >= 1 ) then
			loop
				exitwhen ii > 6
					call DestroyEffect(AddSpecialEffect("war3mapImported\\GhostStrike.mdx", x + CosBJ(ii * 60) * GetRandomInt(100, 500), y + SinBJ(ii * 60) * GetRandomInt(100, 500)))
				set ii=ii + 1
			endloop
			call DamageArea(Heiyan , x , y , 600 , GetDamageStr(Heiyan))
		else
			call RemoveUnit(Heiyan___UZangJiuTian)
			call PauseTimer(t)
			call DestroyTimer(t)
			set Heiyan___UZangJiuTian=null
		endif
		set t=null
	endfunction

 function Heiyan___ZangJiuTian takes nothing returns nothing
  local timer t= CreateTimer()
		call RemoveUnit(Heiyan___UZangJiuTian)
		set Heiyan___UZangJiuTian=CreateUnit(GetOwningPlayer(GetSpellAbilityUnit()), 'hh05', GetUnitX(GetSpellAbilityUnit()), GetUnitY(GetSpellAbilityUnit()), 0)
	    call PrintSpellAdd((GetOwningPlayer(GetSpellAbilityUnit()) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( GetDamageStr(Heiyan))*1.0) , "") // INLINED!!
		call TimerStart(t, 1, true, function Heiyan___ZangJiuTianTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Heiyan___TSpellHeiyanAct takes nothing returns nothing
  local integer i= 1
		if ( GetSpellAbilityId() == 'A0C7' ) then
			call Heiyan___QianGuiXie(Heiyan , GetSpellTargetUnit() , 1 , GetSpellAbilityId())
		elseif ( GetSpellAbilityId() == 'A0A3' or GetSpellAbilityId() == 'A0BI' ) then
			call Heiyan___YeShenJi()
			//不召唤祭品
			return
		elseif ( GetSpellAbilityId() == 'A0C8' ) then
			call Heiyan___YanLuoDian()
		elseif ( GetSpellAbilityId() == 'A0C9' ) then
			call Heiyan___SheHunJue()
		elseif ( GetSpellAbilityId() == 'A0D2' ) then
			call Heiyan___QiLuoCha()
		elseif ( GetSpellAbilityId() == 'A0DD' ) then
			call Heiyan___ZangJiuTian()
		endif

		if not ( GetUnitState(Heiyan, UNIT_STATE_MANA) >= 100 ) then
			return
		endif

		//1/3召唤1个祭品
		if ( GetRandomInt(1, 3) == 1 ) then
			call Heiyan___CreateSacrifice(GetSpellAbilityUnit())
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillHeiyanI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == Heiyan ) then
			if ( whichSpell == 1 ) then
				set Heiyan___ISacriMaxCount=Heiyan___ISacriMaxCount + 1
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((Heiyan))) == 1) == true and GetUnitAbilityLevel(Heiyan, 'A0C8') == 1 ) then // INLINED!!
				//技能2初始化
				set Heiyan___ISacriMaxCount=Heiyan___ISacriMaxCount + 1
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((Heiyan))) == 1) == true and GetUnitAbilityLevel(Heiyan, 'A0C9') == 1 ) then // INLINED!!
				//技能3初始化
				set Heiyan___ISacriMaxCount=Heiyan___ISacriMaxCount + 1
				set i=1
				//增加上限
				loop
					exitwhen i > 6
					call AddHPPercent(i , 0.5)
					set i=i + 1
				endloop
				call AddSpecialEffectTargetUnitBJ("origin", Heiyan, "war3mapImported\\devilaura.mdl")
				call UnitAddAbility(gg_unit_haro_0030, 'A0GR')
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((Heiyan))) == 1) == true and GetUnitAbilityLevel(Heiyan, 'A0D2') == 1 ) then // INLINED!!
				//技能4初始化
				set Heiyan___ISacriMaxCount=Heiyan___ISacriMaxCount + 1
			elseif ( whichSpell == 5 and IsFifthSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan, 'A0DD') == 1 ) then
				//技能5初始化
				set Heiyan___ISacriMaxCount=Heiyan___ISacriMaxCount + 2
			endif
		endif
	endfunction

 function LearnSkillHeiyan takes unit learner,integer learnSpellID returns nothing
		if ( learner == Heiyan ) then
			if ( learnSpellID == 'A0C7' ) then
				call LearnSkillHeiyanI(learner , 1)
			elseif ( learnSpellID == 'A0C8' ) then
				call LearnSkillHeiyanI(learner , 2)
			elseif ( learnSpellID == 'A0C9' ) then
				call LearnSkillHeiyanI(learner , 3)
			elseif ( learnSpellID == 'A0D2' ) then
				call LearnSkillHeiyanI(learner , 4)
			elseif ( learnSpellID == 'A0DD' ) then
				call LearnSkillHeiyanI(learner , 5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function AfterReviveHeiyan takes unit u returns nothing
		if ( u == Heiyan ) then
    		call SetUnitPathing(Heiyan, false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function InitHeiyan takes unit u returns nothing
  local timer t= CreateTimer()
		set Heiyan___GSacri=CreateGroup()
		set Heiyan=u
		call SetUnitPathing(Heiyan, false)
		//主英雄技能
		set Heiyan___TSpellHeiyan1=CreateTrigger()
	    call TriggerRegisterUnitEvent(Heiyan___TSpellHeiyan1, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Heiyan___TSpellHeiyan1, function Heiyan___TSpellHeiyanAct)

	    //主英雄杀敌事件
	    set Heiyan___TSpellHeiyan00=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Heiyan___TSpellHeiyan00, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddCondition(Heiyan___TSpellHeiyan00, Condition(function Heiyan___TSpellHeiyan00Con))
	    call TriggerAddAction(Heiyan___TSpellHeiyan00, function Heiyan___TSpellHeiyan00Act)

	    //英雄第二个技能攻击事件
	    set Heiyan___TSpellHeiyan2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Heiyan___TSpellHeiyan2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Heiyan___TSpellHeiyan2, Condition(function Heiyan___TSpellHeiyan2Con))
	    call TriggerAddAction(Heiyan___TSpellHeiyan2, function Heiyan___TSpellHeiyan2Act)

		//祭品伤害的刷新
		call TimerStart(t, 3, true, function Heiyan___SacriDamageFlash)
		set t=null

		//英雄第四个技能时的无敌
	    set Heiyan___TSpellHeiyan41=CreateTrigger()
	    call TriggerRegisterUnitEvent(Heiyan___TSpellHeiyan41, Heiyan, EVENT_UNIT_DAMAGED)
		call TriggerAddCondition(Heiyan___TSpellHeiyan41, Condition(function Heiyan___TSpellHeiyan41Con))
		call TriggerAddAction(Heiyan___TSpellHeiyan41, function Heiyan___TSpellHeiyan41Act)
	endfunction


//library Heiyan ends
//library Huanyi:
	
//---------------------------------------------------------------------------------------------------
	
	
 function SimulateDamageHuanyi takes unit u returns boolean

		//风
		if ( GetUnitTypeId(u) == 'hhh3' ) then
			call UnitDamageTarget(Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		//冰火
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
	
 function Huanyi___GetMultiSpell takes nothing returns integer
		if not ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH3') == 1 ) then // INLINED!!
			return 1
		endif

		return IMaxBJ(IMinBJ(Huanyi___IMoneng / 2, 5), 1)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___NoneTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local real intTimes= LoadReal(spellTable, GetHandleId(t), kNoneIntTimes)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 1 * intTimes)
		call FlushChildHashtable(spellTable, GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t=null
	endfunction

 function Huanyi___None takes nothing returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real intTimes= times * 0.2
  local real time= times * 10
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), kNoneIntTimes, intTimes)
		call TimerStart(t, time, false, function Huanyi___NoneTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , intTimes)
		call YDWETimerDestroyEffect(time , AddSpecialEffectTargetUnitBJ("overhead", Huanyi, "war3mapImported\\music.mdx"))
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH5') ) + "|cFFFF66CC】|r" + ( "成功增加" + I2S(times * 20) + "%的智力，持续" + I2S(times * 10) + "秒。") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
		
 function Huanyi___Fire takes real x,real y returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
	
 function Huanyi___Lumber takes nothing returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local integer attack= GetHeroInt(Huanyi, true) + 0
  local integer defense= GetHeroAgi(Huanyi, true) / 100 + 0
  local integer hp= GetHeroStr(Huanyi, true) * 10 + 0
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
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName('AHH8')) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___Wind takes nothing returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local unit u
  local integer i= 1
		loop
			exitwhen i > times
			set u=CreateUnit(GetOwningPlayer(Huanyi), 'hhh3', (RMinBJ(RMaxBJ(((GetUnitX(Huanyi) + GetRandomInt(- 100, 100))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Huanyi) + GetRandomInt(- 100, 100))*1.0), yd_MapMinY), yd_MapMaxY)), 0) // INLINED!!
			call UnitApplyTimedLifeBJ(15.00, 'BHwe', u)
			set i=i + 1
		endloop
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName('AHH9')) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___FireWater takes nothing returns nothing

  local integer times= Huanyi___GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.6
  local integer i= 6 * times
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
	
 function Huanyi___FireLumber takes real x,real y returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 0.6
  local integer i= 1
  local integer ii= 1
  local real range= 150 * times
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
	
 function Huanyi___FireWind takes real x2,real y2 returns nothing


  local integer times= Huanyi___GetMultiSpell()
  local real damage= GetDamageInt(Huanyi)
  local integer i= 1

     local real x1
     local real y1
     local real facing
  local unit u

		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
	
 function Huanyi___WaterWindTimer takes nothing returns nothing
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

 function Huanyi___WaterWind takes real x,real y returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local timer t= CreateTimer()
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh5', x, y, 0)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call UnitApplyTimedLifeBJ(15 * times, 'BHwe', u)
		call SaveUnitHandle(spellTable, GetHandleId(t), kUHuanyiQuan, u)
		call TimerStart(t, 1, true, function Huanyi___WaterWindTimer)
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHHE') ) + "|cFFFF66CC】|r" + ( "持续" + I2S(15 * times) + "秒。") )) // INLINED!!
		set t=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function Huanyi___WaterLumberWindTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local integer times= LoadInteger(spellTable, id, kIGuCan)
  local integer i= 1
  local integer ii= 1
		if ( IsUnitAliveBJ(Huanyi) ) then
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", GetUnitX(Huanyi___UGucan), GetUnitY(Huanyi___UGucan)))
			loop
				exitwhen i > times - 1
				set ii=1
				loop
					exitwhen ii > i * 1 + 4
					call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", (RMinBJ(RMaxBJ(((GetUnitX(Huanyi___UGucan) + 150 * i * CosBJ(360 * ii / ( i * 1 + 4 )))*1.0), yd_MapMinX), yd_MapMaxX)), (RMinBJ(RMaxBJ(((GetUnitY(Huanyi___UGucan) + 150 * i * SinBJ(360 * ii / ( i * 1 + 4 )))*1.0), yd_MapMinY), yd_MapMaxY)))) // INLINED!!
					set ii=ii + 1
				endloop
				set i=i + 1
			endloop
			call DamageArea(Huanyi , GetUnitX(Huanyi___UGucan) , GetUnitY(Huanyi___UGucan) , times * 150 , GetDamageInt(Huanyi) * 0.4)
		else
			call RemoveUnit(Huanyi___UGucan)
			set Huanyi___UGucan=null
			call FlushChildHashtable(spellTable, id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Huanyi___WaterLumberWind takes real x,real y returns nothing
		
  local integer times= Huanyi___GetMultiSpell()
  local timer t= CreateTimer()
		if ( Huanyi___UGucan != null ) then
			call RemoveUnit(Huanyi___UGucan)
		endif
		set Huanyi___UGucan=CreateUnit(GetOwningPlayer(Huanyi), 'hhh6', x, y, 270)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
    	call SetUnitScalePercent(Huanyi___UGucan, 100.00 + times * 20.00, 100.00 + times * 20.00, 100.00 + times * 20.00)
    	call SetUnitAnimation(Huanyi___UGucan, "stand birth alternate work upgrade")
		call SaveInteger(spellTable, GetHandleId(t), kIGuCan, times)
		call TimerStart(t, 1, true, function Huanyi___WaterLumberWindTimer)
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName('AHHG')) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___FireLumberWind takes nothing returns nothing
  local integer times= Huanyi___GetMultiSpell()
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHHH') ) + "|cFFFF66CC】|r" + ( ",眩晕" + I2S(times * 2) + "秒。") )) // INLINED!!
 		call SimulateSpell(Huanyi , Huanyi , 'A0BI' , times , 6 , "stomp" , false , true , false)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___FireWaterWind takes real x,real y returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real damage= GetDamageInt(Huanyi) * 1.5
  local unit u
  local integer i= 1
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
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
	
 function Huanyi___FireWaterLumber takes real x,real y returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real range= 900 * times
  local integer i= 1
  local unit u= CreateUnit(GetOwningPlayer(Huanyi), 'hhh8', x, y, 0)
     local integer attract= s__Attract_create(u , range , 0.05 , range / 20)
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHHJ') ) + "|cFFFF66CC】|r" + ( "吸引范围" + I2S(R2I(range))) )) // INLINED!!
		call UnitApplyTimedLifeBJ(5, 'BHwe', u)
		set s__Attract_forbitHero[(attract)]=true // INLINED!!
	    call s__Attract_start(attract)
	    set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___FireWaterLumberWindTimer takes nothing returns nothing
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

 function Huanyi___FireWaterLumberWind takes nothing returns nothing
  local integer times= Huanyi___GetMultiSpell()
  local real attrTimes= times * 0.2
  local real time= times * 10
  local timer t= CreateTimer()
		call SaveReal(spellTable, GetHandleId(t), kHuanyuTimes, attrTimes)
		call TimerStart(t, time, false, function Huanyi___FireWaterLumberWindTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , attrTimes)
		call YDWETimerDestroyEffect(time , AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\blackbird.mdx"))
		if ( times > 1 ) then
	    	call CreateTextTagA((I2S(times) + "重施法" ) , ( Huanyi ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 4)*1.0) , 16) // INLINED!!
		endif
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHHK') ) + "|cFFFF66CC】|r" + ( "成功增加" + I2S(times * 20) + "%的三围属性，持续" + I2S(times * 10) + "秒。") )) // INLINED!!
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___Fusu takes nothing returns nothing
  local real x= GetSpellTargetX()
  local real y= GetSpellTargetY()
		//幻元伏心
		call Huanyi___None()
		call PolledWait(1)

		//七炎焚狱
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi___Fire(x , y)
		call PolledWait(1)
		//冰芯之铠
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 15 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 15)
 		call SimulateSpell(Huanyi , Huanyi , 'AHH7' , GetHeroLevel(Huanyi) / 2 , 5 , "frostarmor" , false , false , true)
 		call SimulateSpell(Huanyi , Huanyi , 'AHH7' , GetHeroLevel(Huanyi) / 2 , 5 , "frostarmor" , false , false , true)
	    call DisplayTextToPlayer(((GetOwningPlayer(Huanyi) ) ), 0, 0, ( "|cFFFF66CC【|r" + ( ( GetAbilityName('AHH7')) ) + "|cFFFF66CC】|r" + ( "") )) // INLINED!!
		call PolledWait(1)
 		//天古木精
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi___Lumber()
		call PolledWait(1)
		//幻化残卷
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 200 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 200)
		call Huanyi___Wind()
		call PolledWait(1)
		//冰火双绝
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 150 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 150)
		call Huanyi___FireWater()
		call PolledWait(1)
		//万象归影
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi___FireLumber(x , y)
		call PolledWait(1)
		//火轮烁日
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 150 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 150)
		call Huanyi___FireWind(x , y)
		call PolledWait(1)
		//幻冥天泉
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 300 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 300)
		call Huanyi___WaterWind(x , y)
		call PolledWait(1)
		//沧怒古参
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 1500 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 1500)
		call Huanyi___WaterLumberWind(x , y)
		call PolledWait(1)
		//雨玥千里
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 200 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 200)
		call Huanyi___FireLumberWind()
		call PolledWait(1)
		//残月流星
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 100 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 100)
		call Huanyi___FireWaterWind(x , y)
		call PolledWait(1)
		//引力界场
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 360 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 360)
		call Huanyi___FireWaterLumber(x , y)
		call PolledWait(1)
		//寰宇归一
		if ( GetUnitState(Huanyi, UNIT_STATE_MANA) < 800 ) then
	    	call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			return
		endif
		call RecoverUnitMP(Huanyi , - 800)
		call Huanyi___FireWaterLumberWind()
	    call DisplayTextToPlayer((GetOwningPlayer(Huanyi) ), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName('AHH4') ) + "|cFFFF66CC】|r" + ( ",施法结束.") )) // INLINED!!
			
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___TSpellHuanyi2Act takes nothing returns nothing
		call SetUnitAbilityLevel(Huanyi, 'AHH7', IMinBJ(100, GetHeroLevel(Huanyi) / 2))
	endfunction 
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___TSpellHuanyi3Con takes nothing returns boolean
		return (GetPlayerTechCountSimple('R007', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH2') == 1 and Huanyi___IMoneng <= 5 and GetRandomInt(1, 2) == 1 // INLINED!!
	endfunction
	
 function Huanyi___TSpellHuanyi3Act takes nothing returns nothing
		call SetUnitLifeBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_LIFE) + GetEventDamage())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___FlashPowerData takes nothing returns nothing
		call SetTextTagPosUnitBJ(Huanyi___TTMoneng, Huanyi, 20)

		if ( ( GetUnitState(Huanyi, UNIT_STATE_MANA) >= GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.9 ) and Huanyi___IMoneng < 10 ) then
			call SetUnitManaPercentBJ(Huanyi, 30)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			set Huanyi___IMoneng=Huanyi___IMoneng + 1
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , 0.1)
			if ( Huanyi___ELowMoneng != null and Huanyi___IMoneng > 5 ) then
				call DestroyEffect(Huanyi___ELowMoneng)
				set Huanyi___ELowMoneng=null
			endif
		elseif ( ( GetUnitState(Huanyi, UNIT_STATE_MANA) < GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.2 ) and Huanyi___IMoneng > 0 ) then
			call SetUnitManaPercentBJ(Huanyi, 80)
			set Huanyi___IMoneng=Huanyi___IMoneng - 1
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)))
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)) , - 0.1)
			if ( Huanyi___ELowMoneng == null and Huanyi___IMoneng <= 5 ) then
				set Huanyi___ELowMoneng=AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
			endif
	    else
	    	return
		endif

		call SetTextTagTextBJ(Huanyi___TTMoneng, I2S(Huanyi___IMoneng) + "级魔能", 20)
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Huanyi___InitPower takes nothing returns nothing
  local timer ti= CreateTimer()

		set Huanyi___IMoneng=0
		set Huanyi___TTMoneng=CreateTextTagUnitBJ("0级魔能", Huanyi, 0, 20, 0, 50, 100, 0)
		call TimerStart(ti, 0.05, true, function Huanyi___FlashPowerData)

		set Huanyi___ELowMoneng=AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
		set ti=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Huanyi___SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), Huanyi___ICurrentSpell, false)
		if ( Huanyi___ICurrentSpell == 'AHHF' ) then
			call UnitRemoveAbility(Huanyi, 'AHHF')
		endif
		//0排列
		if ( not ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHH5'
		//1排列
		elseif ( ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHH6'
		elseif ( not ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHH7'
		elseif ( not ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHH8'
		elseif ( not ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHH9'
		//2排列
		elseif ( ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHA'
		elseif ( ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHB'
		elseif ( ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHC'
		elseif ( not ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHD'
		elseif ( not ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHE'
		elseif ( not ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHF'
			call UnitAddAbility(Huanyi, 'AHHF')
		//1排列
		elseif ( not ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHG'
		elseif ( ( Huanyi___IsFire ) and not ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHH'
		elseif ( ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and not ( Huanyi___IsLumber ) and ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHI'
		elseif ( ( Huanyi___IsFire ) and ( Huanyi___IsWater ) and ( Huanyi___IsLumber ) and not ( Huanyi___IsWind ) ) then
			set Huanyi___ICurrentSpell='AHHJ'
		//0排列
		else
			set Huanyi___ICurrentSpell='AHHK'
		endif
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), Huanyi___ICurrentSpell, true)
	endfunction
//---------------------------------------------------------------------------------------------------

	

 function Huanyi___TSpellHuanyiAct takes nothing returns nothing
		//四相
		if ( GetSpellAbilityId() == 'AHH0' ) then
			set Huanyi___IsFire=not ( Huanyi___IsFire )
			call Huanyi___SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH1' ) then
			set Huanyi___IsWater=not ( Huanyi___IsWater )
			call Huanyi___SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH2' ) then
			set Huanyi___IsLumber=not ( Huanyi___IsLumber )
			call Huanyi___SetHuanyiSpell()
		elseif ( GetSpellAbilityId() == 'AHH3' ) then
			set Huanyi___IsWind=not ( Huanyi___IsWind )
			call Huanyi___SetHuanyiSpell()
		//复苏
		elseif ( GetSpellAbilityId() == 'AHH4' ) then
			call Huanyi___Fusu()
		//幻元伏心
		elseif ( GetSpellAbilityId() == 'AHH5' ) then
			call Huanyi___None()
		//七炎焚狱
		elseif ( GetSpellAbilityId() == 'AHH6' ) then
			call Huanyi___Fire(GetSpellTargetX() , GetSpellTargetY())
		//天古木精
		elseif ( GetSpellAbilityId() == 'AHH8' ) then
			call Huanyi___Lumber()
		//幻化残卷
		elseif ( GetSpellAbilityId() == 'AHH9' ) then
			call Huanyi___Wind()
		//冰火双绝
		elseif ( GetSpellAbilityId() == 'AHHA' ) then
			call Huanyi___FireWater()
		//万象归影
		elseif ( GetSpellAbilityId() == 'AHHB' ) then
			call Huanyi___FireLumber(GetSpellTargetX() , GetSpellTargetY())
		//火轮烁日
		elseif ( GetSpellAbilityId() == 'AHHC' ) then
			call Huanyi___FireWind(GetSpellTargetX() , GetSpellTargetY())
		//幻冥天泉
		elseif ( GetSpellAbilityId() == 'AHHE' ) then
			call Huanyi___WaterWind(GetSpellTargetX() , GetSpellTargetY())
		//沧怒古参
		elseif ( GetSpellAbilityId() == 'AHHG' ) then
			call Huanyi___WaterLumberWind(GetSpellTargetX() , GetSpellTargetY())
		//雨玥千里
		elseif ( GetSpellAbilityId() == 'AHHH' ) then
			call Huanyi___FireLumberWind()
		//残月流星
		elseif ( GetSpellAbilityId() == 'AHHI' ) then
			call Huanyi___FireWaterWind(GetSpellTargetX() , GetSpellTargetY())
		//引力界场
		elseif ( GetSpellAbilityId() == 'AHHJ' ) then
			call Huanyi___FireWaterLumber(GetSpellTargetX() , GetSpellTargetY())
		//寰宇归一
		elseif ( GetSpellAbilityId() == 'AHHK' ) then
			call Huanyi___FireWaterLumberWind()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillHuanyiI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == Huanyi ) then
			if ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH1') == 1 ) then // INLINED!!
				//技能2初始化
				call Huanyi___InitPower()
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((Huanyi))) == 1) == true and GetUnitAbilityLevel(Huanyi, 'AHH2') == 1 ) then // INLINED!!
				//技能3初始化
				set i=1
				//增加技能伤害
				loop
					exitwhen i > 6
					call AddSpellPercent(i , 0.6)
					set i=i + 1
				endloop

				call AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\sichongjiejie_b.mdx")
				call UnitAddAbility(gg_unit_haro_0030, 'A0GS')
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
		set Huanyi___ICurrentSpell='AHH5'
		//主英雄技能
		set Huanyi___TSpellHuanyi=CreateTrigger()
	    call TriggerRegisterUnitEvent(Huanyi___TSpellHuanyi, u, EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(Huanyi___TSpellHuanyi, function Huanyi___TSpellHuanyiAct)

	    //魔能等级低于5则减少受到的50%伤害
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(t, Condition(function Huanyi___TSpellHuanyi3Con))
	    call TriggerAddAction(t, function Huanyi___TSpellHuanyi3Act)

	    //冰甲的等级刷新
	    set t=CreateTrigger()
	    call TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(t, function Huanyi___TSpellHuanyi2Act)
	    set t=null
	    //初始化技能状态
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
	endfunction


//library Huanyi ends
//library Kaisa:
	
//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	
 function InitKaisa takes unit u returns nothing
		set kaisa=u
	endfunction


//library Kaisa ends
//library Lingxue:
	
//---------------------------------------------------------------------------------------------------
	
 function AfterReviveLingxue takes unit u returns nothing
		if ( u == lingxue ) then
    		call SetUnitPathing(lingxue, false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
 function InitLingxue takes unit u returns nothing

		set lingxue=u
	endfunction


//library Lingxue ends
//library PIV:

//---------------------------------------------------------------------------------------------------
	
 function PIV___TableHas takes integer i returns boolean
		return HaveSavedBoolean(PIV___PIVTable, kPIV, i)
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction

//---------------------------------------------------------------------------------------------------
    
    function PIV___GetPIVCode takes string s returns integer
        local string result= s
        local integer i= 1
        loop
            exitwhen i > 6
            set result=I2S(StringHash(result))
            set i=i + 1
        endloop
        return S2I(SubStringBJ(result, 2, StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function PIV___InitPlayerPIV takes player p returns nothing
		if ( PIV___isFirst ) then
			set PIV___isFirst=false
			set udg_I_Er_diansi[1]=3
		endif

		set sPIV[GetConvertedPlayerId(p)]=true
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权！")
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitPIVHero takes unit u returns nothing
		if ( (sPIV[GetConvertedPlayerId((GetOwningPlayer(u)))]) ) then // INLINED!!
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)))
			call SetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD, 10000)
			call Discolor(u)
			return
		endif

	endfunction

//---------------------------------------------------------------------------------------------------
	
 function CertificatePIV takes player p,string vCode returns nothing

		if ( vCode == null and (HaveSavedBoolean(PIV___PIVTable, kPIV, (PIV___GetPIVCode(GetPlayerName(p))))) ) then // INLINED!!
			call PIV___InitPlayerPIV(p)
			return
		endif

		if ( I2S(PIV___GetPIVCode(GetPlayerName(p))) == vCode ) then
			call PIV___InitPlayerPIV(p)
			return
		endif

		if ( vCode != null ) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！")
		endif
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
//---------------------------------------------------------------------------------------------------
	
    function ChatPIV takes nothing returns nothing
        local string chat= GetEventPlayerChatString()
        local string vCode= SubStringBJ(chat, 2, StringLength(chat))
		call CertificatePIV(GetTriggerPlayer() , vCode)
    endfunction
//---------------------------------------------------------------------------------------------------
	
 function PIV___PIVDialogClick takes nothing returns nothing
     local dialog d= GetClickedDialogBJ()
     local integer i= 0
     local string s= LoadStr(PIV___PIVTable, GetHandleId(d), kPIVStr)
     local player p= LoadPlayerHandle(PIV___PIVTable, GetHandleId(d), kPIVPlayer)
	    //验证
	    if ( GetClickedButtonBJ() == LoadButtonHandle(PIV___PIVTable, GetHandleId(d), 10) ) then
	        call CertificatePIV(p , s)
	        call FlushChildHashtable(PIV___PIVTable, GetHandleId(d))
        	call DialogDisplay(p, d, false)
	        call DialogClear(d)
	        call DialogDestroy(d)
	        set d=null
	        set s=null
	        set p=null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //输入
	    loop
	        exitwhen i > 9
	        if ( GetClickedButtonBJ() == LoadButtonHandle(PIV___PIVTable, GetHandleId(d), i) ) then
	            set s=s + I2S(i)
	            call SaveStr(PIV___PIVTable, GetHandleId(d), kPIVStr, s)
	            exitwhen true
	        endif
	        set i=i + 1
	    endloop

	    call DialogSetMessage(d, "激活码:" + s)
        call DialogDisplay(p, d, true)
	    set d=null
	    set s=null
	    set p=null
	endfunction

 function CreatePIVDialog takes nothing returns nothing
     local trigger t
     local dialog d

		if ( (sPIV[GetConvertedPlayerId((GetTriggerPlayer()))]) ) then // INLINED!!
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！")
			return
		endif

		if ( udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null ) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
			return
		endif

	    set t=CreateTrigger()
	    set d=DialogCreate()
	    call DialogSetMessage(d, "请从第1位开始依次输入激活码")
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 0, DialogAddButton(d, "0", '0'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 1, DialogAddButton(d, "1", '1'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 2, DialogAddButton(d, "2", '2'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 3, DialogAddButton(d, "3", '3'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 4, DialogAddButton(d, "4", '4'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 5, DialogAddButton(d, "5", '5'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 6, DialogAddButton(d, "6", '6'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 7, DialogAddButton(d, "7", '7'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 8, DialogAddButton(d, "8", '8'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 9, DialogAddButton(d, "9", '9'))
	    call SaveButtonHandle(PIV___PIVTable, GetHandleId(d), 10, DialogAddButton(d, "输入完毕|cffff6800(Esc)|r", 512))
	    call SaveStr(PIV___PIVTable, GetHandleId(d), kPIVStr, "")
	    call SavePlayerHandle(PIV___PIVTable, GetHandleId(d), kPIVPlayer, GetTriggerPlayer())
	    call SaveInteger(PIV___PIVTable, GetHandleId(d), kPIVPointer, 1)
	    call DialogDisplay(GetTriggerPlayer(), d, true)
	    call TriggerRegisterDialogEvent(t, d)
	    call TriggerAddAction(t, function PIV___PIVDialogClick)
	    set d=null
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function InitAllPIV takes nothing returns nothing
  local integer i= 1
		loop
			exitwhen i > 6
			call CertificatePIV(ConvertedPlayer(i) , null)
			set i=i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function ClosePIV takes nothing returns nothing
		call FlushParentHashtable(PIV___PIVTable)
	endfunction
	
//---------------------------------------------------------------------------------------------------
 function PIV___InitPIV takes nothing returns nothing
  local integer i= 1
  local trigger t= CreateTrigger()

		loop
			exitwhen i > 6
			set sPIV[i]=false
			set i=i + 1
		endloop

		call SaveBoolean(PIV___PIVTable, kPIV, 560584534, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 632066098, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 679792348, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 244103987, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 1624950439, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 981252778, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 442300691, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 127836247, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 747551996, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 1549153604, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 243951516, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 472054031, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 156566316, true)
		call SaveBoolean(PIV___PIVTable, kPIV, 805389327, true)

		//test
		call SaveBoolean(PIV___PIVTable, kPIV, 238541434, true)


		call TriggerRegisterPlayerChatEvent(t, Player(0), "##", true)
		call TriggerRegisterPlayerChatEvent(t, Player(1), "##", true)
		call TriggerRegisterPlayerChatEvent(t, Player(2), "##", true)
		call TriggerRegisterPlayerChatEvent(t, Player(3), "##", true)
		call TriggerRegisterPlayerChatEvent(t, Player(4), "##", true)
		call TriggerRegisterPlayerChatEvent(t, Player(5), "##", true)
	    call TriggerAddAction(t, function CreatePIVDialog)
	    set t=null
	endfunction


//library PIV ends
//library Seyu:
	
//---------------------------------------------------------------------------------------------------
	
 function Seyu___EnemyFilterSeyu takes nothing returns boolean
		return IsEnemy(GetFilterUnit() , seyu) == true
	endfunction

 function GetChongdongGroup takes real radius,integer count returns group
  local unit chongdong
  local group result= CreateGroup()
  local group temp
  local group l_group
  local unit l_unit
  local integer i= 1
		loop
			exitwhen i > 8
			set chongdong=(LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(i))))) // INLINED!!
			if ( ( RectContainsUnit(gg_rct______________095, chongdong) != true ) ) then
				set l_group=CreateGroup()
				call GroupEnumUnitsInRange(l_group, GetUnitX(chongdong), GetUnitY(chongdong), radius, Condition(function Seyu___EnemyFilterSeyu))
				set temp=GetRandomSubGroup(count, l_group)
				call GroupAddGroup(temp, result)
				call DestroyGroup(l_group)
				call DestroyGroup(temp)
       		endif
			set i=i + 1
		endloop

		set chongdong=null
		set l_group=null
		set l_unit=null
		set temp=null
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AddChongdongGroup takes group p,real radius,integer count returns nothing
  local group g= GetChongdongGroup(radius , count)
		call GroupAddGroup(g, p)
		set g=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Mantuoluo takes unit speller,real damageRate,integer abilityID returns nothing
  local unit u= speller
  local real damage= GetDamageAgi(u) * damageRate
     local group l_group= CreateGroup()
     local unit l_unit
	    call GroupEnumUnitsInRange(l_group, GetUnitX(speller), GetUnitY(speller), 600, Condition(function Seyu___EnemyFilterSeyu))
	    call AddChongdongGroup(l_group , 600 , R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
	    
	    loop
	        set l_unit=FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
    		call UnitDamageTarget(u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleHitTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
	    endloop
	    //输出伤害
	    call PrintSpellAdd((GetOwningPlayer(u) ) , ( GetAbilityName(abilityID) ) , (( damage)*1.0) , "") // INLINED!!
	    call DestroyGroup(l_group)
	    set l_group=null
	    set l_unit=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function TSpellSeyu2Con takes nothing returns boolean
	    return ( ( ( GetAttacker() == seyu ) or ( GetUnitTypeId(GetAttacker()) == 'espv' ) ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true ) and ( GetRandomInt(1, 20) == 1 ) and ( GetUnitStateSwap(UNIT_STATE_MANA, seyu) > 200.00 ) and GetUnitAbilityLevel(seyu, 'AUav') == 1 ) // INLINED!!
	endfunction

 function TSpellSeyu2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Mantuoluo(seyu , 0.33 , 'AUav')
		call PolledWait(2)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	
	//位置刷新，0.05s
 function Seyu___FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(Seyu___TTPower, seyu, 25)
	endfunction

	
	//数值刷新,1秒1次
 function Seyu___FlashPowerData takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(seyu))
  local real delta
		//限制能量在0-105之间
		set Seyu___IPower=IMinBJ(IMaxBJ(Seyu___IPower - 1, 0), 105)
		call SetTextTagTextBJ(Seyu___TTPower, I2S(Seyu___IPower) + "%能量", 20)
		set delta=I2R(( Seyu___IPower / 10 ) * 10) / 100
		if ( Seyu___RAddtion != delta ) then

			call AddStrPercent(index , delta - Seyu___RAddtion)
			call AddIntPercent(index , delta - Seyu___RAddtion)
			call AddAgiPercent(index , delta - Seyu___RAddtion)
			set Seyu___RAddtion=delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(seyu), GetUnitY(seyu)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu___TDeathAddPowerAct takes nothing returns nothing
		if ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu ) then
			set Seyu___IPower=Seyu___IPower + 1
		elseif ( GetDyingUnit() == seyu ) then
			set Seyu___IPower=Seyu___IPower - 30
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu___InitPower takes nothing returns nothing
  local timer ti= CreateTimer()
  local trigger t= CreateTrigger()

		//异界能量触发与损失
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddAction(t, function Seyu___TDeathAddPowerAct)

		set Seyu___IPower=0
		set Seyu___RAddtion=0
		set Seyu___TTPower=CreateTextTagUnitBJ(I2S(Seyu___IPower) + "%能量", seyu, 0, 20, 100, 0, 100, 0)
		call TimerStart(ti, 0.05, true, function Seyu___FlashPowerLocation)

		set ti=CreateTimer()
		call TimerStart(ti, 1, true, function Seyu___FlashPowerData)

		set ti=null
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu___TSpellSeyu3Con takes nothing returns boolean
    	return GetAttackedUnitBJ() == seyu and GetRandomInt(1, 20) == 1 and GetUnitState(seyu, UNIT_STATE_MANA) >= 400
	endfunction
		
 function Seyu___TSpellSeyu3Act takes nothing returns nothing
  local real damage= GetDamageAgi(seyu) * 2.5
  local group g= CreateGroup()
     local unit l_unit
		call DisableTrigger(GetTriggeringTrigger())
		//初始化虫洞单位组
		call GroupAddUnit(g, GetAttacker())
		call AddChongdongGroup(g , 600 , 1)
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName('AEar') ) , (( damage)*1.0) , "") // INLINED!!
	    //局部单位组伤害
	    loop
	        set l_unit=FirstOfGroup(g)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(g, l_unit)
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'hh00' ) , (( GetUnitX(l_unit) )*1.0) , (( GetUnitY(l_unit) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	    	call CreateTextTagA(("冻" ) , ( l_unit ) , (( 0 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
	        call UnitDamageTarget(seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
	    endloop
	    call DestroyGroup(g)
		set g=null
	    set l_unit=null
		call PolledWait(8)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Seyu___AnShaZhiWuTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local group g
  local real damage= GetDamageAgi(seyu) * 0.5
  local integer value= LoadInteger(spellTable, id, kAnShaCount)
  local group l_group
  local unit l_unit
  local unit chongdong
  local integer i
		if ( value < 30 ) then
			//++1
			call SaveInteger(spellTable, id, kAnShaCount, value + 1)
	    	set l_group=CreateGroup()
			call GroupEnumUnitsInRange(l_group, GetUnitX(seyu), GetUnitY(seyu), 600, Condition(function Seyu___EnemyFilterSeyu))
	    	call AddChongdongGroup(l_group , 600 , R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
    			call UnitDamageTarget(seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
			endloop
			call DestroyGroup(l_group)
			set l_group=null
			set l_unit=null

			//特效
	        call CreateUnitEffectSpecifyTime((GetOwningPlayer(seyu) ) , ( 'h00E' ) , (( GetUnitX(seyu) )*1.0) , (( GetUnitY(seyu) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
			set i=1
			loop
				exitwhen i > 8
				set chongdong=(LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(i))))) // INLINED!!
				if ( ( RectContainsUnit(gg_rct______________095, chongdong) != true ) ) then
	       			call CreateUnitEffectSpecifyTime((GetOwningPlayer(chongdong) ) , ( 'h00E' ) , (( GetUnitX(chongdong) )*1.0) , (( GetUnitY(chongdong) )*1.0) , (( 0)*1.0) , 5) // INLINED!!
	       		endif
				set i=i + 1
			endloop
			set chongdong=null
		else
			call FlushChildHashtable(spellTable, id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t=null
	endfunction

 function Seyu___AnShaZhiWu takes nothing returns nothing
  local timer t= CreateTimer()
	    call PrintSpellAdd((GetOwningPlayer(seyu) ) , ( GetAbilityName(GetSpellAbilityId()) ) , (( GetDamageAgi(seyu))*1.0) , "") // INLINED!!
		call SaveInteger(spellTable, GetHandleId(t), kAnShaCount, 0)
		call TimerStart(t, 0.5, true, function Seyu___AnShaZhiWuTimer)
		set t=null
	endfunction

//---------------------------------------------------------------------------------------------------
	
 function Seyu___TSpellSeyuCon takes nothing returns boolean
	    return ( GetSpellAbilityUnit() == seyu )
	endfunction

 function Seyu___TSpellSeyuAct takes nothing returns nothing
		if ( ( GetSpellAbilityId() == 'AEfk' ) ) then
			call Mantuoluo(seyu , 1 , GetSpellAbilityId())
		elseif ( ( GetSpellAbilityId() == 'AEst' ) ) then
			call Seyu___AnShaZhiWu()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	

	//按照12345来判断
 function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
  local integer i
		if ( learner == seyu ) then
			if ( whichSpell == 1 ) then
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(3))))), 3) // INLINED!!
			elseif ( whichSpell == 2 and (GetPlayerTechCountSimple('R006', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AUav') == 1 ) then // INLINED!!
				//技能2初始化
				call Seyu___InitPower()
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(4))))), 3) // INLINED!!
			elseif ( whichSpell == 3 and (GetPlayerTechCountSimple('R007', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEar') == 1 ) then // INLINED!!
				//技能3初始化
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(5))))), 3) // INLINED!!
				call SetPlayerTechResearchedSwap('R00D', 1, GetOwningPlayer(seyu))
				set i=1
       			loop
       				exitwhen i > 6
       				
		            if ( ( GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER ) ) then
		                call AddAgiPercent(i , 0.4)
		            endif

       				set i=i + 1
       			endloop

			    //注册空间封冻技能
			    set Seyu___TSpellSeyu3=CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ(Seyu___TSpellSeyu3, EVENT_PLAYER_UNIT_ATTACKED)
			    call TriggerAddCondition(Seyu___TSpellSeyu3, Condition(function Seyu___TSpellSeyu3Con))
			    call TriggerAddAction(Seyu___TSpellSeyu3, function Seyu___TSpellSeyu3Act)
			elseif ( whichSpell == 4 and (GetPlayerTechCountSimple('R008', GetOwningPlayer((seyu))) == 1) == true and GetUnitAbilityLevel(seyu, 'AEsv') == 1 ) then // INLINED!!
				//技能4初始化
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(6))))), 3) // INLINED!!
			elseif ( whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu, 'AEst') == 1 ) then
				//技能5初始化
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(7))))), 3) // INLINED!!
                call SetUnitUserData((LoadUnitHandle(YDHT, StringHash(("空间虫洞" )), StringHash(( I2S(8))))), 3) // INLINED!!
			endif
		endif
	endfunction

 function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if ( learner == seyu ) then
			if ( learnSpellID == 'AEfk' ) then
				call LearnSkillSeyuI(learner , 1)
			elseif ( learnSpellID == 'AUav' ) then
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
	
 function InitSeyu takes unit u returns nothing
		set seyu=u

		//1
	    set Seyu___TSpellSeyu=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu___TSpellSeyu, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(Seyu___TSpellSeyu, Condition(function Seyu___TSpellSeyuCon))
	    call TriggerAddAction(Seyu___TSpellSeyu, function Seyu___TSpellSeyuAct)

	    //2
	    set Seyu___TSpellSeyu2=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Seyu___TSpellSeyu2, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Seyu___TSpellSeyu2, Condition(function TSpellSeyu2Con))
	    call TriggerAddAction(Seyu___TSpellSeyu2, function TSpellSeyu2Act)

	endfunction

//library Seyu ends
//library Yanmie:


//---------------------------------------------------------------------------------------------------
	
 function BoltShadow takes real x,real y returns nothing
  local unit u
		if not ( (GetPlayerTechCountSimple('R008', GetOwningPlayer((yanmie))) == 1) == true and GetUnitAbilityLevel(yanmie, 'AHab') == 1 and GetUnitState(yanmie, UNIT_STATE_MANA) >= 600 ) then // INLINED!!
				return
			endif
		if ( CountUnitsInGroup(Yanmie___GShadow) >= ICountShadowMAX ) then
			return
		endif
		set u=CreateUnit(GetOwningPlayer(yanmie), 'h010', x, y, GetRandomReal(0, 360))
	    call CreateTextTagA(("影" ) , ( u ) , (( 100 )*1.0) , (( 100 )*1.0) , (( 0 )*1.0) , (( 2)*1.0) , 16) // INLINED!!
		call UnitApplyTimedLifeBJ(4.00, 'BHwe', u)
		call GroupAddUnit(Yanmie___GShadow, u)
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------
	

 function SimulateDamageYanmie takes unit u returns boolean
		//雷神残影50%伤害
		if ( GetUnitTypeId(u) == 'h010' ) then
			call UnitDamageTarget(yanmie, GetTriggerUnit(), GetDamageAgi(yanmie) * 0.4, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SimulateDeathYanmie takes unit u returns nothing
		if ( IsUnitInGroup(u, Yanmie___GShadow) == true ) then
			call GroupAddUnit(Yanmie___GShadow, u)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------


	
 function InitYanmie takes unit u returns nothing
		set yanmie=u
		set Yanmie___GShadow=CreateGroup()
	endfunction


//library Yanmie ends
//library CenterCredit:
	

//---------------------------------------------------------------------------------------------------
	
	
 function CenterCredit__TBuySoliderCon takes nothing returns boolean
		return ( GetUnitTypeId(GetSellingUnit()) == 'uS02' )
	endfunction

 function CenterCredit__TBuySoliderAct takes nothing returns nothing
  local integer index= GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
  local real x
  local real y

//textmacro instance: BuySoldier("uG01","1")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG01' ) then
			if ( centerCredit[index] < CenterCredit__CREDIT_SOLIDER_1 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit__CREDIT_SOLIDER_1))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit__CREDIT_SOLIDER_1
			set x=GetRectCenterX(regionM1[index])
			set y=GetRectCenterY(regionM1[index])
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG01","1")
//textmacro instance: BuySoldier("uG02","2")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG02' ) then
			if ( centerCredit[index] < CenterCredit__CREDIT_SOLIDER_2 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit__CREDIT_SOLIDER_2))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit__CREDIT_SOLIDER_2
			set x=GetRectCenterX(regionM2[index])
			set y=GetRectCenterY(regionM2[index])
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG02","2")
//textmacro instance: BuySoldier("uG03","3")
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG03' ) then
			if ( centerCredit[index] < CenterCredit__CREDIT_SOLIDER_3 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit__CREDIT_SOLIDER_3))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit__CREDIT_SOLIDER_3
			set x=GetRectCenterX(regionM3[index])
			set y=GetRectCenterY(regionM3[index])
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG03","3")
//textmacro instance: BuySoldier("uG04","4")	
		if ( GetUnitTypeId(GetSoldUnit()) == 'uG04' ) then
			if ( centerCredit[index] < CenterCredit__CREDIT_SOLIDER_4 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有" + I2S(centerCredit[index]) + ",不足" + I2S(CenterCredit__CREDIT_SOLIDER_4))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index]=centerCredit[index] - CenterCredit__CREDIT_SOLIDER_4
			set x=GetRectCenterX(regionM4[index])
			set y=GetRectCenterY(regionM4[index])
			call MultiboardSetItemValueBJ(udg_D, 9, index + 1, I2S(centerCredit[index]))
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return
		endif
//end of: BuySoldier("uG04","4")	

		if ( GetUnitTypeId(GetSoldUnit()) == 'uG05' ) then
			if ( (sPIV[GetConvertedPlayerId((GetOwningPlayer(GetBuyingUnit())))]) != true ) then // INLINED!!
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if ( udg_Bo < 18 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到18波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x=GetRectCenterX(regionM5[index])
			set y=GetRectCenterY(regionM5[index])
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif

		if ( GetUnitTypeId(GetSoldUnit()) == 'uG06' ) then
			if ( (sPIV[GetConvertedPlayerId((GetOwningPlayer(GetBuyingUnit())))]) != true ) then // INLINED!!
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if ( udg_Bo < 22 ) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到22波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x=GetRectCenterX(regionM6[index])
			set y=GetRectCenterY(regionM6[index])
			call SetUnitX(GetSoldUnit(), x)
			call SetUnitY(GetSoldUnit(), y)
			call IssueImmediateOrder(GetSoldUnit(), "stop")
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()), x, y, 0.2)
	        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function SimulateDamageSoldier takes unit u returns boolean
		if ( GetUnitAbilityLevel(u, 'A0GZ') >= 1 ) then
			call DisableTrigger(GetTriggeringTrigger())
			call SetUnitLifeBJ(GetTriggerUnit(), 100)
			call UnitDamageTarget(u, GetTriggerUnit(), 1000, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call EnableTrigger(GetTriggeringTrigger())
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
 function CenterCredit__InitCenterCredit takes nothing returns nothing
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL)
		call TriggerAddCondition(t, Condition(function CenterCredit__TBuySoliderCon))
		call TriggerAddAction(t, function CenterCredit__TBuySoliderAct)
		set t=null
	endfunction


//library CenterCredit ends
//library ChatCommand:
	

//---------------------------------------------------------------------------------------------------
	


//textmacro instance: CombineBox("E","hlst","wshs")
  function CombineBoxE takes nothing returns nothing

		    if ( ( GetItemTypeId(GetEnumItem()) == 'hlst' ) ) then
				if ( HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) ) ) then
						return
				endif
		    	set ChatCommand___IBox[ChatCommand___IBoxCount]=GetEnumItem()
		    	set ChatCommand___IBoxCount=ChatCommand___IBoxCount + 1
		    endif

		    if ( ChatCommand___IBoxCount >= 3 ) then
		    	if ( ChatCommand___IBox[0] == null or ChatCommand___IBox[1] == null or ChatCommand___IBox[2] == null ) then
			    	set ChatCommand___IBoxCount=0
		    		return
		    	endif
		    	call RemoveItem(ChatCommand___IBox[0])
		    	call RemoveItem(ChatCommand___IBox[1])
		    	call RemoveItem(ChatCommand___IBox[2])
		    	call CreateItem('wshs', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set ChatCommand___IBox[0]=null
		    	set ChatCommand___IBox[1]=null
		    	set ChatCommand___IBox[2]=null
		    	set ChatCommand___IBoxCount=0
		    	set ChatCommand___IBoxSucceed=ChatCommand___IBoxSucceed + 3
		    endif
		endfunction
//end of: CombineBox("E","hlst","wshs")
//textmacro instance: CombineBox("D","wshs","wild")
  function CombineBoxD takes nothing returns nothing

		    if ( ( GetItemTypeId(GetEnumItem()) == 'wshs' ) ) then
				if ( HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) ) ) then
						return
				endif
		    	set ChatCommand___IBox[ChatCommand___IBoxCount]=GetEnumItem()
		    	set ChatCommand___IBoxCount=ChatCommand___IBoxCount + 1
		    endif

		    if ( ChatCommand___IBoxCount >= 3 ) then
		    	if ( ChatCommand___IBox[0] == null or ChatCommand___IBox[1] == null or ChatCommand___IBox[2] == null ) then
			    	set ChatCommand___IBoxCount=0
		    		return
		    	endif
		    	call RemoveItem(ChatCommand___IBox[0])
		    	call RemoveItem(ChatCommand___IBox[1])
		    	call RemoveItem(ChatCommand___IBox[2])
		    	call CreateItem('wild', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set ChatCommand___IBox[0]=null
		    	set ChatCommand___IBox[1]=null
		    	set ChatCommand___IBox[2]=null
		    	set ChatCommand___IBoxCount=0
		    	set ChatCommand___IBoxSucceed=ChatCommand___IBoxSucceed + 3
		    endif
		endfunction
//end of: CombineBox("D","wshs","wild")
//textmacro instance: CombineBox("C","wild","totw")
  function CombineBoxC takes nothing returns nothing

		    if ( ( GetItemTypeId(GetEnumItem()) == 'wild' ) ) then
				if ( HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) ) ) then
						return
				endif
		    	set ChatCommand___IBox[ChatCommand___IBoxCount]=GetEnumItem()
		    	set ChatCommand___IBoxCount=ChatCommand___IBoxCount + 1
		    endif

		    if ( ChatCommand___IBoxCount >= 3 ) then
		    	if ( ChatCommand___IBox[0] == null or ChatCommand___IBox[1] == null or ChatCommand___IBox[2] == null ) then
			    	set ChatCommand___IBoxCount=0
		    		return
		    	endif
		    	call RemoveItem(ChatCommand___IBox[0])
		    	call RemoveItem(ChatCommand___IBox[1])
		    	call RemoveItem(ChatCommand___IBox[2])
		    	call CreateItem('totw', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set ChatCommand___IBox[0]=null
		    	set ChatCommand___IBox[1]=null
		    	set ChatCommand___IBox[2]=null
		    	set ChatCommand___IBoxCount=0
		    	set ChatCommand___IBoxSucceed=ChatCommand___IBoxSucceed + 3
		    endif
		endfunction
//end of: CombineBox("C","wild","totw")
//textmacro instance: CombineBox("B","totw","sror")
  function CombineBoxB takes nothing returns nothing

		    if ( ( GetItemTypeId(GetEnumItem()) == 'totw' ) ) then
				if ( HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) ) ) then
						return
				endif
		    	set ChatCommand___IBox[ChatCommand___IBoxCount]=GetEnumItem()
		    	set ChatCommand___IBoxCount=ChatCommand___IBoxCount + 1
		    endif

		    if ( ChatCommand___IBoxCount >= 3 ) then
		    	if ( ChatCommand___IBox[0] == null or ChatCommand___IBox[1] == null or ChatCommand___IBox[2] == null ) then
			    	set ChatCommand___IBoxCount=0
		    		return
		    	endif
		    	call RemoveItem(ChatCommand___IBox[0])
		    	call RemoveItem(ChatCommand___IBox[1])
		    	call RemoveItem(ChatCommand___IBox[2])
		    	call CreateItem('sror', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set ChatCommand___IBox[0]=null
		    	set ChatCommand___IBox[1]=null
		    	set ChatCommand___IBox[2]=null
		    	set ChatCommand___IBoxCount=0
		    	set ChatCommand___IBoxSucceed=ChatCommand___IBoxSucceed + 3
		    endif
		endfunction
//end of: CombineBox("B","totw","sror")
//textmacro instance: CombineBox("A","sror","fgrg")
  function CombineBoxA takes nothing returns nothing

		    if ( ( GetItemTypeId(GetEnumItem()) == 'sror' ) ) then
				if ( HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) ) ) then
						return
				endif
		    	set ChatCommand___IBox[ChatCommand___IBoxCount]=GetEnumItem()
		    	set ChatCommand___IBoxCount=ChatCommand___IBoxCount + 1
		    endif

		    if ( ChatCommand___IBoxCount >= 3 ) then
		    	if ( ChatCommand___IBox[0] == null or ChatCommand___IBox[1] == null or ChatCommand___IBox[2] == null ) then
			    	set ChatCommand___IBoxCount=0
		    		return
		    	endif
		    	call RemoveItem(ChatCommand___IBox[0])
		    	call RemoveItem(ChatCommand___IBox[1])
		    	call RemoveItem(ChatCommand___IBox[2])
		    	call CreateItem('fgrg', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set ChatCommand___IBox[0]=null
		    	set ChatCommand___IBox[1]=null
		    	set ChatCommand___IBox[2]=null
		    	set ChatCommand___IBoxCount=0
		    	set ChatCommand___IBoxSucceed=ChatCommand___IBoxSucceed + 3
		    endif
		endfunction
//end of: CombineBox("A","sror","fgrg")

 function CombineBox takes nothing returns nothing
		if not ( (sPIV[GetConvertedPlayerId((GetTriggerPlayer()))]) ) then // INLINED!!
			call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r需要成为永久赞助才能使用此指令!")
			return
		endif

		call BJDebugMsg("|cFFFF66CC【消息】|r" + GetUnitName(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]) + "使用指令-hc成功将地上的所有宝箱融合成为更高级的宝箱，列表如下：")
    	set ChatCommand___IBox[0]=null
    	set ChatCommand___IBox[1]=null
    	set ChatCommand___IBox[2]=null
    	set ChatCommand___IBoxCount=0
    	set ChatCommand___IBoxSucceed=0
   		call EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxE)
   		if ( ChatCommand___IBoxSucceed != 0 ) then
	   		call BJDebugMsg(I2S(ChatCommand___IBoxSucceed) + "个E级宝箱→→→" + I2S(ChatCommand___IBoxSucceed / 3) + "个D级宝箱。")
	    	set ChatCommand___IBoxSucceed=0
   		endif
    	set ChatCommand___IBox[0]=null
    	set ChatCommand___IBox[1]=null
    	set ChatCommand___IBox[2]=null
    	set ChatCommand___IBoxCount=0
   		call EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxD)
   		if ( ChatCommand___IBoxSucceed != 0 ) then
	   		call BJDebugMsg(I2S(ChatCommand___IBoxSucceed) + "个D级宝箱→→→" + I2S(ChatCommand___IBoxSucceed / 3) + "个C级宝箱。")
	    	set ChatCommand___IBoxSucceed=0
   		endif
    	set ChatCommand___IBox[0]=null
    	set ChatCommand___IBox[1]=null
    	set ChatCommand___IBox[2]=null
    	set ChatCommand___IBoxCount=0
   		call EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxC)
   		if ( ChatCommand___IBoxSucceed != 0 ) then
	   		call BJDebugMsg(I2S(ChatCommand___IBoxSucceed) + "个C级宝箱→→→" + I2S(ChatCommand___IBoxSucceed / 3) + "个B级宝箱。")
	    	set ChatCommand___IBoxSucceed=0
   		endif
    	set ChatCommand___IBox[0]=null
    	set ChatCommand___IBox[1]=null
    	set ChatCommand___IBox[2]=null
    	set ChatCommand___IBoxCount=0
   		call EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxB)
   		if ( ChatCommand___IBoxSucceed != 0 ) then
	   		call BJDebugMsg(I2S(ChatCommand___IBoxSucceed) + "个B级宝箱→→→" + I2S(ChatCommand___IBoxSucceed / 3) + "个A级宝箱。")
	    	set ChatCommand___IBoxSucceed=0
   		endif
    	set ChatCommand___IBox[0]=null
    	set ChatCommand___IBox[1]=null
    	set ChatCommand___IBox[2]=null
    	set ChatCommand___IBoxCount=0
   		call EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxA)
   		if ( ChatCommand___IBoxSucceed != 0 ) then
	   		call BJDebugMsg(I2S(ChatCommand___IBoxSucceed) + "个A级宝箱→→→" + I2S(ChatCommand___IBoxSucceed / 3) + "个S级宝箱。")
	    	set ChatCommand___IBoxSucceed=0
   		endif
   		endfunction
//---------------------------------------------------------------------------------------------------
	
 function FixView takes boolean higher returns nothing
		if ( higher ) then
			call SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_ZOFFSET, ( GetCameraTargetPositionZ() + 200.00 ), 0)
		else
			call SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_ZOFFSET, ( GetCameraTargetPositionZ() - 200.00 ), 0)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function ChatCommandAct takes nothing returns nothing
  local string str= GetEventPlayerChatString()
  local unit u= udg_H[GetConvertedPlayerId(GetTriggerPlayer())]
		//自杀
		if ( str == "-kill" ) then
			call KillSelf(u)
		    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r自杀成功!")
		    return
		elseif ( str == "-hc" ) then
			call CombineBox()
		elseif ( str == "-+" ) then
			call FixView(true)
		elseif ( str == "--" ) then
			call FixView(false)
		endif
		set str=null
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------

 function ChatCommand___InitChatCommand takes nothing returns nothing
		
     local trigger t= CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t, Player(0), "-", false)
		call TriggerRegisterPlayerChatEvent(t, Player(1), "-", false)
		call TriggerRegisterPlayerChatEvent(t, Player(2), "-", false)
		call TriggerRegisterPlayerChatEvent(t, Player(3), "-", false)
		call TriggerRegisterPlayerChatEvent(t, Player(4), "-", false)
		call TriggerRegisterPlayerChatEvent(t, Player(5), "-", false)
	    call TriggerAddAction(t, function ChatCommandAct)
	    set t=null
	endfunction
//---------------------------------------------------------------------------------------------------


//library ChatCommand ends
//library HeroSpellBase:
	
//---------------------------------------------------------------------------------------------------
	
 function HeroSpellBase__HeroLearnSkillCon takes nothing returns boolean
	    return ( ( IsUnitIllusionBJ(GetTriggerUnit()) != true ) and ( GetUnitTypeId(GetTriggerUnit()) != 'N018' ) )
	endfunction

	//直接学习
 function HeroSpellBase__HeroLearnSkillAct takes nothing returns nothing
		set learnSkillHero=udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]

		//加入英雄内部判断
		call LearnSkillHeiyan(learnSkillHero , GetLearnedSkill())
		call LearnSkillSeyu(learnSkillHero , GetLearnedSkill())
		call LearnSkillHanshang(learnSkillHero , GetLearnedSkill())
		call LearnSkillHuanyi(learnSkillHero , GetLearnedSkill())
		call LearnSkillChenji(learnSkillHero , GetLearnedSkill())
	endfunction

	//通过判断学习第几个来判断
 function TriggerAllHeroLearn takes integer convertedPlayerID,integer which returns nothing
		set learnSkillHero=udg_H[convertedPlayerID]

		//加入英雄内部判断
		call LearnSkillHeiyanI(learnSkillHero , which)
		call LearnSkillSeyuI(learnSkillHero , which)
		call LearnSkillHanshangI(learnSkillHero , which)
		call LearnSkillHuanyiI(learnSkillHero , which)
		call LearnSkillChenjiI(learnSkillHero , which)
	endfunction
//---------------------------------------------------------------------------------------------------


 function HeroSpellBase__InitHeroSpellBase takes nothing returns nothing
      local trigger t= CreateTrigger()
		    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_HERO_SKILL)
		    call TriggerAddCondition(t, Condition(function HeroSpellBase__HeroLearnSkillCon))
		    call TriggerAddAction(t, function HeroSpellBase__HeroLearnSkillAct)
		    set t=null
	endfunction

//library HeroSpellBase ends
//library Revive:
	

//---------------------------------------------------------------------------------------------------
	
function TReviveHeroCon takes nothing returns boolean
    return ( ( IsUnitIllusionBJ(GetRevivingUnit()) == false ) and ( GetRevivingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))] ) )
endfunction

function TReviveHeroAct takes nothing returns nothing
	call ReviveBeast(GetRevivingUnit())
	call AfterReviveLingxue(GetRevivingUnit())
	call AfterReviveHeiyan(GetRevivingUnit())
	if ( GetPlayerSlotState(GetOwningPlayer(GetRevivingUnit())) == PLAYER_SLOT_STATE_LEFT ) then
		call SetUnitPosition(GetRevivingUnit(), GetRectCenterX(gg_rct_QuitRegion), GetRectCenterY(gg_rct_QuitRegion))
	    call SetUnitInvulnerable(GetRevivingUnit(), true)
	    call PauseUnitBJ(true, GetRevivingUnit())
	endif
endfunction

//---------------------------------------------------------------------------------------------------

 function Revive___InitRevive takes nothing returns nothing
  local trigger t= CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_HERO_REVIVE_FINISH)
	    call TriggerAddCondition(t, Condition(function TReviveHeroCon))
	    call TriggerAddAction(t, function TReviveHeroAct)
	endfunction

//library Revive ends
//library Debug:


	
 function Debug__addHeroAttr takes integer attr,integer level returns nothing
		call SetHeroInt(udg_H[1], attr, false)
		call SetHeroAgi(udg_H[1], attr, false)
		call SetHeroStr(udg_H[1], attr, false)
		call SetHeroLevel(udg_H[1], level, true)
	endfunction

	
 function Debug__debugDamage takes nothing returns nothing
		if ( debug_show_damage ) then
			call BJDebugMsg(GetUnitName(GetEventDamageSource()) + "对" + GetUnitName(GetTriggerUnit()) + "造成了" + R2S(GetEventDamage()) + "伤害.")
		endif
	endfunction

 function Debug__ShowMajiaCount takes nothing returns integer
  local group l_group= GetUnitsInRectAll(GetPlayableMapRect())
  local unit l_unit
  local integer count= 0
		call GroupEnumUnitsInRange(l_group, 0, 0, 99999, null)
		loop
		    set l_unit=FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if ( GetUnitPointValue(l_unit) == 123 or GetUnitPointValue(l_unit) == 0 ) then
		    	set count=count + 1
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group=null
		set l_unit=null
		return count
	endfunction

	
 function Debug__debugChat takes nothing returns nothing
		//关闭伤害显示
  local string chat= GetEventPlayerChatString()
  local integer bo
  local unit u
		if ( chat == "test damage" ) then
			set debug_show_damage=not ( debug_show_damage )
			call BJDebugMsg("成功关闭伤害显示")
			return
		endif

		if ( chat == "test tech" ) then
			call SetPlayerTechResearchedSwap('R007', 1, Player(0))
			call SetPlayerTechResearchedSwap('R00A', 1, Player(0))
			call SetPlayerTechResearchedSwap('R00B', 1, Player(0))
			call SetPlayerTechResearchedSwap('R008', 1, Player(0))
			call SetPlayerTechResearchedSwap('R009', 1, Player(0))
			call SetPlayerTechResearchedSwap('R006', 1, Player(0))
			call SetPlayerTechResearchedSwap('R00D', 1, Player(0))
			call BJDebugMsg("科技研究完成")
			return
		endif

		if ( chat == "test part1" ) then
			call Debug__addHeroAttr(20000 , 80)

			//鬼3
			call UnitAddItemByIdSwapped('lgdh', udg_H[1])
			//星3
			call UnitAddItemByIdSwapped('ram1', udg_H[1])
			//冰封翅膀
			call UnitAddItemByIdSwapped('I041', udg_H[1])
			//法魂3
			call UnitAddItemByIdSwapped('phea', udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3', udg_H[1])
			//人3
			call UnitAddItemByIdSwapped('oven', udg_H[1])

			call BJDebugMsg("测试阶段1")
			return
		endif

		if ( chat == "test part0" ) then
			
			call Debug__addHeroAttr(10000 , 60)

			//鬼1
			call UnitAddItemByIdSwapped('rat9', udg_H[1])
			//星0
			call UnitAddItemByIdSwapped('I03Y', udg_H[1])
			//五彩翅膀
			call UnitAddItemByIdSwapped('I045', udg_H[1])
			//法魂2
			call UnitAddItemByIdSwapped('rin1', udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3', udg_H[1])
			//人0
			call UnitAddItemByIdSwapped('rej4', udg_H[1])

			call BJDebugMsg("测试阶段0")

			return
		endif

		if ( chat == "test part2" ) then
			
			call Debug__addHeroAttr(40000 , 120)

			//鬼5
			call UnitAddItemByIdSwapped('bgst', udg_H[1])
			//星MAX
			call UnitAddItemByIdSwapped('olig', udg_H[1])
			//妖皇翅膀
			call UnitAddItemByIdSwapped('I04R', udg_H[1])
			//法魂5
			call UnitAddItemByIdSwapped('shas', udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3', udg_H[1])
			//人6
			call UnitAddItemByIdSwapped('oli2', udg_H[1])

			call BJDebugMsg("测试阶段2")

			return
		endif

		if ( chat == "test part3" ) then
			
			call Debug__addHeroAttr(80000 , 140)

			//鬼8
			call UnitAddItemByIdSwapped('rag1', udg_H[1])
			//雷星
			call UnitAddItemByIdSwapped('ccmd', udg_H[1])
			//5翅膀
			call UnitAddItemByIdSwapped('I05B', udg_H[1])
			//法魂5
			call UnitAddItemByIdSwapped('shas', udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3', udg_H[1])
			//人7
			call UnitAddItemByIdSwapped('shdt', udg_H[1])

			call BJDebugMsg("测试阶段3")

			return
		endif

		if ( chat == "test part4" ) then
			
			call Debug__addHeroAttr(150000 , 170)

			//超鬼
			call UnitAddItemByIdSwapped('lhst', udg_H[1])
			//超神
			call UnitAddItemByIdSwapped('tlum', udg_H[1])
			//超妖
			call UnitAddItemByIdSwapped('I05F', udg_H[1])
			//超仙
			call UnitAddItemByIdSwapped('rst1', udg_H[1])
			//超圣
			call UnitAddItemByIdSwapped('ssil', udg_H[1])
			//超人
			call UnitAddItemByIdSwapped('tfar', udg_H[1])

			call BJDebugMsg("测试阶段4,神装")

			return
		endif

		if ( chat == "test fangka" ) then
			set u=CreateUnit(Player(0), 'hpea', 5790.6, 4445.8, 0)
			call StartFangKa(u)
			set u=null
			return
		endif

		if ( chat == "test credit" ) then
			set udg_Paihangbang[1]=50000
			call BJDebugMsg("增加了积分~!")
			return
		endif

		if ( chat == "test Scredit" ) then
			set centerCredit[1]=50000
			call BJDebugMsg("增加了守城积分~!")
			return
		endif

		if ( chat == "test majia" ) then
			call BJDebugMsg("马甲数量:" + I2S(Debug__ShowMajiaCount()))
			return
		endif

		if ( chat == "test VIP" ) then
			set sPIV[1]=true
			call BJDebugMsg("测试VIP!")
			return
		endif

		//对自己造成伤害
		if ( chat == "test kill" ) then
		//gg_unit_Otch_0001   gg_unit_nubr_0093
			call UnitDamageTargetBJ(CreateUnit(Player(0), 'hpea', 0., 0., 0.), udg_H[1], ( 1.00 * 10000000.00 ), ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC)
			return
		endif

		//关闭选中显示属性
		if ( chat == "test select" ) then
			set debug_show_attr=not ( debug_show_attr )
			return
		endif


		//基地无敌
		if ( chat == "test invu" ) then
			call SetUnitInvulnerable(gg_unit_haro_0030, true)
			return
		endif

		//基地不无敌
		if ( chat == "test vu" ) then
			call SetUnitInvulnerable(gg_unit_haro_0030, false)
			return
		endif

		//等级400
		if ( chat == "test level" ) then
			call SetHeroLevel(udg_H[1], 400, true)
			return
		endif

		if ( chat == "test renshu" ) then
			set udg_RENSHU=2
			call BJDebugMsg("人数为2")
			return
		endif

		if ( chat == "test lianyu1" ) then
			set udg_I_Lianyu[1]=14
			call BJDebugMsg("炼狱14层")
			return
		endif

		if ( chat == "test zhuansheng19" ) then
			set udg_Z[1]=19
			call BJDebugMsg("转生19")
			return
		endif
		if ( chat == "test zhuansheng39" ) then
			set udg_Z[1]=39
			call BJDebugMsg("转生39")
			return
		endif
		if ( chat == "test zhuansheng59" ) then
			set udg_Z[1]=59
			call BJDebugMsg("转生59")
			return
		endif
		if ( chat == "test zhuansheng79" ) then
			set udg_Z[1]=79
			call BJDebugMsg("转生79")
			return
		endif
		if ( chat == "test zhuansheng99" ) then
			set udg_Z[1]=99
			call BJDebugMsg("转生99")
			return
		endif
		if ( chat == "test zhuansheng119" ) then
			set udg_Z[1]=119
			call BJDebugMsg("转生119")
			return
		endif
		if ( chat == "test zhuansheng149" ) then
			set udg_Z[1]=149
			call BJDebugMsg("转生149")
			return
		endif

		if ( chat == "test lianyu2" ) then
			set udg_I_Lianyu[1]=69
			call BJDebugMsg("炼狱69层")
			return
		endif

		if ( chat == "test lianyu3" ) then
			set udg_I_Lianyu[1]=59
			call BJDebugMsg("炼狱59层")
			return
		endif

		if ( chat == "test darenshu" ) then
			set udg_RENSHU=6
			call BJDebugMsg("人数调成6")
			return
		endif

		if ( chat == "test unitState" ) then
			call BJDebugMsg(GetUnitName(testDyingUnit) + "的血量为:" + R2S(GetUnitState(testDyingUnit, UNIT_STATE_LIFE)))
			if ( IsUnitAliveBJ(testDyingUnit) ) then
				call BJDebugMsg("活着的")
			else
				call BJDebugMsg("死了的")
			endif
			return
		endif

		//魔王拆家速度
		if ( chat == "test mowang" ) then
       		call SetPlayerTechResearchedSwap('R00O', 100, Player(6))
			call CreateUnit(Player(11), 'Uwar', GetUnitX(gg_unit_haro_0030), GetUnitY(gg_unit_haro_0030), 0)
			return
		endif

		//冥王拆家速度
		if ( chat == "test mingwang" ) then
            call UnitAddAbilityBJ('A0EG', gg_unit_haro_0030)
			call CreateUnit(Player(11), 'Nkjx', GetUnitX(gg_unit_haro_0030), GetUnitY(gg_unit_haro_0030), 0)
			return
		endif

		//调整当前波数
		set bo=S2I(SubStringBJ(chat, StringLength(chat) - 1, StringLength(chat)))
		if ( bo < 30 ) then
			set udg_Bo=bo
			call BJDebugMsg("当前波数:" + "=" + I2S(udg_Bo))
			return
		endif

	endfunction

//---------------------------------------------------------------------------------------------------
	
 function SetTestUnit takes unit u returns nothing
		set testDyingUnit=u
	endfunction
	
//---------------------------------------------------------------------------------------------------

	
 function Debug__peekAttr takes nothing returns nothing
		if ( debug_show_attr ) then
			call BJDebugMsg("选中单位生命:" + R2S(GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit())))
			call BJDebugMsg("选中单位移动速度:" + R2S(GetUnitMoveSpeed(GetTriggerUnit())))
		endif
	endfunction

 function Debug__initDebugTri takes nothing returns nothing
		//显示伤害值
  local trigger t= CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddAction(t, function Debug__debugDamage)

		//聊天打开开关进行测试
		set t=CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t, Player(0), "test", false)
		call TriggerAddAction(t, function Debug__debugChat)

		//选择人物看数据
		set t=CreateTrigger()
		call TriggerRegisterPlayerSelectionEventBJ(t, Player(0), true)
		call TriggerAddAction(t, function Debug__peekAttr)
		set t=null

		call SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_GOLD, 300000)
		call SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_LUMBER, 1000000)
	endfunction

 function Debug__Initdebug takes nothing returns nothing
		
		call Debug__initDebugTri()

	endfunction


//library Debug ends
//library Simulate:
	
//---------------------------------------------------------------------------------------------------
	
 function Simulate___SimulateDamageCon takes nothing returns boolean
		return ( GetEventDamage() > 0 ) and ( IsUnitIllusion(GetEventDamageSource()) == false )
	endfunction

 function SimulateAllDamage takes unit u returns nothing
		if ( SimulateDamageHeiyan(u) == true ) then
			return
		elseif ( SimulateDamageYanmie(u) == true ) then
			return
		elseif ( SimulateDamageHuanyi(u) == true ) then
			return
		elseif ( SimulateDamageSoldier(u) == true ) then
			return
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Simulate___SimulateAllDeath takes nothing returns nothing
		call SimulateDeathYanmie(GetDyingUnit())
		call SimulateDeathHeiyan(GetDyingUnit())
		call SimulateDeathHuanyi(GetDyingUnit())
	endfunction
//---------------------------------------------------------------------------------------------------

 function Simulate___InitSimulate takes nothing returns nothing
		
     local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddAction(t, function Simulate___SimulateAllDeath)
		set t=null
	endfunction


//library Simulate ends


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
// BEGIN IMPORT OF item.j

// IGNORE DOUBLE IMPORT OF LHBase.j


// END IMPORT OF item.j
// BEGIN IMPORT OF MonsterSpell.j

// IGNORE DOUBLE IMPORT OF LHBase.j


// END IMPORT OF MonsterSpell.j
// BEGIN IMPORT OF Arena.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// BEGIN IMPORT OF SpellBase.j

// IGNORE DOUBLE IMPORT OF LHBase.j

 
// END IMPORT OF SpellBase.j



// END IMPORT OF Arena.j
// BEGIN IMPORT OF Boss.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF SpellBase.j
// END IMPORT OF Boss.j
// BEGIN IMPORT OF Beast.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Beast.j
// BEGIN IMPORT OF Revive.j

// IGNORE DOUBLE IMPORT OF LHBase.j
/////! import "Beast.j"
// BEGIN IMPORT OF Lingxue.j
// IGNORE DOUBLE IMPORT OF SpellBase.j
// END IMPORT OF Lingxue.j
// END IMPORT OF Revive.j
// BEGIN IMPORT OF Purgatory.j



// END IMPORT OF Purgatory.j

//VIP
// BEGIN IMPORT OF PIV.j
// IGNORE DOUBLE IMPORT OF LHBase.j
/////! import "Beast.j"
// END IMPORT OF PIV.j
//多面板
// BEGIN IMPORT OF Multiboard.j

// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Multiboard.j
//转生
// BEGIN IMPORT OF Mirror.j

// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF Mirror.j
//黑店
// BEGIN IMPORT OF TouristTrap.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF TouristTrap.j
//宠物有关
// BEGIN IMPORT OF Pet.j
// IGNORE DOUBLE IMPORT OF LHBase.j




// END IMPORT OF Pet.j
//合成装备
// BEGIN IMPORT OF Combine.j

// IGNORE DOUBLE IMPORT OF LHBase.j
/////! import "Beast.j"



// END IMPORT OF Combine.j
//宝石升级
// BEGIN IMPORT OF Diamond.j
// IGNORE DOUBLE IMPORT OF LHBase.j



// END IMPORT OF Diamond.j
//属性加成
// BEGIN IMPORT OF Attr.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Attr.j
//导入基地有关
// BEGIN IMPORT OF CenterBase.j
// IGNORE DOUBLE IMPORT OF LHBase.j

// END IMPORT OF CenterBase.j

//导入英雄
// BEGIN IMPORT OF HeiYan.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// BEGIN IMPORT OF Printer.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// END IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j

// END IMPORT OF HeiYan.j
// BEGIN IMPORT OF Yanmie.j

// IGNORE DOUBLE IMPORT OF SpellBase.j

// END IMPORT OF Yanmie.j
// BEGIN IMPORT OF Kaisa.j


// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// END IMPORT OF Kaisa.j
// IGNORE DOUBLE IMPORT OF Lingxue.j
// BEGIN IMPORT OF Seyu.j
 
// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j


// END IMPORT OF Seyu.j
// BEGIN IMPORT OF Hanshang.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j


// END IMPORT OF Hanshang.j
// BEGIN IMPORT OF Huanyi.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j

// END IMPORT OF Huanyi.j
// BEGIN IMPORT OF Chenji.j

// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF SpellBase.j







// END IMPORT OF Chenji.j

//马甲模拟
// BEGIN IMPORT OF Simulate.j


// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF HeiYan.j
// IGNORE DOUBLE IMPORT OF Yanmie.j
// IGNORE DOUBLE IMPORT OF Huanyi.j
/////! import "CenterCredit.j"

// END IMPORT OF Simulate.j

//导入指令
// BEGIN IMPORT OF ChatCommand.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF PIV.j


// END IMPORT OF ChatCommand.j

//学习技能
// BEGIN IMPORT OF HeroSpellBase.j

// BEGIN IMPORT OF Heiyan.j

// IGNORE DOUBLE IMPORT OF SpellBase.j
// IGNORE DOUBLE IMPORT OF Printer.j
// IGNORE DOUBLE IMPORT OF Attr.j

// redeclaration of library Heiyan skipped
// END IMPORT OF Heiyan.j
// IGNORE DOUBLE IMPORT OF LHBase.j


// END IMPORT OF HeroSpellBase.j

//金币系统
// BEGIN IMPORT OF GoldSystem.j
// IGNORE DOUBLE IMPORT OF LHBase.j



// END IMPORT OF GoldSystem.j

//练级场
// BEGIN IMPORT OF Exercise.j
// IGNORE DOUBLE IMPORT OF LHBase.j
	



// END IMPORT OF Exercise.j
// BEGIN IMPORT OF CenterCredit.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF PIV.j
// IGNORE DOUBLE IMPORT OF Multiboard.j
/////! import "Exercise.j"

// END IMPORT OF CenterCredit.j

//测试文件
// BEGIN IMPORT OF Debug.j

// IGNORE DOUBLE IMPORT OF LHBase.j
// IGNORE DOUBLE IMPORT OF Boss.j
// IGNORE DOUBLE IMPORT OF PIV.j
/////! import "CenterCredit.j"

// END IMPORT OF Debug.j
function main takes nothing returns nothing

call ExecuteFunc("jasshelper__initstructs446407453")
call ExecuteFunc("ItemBase___InitItemBase")
call ExecuteFunc("Purgatory___InitPurgatory")
call ExecuteFunc("Version___InitVersion")
call ExecuteFunc("Test___InitTest")
call ExecuteFunc("LHBase___InitLHBase")
call ExecuteFunc("Attr___InitAttr")
call ExecuteFunc("Beast___InitBeast")
call ExecuteFunc("CenterBase___InitCenterBase")
call ExecuteFunc("Diamond___InitDiamond")
call ExecuteFunc("Exercise__InitExercise")
call ExecuteFunc("GoldSystem__InitGoldSystem")
call ExecuteFunc("MonsterSpell___InitMonsterSpell")
call ExecuteFunc("Multiboard___InitMultiboard")
call ExecuteFunc("Pet___InitPet")
call ExecuteFunc("Printer___InitPrinter")
call ExecuteFunc("TouristTrap___InitTouristTrap")
call ExecuteFunc("Arena___InitArena")
call ExecuteFunc("Boss___InitBoss")
call ExecuteFunc("Combine___InitCombine")
call ExecuteFunc("PIV___InitPIV")
call ExecuteFunc("CenterCredit__InitCenterCredit")
call ExecuteFunc("ChatCommand___InitChatCommand")
call ExecuteFunc("HeroSpellBase__InitHeroSpellBase")
call ExecuteFunc("Revive___InitRevive")
call ExecuteFunc("Debug__Initdebug")
call ExecuteFunc("Simulate___InitSimulate")

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

function jasshelper__initstructs446407453 takes nothing returns nothing
    set st__Attract__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Attract__staticgetindex,Condition( function sa__Attract__staticgetindex))
    set st__Attract_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Attract_onDestroy,Condition( function sa__Attract_onDestroy))
    set st__Missile__staticgetindex=CreateTrigger()
    call TriggerAddCondition(st__Missile__staticgetindex,Condition( function sa__Missile__staticgetindex))
    set st__Missile_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Missile_onDestroy,Condition( function sa__Missile_onDestroy))



endfunction

