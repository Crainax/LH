

//! import "LHBase.j"
//! import "SpellBase.j"
library_once Arena initializer InitArena requires LHBase,SpellBase

	globals

		constant integer ARENA_MAX_LEVEL = 50

		/*
		    功能
		*/
		private trigger TDieEvent

		/*
		    技能
		*/
		private trigger TSpellLinger
		private trigger TSpellZhousi
		private trigger TSpellXuemo1
		private trigger TSpellXuemo2
		private trigger TSpellFuwang
		private trigger TSpellMeidusha1
		private trigger TSpellMeidusha2
		private trigger TSpellKiller1
		private trigger TSpellKiller2
		private trigger TSpellJinxuan1
		private trigger TSpellJinxuan2
		private trigger TSpellJinxuan3
		private trigger TSpellJinxuan4

		/*
		    当前挑战的人的位置
		*/
		private integer array currentArena
		/*
		    当前擂台的能力等级
		*/
		private integer currentLevel = 1
		/*
		    擂主
		*/
		private unit challenager = null
		/*
		    挑战者
		*/
		private unit defier = null
		/*
		    漂浮文字
		*/
		private texttag textTag_Level 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    刷新擂台等级并提高能力.
	*/
	private function updateLevel takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer int = GetHeroInt(challenager,true)
		local integer agi = GetHeroAgi(challenager,true)
		local integer str = GetHeroStr(challenager,true)

		if( IsUnitAliveBJ(challenager) and ( currentLevel < ARENA_MAX_LEVEL)) then
			call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(challenager), GetUnitY(challenager)) )
			call SetHeroInt(challenager,int + int / currentLevel ,true)
			call SetHeroAgi(challenager,agi + agi / currentLevel , true)
			call SetHeroStr(challenager,str + str / currentLevel , true)
			set currentLevel  = currentLevel + 1
			//设置技能等级
			call IncUnitAbilityLevel(challenager,'ACbh')
			call IncUnitAbilityLevel(challenager,'A0ET')
			call IncUnitAbilityLevel(challenager,'A0EU')
			call IncUnitAbilityLevel(challenager,'ACt2')
			call IncUnitAbilityLevel(challenager,'AL04')
			call IncUnitAbilityLevel(challenager,'AL05')
			call IncUnitAbilityLevel(challenager,'A0EY')
			call SetTextTagTextBJ(textTag_Level,I2S(currentLevel) + "级",20)
		else
			set currentLevel = 1
			call PauseTimer(t)
			call DestroyTimer(t)
		endif

		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		更新擂台等级的位置
	*/		
	private function updateLevelLoc takes nothing returns nothing
		local timer t = GetExpiredTimer()
		if (IsUnitAliveBJ(challenager)) then
			call SetTextTagPosUnitBJ(textTag_Level,challenager,25)
		else 
			call DestroyTextTag(textTag_Level)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    灵儿技能
	    强制把敌人射到墙角,每两秒也会强制把所有人拉到那里
	*/

	private function TSpellLingerCon takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true))
	endfunction

	private function TSpellLingerAct takes nothing returns nothing
		call SetUnitX(GetAttackedUnitBJ(),GetRectCenterX(gg_rct_Arena_1))
		call SetUnitY(GetAttackedUnitBJ(),GetRectCenterY(gg_rct_Arena_1))
	endfunction

	/*
	    每2秒就群射一次
	*/
	private function LingerAssemble takes nothing returns nothing
		local real x = GetRectCenterX(gg_rct_Arena_1)
		local real y = GetRectCenterY(gg_rct_Arena_1)
		local group l_group = CreateGroup()
		local unit l_unit
		local timer t = GetExpiredTimer()
		if (IsUnitAliveBJ(challenager)) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(challenager), GetUnitY(challenager), 900, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if (IsEnemy(GetEnumUnit(),challenager)) then
					call SetUnitX(GetAttackedUnitBJ(),GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(GetAttackedUnitBJ(),GetRectCenterY(gg_rct_Arena_1))
			    endif
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		call DestroyGroup(l_group)
		set t = null
		set l_group = null
		set l_unit =null
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    宙斯的技能
	*/

	private function TSpellZhousiCon takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
	endfunction

	private function TSpellZhousiAct takes nothing returns nothing
		local integer i = 1
	    call DisableTrigger( GetTriggeringTrigger() )
	    call IssueImmediateOrder( GetAttacker(), "creepthunderclap" )
	    loop
	    	exitwhen i > 6
	    	call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(challenager) + SinBJ(i * 60) * 400, GetUnitY(challenager) + CosBJ(i * 60) * 400) )
	    	set i = i +1
	    endloop
	    call CreateSpellTextTag("千煞破击！",challenager,100,0,0,2)

	    call PolledWait(8.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
		    血魔技能1：召唤5个敌方单位复制
	*/	
	private function TSpellXuemo1Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	private function TSpellXuemo1Act takes nothing returns nothing
		local unit u
		local integer i = 1
	    call DisableTrigger( GetTriggeringTrigger() )

	    loop
	    	exitwhen i > 5
	        set u = CreateUnit(GetOwningPlayer(GetAttacker()),'h000',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),0)
	        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
	        call UnitAddAbilityBJ( 'A0EV',u )
	        call SetUnitAbilityLevel(u,'A0EV',IMinBJ(currentLevel,20))
	        call IssueTargetOrderById(u, 852274, GetAttackedUnitBJ() )
	    	set i = i +1
	    endloop

	    call CreateSpellTextTag("幻魔灵枭！",challenager,100,0,0,2)

	    set u = null
	    call PolledWait(10.00)
	    call EnableTrigger( GetTriggeringTrigger() )

	endfunction

	/*
	    血魔技能2：被攻击几率施放流星雨。
	*/
	private function TSpellXuemo2Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 20) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
	endfunction

	private function TSpellXuemo2Act takes nothing returns nothing
		local location point = GetUnitLoc(GetAttacker())
	    local unit  u = CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()),'h000',GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0)
	    call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'AL01',u )
        call SetUnitAbilityLevel(u,'AL01',IMinBJ(currentLevel,20))
	    call IssuePointOrderLoc( u, "rainoffire", point )
	    call RemoveLocation( point )
	    set u = null
	    set point = null
	    call CreateSpellTextTag("天玄星陨！",challenager,0,100,100,2)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    斧王技能：攻击15%几率10%生命攻击，重击
	*/

	private function TSpellFuwangCon takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	private function TSpellFuwangAct takes nothing returns nothing
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()))) 
			call UnitDamageTarget( challenager, GetAttackedUnitBJ(), ( 0.1 * GetUnitStateSwap(UNIT_STATE_LIFE, GetAttackedUnitBJ()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )

		    call CreateSpellTextTag("淘汰之刃！",challenager,0,100,0,2)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    美杜莎技能1：召唤毒蛇守卫，不杀死自己是无敌的
	*/


	/*
	    Timer判断螣蛇的数量，决定美杜莎无敌状态
	*/
	private function TSpellMeidusha1Invu takes nothing returns nothing
		local group l_group = CreateGroup()
		local unit l_unit
		local integer count = 0
		local timer t = GetExpiredTimer()
		call GroupEnumUnitsInRange(l_group, GetUnitX(challenager), GetUnitY(challenager), 1800, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
			if ((GetUnitTypeId(l_unit) == 'osp1') and GetOwningPlayer(l_unit) == Player(10) and IsUnitAliveBJ(l_unit) == true ) then
				set count = count + 1
			endif
		endloop
		if (count == 0) then
			call SetUnitInvulnerable(challenager,false)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		set t = null
	endfunction
	/*
	    触发器
	*/
	private function TSpellMeidusha1Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1) )
	endfunction

	private function TSpellMeidusha1Act takes nothing returns nothing
		local location point = GetUnitLoc(GetAttackedUnitBJ())
		local timer t = CreateTimer()
	    local unit  u = CreateUnit(GetOwningPlayer(GetAttacker()),'h000',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),0)
	    call DisableTrigger( GetTriggeringTrigger() )
	    call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'Arsw',u )
	    call IssuePointOrderLoc( u, "ward", point )
	    call CreateSpellTextTag("阴魂螣蛇！",challenager,0,0,0,2)
	    call RemoveLocation( point )
	    call SetUnitInvulnerable(challenager,TRUE)
	    call TimerStart(t,0.3,true,function TSpellMeidusha1Invu)
	    set u = null
	    set point = null
	    set t = null
	    call PolledWait(8.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction


	/*
	    美杜莎技能2：石化凝视，冻结所有敌人3秒
	*/


	private function TSpellMeidusha2Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true))
	endfunction

	private function TSpellMeidusha2Act takes nothing returns nothing

		local group l_group = CreateGroup()
		local group l_pausinggroup = CreateGroup()
		local unit l_unit
		call GroupEnumUnitsInRange(l_group, GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()), 900, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if(IsEnemy(l_unit,challenager))then
				call PauseUnitBJ(true,l_unit)
				call GroupAddUnit(l_pausinggroup,l_unit)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
		    endif
		endloop
	    call DisableTrigger( GetTriggeringTrigger() )
	    call CreateSpellTextTag("石化凝视！",challenager,51,51,51,2)
		call DestroyGroup(l_group)
		set l_group = null
		call PolledWait(3.00)
		loop
		    set l_unit = FirstOfGroup(l_pausinggroup)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_pausinggroup, l_unit)
			call PauseUnitBJ(false,l_unit)
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit)))
		endloop
		call DestroyGroup(l_pausinggroup)
		set l_pausinggroup = null
	    call PolledWait(7.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    杀手技能1：暗影突袭攻击方
	*/

	function TSpellKiller1Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true)  and (GetRandomInt(1, 10) == 1) and (GetUnitAbilityLevel(GetAttacker(),'Amim') < 1) and UnitHasBuffBJ(GetAttacker(),'BEsh') != true )
	endfunction

	function TSpellKiller1Act takes nothing returns nothing
	    local unit  u = CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()),'h000',GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0)
	    call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'AL02',u )
        call SetUnitAbilityLevel(u,'AL02',IMinBJ(currentLevel,20))
	    call IssueTargetOrder(u,"shadowstrike",GetAttacker())
	    call CreateSpellTextTag("致命毒镖！",challenager,0,0,0,2)
	    set u = null
	endfunction

	/*
	    杀手技能2：疾步风干敌人
	*/
	function TSpellKiller2Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 3) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
	endfunction

	function TSpellKiller2Act takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
	    call IssueImmediateOrder( challenager, "windwalk" )
	    call PolledWait(1.00)
	    call IssueTargetOrder( challenager, "attack",  defier)
	    call PolledWait(7.00)
	    call CreateSpellTextTag("死亡潜行！",challenager,100,0,0,2)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    瑾轩技能1：攻击有一定的几率在目标释放雷阵雨
	*/
	function TSpellJinxuan1Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitIllusionBJ(GetAttacker()) != true) and (IsUnitAliveBJ(GetAttacker()) == true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
	endfunction

	function TSpellJinxuan1Act takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttacker(),GetAttackedUnitBJ(),'ACrf',IMinBJ(currentLevel,20),6,"rainoffire",true,false,false)
	    call CreateSpellTextTag("瞬闪雷鸣！",challenager,0,0,100,2)
	    call PolledWait(7.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

	/*
	    瑾轩技能2：被攻击有一定的几率施放阵阵冲击波
	*/
	function TSpellJinxuan2Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
	endfunction

	function TSpellJinxuan2Act takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttackedUnitBJ(),GetAttacker(),'ANst',IMinBJ(currentLevel,20),5,"stampede",true,false,false)
	    call CreateSpellTextTag("逆合玄天！",challenager,0,0,100,2)
	    call PolledWait(5.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

	/*
	    瑾轩技能3：攻击有一定的几率向目标放出一道雷神射线，击晕+伤害
	*/
	function TSpellJinxuan3Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
	endfunction

	function TSpellJinxuan3Act takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttacker(),GetAttackedUnitBJ(),'AHtb',IMinBJ(currentLevel,20),5,"thunderbolt",false,false,true)
	    call CreateSpellTextTag("魔化射线！",challenager,100,0,100,2)
	    call PolledWait(7.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

	/*
	    瑾轩技能4： 被攻击时候有一定的几率窃取对方一定的魔法。
	*/
	function TSpellJinxuan4Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	function TSpellJinxuan4Act takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
	    call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 200.00 ) )
	    call CreateSpellTextTag("魔法窃取！",challenager,0,100,0,2)
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", GetUnitX(GetAttacker()), GetUnitY(GetAttacker()) ))
	    call PolledWait(2.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    挑战擂台开始Trigger
	*/
	function TArenaStartAct takes nothing returns nothing
		local timer t
		local Attract attract

		//符合条件再开始
	    if ((IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true)) then
	        if ((challenager == null)) then
	            if ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] != 9)) then
	            	//开始啦
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。" )
	                
	                set t = CreateTimer()
	                if ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 0)) then
	                    set challenager = CreateUnit(Player(10), 'Huth', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 1)) then
	                    set challenager = CreateUnit(Player(10), 'Hpb1', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 2)) then
	                    set challenager = CreateUnit(Player(10), 'Hgam', GetRectCenterX(gg_rct_Arena_2),GetRectCenterY(gg_rct_Arena_2), 180.00)
	                    call EnableTrigger( TSpellLinger )
	                    call TimerStart(t,2,TRUE,function LingerAssemble)
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 3)) then
	                    set challenager = CreateUnit(Player(10), 'Hmbr', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellZhousi )
	                    set attract = Attract.create(challenager,600,0.05,20)
	                    call attract.start()
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 4)) then
	                    set challenager = CreateUnit(Player(10), 'Odrt', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellXuemo1 )
	                    call EnableTrigger( TSpellXuemo2 )
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 5)) then
	                    set challenager = CreateUnit(Player(10), 'Ogrh', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellFuwang )
	                    set attract = Attract.create(challenager,600,0.05,20)
	                    call attract.start()
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 6)) then
	                    set challenager = CreateUnit(Player(10), 'Hvsh', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellMeidusha1 )
	                    call EnableTrigger( TSpellMeidusha2 )
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 7)) then
	                    set challenager = CreateUnit(Player(10), 'Hpb2', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellKiller1 )
	                    call EnableTrigger( TSpellKiller2 )
	                elseif ((currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] == 8)) then
	                    set challenager = CreateUnit(Player(10), 'Hlgr', GetRandomReal(GetRectMinX(gg_rct_Arena_all),GetRectMaxX(gg_rct_Arena_all)),GetRandomReal(GetRectMinY(gg_rct_Arena_all),GetRectMaxY(gg_rct_Arena_all)), 180.00)
	                    call EnableTrigger( TSpellJinxuan1 )
	                    call EnableTrigger( TSpellJinxuan2 )
	                    call EnableTrigger( TSpellJinxuan3 )
	                    call EnableTrigger( TSpellJinxuan4 )
	                endif

	                //初始化单位
					call SetUnitX(defier,GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(defier,GetRectCenterY(gg_rct_Arena_1))
	                call SetUnitInvulnerable( challenager, true )
	                call PauseUnitBJ( true, challenager )
	                call UnitAddAbilityBJ( 'A0ES', challenager )
	                call UnitAddAbilityBJ( 'A0B9', challenager )
	                call UnitAddAbilityBJ( 'A09W', challenager )
	                call UnitAddAbilityBJ( 'A0P1', challenager )
	                set textTag_Level = CreateTextTagUnitBJ( I2S(currentLevel) + "级", challenager, 0, 20, 100, 0, 0, 0 )
	                call PolledWait(3.00)
	                if ((challenager != null)) then
	                    call SetUnitInvulnerable( challenager, false )
	                    call PauseUnitBJ( false, challenager )
	                    call DisplayTextToPlayer( GetOwningPlayer(defier), 0, 0, "|cFFFF66CC【消息】|r挑战开始！" )
	                    //5秒更新一次等级
	                    set t = CreateTimer()
	                    call TimerStart(t,5,TRUE,function updateLevel)
	                    //0.05秒更新一次等级提示的位置
	                    set t = CreateTimer()
	                    call TimerStart(t,0.05,TRUE,function updateLevelLoc)
   						call TriggerRegisterUnitEvent(TDieEvent, challenager, EVENT_UNIT_DEATH)
	                else
	                endif
	            else
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台已经全部挑战完毕！" )
	            endif
	        else
	            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请打完这场擂台再挑战新的！（认输方法：输入HG回城）" )
	        endif
	    else
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！" )
	    endif
	    
	    set t = null
	endfunction

	private function TArenaStartCon takes nothing returns boolean
	    return ((GetItemTypeId(GetSoldItem()) == 'I04D') and BuyerFilter(GetBuyingUnit()) == true and (GetBuyingUnit() == defier))
	endfunction

//---------------------------------------------------------------------------------------------------


	/*
	    离开擂台后判负
	*/
	function TArenaLeaveCon takes nothing returns boolean
	    return ((defier == GetLeavingUnit()) and (IsUnitIllusionBJ(GetLeavingUnit()) != true))
	endfunction

	function TArenaLeaveAct takes nothing returns nothing
	    set defier = null
	    if ((challenager != null)) then
	        call RemoveUnit( challenager )
	        set challenager = null
	        call DestroyTextTag( textTag_Level )
	        call updateLevel()

	        call DisableTrigger( TSpellLinger )
			call DisableTrigger( TSpellZhousi )
			call DisableTrigger( TSpellXuemo1 )
			call DisableTrigger( TSpellXuemo2 )
			call DisableTrigger( TSpellFuwang )
			call DisableTrigger( TSpellMeidusha1 )
			call DisableTrigger( TSpellMeidusha2 )
			call DisableTrigger( TSpellKiller1 )
			call DisableTrigger( TSpellKiller2 )
			call DisableTrigger( TSpellJinxuan1 )
			call DisableTrigger( TSpellJinxuan2 )
			call DisableTrigger( TSpellJinxuan3 )
			call DisableTrigger( TSpellJinxuan4 )
	    else
	    endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    进入挑战场
	*/
	private function TArenaEnterAct takes nothing returns nothing
		local location point
	    if ((GetItemTypeId(GetSoldItem()) == 'fgrd')) then
	        if ((IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true)) then
	            if ((defier == null)) then
	                set defier = GetBuyingUnit()
	                set point = GetRandomLocInRect(gg_rct_Arena_all)
	                call SetUnitPositionLoc( GetBuyingUnit(), point )
	                call PanCameraToTimedLocForPlayer( GetOwningPlayer(GetBuyingUnit()), point, 0.20 )
	                call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(GetBuyingUnit()), GetUnitY(GetBuyingUnit())) )
	                call RemoveLocation( point )
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	            else
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台只支持单挑,里面有人了哦~" )
	            endif
	        else
	            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！" )
	        endif
	    else
	    endif
	    set point = null
	endfunction

