
//! import "LHBase.j"
library_once ItemBase initializer InitItemBase

globals
	timerdialog TiDiaNecklace
	unit UCrainax
endglobals
//-------------------------------------------------------------------------------
	/*
	    单位的某一格物品栏是否是人装
	*/
	private function UnitHasHumanInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'frhg' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'mlst' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'nspi' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'oli2' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'ofir' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'soul' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'sbok' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'arsc' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'gldo' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'gsou' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'envl' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rugt' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'shdt' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'crdt' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'pspd' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rump' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rump' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'shen' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'stpg' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rde0' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'oflg' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'frgd' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'tbsm' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'tfar' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'drph' /* 
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'oven' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rej4' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'dtsb' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'gobm' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'gvsm' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'pgin' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rej6' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'tels' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'tbak' 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是不可共享的物品类型
	*/
	function IsSharedItem takes item i returns boolean
		return GetItemTypeId(i) == 'fgrg' /*
			*/ or GetItemTypeId(i) == 'hlst' /*
			*/ or GetItemTypeId(i) == 'wshs' /*
			*/ or GetItemTypeId(i) == 'wild' /*
			*/ or GetItemTypeId(i) == 'totw' /*
			*/ or GetItemTypeId(i) == 'sror' /*
			*/ or GetItemTypeId(i) == 'olig' /*
			*/ or GetItemTypeId(i) == 'srtl' /*
			*/ or GetItemTypeId(i) == 'shhn' /*
			*/ or GetItemTypeId(i) == 'flag' /*
			*/ or GetItemTypeId(i) == 'shcw' /*
			*/ or GetItemTypeId(i) == 'shtm' /*
			*/ or GetItemTypeId(i) == 'IXU1' 
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    单位的某一格物品栏是否是聚宝
	*/
	private function UnitHasJubaoInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05P' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05Q' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05R' 
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    只能装备一个人器或者聚宝
	*/
	private function TOnlyOneItemAct takes nothing returns nothing
		local integer i = 1
		local integer count = 0 

		//多个人器的判断
		loop
			exitwhen i > 6
			if(UnitHasHumanInSlot(GetTriggerUnit(),i)) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (count > 1) then
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个人器！")
		endif

		//多个聚宝的判断
		set i = 1
		set count = 0 
		loop
			exitwhen i > 6
			if(UnitHasJubaoInSlot(GetTriggerUnit(),i)) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (count > 1) then
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个1级以上的聚宝！")
		endif


	endfunction

	private function TOnlyOneItemCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))]) and (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄或者镜像获得翅膀才有火焰技能
	*/
	private function TGetWingSpellCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] or GetManipulatingUnit() == udg_U_Zhuansheng_Dantiao[2])
	endfunction
	
	private function TGetWingSpellPickAct takes nothing returns nothing
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitAddAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitAddAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitAddAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitAddAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitAddAbility(GetManipulatingUnit(),'A0CL')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05C') then
			call UnitAddAbility(GetManipulatingUnit(),'A0CU')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05F') then
			call UnitAddAbility(GetManipulatingUnit(),'A0D0')
		endif
	endfunction
	
	private function TGetWingSpellDropAct takes nothing returns nothing
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitRemoveAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0CL')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05C') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0CU')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05F') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0D0')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    删除书本小点BUG
	*/
	private function TBookBUGCon takes nothing returns boolean
		return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
	endfunction

	private function TBookBUGAct takes nothing returns nothing
		call PolledWait(1.0)
		call RemoveItem(GetManipulatedItem())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    Crainax属性与技能的设定
	*/

	function ReflashCrainaxAttr takes nothing returns nothing
		call ModifyHeroStat( bj_HEROSTAT_STR, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[udg_Bo]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) ))))
	    call ModifyHeroStat( bj_HEROSTAT_AGI, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[( udg_Bo + 29 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) )) ))
	    call ModifyHeroStat( bj_HEROSTAT_INT, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[( udg_Bo + 58 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) )) ))
	    call SetUnitAbilityLevelSwapped( 'A0EM', UCrainax, udg_Bo )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    项链的重生
	*/
	private function ReviveNecklace takes nothing returns nothing
	        call PingMinimap( -1658.00, -14973.00, 2.00 )
	        call RemoveUnit(UCrainax)
	        set UCrainax = CreateUnit(Player(10),'Ekgg',-1658.00, -14973.00 , 180)
	        call ReflashCrainaxAttr()
	        call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【消息】|r|cffff9900圣主Crainax的分身|r复活." )
	        call TimerDialogDisplay(TiDiaNecklace,false)
	        call DestroyTimerDialog(TiDiaNecklace)
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	        set TiDiaNecklace = null
	endfunction

	private function ReviveRing takes nothing returns nothing
			local unit u = null
	        call PingMinimap( -10630.00, -8642.00, 2.00 )
	        set u = CreateUnit(Player(10),'Ekgg',-10630.00, -8642.00 , 180)
	        call SetHeroLevel( u, ( GetHeroLevel(u) + 1 ), true )
	        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + "|cFFFF6699千年孤魂|r|cffffcc00弑魂|r复活了。" ) )
	        set u = null
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    死亡掉落
	*/
	function BossDeathDropItem takes nothing returns nothing
		local timer t
	    if ((GetUnitTypeId(GetDyingUnit()) == 'Naka')) then
	        call CreateItem( 'rat9', GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()) )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())) )
	        call TimerStart(CreateTimer(),30,false,function ReviveRing)
	        call PolledWait(0.5)
	        call RemoveUnit(GetDyingUnit())
	    endif
	    if (GetDyingUnit() == UCrainax) then
	        call CreateItem( 'rde3', GetUnitX(UCrainax),GetUnitY(UCrainax) )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(UCrainax),GetUnitY(UCrainax)) )
	        set t = CreateTimer()
	        set TiDiaNecklace = CreateTimerDialogBJ(t,"圣主分身复活")
	        call TimerStart(t,900,false,function ReviveNecklace)
	        call TimerDialogDisplay(TiDiaNecklace,true)
	        set t = null
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitItemBase takes nothing returns nothing
		//人器或者聚宝只能装备一个
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TOnlyOneItemCon))
		call TriggerAddAction(t,function TOnlyOneItemAct)

		//删除书本的小点BUG
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TBookBUGCon))
		call TriggerAddAction(t,function TBookBUGAct)

		//获得翅膀的技能
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function TGetWingSpellCon))
		call TriggerAddAction(t, function TGetWingSpellPickAct)

		//删掉翅膀的技能
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function TGetWingSpellCon))
		call TriggerAddAction(t, function TGetWingSpellDropAct)

		//死亡掉落戒指和项链
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddAction(t, function BossDeathDropItem)
		set UCrainax=CreateUnit(Player(10), 'Ekgg', - 1661.7, - 14985.1, 180.000)
		set t = null

	endfunction

endlibrary

