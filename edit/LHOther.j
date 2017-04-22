//! import "LHBase.j"

library_once LHOther initializer InitLHOther requires LHBase 
	
	globals
		
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    物品叠加
	*/
	function TOverlayItemAct takes nothing returns boolean
	    return ((GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED))
	endfunction

	function TOverlayItemCon takes nothing returns nothing
	    local integer i = 1
	    loop
	        exitwhen i > 6
	        if ((GetManipulatedItem() != UnitItemInSlotBJ(GetTriggerUnit(), i)) and (GetItemTypeId(GetManipulatedItem()) == GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), i)))) then
	            call SetItemCharges( UnitItemInSlotBJ(GetTriggerUnit(), i), ( GetItemCharges(UnitItemInSlotBJ(GetTriggerUnit(), i)) + GetItemCharges(GetManipulatedItem()) ) )
	            call RemoveItem( GetManipulatedItem() )
	        else
	        endif
	        set i = i + 1
	    endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    不能相互攻击
	*/
	private function TAttackAllyCon takes nothing returns boolean
		return ((GetAttacker() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))]) and (GetAttackedUnitBJ() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]))
	endfunction
	
	private function TAttackAllyAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(),"stop")
			call DisplayTimedTextToForce( GetPlayersAll(), 20, "|cFFFF66CC【提示】|r有人企图攻击自己的英雄队友，被伟大的Crainax制止了。" )
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitLHOther takes nothing returns nothing
		//物品叠加
	    local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	    call TriggerAddCondition(t, Condition(function TOverlayItemAct))
	    call TriggerAddAction(t, function TOverlayItemCon)

	    //队友将不能互相攻击
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function TAttackAllyCon))
		call TriggerAddAction(t, function TAttackAllyAct)


	    set t = null
	endfunction

endlibrary

