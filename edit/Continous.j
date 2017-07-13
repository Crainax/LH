//! import "LHBase.j"

library_once Continous initializer InitContinous requires  LHBase


	globals
		integer array IConDays
		integer array ILastTime
		constant integer TIMESTAMP_START = 1501027200
		86400
		57600
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	     初始化你的登录时间
	*/
	function InitContinousData takes player p returns nothing
		set IConDays[i] = DzAPI_Map_GetStoredInteger(p, "IConDays")
		set ILastTime[i] = DzAPI_Map_GetStoredInteger(p, "ILastTime")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置连续时间
	*/
	function SetDenglu takes player p returns nothing
		local integer current = DzAPI_Map_GetGameStartTime()
		local integer i = GetConvertedPlayerId(p)
		//当天则无影响
		if (current < () ) then
			// body...
		endif
		call DzAPI_Map_StoreInteger( p,  "ILastTime", current )
	endfunction
//---------------------------------------------------------------------------------------------------

	
	private function InitContinous takes nothing returns nothing
		
	endfunction

endlibrary