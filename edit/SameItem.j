//! import "LHBase.j"

library_once SameItem initializer InitSameItem requires LHBase 



//-------------------------------------------------------------------------------
	/*
	    单位的某一格物品栏是否是人装
	*/
	private function UnitHasHumanInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u,slot)) ==    'frhg' /*
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
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'tbak' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05Y' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05Z' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I060' 
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
			*/ or GetItemTypeId(i) == 'IXU1' /*
			*/ or GetItemTypeId(i) == 'I049' /*
			*/ or GetItemTypeId(i) == 'I04A' /*
			*/ or GetItemTypeId(i) == 'I06N' 
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
	    单位的某一格物品栏是否是项链
	*/
	private function UnitHasXianglianInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'rde3' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'ssil' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I04Y' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'I05T' 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    只能同时装备一种装备
	*/
	private function OnlyOneZhuangbei takes integer itemID returns nothing
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if(GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(),i)) == itemID) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (count > 1) then
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个"+GetItemName(GetManipulatedItem())+"！")
		endif
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
			call PolledWait(0.1)
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个人器！")
			return
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
			return

		endif

		//多个项链的判断
		set i = 1
		set count = 0 
		loop
			exitwhen i > 6
			if(UnitHasXianglianInSlot(GetTriggerUnit(),i)) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (count > 1) then
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个项链！")
			return

		endif

		call OnlyOneZhuangbei('ratc')
		call OnlyOneZhuangbei('I04L')
		//call OnlyOneZhuangbei('rat6')

	endfunction


	private function TOnlyOneItemCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))]) and (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitSameItem takes nothing returns nothing
		//人器或者聚宝只能装备一个
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TOnlyOneItemCon))
		call TriggerAddAction(t,function TOnlyOneItemAct)

		set t = null
	endfunction
endlibrary