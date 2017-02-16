//! import "LHBase.j"
library_once Exercise initializer InitExercise requires LHBase

	globals
		trigger TExerciseForbit
		region array regionAll
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
		禁止进入
	*/	
	private function TExerciseForbitCon takes nothing returns boolean
		return ((GetPlayerController(GetTriggerUnit()) == MAP_CONTROL_USER) and IsEnemy3(GetTriggerUnit(),player(11)) == true)
	endfunction

	private function TExerciseForbitAct takes nothing returns nothing
		if (GetTriggeringRegion() != regionAll[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
			call SetUnitX(GetTriggerUnit(),GetUnitX(gg_unit_haro_0030))
			call SetUnitY(GetTriggerUnit(),GetUnitY(gg_unit_haro_0030))
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit(), 0., 0., "|cFFFF66CC【消息】|r你不能进入其他玩家的房间！")
			return
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化触发
	*/
	private function CreateExerciseTrigger takes integer convertedI returns nothing
		local trigger t = CreateTrigger()

		//禁止进入别人玩家的区域
		call TriggerRegisterEnterRegion(t,regionAll[convertedI])
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitExercise takes nothing returns nothing
		local integer i = 1
		//禁止进入别人的区域
		set TExerciseForbit = CreateTrigger()
		call TriggerAddCondition(TExerciseForbit,Condition(function TExerciseForbitCon))
		call TriggerAddAction(TExerciseForbit,function TExerciseForbitAct)

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call CreateExerciseTrigger(i)
			endif
			set i = i +1
		endloop

	endfunction

endlibrary