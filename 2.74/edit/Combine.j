
//! import "LHBase.j"
/////! import "Beast.j"
/*
    合成物品
*/
library_once Combine initializer InitCombine requires LHBase,Beast
	
	private function TCombineAllCon takes nothing returns boolean
		return (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
	endfunction
	
	private function TCombineAllAct takes nothing returns nothing
		call CombineBeast(GetManipulatingUnit())
	endfunction

//---------------------------------------------------------------------------------------------------
	private function InitCombine takes nothing returns nothing
		
	    local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	    call TriggerAddCondition(t, Condition(function TCombineAllCon))
	    call TriggerAddAction(t, function TCombineAllAct)

	    set t = null
	endfunction

endlibrary

