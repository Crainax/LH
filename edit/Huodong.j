
//! import "LHBase.j"

library_once Huodong requires LHBase 

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动
	*/
	function IsHuodong takes nothing returns boolean
		return ((DzAPI_Map_GetGameStartTime()/10) > 149270400) and ((DzAPI_Map_GetGameStartTime()/10) < 149330880)
	endfunction

endlibrary