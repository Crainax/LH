

//! import "LHBase.j"
//! import "SpellBase.j"
library_once Arena initializer InitArena requires LHBase,SpellBase

	globals

		constant integer ARENA_MAX_LEVEL = 50

		/*
		    需要注释
		*/
		rect gg_rct_Arena_1
		rect gg_rct_Arena_2
		rect gg_rct_Arena_all
		rect gg_rct_Arena_forbit

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
		private trigger TSpellKiller3
		private trigger TSpellJinxuan1
		private trigger TSpellJinxuan2
		private trigger TSpellJinxuan3
		private trigger TSpellJinxuan4

		/*
		    当前挑战的人的位置
		*/
		private integer currentArena = 0
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
		else
			set currentLevel = 1
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
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
			call BJDebugMsg("删除计时器了~(位置）")
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
			call BJDebugMsg("删除计时器了~")
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
	    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
	endfunction

	private function TSpellZhousiAct takes nothing returns nothing
		local integer i = 1
	    call DisableTrigger( GetTriggeringTrigger() )
	    call IssueImmediateOrder( GetAttackedUnitBJ(), "creepthunderclap" )
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
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 15) == 1))
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

	private function TSpellMeidusha1Con takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 10) == 1) )
	endfunction

	private function TSpellMeidusha1Act takes nothing returns nothing
		local location point = GetUnitLoc(GetAttackedUnitBJ())
		local timer t = CreateTimer()
	    local unit  u = CreateUnit(GetOwningPlayer(GetAttacker()),'h000',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),0)
	    call DisableTrigger( GetTriggeringTrigger() )
	    call UnitApplyTimedLifeBJ( 5.00, 'Arsw',u )
	    call IssuePointOrderLoc( u, "ward", point )
	    call CreateSpellTextTag("阴魂螣蛇！",challenager,0,0,0,2)
	    call RemoveLocation( point )
	    call SetUnitInvulnerable(challenager,TRUE)
	    call TimerStart(t,0.3,true,function TSpellMeidusha1Invu)
	    set u = null
	    set point = null

	    call PolledWait(8.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

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
		call BJDebugMsg("螣蛇数量为"+I2S(count))
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
				call PauseUnitBJ(l_unit)
		    endif
		endloop
	    call DisableTrigger( GetTriggeringTrigger() )
	    call CreateSpellTextTag("石化凝视！",challenager,51,51,51,2)
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	    call PolledWait(7.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

	private function function_name takes nothing returns nothing
		// body...
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    挑战擂台开始Trigger
	*/
	function TArenaStartAct takes nothing returns nothing
		local location point
		local timer t
		local Attract attract

		//符合条件再开始
	    if ((IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true)) then
	        if ((challenager == null)) then
	            if ((currentArena != 9)) then
	            	//开始啦
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。" )
	                set point = GetRectCenter(gg_rct_Arena_2)
	                set t = CreateTimer()
	                if ((currentArena == 0)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Huth', point, 180.00)
	                elseif ((currentArena == 1)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hpb1', point, 180.00)
	                elseif ((currentArena == 2)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hgam', point, 180.00)
	                    call EnableTrigger( TSpellLinger )
	                    call TimerStart(t,2,TRUE,function LingerAssemble)
	                elseif ((currentArena == 3)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hmbr', point, 180.00)
	                    call EnableTrigger( TSpellZhousi )
	                    set attract = Attract.create(challenager,600,0.05,20)
	                    call attract.start()
	                elseif ((currentArena == 4)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Odrt', point, 180.00)
	                    call EnableTrigger( TSpellXuemo1 )
	                    call EnableTrigger( TSpellXuemo2 )
	                elseif ((currentArena == 5)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Ogrh', point, 180.00)
	                    call EnableTrigger( TSpellFuwang )
	                    set attract = Attract.create(challenager,600,0.05,20)
	                    call attract.start()
	                elseif ((currentArena == 6)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hvsh', point, 180.00)
	                    call EnableTrigger( TSpellMeidusha1 )
	                    call EnableTrigger( TSpellMeidusha2 )
	                elseif ((currentArena == 7)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hpb2', point, 180.00)
	                    call EnableTrigger( TSpellKiller1 )
	                    call EnableTrigger( TSpellKiller2 )
	                    call EnableTrigger( TSpellKiller3 )
	                elseif ((currentArena == 8)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hlgr', point, 180.00)
	                    call EnableTrigger( TSpellJinxuan1 )
	                    call EnableTrigger( TSpellJinxuan2 )
	                    call EnableTrigger( TSpellJinxuan3 )
	                    call EnableTrigger( TSpellJinxuan4 )
	                endif

	                //初始化单位
	                call SetUnitInvulnerable( challenager, true )
	                call PauseUnitBJ( true, challenager )
	                call UnitAddAbilityBJ( 'A0ES', challenager )

	                call CreateTextTagLocBJ( I2S(currentLevel) + "级", point, 0, 20.00, 100, 0.00, 0.00, 0 )
	                set textTag_Level = GetLastCreatedTextTag()
	                call RemoveLocation( point )

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
	    
	    set point = null
	    set t = null
	endfunction

	private function TArenaStartCon takes nothing returns boolean
	    return ((GetItemTypeId(GetSoldItem()) == 'I04D') and BuyerFilter(GetBuyingUnit()))
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
			call DisableTrigger( TSpellKiller3 )
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
	    掉落装备
	*/
	function TDieEventConditions takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetDyingUnit()) != true))
	endfunction

	function TDieEventActions takes nothing returns nothing
	   
	    local location point = GetUnitLoc(GetDyingUnit())

	    if ((GetUnitTypeId(GetDyingUnit()) == 'Huth')) then
	        call CreateItemLoc( 'prvt', point )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hpb1')) then
	        call CreateItemLoc( 'cnob', point )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hgam')) then
	        call CreateItemLoc( 'rhth', point )
	        call DestroyTrigger( TSpellLinger )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hmbr')) then
	        call CreateItemLoc( 'hval', point )
	        call DestroyTrigger( TSpellZhousi )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Odrt')) then
	        call CreateItemLoc( 'afac', point )
	        call DestroyTrigger( TSpellXuemo1 )
	        call DestroyTrigger( TSpellXuemo2 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Ogrh')) then
	        call CreateItemLoc( 'pmna', point )
	        call DestroyTrigger( TSpellFuwang )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hvsh')) then
	        call CreateItemLoc( 'evtl', point )
	        call DestroyTrigger( TSpellMeidusha1 )
	        call DestroyTrigger( TSpellMeidusha2 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hpb2')) then
	        call CreateItemLoc( 'bspd', point )
	        call DestroyTrigger( TSpellKiller3 )
	        call DestroyTrigger( TSpellKiller2 )
	        call DestroyTrigger( TSpellKiller1 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hlgr')) then
	        call CreateItemLoc( 'mcou', point )
	        call DestroyTrigger( TSpellJinxuan1 )
	        call DestroyTrigger( TSpellJinxuan2 )
	        call DestroyTrigger( TSpellJinxuan3 )
	        call DestroyTrigger( TSpellJinxuan4 )
	    endif

	    call updateLevel()
	    call RemoveLocation( point )
	    set point = null
	    call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!" )
	    set currentLevel = 1
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
	    set t = null
	endfunction
endlibrary




/*
function Trig______________009Conditions takes nothing returns boolean
    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________009Func002003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and ((GetUnitTypeId(GetFilterUnit()) == 'Hpb2') and (IsUnitIllusionBJ(GetFilterUnit()) == true))))
endfunction

function Trig______________009Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfPlayerMatching(Player(10), Condition(function Trig______________009Func002003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) < 4)) then
        call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 200.00 ) )
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = ( 4 - CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) )
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            set udg_Point = GetUnitLoc(GetAttacker())
            call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
            call UnitApplyTimedLifeBJ( 5.00, 'BHwe', GetLastCreatedUnit() )
            call UnitAddAbilityBJ( 'A0EZ', GetLastCreatedUnit() )
            call IssueTargetOrderById( GetLastCreatedUnit(), 852274, GetAttacker() )
            call RemoveLocation( udg_Point )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
    else
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    call PolledWait(1.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________009 takes nothing returns nothing
    set gg_trg______________009 = CreateTrigger()
    call DisableTrigger(gg_trg______________009)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________009, "杀手技能_009")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________009, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________009, Condition(function Trig______________009Conditions))
    call TriggerAddAction(gg_trg______________009, function Trig______________009Actions)
endfunction

killer1

function Trig______________010Conditions takes nothing returns boolean
    return ((GetTriggerUnit() == challenager) and (IsUnitAliveBJ(GetTriggerUnit()) == true) and (IsUnitIllusionBJ(GetTriggerUnit()) != true))
endfunction

function Trig______________010Func003003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and ((GetUnitTypeId(GetFilterUnit()) == 'Hpb2') and (IsUnitIllusionBJ(GetFilterUnit()) == true))))
endfunction

function Trig______________010Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfPlayerMatching(Player(10), Condition(function Trig______________010Func003003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) > 0)) then
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D, GroupPickRandomUnit(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)))
        call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D)))
        call SetUnitPositionLoc( GetTriggerUnit(), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
        call SetUnitPositionLoc( YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D), udg_Point )
        call RemoveLocation( udg_Point )
        call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    else
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    call PolledWait(5.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________010 takes nothing returns nothing
    set gg_trg______________010 = CreateTrigger()
    call DisableTrigger(gg_trg______________010)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________010, "杀手技能_010")
#endif
    call YDWESyStemAnyUnitDamagedRegistTrigger( gg_trg______________010 )
    call TriggerAddCondition(gg_trg______________010, Condition(function Trig______________010Conditions))
    call TriggerAddAction(gg_trg______________010, function Trig______________010Actions)
endfunction

killer2

function Trig______________011Conditions takes nothing returns boolean
    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 3) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________011Actions takes nothing returns nothing
    call DisableTrigger( GetTriggeringTrigger() )
    call IssueImmediateOrder( challenager, "windwalk" )
    call PolledWait(1.00)
    call IssueTargetOrder( challenager, "attack", udg_Unit_Leitai[1] )
    call PolledWait(7.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________011 takes nothing returns nothing
    set gg_trg______________011 = CreateTrigger()
    call DisableTrigger(gg_trg______________011)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________011, "杀手技能_011")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________011, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________011, Condition(function Trig______________011Conditions))
    call TriggerAddAction(gg_trg______________011, function Trig______________011Actions)
endfunction

killer3

function Trig______________012Conditions takes nothing returns boolean
    return ((GetAttacker() == challenager) and (IsUnitIllusionBJ(GetAttacker()) != true) and (IsUnitAliveBJ(GetAttacker()) == true) and (GetRandomInt(1, 7) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________012Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttackedUnitBJ()))
    call IssuePointOrderLoc( GetAttacker(), "rainoffire", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call PolledWait(7.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________012 takes nothing returns nothing
    set gg_trg______________012 = CreateTrigger()
    call DisableTrigger(gg_trg______________012)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________012, "瑾轩技能_012")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________012, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________012, Condition(function Trig______________012Conditions))
    call TriggerAddAction(gg_trg______________012, function Trig______________012Actions)
endfunction

jinxuan1

function Trig______________013Conditions takes nothing returns boolean
    return ((GetAttackedUnitBJ() == challenager) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 20) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
endfunction

function Trig______________013Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SetUnitManaBJ( GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 200.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
    call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttackedUnitBJ()), udg_Point, bj_UNIT_FACING )
    call UnitApplyTimedLifeBJ( 9.00, 'BHwe', GetLastCreatedUnit() )
    call UnitAddAbilityBJ( 'ANst', GetLastCreatedUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttacker()))
    call IssuePointOrderByIdLoc( GetLastCreatedUnit(), 852593, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( udg_Point )
    call PolledWait(8.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________013 takes nothing returns nothing
    set gg_trg______________013 = CreateTrigger()
    call DisableTrigger(gg_trg______________013)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________013, "瑾轩技能_013")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________013, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________013, Condition(function Trig______________013Conditions))
    call TriggerAddAction(gg_trg______________013, function Trig______________013Actions)
endfunction

jinxuan2

function Trig______________014Conditions takes nothing returns boolean
    return ((IsUnitEnemy(GetTriggerUnit(), Player(10)) == true) and (IsUnitInRange(GetTriggerUnit(), challenager, 600) == true) and (GetUnitStateSwap(UNIT_STATE_MANA, challenager) > 100.00))
endfunction

function Trig______________014Actions takes nothing returns nothing
    call SetUnitManaBJ( challenager, ( GetUnitStateSwap(UNIT_STATE_MANA, challenager) - 100.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    set udg_Point = GetUnitLoc(challenager)
    call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(challenager), udg_Point, bj_UNIT_FACING )
    call UnitApplyTimedLifeBJ( 3.00, 'BHwe', GetLastCreatedUnit() )
    call UnitAddAbilityBJ( 'AHtb', GetLastCreatedUnit() )
    call IssueTargetOrder( GetLastCreatedUnit(), "thunderbolt", GetTriggerUnit() )
    call RemoveLocation( udg_Point )
    call PolledWait(0.10)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________014 takes nothing returns nothing
    set gg_trg______________014 = CreateTrigger()
    call DisableTrigger(gg_trg______________014)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________014, "瑾轩技能_014")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________014, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg______________014, Condition(function Trig______________014Conditions))
    call TriggerAddAction(gg_trg______________014, function Trig______________014Actions)
endfunction

jinxuan3

function Trig______________015Conditions takes nothing returns boolean
    return ((GetTriggerUnit() == challenager) and (IsUnitAliveBJ(GetTriggerUnit()) == true) and (IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetEventDamageSource() == gg_unit_Eevi_0020) and (GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) > 200.00))
endfunction

function Trig______________015Actions takes nothing returns nothing
    call DisableTrigger( GetTriggeringTrigger() )
    call SetUnitManaBJ( GetEventDamageSource(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetEventDamageSource()) - 300.00 ) )
    call PolledWait(2.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________015 takes nothing returns nothing
    set gg_trg______________015 = CreateTrigger()
    call DisableTrigger(gg_trg______________015)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________015, "瑾轩技能_015")
#endif
    call YDWESyStemAnyUnitDamagedRegistTrigger( gg_trg______________015 )
    call TriggerAddCondition(gg_trg______________015, Condition(function Trig______________015Conditions))
    call TriggerAddAction(gg_trg______________015, function Trig______________015Actions)
endfunction

jinxuan4

*/