
//! import "LHBase.j"

library_once Huodong requires LHBase 

	globals
		constant boolean isHuodong = false
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动
	*/
	function IsHuodong takes nothing returns boolean
		return isHuodong
	endfunction

endlibrary