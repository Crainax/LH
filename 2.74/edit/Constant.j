/*
    常量
*/
library_once Constant  
	
	globals
		string diffculty = ""

		constant boolean isHuodong = true
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前版本
	*/
	function GetVersion takes nothing returns string
		return "2.74"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    限时活动
	*/
	function IsHuodong takes nothing returns boolean
		return isHuodong
	endfunction
//---------------------------------------------------------------------------------------------------


endlibrary