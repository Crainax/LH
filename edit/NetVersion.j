/*
    网易平台的功能初始化
    debug模式是网易模式
*/

//! import "LHBase.j"
//! import "Diffculty.j"
library_once Version initializer InitVersion requires LHBase,Diffculty
	
	globals
		integer array achieve
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取平台的金币
	*/
	function GetPlatformLevelGold takes player p returns nothing
		
		if (DzAPI_Map_GetMapLevel(p) >= 20) then
			call AdjustPlayerStateBJ( 8000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 15) then
			call AdjustPlayerStateBJ( 6000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 10) then
			call AdjustPlayerStateBJ( 4000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 5) then
			call AdjustPlayerStateBJ( 2000, p , PLAYER_STATE_RESOURCE_GOLD )
		endif 

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎的提示文本
	*/
	function GetHeiyanHint takes nothing returns string
		return "|cff99ccff需要平台等级达到2级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff需要平台等级达到6级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return "|cff99ccff需要平台等级达到11级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    提示当前平台等级
	*/
	function PrintCurrentPlatformLevel takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r当前你的平台地图等级为：" + I2S(DzAPI_Map_GetMapLevel(p)) + "！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎选取条件
	*/
	function GetHeiyanSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸选取条件
	*/
	function GetHuanyiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 6)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁选取条件
	*/
	function GetMengjiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 11)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出幻逸的密码
	*/
	function PrintHuanyiPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出梦霁的密码
	*/
	function PrintMengjiPassword takes nothing returns nothing

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化每位玩家的成就
	*/
	function InitAllAchievement takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
    			set achieve[i] = S2I(DzAPI_Map_GetStoredString(ConvertedPlayer(i), "achieve"))
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r读取数据中.....")
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取位数字,1是个位
	*/
	private function GetBit takes integer num,integer bit returns integer
		local string s = I2S(num)
		local integer length = StringLength(s)
		if (length < bit) then
			return 0
		endif

		return S2I(SubStringBJ(s,length - bit + 1,length - bit + 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    隐藏密码的判定
	*/
	function TSpeakPassword takes nothing returns nothing
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化游戏名
	*/
	function InitAchievementName takes unit u returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(u))
		if (GetBit(achieve[id],8) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff00ff【轮回舰】|r"+GetPlayerName(GetOwningPlayer(u)))
			call AddSpecialEffectTargetUnitBJ("origin",u,"war3mapImported\\lunhuitexiao.mdl")
		elseif (GetBit(achieve[id],7) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff0000【末日车】|r"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],6) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff6600【地狱使】|r"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],5) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffffff00【灭炼狱】|r"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],4) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff3366ff【定战争】|r"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],3) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff99cc00【和谐世】|r"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],2) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"【太平源】"+GetPlayerName(GetOwningPlayer(u)))
		elseif (GetBit(achieve[id],1) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff999999【天国音】|r"+GetPlayerName(GetOwningPlayer(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储到服务器
	*/
	function SaveAchievement takes nothing returns nothing

		local integer i = 1
		local integer level = GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r正在保存游戏数据中....请不要马上退出游戏,以免保存失败...")

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				if (level == 8) then
					if (GetBit(achieve[i],8) == 0) then
						set achieve[i] = achieve[i] + 10000000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cffff00ff【轮回舰】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 7) then
					if (GetBit(achieve[i],7) == 0) then
						set achieve[i] = achieve[i] + 1000000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cffff0000【末日车】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 6) then
					if (GetBit(achieve[i],6) == 0) then
						set achieve[i] = achieve[i] + 100000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cffff6600【地狱使】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 5) then
					if (GetBit(achieve[i],5) == 0) then
						set achieve[i] = achieve[i] + 10000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cffffff00【灭炼狱】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 4) then
					if (GetBit(achieve[i],4) == 0) then
						set achieve[i] = achieve[i] + 1000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cff3366ff【定战争】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 3) then
					if (GetBit(achieve[i],3) == 0) then
						set achieve[i] = achieve[i] + 100
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cff99cc00【和谐世】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 2) then
					if (GetBit(achieve[i],2) == 0) then
						set achieve[i] = achieve[i] + 10
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"【太平源】\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 1) then
					if (GetBit(achieve[i],1) == 0) then
						set achieve[i] = achieve[i] + 1
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cff999999【天国音】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				endif
				//存档
    			call DzAPI_Map_StoreString( ConvertedPlayer(i),  "achieve", I2S(achieve[i]) )


				if (GetBit(achieve[i],8) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "轮回舰" )
				elseif (GetBit(achieve[i],7) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "末日车" )
				elseif (GetBit(achieve[i],6) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "地狱使" )
				elseif (GetBit(achieve[i],5) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "灭炼狱" )
				elseif (GetBit(achieve[i],4) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "定战争" )
				elseif (GetBit(achieve[i],3) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "和谐世" )
				elseif (GetBit(achieve[i],2) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "太平源" )
				elseif (GetBit(achieve[i],1) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "天国音" )
				endif

			endif
			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	function InitVersion takes nothing returns nothing
		call CreateUnit(Player(6), 'n01E', 6144.0, - 320.0, 270.000)
	endfunction

endlibrary