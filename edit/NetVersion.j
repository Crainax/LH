/*
    网易平台的功能初始化
    debug模式是网易模式
*/

//! import "LHBase.j"
//! import "Diffculty.j"
//! import "Achievement.j"
library_once Version initializer InitVersion requires LHBase,Diffculty,Achievement
	
	globals
		integer array achieve
		integer array vipCode
		string array heroCountString
		/*
		    成就的页数与目标位数
		*/
		integer array achiPage

		/*
		    计时存档次数
		*/
		key kSaveHeroTimes
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
		return "|cff99ccff需要地图等级达到2级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff需要地图等级达到6级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return "|cff99ccff需要地图等级达到11级才能选取该英雄|r"
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
    			set achieve2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "achieve2"))
    			set vipCode[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "vip")
    			set achiPage[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "page")
    			set heroCountString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "hero")
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r读取数据中.....")
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的类项
	*/
	private function GetAchievePage takes player p returns integer
		return S2I(SubStringBJ(I2S(achiPage[GetConvertedPlayerId(p)]),1,1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的位数
	*/
	private function GetAchieveTarget takes player p returns integer
		return S2I(SubStringBJ(I2S(achiPage[GetConvertedPlayerId(p)]),2,StringLength(achiPage[GetConvertedPlayerId(p)])))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    隐藏密码的判定
	*/
	function TSpeakPassword takes nothing returns nothing
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始第1页成就名
	*/
	function InitPassAchievement takes integer id returns nothing

		if (achiEff[id] != null) then
			call DestroyEffect(achiEff[id])
			set achiEff[id] = null
		endif
		if (GetBit(achieve[id],9) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff008000【万劫录】"+ playerName[id] +"|r")
			set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",u,"war3mapImported\\lunhuitexiao.mdl")
			set achiPage[id] = 19
		elseif (GetBit(achieve[id],8) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff00ff【轮回舰】"+ playerName[id] +"|r")
			set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",u,"war3mapImported\\lunhuitexiao.mdl")
			set achiPage[id] = 18
		elseif (GetBit(achieve[id],7) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff0000【末日车】"+ playerName[id] +"|r")
			set achiPage[id] = 17
		elseif (GetBit(achieve[id],6) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffff6600【地狱使】"+ playerName[id] +"|r")
			set achiPage[id] = 16
		elseif (GetBit(achieve[id],5) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cffffff00【灭炼狱】"+ playerName[id] +"|r")
			set achiPage[id] = 15
		elseif (GetBit(achieve[id],4) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff3366ff【定战争】"+ playerName[id] +"|r")
			set achiPage[id] = 14
		elseif (GetBit(achieve[id],3) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff99cc00【和谐世】"+ playerName[id] +"|r")
			set achiPage[id] = 13
		elseif (GetBit(achieve[id],2) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"【太平源】"+ playerName[id] )
			set achiPage[id] = 12
		elseif (GetBit(achieve[id],1) > 0) then
			call SetPlayerName(GetOwningPlayer(u),"|cff999999【天国音】"+ playerName[id] +"|r")
			set achiPage[id] = 11
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化游戏名
	*/
	function InitAchievementName takes unit u returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(u))
		//计时英雄数
		call CreateAllHeroTimesTimer(GetOwningPlayer(u))
		if (StringLength(achiPage[id]) < 2) then
			set achiPage[id] = 10
			call InitPassAchievement(id)
    		call DzAPI_Map_StoreInteger( GetOwningPlayer(u),  "page", achiPage[id] )
		elseif (GetAchievePage(GetOwningPlayer(u)) == 1)
			call InitPassAchievement(id)
		elseif (GetAchievePage(GetOwningPlayer(u)) == 2)
			call InitSecondAchievement(id)
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
				if (level == 9) then
					if (GetBit(achieve[i],9) == 0) then
						set achieve[i] = achieve[i] + 100000000
						call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\"|cff008000【万劫录】|r\",该成就会显示在游戏大厅内及下次游戏中你的名字前面.")
					endif
				elseif (level == 8) then
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


				if (GetBit(achieve[i],9) > 0) then
    					call DzAPI_Map_Stat_SetStat( ConvertedPlayer(i), "achi", "万劫录" )
				elseif (GetBit(achieve[i],8) > 0) then
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
	    存储VIP进服务器与再次判定
	*/
	function SavePIV takes player p,integer i returns nothing
    	call DzAPI_Map_StoreInteger( p,  "vip", i )
	endfunction

	function IsSavePIV takes player p,integer i returns boolean
		return vipCode[GetConvertedPlayerId(p)] == i
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    自增
	*/
	function IncreaseHeroCount takes player p, integer i returns nothing
		local integer index = GetConvertedPlayerId(p)
		local integer length
		local integer times 
		local string temp 
		if (i<1 or i>31) then
			return
		endif
		if (StringLength(heroCountString[index]) < 62) then
			set heroCountString[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		set length = StringLength(heroCountString[index])
		set times = S2I(SubStringBJ(heroCountString[index],2*i -1,2*i))
		set temp = heroCountString[index]

		set times = IMinBJ(99,times+1)
		set heroCountString[index] = SubStringBJ(temp,1,2*i - 2)
		if (times < 10) then
			set heroCountString[index] = heroCountString[index] + "0" +I2S(times)
		else
			set heroCountString[index] = heroCountString[index] + I2S(times)
		endif
		set heroCountString[index] = heroCountString[index] + SubStringBJ(temp,2*i+1,length)
		set temp = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取某个英雄使用次数
	*/
	function GetSpecifyHeroTimes takes player p,integer heroIndex returns integer
		if (heroIndex>0) then
			return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)],2*heroIndex -1,2*heroIndex))
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    获取当前英雄使用次数
	*/
	function GetHeroTimes takes player p returns integer
		local unit u = udg_H[GetConvertedPlayerId(p)]
		local integer i = GetHeroIndex(GetUnitTypeId(u))
		set u = null
		return GetSpecifyHeroTimes(p,i)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取最高使用的英雄
	*/
	function GetBestHero takes player p returns integer
		local integer max = 0
		local integer maxIndex = 0
		local integer i = 1
		loop 
			exitwhen i > HERO_COUNT
			if ((GetSpecifyHeroTimes(p,i) > max) or (GetSpecifyHeroTimes(p,i) == max and GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)])) == i)) then
				set max = GetSpecifyHeroTimes(p,i)
				set maxIndex = i
			endif
			set i = i +1
		endloop

		return maxIndex
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    打印所有英雄
	*/
	function PrintAllHeroTimes takes player p returns nothing
		local string result = ""
		local integer i = 1
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的所有英雄使用次数如下所示：")
		loop
			exitwhen i > HERO_COUNT
			set result = result + GetIndexHeroColorName(i) + "的使用次数:" + I2S(GetSpecifyHeroTimes(p,i)) + ","
			if (ModuloInteger(i,3) == 0) then
				call DisplayTextToPlayer(p, 0., 0., result)
				set result = ""
			endif
			set i = i +1
		endloop
		set result = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储所有英雄的使用次数
	*/
	private function SaveAllHeroTimes takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = ConvertedPlayer(LoadInteger(LHTable,id,kSaveHeroTimes))
		local integer i = GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)]))
		call IncreaseHeroCount(p,i)
		call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
    	call DzAPI_Map_Stat_SetStat( p, "hero", GetIndexHeroName(i) )
		call PrintAllHeroTimes(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set t = null 
		set p = null
	endfunction

	/*
	    开启定时器，然后自增
	*/
	function CreateAllHeroTimesTimer takes player p returns nothing
		local timer t = CreateTimer()
		call SaveInteger(LHTable,GetHandleId(t),kSaveHeroTimes,GetConvertedPlayerId(p))
		call TimerStart(t,10,false,function SaveAllHeroTimes)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	function InitVersion takes nothing returns nothing
		call CreateUnit(Player(6), 'n01E', 6144.0, - 320.0, 270.000)
	endfunction

endlibrary