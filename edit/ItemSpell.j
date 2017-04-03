//! import "LHBase.j"
/*
    物品技能
*/
library_once ItemSpell initializer InitItemSpell requires LHBase 
	
	/*
	    转移物品
	*/
	private function TransferItemCon takes nothing returns boolean
		return (GetSpellAbilityId() == 'A0GT') and (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))] != udg_U_Zhuansheng_Dantiao[1])
	endfunction

	private function TransferItemAct takes nothing returns nothing
		call UnitAddItem( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))],GetSpellTargetItem())
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitItemSpell takes nothing returns nothing
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
		call TriggerAddCondition(t, Condition(function TransferItemCon))
		call TriggerAddAction(t, function TransferItemAct)
		set t = null
	endfunction

endlibrary