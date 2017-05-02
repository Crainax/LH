
//! import "LHBase.j"

library_once Huodong requires LHBase 

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动
	*/
	function IsHuodong takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149270400) and ((DzAPI_Map_GetGameStartTime()/10) < 149356800)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    限时活动2
	*/
	function IsHuodong2 takes nothing returns boolean
		//return true
		return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    限时活动3
	*/
	function IsHuodong3 takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149356800) and ((DzAPI_Map_GetGameStartTime()/10) < 149408640)
	endfunction

endlibrary