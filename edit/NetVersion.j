#ifndef VersionIncluded
#define VersionIncluded

/*
    网易平台的功能初始化
    debug模式是网易模式
*/

#include  "edit/LHBase.j"
#include  "edit/Diffculty.j"
#include  "edit/Achievement.j"
#include  "edit/Huodong.j"
#include  "edit/Continous.j"
#include  "edit/Jizi.j"
#include  "edit/Qixi.j"
#include  "edit/Fanzhuan.j"

library_once Version initializer InitVersion requires LHBase,Diffculty,Achievement,Continous,Qixi,Fanzhuan//,Jizi

	globals


		//集字
		string array SJizi

		unit UChengjiu = null

		integer array vipCode
		/*
		    击败冥刹多少次
		*/
		integer array mingcha
		/*
		    玩家通关次数
		*/
		integer array passTimes
		/*
		    抓宠物次数
		*/
		integer array petTimes
		/*
		    计时存档次数
		*/
		key kSaveHeroTimes
		/*
		    通关次数
		*/
		/*integer array pass1
		integer array pass2
		integer array pass3
		integer array pass4
		integer array pass5
		integer array pass6
		integer array pass7
		integer array pass8
		integer array pass9*/

		/*
		    死亡次数
		*/
		integer array deathCount
		/*
		    杀敌数
		*/
		integer array killCount
		/*
		    基地是否没受伤过
		*/
		boolean BBaseDamage = false
		/*
		    巨能统计
		*/
		integer JunengCount = 0
		/*
		    带新统计
		*/
		integer array Idaixin
		boolean BJiulun = false
		boolean BHaojie = false

		//杀擂台十的英雄统计
		integer array Ileishi
		//DIY名字
		string array SDIY

		//没被碰到
		boolean BShengming = false


		//签到指数
		//integer array IQiandao2

		//总数不存在20个
		boolean BZongshu = false

		//箱子
		string array SBoxWord

		//不说话的成就
		boolean BSlince = false

	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    给所有玩家一个成就
	*/
	function SaveAllPlayerAchievement takes integer id returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call GetAchievementAndSave(ConvertedPlayer(i),id)
			endif
			set i = i +1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取平台的金币
	*/
	function GetPlatformLevelGold takes player p returns nothing

		if (DzAPI_Map_GetMapLevel(p) >= 20) then
			call AdjustPlayerStateBJ( 8000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 15) then
			call AdjustPlayerStateBJ( 6000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 10 or true) then
			call AdjustPlayerStateBJ( 4000, p , PLAYER_STATE_RESOURCE_GOLD )
		elseif (DzAPI_Map_GetMapLevel(p) >= 5) then
			call AdjustPlayerStateBJ( 2000, p , PLAYER_STATE_RESOURCE_GOLD )
		endif

	endfunction
