
//! import "LHBase.j"
library_once ItemBase initializer InitItemBase


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
	    英雄获得翅膀才有火焰技能
	*/
	private function TGetWingSpellCon takes nothing returns boolean
		return GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))]
	endfunction
	
	private function TGetWingSpellPickAct takes nothing returns nothing
		call BJDebugMsg("获得翅膀的技能")
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitAddAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitAddAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitAddAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitAddAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitAddAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05C') then
			call UnitAddAbility(GetManipulatingUnit(),'A0CU')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05F') then
			call UnitAddAbility(GetManipulatingUnit(),'A0D0')
		endif
	endfunction
	
	private function TGetWingSpellDropAct takes nothing returns nothing
		call BJDebugMsg("s翅膀的技能")
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitRemoveAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitRemoveAbility(GetManipulatingUnit(),'Apxf')
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
		set t = null

	endfunction

endlibrary