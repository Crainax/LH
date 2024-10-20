
#include  "edit/LHBase.j"
#include  "edit/Hundun.j"
///#include  "edit/Beast.j"
/*
    合成物品
*/
library_once Combine initializer InitCombine requires LHBase,Beast,Hundun

	private function TCombineAllCon takes nothing returns boolean
		return (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
	endfunction

	private function TCombineAllAct takes nothing returns nothing
		call CombineBeast(GetManipulatingUnit())
		call CombineJiaoyue(GetManipulatingUnit())
	endfunction

	private function TCombineBuyAllCon takes nothing returns boolean
		return BuyerFilter(GetBuyingUnit())
	endfunction

	private function TCombineBuyAllAct takes nothing returns nothing
		call CombineHundunyeai()
		call CombineHundunAll()
	endfunction

//---------------------------------------------------------------------------------------------------
	private function InitCombine takes nothing returns nothing

	    local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	    call TriggerAddCondition(t, Condition(function TCombineAllCon))
	    call TriggerAddAction(t, function TCombineAllAct)

	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddCondition(t, Condition(function TCombineBuyAllCon))
	    call TriggerAddAction(t, function TCombineBuyAllAct)

	    set t = null
	endfunction

endlibrary

