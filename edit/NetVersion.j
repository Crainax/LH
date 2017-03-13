/*
    网易平台的功能初始化
    debug模式是网易模式
*/
library_once Version   
	
//---------------------------------------------------------------------------------------------------
	/*
	    获取平台的金币
	*/
	function GetPlatformLevelGold takes player p returns nothing
		
		if (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 20) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,10000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 15) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,8000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 10) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,6000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 5) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,4000)
		endif 

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎的提示文本
	*/
	function GetHeiyanHint takes nothing returns string
		return "|cff99ccff需要平台等级达到5级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff需要平台等级达到10级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    提示当前平台等级
	*/
	function PrintCurrentPlatformLevel takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r当前你的平台地图等级为：" + DzAPI_Map_GetMapLevel(p) + "！")
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