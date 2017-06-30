
//! import "LHBase.j"
//! import "Achievement.j"
library_once Huodong requires LHBase,Achievement

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
//---------------------------------------------------------------------------------------------------
	/*
	    限时活动4
	*/
	function IsHuodong4 takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149520960) and ((DzAPI_Map_GetGameStartTime()/10) < 149598720)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动5
	*/
	function IsHuodong5 takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149624640) and ((DzAPI_Map_GetGameStartTime()/10) < 149719680)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    限时活动6:17-26
	*/
	function IsHuodong6 takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149762880) and ((DzAPI_Map_GetGameStartTime()/10) < 149840640)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天魇难度的开启条件
	*/
	function IsTianyanOK takes nothing returns boolean
		return IsAchieveOK(Player(0),325)
	endfunction

endlibrary