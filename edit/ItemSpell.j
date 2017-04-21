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
	/*
	    点金
	*/
	private function Dianjin takes nothing returns nothing
		local integer i = GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	    if ((RectContainsUnit(gg_rct______________084, GetSpellTargetUnit()) == true)) then
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【提示】|r不能对炼狱的怪使用。" )
	        return
	    endif
	    if (IsLoyalUnit(GetSpellTargetUnit())) then
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【提示】|r不能对忠诚单位使用。" )
	        return
	    endif
	    if (i >= GetUnitLevel(GetSpellTargetUnit())) then
	        call SetUnitLifeBJ( GetSpellTargetUnit(), 5.00 )
	        call UnitDamageTarget( GetTriggerUnit(), GetSpellTargetUnit(), GetUnitState(GetSpellTargetUnit(),UNIT_STATE_MAX_LIFE)*10, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
	        call AdjustPlayerStateBJ( ( GetHeroLevel(GetTriggerUnit()) * 100 ), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit())) )
	    	call CreateSpellTextTag("+" + I2S(( GetHeroLevel(GetTriggerUnit()) * 100 )),GetSpellTargetUnit(),100,100,0,2)
	    else
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【提示】|r你的英雄需要" + ( I2S(GetUnitLevel(GetSpellTargetUnit())) + "级才能将该单位直接变成金币。" ) ) )
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    物品技能
	*/
	private function ItemSpellJudge takes nothing returns nothing
		//转移物品
		if (TransferItemCon()) then
			call TransferItemAct()
		//点金
		elseif(GetSpellAbilityId() == 'A073') then
			call Dianjin()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitItemSpell takes nothing returns nothing
		//物品技能触发
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
		call TriggerAddAction(t, function ItemSpellJudge)
		set t = null
	endfunction

endlibrary