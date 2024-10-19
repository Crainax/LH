
#include  "LHBase.j"
#include  "Achievement.j"
library_once Huodong requires LHBase,Achievement

	globals
		integer IKuanghuan = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    限时活动6:12-23
	*/
	function IsHuodong7 takes nothing returns boolean
		//return true
		return ((DzAPI_Map_GetGameStartTime()/10) > 149978880) and ((DzAPI_Map_GetGameStartTime()/10) < 150315840)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    嘉年华活动:
	*/
	function IsJianianhua takes nothing returns boolean
		return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    狂欢模式活动:
	*/
	function IsKuanghuanTime takes nothing returns boolean
		return IKuanghuan == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天魇难度的开启条件
	*/
	function IsTianyanOK takes nothing returns boolean
		return IsAchieveOK(Player(0),325)
	endfunction

endlibrary
