//!import "LHBase.j"

library_once Sheyan  requires LHBase 
	
//---------------------------------------------------------------------------------------------------
	/*
	    狼的1%伤害
	*/
	function SimulateDamageSheyan takes unit u returns boolean

		if (GetUnitTypeId(u) == 'O000' and BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sheyan))]) then
			call UnitDamageTarget( sheyan, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE) * 0.01, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给目标狼加重生技能
	*/
	function AddLangRevive takes unit u returns nothing
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sheyan))]) then
			call UnitAddAbility(u,'A0G5')
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒初始化
	*/
	function JuexingSheyan2 takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Lang[i])) then
				call AddLangRevive(udg_Lang[i])
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒取消
	*/
	function QJuexingSheyan takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Lang[i])) then
				call UnitRemoveAbility(udg_Lang[i],'A0G5')
			endif
			set i = i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	function InitSheyan takes unit u returns nothing
		set sheyan = u

	endfunction

endlibrary

