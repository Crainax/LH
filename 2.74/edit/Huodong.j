
//! import "LHBase.j"

library_once Huodong initializer InitHuodong requires LHBase 

	globals
		constant boolean isHuodong = true
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动
	*/
	function IsHuodong takes nothing returns boolean
		return isHuodong
	endfunction
	
endlibrary