//-----------------------------------------------------------------1---------------------------------
	/*
	    判断一个玩家是否通关了某一个难度或者以上
	*/
	private function IsPass takes player p,integer nan returns boolean
		local integer i = 9
		loop
			exitwhen i < nan
			if (GetDigitAt(achieve[GetConvertedPlayerId(p)],i) > 0) then
				return true
			endif
			set i = i - 1
		endloop
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    激活所有皮肤(空)
	*/
	function ActivateAllSpin takes player p returns nothing
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff需要地图等级达到2级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return "|cff99ccff需要地图等级达到6级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌的提示文本
	*/
	function GetCanglingHint takes nothing returns string
		return "|cff99ccff需要地图等级达到8级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧的提示文本
	*/
	function GetXinglongHint takes nothing returns string
		return "|cff99ccff需要地图等级达到11级才能选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    霄霆的提示文本
	*/
	function GetXiaotingHint takes nothing returns string
		return "|cff99ccff考虑到操作对新手可能不友好,通关炼狱难度后证明自己的实力即可选取|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    提示当前平台等级
	*/
	function PrintCurrentPlatformLevel takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r当前你的平台地图等级为：" + I2S(DzAPI_Map_GetMapLevel(p)) + "！")
		// call QixiHuodong(p)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    彩名皮肤
	*/
	function IsColorSpin takes player p returns boolean
		return (GetDigitAt(spin[GetConvertedPlayerId(p)],1) > 0)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸选取条件
	*/
	function GetHuanyiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁选取条件
	*/
	function GetMengjiSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 6)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌选取条件
	*/
	function GetCanglingSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 8)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧选取条件
	*/
	function GetXinglongSelectedCon takes player p returns boolean
		return (DzAPI_Map_GetMapLevel(p) >= 11)// or GetPlayerWordCount(p) >= 8
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    霄霆选取条件
	*/
	function GetXiaotingSelectedCon takes player p returns boolean
		return IsPass(p,5)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出密码
	*/
	function PrintMengjiPassword takes nothing returns nothing
	endfunction
	function PrintCanglingPassword takes nothing returns nothing
	endfunction
	function PrintXinglongPassword takes nothing returns nothing
	endfunction
	function PrintXiaotingPassword takes nothing returns nothing
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
    			set achieve3[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "achieve3")
    			set achieve4[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "achieve4")
    			set vipCode[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "vip")
    			set achiPage[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "page")
    			set heroCountString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "hero")
    			set spin[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "spin")
    			set diyu[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "defense")
    			set mingcha[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "mingcha")
    			/*set passTimes[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass")
    			set petTimes[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pet")
    			set pass1[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass1")
    			set pass2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass2")
    			set pass3[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass3")
    			set pass4[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass4")
    			set pass5[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass5")
    			set pass6[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass6")
    			set pass7[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass7")
    			set pass8[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass8")
    			set pass9[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "pass9")*/
    			set Idaixin[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "daixin")
    			set Ileishi[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "leishi")
    			set SDIY[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "diy")
    			set Greward[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "Greward")
    			set Greward2[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "Greward2")
    			set SJizi[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "SJizi")
    			set IConDays[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "IConDays")
    			set ILastTime[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "ILastTime")
    			//签到指数
    			//set IQiandao2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "IQiandao2")
    			set spin2[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "spin2")
    			set spin3[i] = DzAPI_Map_GetStoredInteger(ConvertedPlayer(i), "spin3")
    			set easyCString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "easyCString")
    			set middleCString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "middleCString")
    			set hardCString[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "hardCString")
    			set SBoxWord[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "SBoxWord")
    			set SFanzhaun[i] = DzAPI_Map_GetStoredString(ConvertedPlayer(i), "SFanzhaun")

    			//全局变量
    			set IKuanghuan = S2I(DzAPI_Map_GetMapConfig("kh"))
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

		if (GetDigitAt(achieve[id],9) > 0) then
			set achiPage[id] = 19
		elseif (GetDigitAt(achieve[id],8) > 0) then
			set achiPage[id] = 18
		elseif (GetDigitAt(achieve[id],7) > 0) then
			set achiPage[id] = 17
		elseif (GetDigitAt(achieve[id],6) > 0) then
			set achiPage[id] = 16
		elseif (GetDigitAt(achieve[id],5) > 0) then
			set achiPage[id] = 15
		elseif (GetDigitAt(achieve[id],4) > 0) then
			set achiPage[id] = 14
		elseif (GetDigitAt(achieve[id],3) > 0) then
			set achiPage[id] = 13
		elseif (GetDigitAt(achieve[id],2) > 0) then
			set achiPage[id] = 12
		elseif (GetDigitAt(achieve[id],1) > 0) then
			set achiPage[id] = 11
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    统计总死亡次数
	*/
	private function GetTotalDeathCount takes nothing returns integer
		local integer i = 1
		local integer result = 0
		loop
			exitwhen i > 6
			set result = result + deathCount[i]
			set i = i +1
		endloop
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    统计带新人数并保存
	*/
	function SaveDaixin takes integer index returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and (index != i) and (DzAPI_Map_GetMapLevel(ConvertedPlayer(i))<= 5)) then
				set Idaixin[index] = Idaixin[index] + 1
			endif
			set i = i +1
		endloop
		if (Idaixin[index] >= 100) then
			call GetAchievementAndSave(ConvertedPlayer(index),324)
		else
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., GetAchievementName(324)+"|r"+I2S(Idaixin[index])+"/100.")
	    	call DzAPI_Map_StoreInteger( ConvertedPlayer(index),  "daixin", Idaixin[index] )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    递增通关次数/恶魔反转
	*/
	function IncreaseYanmieFanzhuan takes player p returns nothing
		local integer i = GetConvertedPlayerId(p)
		if (diyu[i]/100000 < 5) then
			set diyu[i] = diyu[i] + 100000
			call DzAPI_Map_StoreInteger( ConvertedPlayer(i),  "defense", diyu[i] )
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r湮灭技能第二形态进度:"+I2S(diyu[i]/100000)+"/5")
		endif
		if (diyu[i]/100000 >= 5) then
			call SetFanzhuanOK(p,2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储到服务器,通关
	*/
	function SaveAchievement takes nothing returns nothing

		local integer i = 1
		local integer level = GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r游戏数据正在拼命保存中... 请稍等10秒，以免您的心血付诸东流哦！")

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				//通关称号
				call GetAchievementAndSave(ConvertedPlayer(i),I3(level == 9,325,10 + level))

				if (IsTianyan) then //天魇通关
					call GetAchievementAndSave(ConvertedPlayer(i),42)
				endif

				//单通称号
				if (renshu == 1 and level != 9) then
					call GetAchievementAndSave(ConvertedPlayer(i),I3(level < 8,217 - level,29))
				endif

				//玄雪末日权杖
				if (renshu == 1 and udg_H[i] == xuanxue and level >= 4) then
					call SetXuanxue1SpinOK(ConvertedPlayer(i))
				endif

				if (level >= 4) then
					call IncreaseYanmieFanzhuan(ConvertedPlayer(i))
				endif

				//基地的血
				if (udg_I_Er_diansi[1] == 0) then
					call GetAchievementAndSave(ConvertedPlayer(i),221)
					if (GetUnitState(gg_unit_haro_0030,UNIT_STATE_LIFE) <= (0.25 * GetUnitState(gg_unit_haro_0030,UNIT_STATE_MAX_LIFE))) then
						call GetAchievementAndSave(ConvertedPlayer(i),222)
					endif
				endif

				if not(BBaseDamage) then
					call GetAchievementAndSave(ConvertedPlayer(i),320)
				endif

				if (GetTotalDeathCount() < 1) then
					call GetAchievementAndSave(ConvertedPlayer(i),310)
				endif

				call SaveDaixin(i)

				if not(BJiulun) then
					call GetAchievementAndSave(ConvertedPlayer(i),323)
				endif

				if not(BHaojie) then
					call GetAchievementAndSave(ConvertedPlayer(i),327)
				endif

				if not (BSlince) then
					call GetAchievementAndSave(ConvertedPlayer(i),416)
				endif

				if not(BZongshu)then
					call GetAchievementAndSave(ConvertedPlayer(i),49)
				endif

				if (CT3())then
					call GetAchievementAndSave(ConvertedPlayer(i),410)
				endif

				if (CT4())then
					call GetAchievementAndSave(ConvertedPlayer(i),411)
				endif

				if (CType != 0 and CType != -1) then
					call ChallangerSuccess(ConvertedPlayer(i))
				endif

				if (CType == -1 and level == 9 and renshu == 1) then
					call GetAchievementAndSave(ConvertedPlayer(i),418)
				endif

				if (CType == -1 and IsTianyan) then
					call GetAchievementAndSave(ConvertedPlayer(i),420)
				endif

			endif
			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    击败傀儡1
	*/
	function SaveAchievementKuilei1 takes nothing returns nothing

		local integer i = 1
		local integer level = GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r游戏数据正在拼命保存中... 请稍等10秒，以免您的心血付诸东流哦！")

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then

				if (not(BShengming) and udg_RENSHU >= 4) then
					call GetAchievementAndSave(ConvertedPlayer(i),45)
				endif

			endif
			set i = i +1
		endloop


	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    击败傀儡2
	*/
	function SaveAchievementKuilei2 takes nothing returns nothing

		local integer i = 1
		local integer level = GetDiffculty()

		call BJDebugMsg("|cFFFF66CC【消息】|r游戏数据正在拼命保存中... 请稍等10秒，以免您的心血付诸东流哦！")

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then

				call GetAndSaveCangku(ConvertedPlayer(i),9)

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
				if (IsClassic()) then
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
		if (zhuan == 125 and udg_H[GetConvertedPlayerId(p)] == yanmie) then
			call SetYanmieSpinOK(p)
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
		VIP
	*/
	function SaveVIP takes player p,integer i returns nothing
    	call DzAPI_Map_StoreInteger( p,  "vip", i )
	endfunction

	function IsSaveVIP takes player p,integer i returns boolean
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
		local integer i = HERO_COUNT
		loop
			exitwhen i < 1
			if ((GetSpecifyHeroTimes(p,i) > max) or (GetSpecifyHeroTimes(p,i) == max and GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)])) == i)) then
				set max = GetSpecifyHeroTimes(p,i)
				set maxIndex = i
			endif
			set i = i - 1
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
		if (result != "") then
			call DisplayTextToPlayer(p, 0., 0., result)
		endif
		set result = null
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想调节视角高度,请用鼠标滚轮")
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想隐藏技能伤害,请输入-sh(不推荐新手输入)")
		//call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想取消彩色皮肤,请输入-qc")

	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    死亡次数的成就：无心冢
	*/
	function SaveDeathAchievement takes player p returns nothing
		set deathCount[GetConvertedPlayerId(p)] = deathCount[GetConvertedPlayerId(p)] + 1
		if (deathCount[GetConvertedPlayerId(p)] >= 100) then
			call GetAchievementAndSave(p,231)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    戒指的成就:孤心戒
	*/
	function SaveRingAchievement takes player p,integer count returns nothing
		if (count == 120) then
			call GetAchievementAndSave(p,321)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    秘境的成就
	*/
	function SaveMijingAchievement takes integer count returns nothing
		local integer i = 1
		if (count <13) then
			return
		endif
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				if (count >= 13) then
					call GetAchievementAndSave(ConvertedPlayer(i),36)
				endif
				if (count >= 15) then
					call GetAchievementAndSave(ConvertedPlayer(i),37)
				endif
				if (count >= 17) then
					call GetAchievementAndSave(ConvertedPlayer(i),38)
				endif
				if (count >= 20) then
					call GetAchievementAndSave(ConvertedPlayer(i),39)
				endif
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    巨能成就
	*/
	function SaveJunengAchievement takes nothing returns nothing
		set JunengCount = JunengCount + 1
		if (JunengCount >= 6) then
			call SaveAllPlayerAchievement(311)
		endif
		if (JunengCount >= 20) then
			call SaveAllPlayerAchievement(312)
		endif
		if (JunengCount >= 12 and GetDiffculty() >= 8) then
			call SaveAllPlayerAchievement(313)
		endif
		if (JunengCount >= 40 and GetDiffculty() >= 8) then
			call SaveAllPlayerAchievement(314)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    A门的成就：封神门
	*/
	function SaveDoorAchievement takes nothing returns nothing
		local integer i = 1
		if (udg_Second[2] >= 8) then
			return
		endif
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call GetAchievementAndSave(ConvertedPlayer(i),326)
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    属性的成就,及月饼
	*/
	private function SaveAttrAchievement takes nothing returns nothing
		local integer i = 1
		local integer attr = 0
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				if (udg_H[i] != null) then
					set attr = GetHeroStr(udg_H[i],true) + GetHeroInt(udg_H[i],true) + GetHeroAgi(udg_H[i],true)
					if ( attr > 3000000) then
						call GetAchievementAndSave(ConvertedPlayer(i),315)
					endif
					if ( attr > 8000000) then
						call GetAchievementAndSave(ConvertedPlayer(i),316)
					endif
					if ( attr > 20000000) then
						call GetAchievementAndSave(ConvertedPlayer(i),317)
					endif
					if ( attr > 35000000 and udg_H[i] == sichen) then
						call SetSichenSpinOK(ConvertedPlayer(i))
					endif
					if ( attr > 50000000) then
						call GetAchievementAndSave(ConvertedPlayer(i),318)
					endif
				endif
			endif
			set i = i +1
		endloop
		// if (udg_RENSHU > 0) then
		// 	if (ModuloInteger(udg_Second[2],60/udg_RENSHU) == 0 and (udg_Second[2] != 0 or udg_RENSHU > 1)) then
		// 		call CreateYuebing(GetRectRandomX(GetPlayableMapRect()),GetRectRandomY(GetPlayableMapRect()))
		// 	endif
		// endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    杀擂台十的成就
	*/
	function SaveKillLeishi takes player p returns nothing
		set Ileishi[GetConvertedPlayerId(p)] = SetIntegerBit(Ileishi[GetConvertedPlayerId(p)],GetHeroIndex(GetUnitTypeId(udg_H[GetConvertedPlayerId(p)]))+1,true)
		if (GetIntegerHasOne(Ileishi[GetConvertedPlayerId(p)])>=12) then
			call GetAchievementAndSave(p,322)
		else
			call DisplayTextToPlayer(p, 0., 0., GetAchievementName(322)+"|r"+I2S(GetIntegerHasOne(Ileishi[GetConvertedPlayerId(p)]))+"/12.")
		endif
    	call DzAPI_Map_StoreInteger( p,  "leishi", Ileishi[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    杀怪成就
	*/

	function SaveAchievement5 takes player p, integer count returns nothing
		set killCount[GetConvertedPlayerId(p)] = killCount[GetConvertedPlayerId(p)] + count
		if (killCount[GetConvertedPlayerId(p)] >= 15000) then
			call GetAchievementAndSave(p,227)
		endif
		if (killCount[GetConvertedPlayerId(p)] >= 40000) then
			call GetAchievementAndSave(p,228)
		endif
		if (killCount[GetConvertedPlayerId(p)] >= 80000) then
			call GetAchievementAndSave(p,229)
		endif
		if (killCount[GetConvertedPlayerId(p)] >= 150000) then
			call GetAchievementAndSave(p,230)
		endif
		if (killCount[GetConvertedPlayerId(p)] >= 125000 and udg_H[GetConvertedPlayerId(p)] == sheyan ) then
			call SetSheyanSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		检测1:到达1%以下
	*/
	function Jiance1 takes unit u returns nothing
        local real percentThousand = (GetUnitState(u,UNIT_STATE_LIFE) * 1000.)/GetUnitState(u,UNIT_STATE_MAX_LIFE)
        if (UnitHasBuffBJ(u,'Bapl') or UnitHasBuffBJ(u,'Bpoi') or UnitHasBuffBJ(u,'Bpsd')) then
        	call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你拥有中毒BUFF.")
        	return
        endif
        if (percentThousand < 10 and IsUnitAliveBJ(u) and not(BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(u))])) then
			call GetAchievementAndSave(GetOwningPlayer(u),412)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你当前的生命为千分之"+R2S(percentThousand)+".")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		检测2:到达5E
	*/
	function Jiance2 takes unit u returns nothing
        local real life = GetUnitState(u,UNIT_STATE_MAX_LIFE)
        if (life > 500000000) then
			call GetAchievementAndSave(GetOwningPlayer(u),413)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你当前的生命为"+R2S(life)+".")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		检测3:防御检测
	*/
	function Jiance3 takes unit u returns nothing
        local integer defense = GetHeroAgi(u,true)/100 + GetDefense(u)
        if (defense > 1000000) then
			call GetAchievementAndSave(GetOwningPlayer(u),414)
        endif
        call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你判定的防御为"+R2S(defense)+".")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    总伤害成就
	*/
	function SaveAchievement6 takes player p, integer damage2 returns nothing
		if (damage2 >= 500) then
			call GetAchievementAndSave(p,32)
		endif
		if (damage2 >= 4000) then
			call GetAchievementAndSave(p,33)
		endif
		if (damage2 >= 30000) then
			call GetAchievementAndSave(p,34)
		endif
		if (damage2 >= 600000) then
			call GetAchievementAndSave(p,35)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		抓宠物的成就
	*/
	function SavePetAchievement takes player p,integer level returns nothing
		if (level >= 50) then
			call GetAchievementAndSave(p,328)
		endif
		if (level >= 70) then
			call GetAchievementAndSave(p,329)
		endif
		if (level >= 100) then
			call GetAchievementAndSave(p,330)
		endif
		if (level >= 150) then
			call GetAchievementAndSave(p,331)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄次数的成就
	*/
	function SaveAchievement4 takes player p returns nothing
		if (GetLowerHeroCount(p,1,12)) then
			call GetAchievementAndSave(p,217)
		endif
		if (GetLowerHeroCount(p,5,12)) then
			call GetAchievementAndSave(p,218)
		endif
		if (GetLowerHeroCount(p,10,12)) then
			call GetAchievementAndSave(p,219)
		endif
		if (GetLowerHeroCount(p,30,12)) then
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
		call DzAPI_Map_Stat_SetStat( p, "hero", GetIndexHeroName(GetBestHero(p)) )
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
	    判断是否有人超级六界王
	*/
	function GetSuperLiujiewang takes nothing returns player
		local integer i = 1
		loop
			exitwhen i > 6
			if (IsAchieveOK(ConvertedPlayer(i),48)) then
				return ConvertedPlayer(i)
			endif
			set i = i +1
		endloop

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    自定义成就名的使用
	*/
	function SetAndSaveDIYName takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		set achiPage[id] = -1
		call SaveAchievePointer(p)
		call SetPlayerName(p, GetRandomColor() +"【" + GetRandomColor() + SDIY[id] + GetRandomColor() + "】" + GetRandomColor() + playerName[id] + "|r")
		call DzAPI_Map_Stat_SetStat( p, "achi", SDIY[id] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化游戏名
	*/
	function InitAchievementName takes unit u returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(u))
		//计时英雄数
		call CreateAllHeroTimesTimer(GetOwningPlayer(u))

		if (achiPage[id] == -1 and (IsQuanchengjiu(GetOwningPlayer(u)) or playerName[id] == "信哲大人")) then
			call SetAndSaveDIYName(GetOwningPlayer(u))
		else
			if (StringLength(I2S(achiPage[id])) < 2 or achiPage[id] < 0) then
				set achiPage[id] = 10
				call InitOldAchievement(id)
				call SaveAchievePointer(GetOwningPlayer(u))
			endif
			call SetAchievement(GetOwningPlayer(u),achiPage[id])
		endif

		if (IsAchieveOK(GetOwningPlayer(u),47)) then
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
			call BJDebugMsg(GetPlayerName(GetOwningPlayer(u))+"|cff00ff00受到了来自圣界的欢迎!!!|r")
		endif

		call InitChallangerData(GetOwningPlayer(u))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    自定义成就名
	*/
	function SetDIYName takes player p,string s returns nothing
		local integer i = GetConvertedPlayerId(p)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成就将成就自定义成:"+s+".")
		set SDIY[i] = s
		call DzAPI_Map_StoreString( p,  "diy", SDIY[i] )
		call SetAndSaveDIYName(p)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    指令获取成就
	*/
	function Huoquachi takes player p ,string chat,integer page returns nothing
		local integer i = 1
		local integer result = 0

		loop
			exitwhen i > 40

			if (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)]+"ac"+I2S(page)+I2S(i),1))) then
				call GetAchievementAndSave(p,S2I(I2S(page)+I2S(i)))
				exitwhen true

			endif

			set i = i +1
		endloop

		set BBuqian2 = false
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	function InitVersion takes nothing returns nothing
		local trigger t = CreateTrigger()
		local integer i = 1

    	call CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01L', - 9816.0, - 5968.0, 270.000)
    	set UChengjiu = CreateUnit(Player(6), 'n01K', -14504.0, -14040.0, 270.000)

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
			    call TriggerRegisterPlayerStateEvent( t, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER, GREATER_THAN_OR_EQUAL, 20000.00 )
			    set deathCount[i] = 0
			    set killCount[i] = 0
			endif
			set i = i +1
		endloop
		call TriggerAddAction(t, function TGetAchievementLumber)

		call TimerStart(CreateTimer(),60,true,function SaveAttrAchievement)

		set t = null
	endfunction

endlibrary
#endif


