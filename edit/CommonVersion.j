/*
    其他平台的提示文本
*/
library_once Version  
	
	globals
		boolean 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎的提示文本
	*/
	function GetHeiyanHint takes nothing returns nothing
		return "|cff00ccff该英雄是隐藏英雄，获取密码请加群148199145|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff00ccff该英雄是隐藏英雄，多人通关地狱及以上的难度后在结尾获取密码|n或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎选取条件
	*/
	function GetHeiyanSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 5)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸选取条件
	*/
	function GetHuanyiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 10)
	endfunction
//---------------------------------------------------------------------------------------------------


endlibrary