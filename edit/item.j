
//! import "LHBase.j"
library_once ItemBase initializer InitItemBase

	globals
		// unit array udg_H
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

	/*
	    只能装备一个人器
	*/
	private function TOnlyOneHumanAct takes nothing returns nothing
		local integer i = 1
		local integer xianCount = 0 
		loop
			exitwhen i > 6
			if(UnitHasHumanInSlot(GetTriggerUnit(),i)) then
				set xianCount = xianCount + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (xianCount > 1) then
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备一个人器！")
		endif

	endfunction

	private function TOnlyOneHumanCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))])/*
			*/ and (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
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
		//人器只能装备一个
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TOnlyOneHumanCon))
		call TriggerAddAction(t,function TOnlyOneHumanAct)

		//删除书本的小点BUG
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TBookBUGCon))
		call TriggerAddAction(t,function TBookBUGAct)


		set t = null

	endfunction

endlibrary