
//! import "LHBase.j"
library_once Revive initializer InitRevive requires LHBase,Beast
	

//---------------------------------------------------------------------------------------------------
	
function TReviveHeroCon takes nothing returns boolean
    return ((IsUnitIllusionBJ(GetRevivingUnit()) == false) and (GetRevivingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))]))
endfunction

function TReviveHeroAct takes nothing returns nothing
	call ReviveBeast(GetRevivingUnit())
	call AfterReviveLingxue(GetRevivingUnit())
endfunction

//---------------------------------------------------------------------------------------------------

	private function InitRevive takes nothing returns nothing
		local trigger t = CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_HERO_REVIVE_FINISH )
	    call TriggerAddCondition(t, Condition(function TReviveHeroCon))
	    call TriggerAddAction(t, function TReviveHeroAct)
	endfunction
endlibrary