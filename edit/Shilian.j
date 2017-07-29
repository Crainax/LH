//! import "LHBase.j"

/*
    传承试练
*/
library_once Shilian initializer InitShilian requires LHBase

	
	globals
		unit UShilian = null

		boolean array BEscOnce
		boolean array BEscTwice
		boolean array BEscThird
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    双击Esc事件
	*/
	private function TDoubleEscAct takes nothing returns nothing
		local integer id = GetConvertedPlayerId(GetTriggerPlayer())
		if (BEscOnce[id]) then
			set BEscOnce[id] = false
		else
			call PolledWait(0.1)
			set BEscOnce[id]= true
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitShilian takes nothing returns nothing
		
		local trigger t = CreateTrigger()

		set UShilian = null

		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddAction(t, function TDoubleEscAct)

		set t = null

	endfunction

endlibrary