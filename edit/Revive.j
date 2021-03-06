
//! import "LHBase.j"
/////! import "Beast.j"
//! import "Lingxue.j"
//! import "Xinglong.j"
library_once Revive initializer InitRevive requires LHBase,Beast,Lingxue,Xinglong
	
//---------------------------------------------------------------------------------------------------
	
function TReviveHeroCon takes nothing returns boolean
    return ((IsUnitIllusionBJ(GetRevivingUnit()) == false) and (GetRevivingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))]))
endfunction

function TReviveHeroAct takes nothing returns nothing
	call ReviveBeast(GetRevivingUnit())
	call AfterReviveLingxue(GetRevivingUnit())
	call AfterReviveXinglong(GetRevivingUnit())
	call AfterReviveHeiyan(GetRevivingUnit())
	set BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))] = false
	if (GetPlayerSlotState(GetOwningPlayer(GetRevivingUnit())) == PLAYER_SLOT_STATE_LEFT) then
		call SetUnitPosition( GetRevivingUnit(), GetRectCenterX(gg_rct_QuitRegion), GetRectCenterY(gg_rct_QuitRegion) )
	    call SetUnitInvulnerable( GetRevivingUnit(), true )
	    call PauseUnitBJ( true, GetRevivingUnit() )
	    call ShowUnitHide(GetRevivingUnit())
	endif
endfunction

//---------------------------------------------------------------------------------------------------

	private function InitRevive takes nothing returns nothing
		local trigger t = CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_HERO_REVIVE_FINISH )
	    call TriggerAddCondition(t, Condition(function TReviveHeroCon))
	    call TriggerAddAction(t, function TReviveHeroAct)
	endfunction
endlibrary