//! import "LHBase.j"
/*
    基地有关
*/
library_once CenterBase initializer InitCenterBase requires LHBase 
	
	private function TAttackCenterBaseCon takes nothing returns boolean
		return ((IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == true) and (GetOwningPlayer(GetAttackedUnitBJ()) == Player(6)) and (IsUnitAlly(GetAttacker(), Player(6)) == true))
	endfunction
	
	private function TAttackCenterBaseAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(),"stop")
			call UnitDamageTarget( GetAttacker(), GetAttacker(), GetUnitState(GetAttacker(),UNIT_STATE_MAX_LIFE)*10, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			 call DisplayTimedTextToForce( GetPlayersAll(), 30, "|cFFFF66CC【提示】|r有人企图攻打自己的基地，被伟大的Crainax处死了。" )
	endfunction

	private function InitCenterBase takes nothing returns nothing

		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function TAttackCenterBaseCon))
		call TriggerAddAction(t, function TAttackCenterBaseAct)

		set t = null
	endfunction

endlibrary