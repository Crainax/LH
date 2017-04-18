/*
    网易平台的功能初始化
    debug模式是网易模式
*/

//! import "LHBase.j"
//! import "Diffculty.j"
//! import "Achievement.j"
//! import "Huodong.j"
library_once Version initializer InitVersion requires LHBase,Diffculty,Achievement
	
	globals
		integer array vipCode
		string array heroCountString

		integer array spin
		/*
		    成就的页数与目标位数
		*/

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
	    判断一个玩家是否通关了某一个难度或者以上
	*/
	private function IsPass takes player p,integer nan returns boolean
		local integer i = 9
		loop
			exitwhen i < nan
			if (GetBit(achieve[GetConvertedPlayerId(p)],i) > 0) then
				return true
			endif
			set i = i - 1
		endloop
		return false
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
		return S3(IsHuodong(),"|cff99ccff活动期间双击可以选择该英雄|r","|cff99ccff需要地图等级达到6级才能选取该英雄|r")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return S3(IsHuodong(),"|cff99ccff活动期间通关炼狱或以上难度双击可以选择该英雄|r","|cff99ccff需要地图等级达到11级才能选取该英雄|r")
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
	    彩名皮肤
	*/
	function IsColorSpin takes player p returns boolean
		return spin[GetConvertedPlayerId(p)] > 0
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
		return (DzAPI_Map_GetMapLevel(p) >= 6) or IsHuodong()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁选取条件
	*/
	function GetMengjiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 11) or (IsHuodong() and IsPass(p,5))
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
    			set achieve2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "achieve2")
    			set vipCode[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "vip")
    			set achiPage[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "page")
    			set heroCountString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "hero")
    			set spin[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "spin")
    			call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r读取数据中.....")
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    隐藏密码的判定
	*/
	function TSpeakPassword takes nothing returns nothing
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始旧版本的成就
	*/
	function InitOldAchievement takes integer id returns nothing

		if (GetBit(achieve[id],9) > 0) then
			set achiPage[id] = 19
		elseif (GetBit(achieve[id],8) > 0) then
			set achiPage[id] = 18
		elseif (GetBit(achieve[id],7) > 0) then
			set achiPage[id] = 17
		elseif (GetBit(achieve[id],6) > 0) then
			set achiPage[id] = 16
		elseif (GetBit(achieve[id],5) > 0) then
			set achiPage[id] = 15
		elseif (GetBit(achieve[id],4) > 0) then
			set achiPage[id] = 14
		elseif (GetBit(achieve[id],3) > 0) then
			set achiPage[id] = 13
		elseif (GetBit(achieve[id],2) > 0) then
			set achiPage[id] = 12
		elseif (GetBit(achieve[id],1) > 0) then
			set achiPage[id] = 11
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    存储到服务器,通关
	*/
	function SaveAchievement takes nothing returns nothing

		local integer i = 1
		local integer level = GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r正在保存游戏数据中....请不要马上退出游戏,以免保存失败...")

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				//通关称号
				call GetAchievementAndSave(ConvertedPlayer(i),10 + level)

				//单通称号
				if (renshu == 1 and level != 9) then
					call GetAchievementAndSave(ConvertedPlayer(i),I3(level < 8,217 - level,29))
				endif

				//基地的血
				if (udg_I_Er_diansi[1] == 0) then
					call GetAchievementAndSave(ConvertedPlayer(i),221)
					if (GetUnitState(gg_unit_haro_0030,UNIT_STATE_LIFE) <= 0.25 * GetUnitState(gg_unit_haro_0030,UNIT_STATE_MAX_LIFE)) then
						call GetAchievementAndSave(ConvertedPlayer(i),222)
					endif
				endif

				//活动皮肤
				if (level >= 4 and IsHuodong()) then
    				call DzAPI_Map_StoreInteger( ConvertedPlayer(i),  "spin", 1 )
					call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r恭喜你在活动期间获得永久的英雄七彩皮肤特效！")
				endif
			endif
			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	     击败冥刹后的成就
	*/
	function SaveAchievement2 takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then

				//通关称号,时间
				if (udg_Second[2] < 135) then
					call GetAchievementAndSave(ConvertedPlayer(i),223)
				endif
				if (udg_Second[2] < 120) then
					call GetAchievementAndSave(ConvertedPlayer(i),224)
				endif
				if (udg_Second[2] < 90) then
					call GetAchievementAndSave(ConvertedPlayer(i),225)
				endif
				if (udg_Second[2] < 60) then
					call GetAchievementAndSave(ConvertedPlayer(i),226)
				endif
					
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    转生的成就
	*/
	function SaveAchievement3 takes player p,integer zhuan returns nothing
		if (zhuan >= 20) then
			call GetAchievementAndSave(p,21)
		endif
		if (zhuan >= 50) then
			call GetAchievementAndSave(p,22)
		endif
		if (zhuan >= 100) then
			call GetAchievementAndSave(p,23)
		endif
		if (zhuan >= 150) then
			call GetAchievementAndSave(p,24)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    木材的成就
	*/
	function TGetAchievementLumber takes nothing returns nothing
		call GetAchievementAndSave(GetTriggerPlayer(),25)
		if (GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 50000) then
			call GetAchievementAndSave(GetTriggerPlayer(),26)
		endif
		if (GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 100000) then
			call GetAchievementAndSave(GetTriggerPlayer(),27)
		endif
		if (GetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER) > 200000) then
			call GetAchievementAndSave(GetTriggerPlayer(),28)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		PIV
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
	    获取最低使用次数英雄的次数的英雄（能使用的所有英雄）
	*/
	function GetLowerHeroCount takes player p,integer limit returns boolean
		local integer count = 0
		local integer i = 1
		loop 
			exitwhen i > HERO_COUNT
			if (GetSpecifyHeroTimes(p,i) >= limit) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count >= 12
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
	    英雄次数的成就
	*/
	function SaveAchievement4 takes player p returns nothing
		if (GetLowerHeroCount(p,1)) then
			call GetAchievementAndSave(p,217)
		endif
		if (GetLowerHeroCount(p,5)) then
			call GetAchievementAndSave(p,218)
		endif
		if (GetLowerHeroCount(p,10)) then
			call GetAchievementAndSave(p,219)
		endif
		if (GetLowerHeroCount(p,30)) then
			call GetAchievementAndSave(p,220)
		endif
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
		call SaveAchievement4(p)
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
	    初始化游戏名
	*/
	function InitAchievementName takes unit u returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(u))
		//计时英雄数
		call CreateAllHeroTimesTimer(GetOwningPlayer(u))
		if (StringLength(I2S(achiPage[id])) < 2) then
			set achiPage[id] = 10
			call InitOldAchievement(id)
			call SaveAchievePointer(GetOwningPlayer(u))
		endif
		call SetAchievement(GetOwningPlayer(u),achiPage[id])
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	function InitVersion takes nothing returns nothing
		local trigger t = CreateTrigger()
		local integer i = 1

		call CreateUnit(Player(6), 'n01E', 6144.0, - 320.0, 270.000)
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
			    call TriggerRegisterPlayerStateEvent( t, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 20000.00 )
			endif
			set i = i +1
		endloop
		call TriggerAddAction(t, function TGetAchievementLumber)
		set t = null
	endfunction

endlibrary