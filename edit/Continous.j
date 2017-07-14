//! import "LHBase.j"

library_once Continous initializer InitContinous requires  LHBase


	globals
		integer array IConDays
		integer array ILastTime
		constant integer TIMESTAMP_START = 1500998400
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取连续时间
	*/
	function GetContinousDay takes player p returns integer
		if (DzAPI_Map_GetGameStartTime() <= ILastTime[GetConvertedPlayerId(p)]) then
			return 1
		endif
		return (DzAPI_Map_GetGameStartTime() - ILastTime[GetConvertedPlayerId(p)])/86400
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前时间的0点
	*/
	private function GetCurrentStartTime takes nothing returns integer
		return TIMESTAMP_START + ((DzAPI_Map_GetGameStartTime() - ILastTime[GetConvertedPlayerId(p)])/86400)*86400
	endfunction
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
	    保存登录状态
	*/
	function SaveLoginState takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "IConDays", IConDays[GetConvertedPlayerId(p)] )
		call DzAPI_Map_StoreInteger( p,  "ILastTime", ILastTime[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置连续时间
	*/
	function SetDenglu takes player p returns nothing
		//活动还没开始
		if (ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START) then
			set ILastTime[GetConvertedPlayerId(p)] = TIMESTAMP_START
			set ConDays[GetConvertedPlayerId(p)] = 1
			call SaveLoginState()
		endif
		if (current < () ) then
			// body...
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	
	private function InitContinous takes nothing returns nothing
		
	endfunction

endlibrary