//---------------------------------------------------------------------------------------------------



	/*
	    死亡事件:掉落装备
	*/
	function TDieEventConditions takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetDyingUnit()) != true))
	endfunction

	function TDieEventActions takes nothing returns nothing
	   
	    local location point = GetUnitLoc(GetDyingUnit())
	    local integer ty = (GetUnitTypeId(GetDyingUnit()))
	    if (ty == 'Huth') then
	        call CreateItemLoc( 'prvt', point )
	    elseif (ty == 'Hpb1') then
	        call CreateItemLoc( 'cnob', point )
	    elseif (ty == 'Hgam') then
	        call CreateItemLoc( 'rhth', point )
	        call DisableTrigger( TSpellLinger )
	    elseif (ty == 'Hmbr') then
	        call CreateItemLoc( 'hval', point )
	        call DisableTrigger( TSpellZhousi )
	    elseif (ty == 'Odrt') then
	        call CreateItemLoc( 'afac', point )
	        call DisableTrigger( TSpellXuemo1 )
	        call DisableTrigger( TSpellXuemo2 )
	    elseif (ty == 'Ogrh') then
	        call CreateItemLoc( 'pmna', point )
	        call DisableTrigger( TSpellFuwang )
	    elseif (ty == 'Hvsh') then
	        call CreateItemLoc( 'evtl', point )
	        call DisableTrigger( TSpellMeidusha1 )
	        call DisableTrigger( TSpellMeidusha2 )
	    elseif (ty == 'Hpb2') then
	        call CreateItemLoc( 'bspd', point )
	        call DisableTrigger( TSpellKiller2 )
	        call DisableTrigger( TSpellKiller1 )
	    elseif (ty == 'Hlgr') then
	        call CreateItemLoc( 'mcou', point )
	        call DisableTrigger( TSpellJinxuan1 )
	        call DisableTrigger( TSpellJinxuan2 )
	        call DisableTrigger( TSpellJinxuan3 )
	        call DisableTrigger( TSpellJinxuan4 )
	    endif

	    set currentLevel = 1
	    set currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] = currentArena[GetConvertedPlayerId(GetOwningPlayer(defier))] + 1
	    call RemoveLocation( point )
	    set point = null
	    call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!" )
	    call RemoveUnit( challenager )
	    set challenager = null
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitArena takes nothing returns nothing
		//挑战开始--买了"挑战开始"
		local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddCondition(t, Condition(function TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //离开擂台后判负
	    set t = CreateTrigger()
	    call TriggerRegisterLeaveRectSimple( t, gg_rct_Arena_forbit )
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //进入挑战场--买了"进入擂台"
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddAction(t, function TArenaEnterAct)

	    //擂主死亡事件
	    set TDieEvent = CreateTrigger()
	    call TriggerAddCondition(TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(TDieEvent, function TDieEventActions)

	    //灵儿技能
	    set TSpellLinger = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellLinger, Condition(function TSpellLingerCon))
	    call TriggerAddAction(TSpellLinger, function TSpellLingerAct)
	    call DisableTrigger(TSpellLinger)

	    //宙斯技能
	    set TSpellZhousi = CreateTrigger()
	    call DisableTrigger(TSpellZhousi)
	    call TriggerRegisterAnyUnitEventBJ( TSpellZhousi, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellZhousi, Condition(function TSpellZhousiCon))
	    call TriggerAddAction(TSpellZhousi, function TSpellZhousiAct)

	    //血魔技能

	    set TSpellXuemo1 = CreateTrigger()
	    call DisableTrigger(TSpellXuemo1)
	    call TriggerRegisterAnyUnitEventBJ( TSpellXuemo1, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellXuemo1, Condition(function TSpellXuemo1Con))
	    call TriggerAddAction(TSpellXuemo1, function TSpellXuemo1Act)

	    set TSpellXuemo2 = CreateTrigger()
	    call DisableTrigger(TSpellXuemo2)
	    call TriggerRegisterAnyUnitEventBJ( TSpellXuemo2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellXuemo2, Condition(function TSpellXuemo2Con))
	    call TriggerAddAction(TSpellXuemo2, function TSpellXuemo2Act)

	    //斧王技能
	    set TSpellFuwang = CreateTrigger()
	    call DisableTrigger(TSpellFuwang)
	    call TriggerRegisterAnyUnitEventBJ( TSpellFuwang, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellFuwang, Condition(function TSpellFuwangCon))
	    call TriggerAddAction(TSpellFuwang, function TSpellFuwangAct)


	    //美杜莎技能
	    set TSpellMeidusha1 = CreateTrigger()
	    call DisableTrigger(TSpellMeidusha1)
	    call TriggerRegisterAnyUnitEventBJ( TSpellMeidusha1, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellMeidusha1, Condition(function TSpellMeidusha1Con))
	    call TriggerAddAction(TSpellMeidusha1, function TSpellMeidusha1Act)

	    set TSpellMeidusha2 = CreateTrigger()
	    call DisableTrigger(TSpellMeidusha2)
	    call TriggerRegisterAnyUnitEventBJ( TSpellMeidusha2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellMeidusha2, Condition(function TSpellMeidusha2Con))
	    call TriggerAddAction(TSpellMeidusha2, function TSpellMeidusha2Act)

	    //杀手技能

	    set TSpellKiller1 = CreateTrigger()
	    call DisableTrigger(TSpellKiller1)
	    call TriggerRegisterAnyUnitEventBJ( TSpellKiller1, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellKiller1, Condition(function TSpellKiller1Con))
	    call TriggerAddAction(TSpellKiller1, function TSpellKiller1Act)

	    set TSpellKiller2 = CreateTrigger()
	    call DisableTrigger(TSpellKiller2)
	    call TriggerRegisterAnyUnitEventBJ( TSpellKiller2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellKiller2, Condition(function TSpellKiller2Con))
	    call TriggerAddAction(TSpellKiller2, function TSpellKiller2Act)

	    //瑾轩技能

	    set TSpellJinxuan1 = CreateTrigger()
	    call DisableTrigger(TSpellJinxuan1)
	    call TriggerRegisterAnyUnitEventBJ( TSpellJinxuan1, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellJinxuan1, Condition(function TSpellJinxuan1Con))
	    call TriggerAddAction(TSpellJinxuan1, function TSpellJinxuan1Act)

	    set TSpellJinxuan2 = CreateTrigger()
	    call DisableTrigger(TSpellJinxuan2)
	    call TriggerRegisterAnyUnitEventBJ( TSpellJinxuan2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellJinxuan2, Condition(function TSpellJinxuan2Con))
	    call TriggerAddAction(TSpellJinxuan2, function TSpellJinxuan2Act)

	    set TSpellJinxuan3 = CreateTrigger()
	    call DisableTrigger(TSpellJinxuan3)
	    call TriggerRegisterAnyUnitEventBJ( TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellJinxuan3, Condition(function TSpellJinxuan3Con))
	    call TriggerAddAction(TSpellJinxuan3, function TSpellJinxuan3Act)

	    set TSpellJinxuan4 = CreateTrigger()
	    call DisableTrigger(TSpellJinxuan4)
	    call TriggerRegisterAnyUnitEventBJ( TSpellJinxuan3, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellJinxuan4, Condition(function TSpellJinxuan4Con))
	    call TriggerAddAction(TSpellJinxuan4, function TSpellJinxuan4Act)

	    set t = null
	endfunction
endlibrary


