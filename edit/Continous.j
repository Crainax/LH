//! import "LHBase.j"
//! import "item.j"
//! import "Huodong.j"
//! import "Achievement.j"

library_once Continous initializer InitContinous requires  LHBase,ItemBase,Huodong,Achievement


	globals
		integer array IConDays
		integer array ILastTime
		constant integer TIMESTAMP_START = 1500998400

		//integer DzAPI_Map_GetGameStartTime() = 0
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    给奖励
	*/
	function GiveJianianhuaGift takes player p returns nothing
		local integer i = IConDays[GetConvertedPlayerId(p)]
		local unit u = udg_H[GetConvertedPlayerId(p)]



		if (i >= 7) then
			call AdjustPlayerStateBJ( 2000, GetOwningPlayer(u) , PLAYER_STATE_RESOURCE_GOLD )
		elseif (i >= 6) then
			call AdjustPlayerStateBJ( 1500, GetOwningPlayer(u) , PLAYER_STATE_RESOURCE_GOLD )
		elseif (i >= 3) then
			call AdjustPlayerStateBJ( 1000, GetOwningPlayer(u) , PLAYER_STATE_RESOURCE_GOLD )
		elseif (i >= 2) then
			call AdjustPlayerStateBJ( 500, GetOwningPlayer(u) , PLAYER_STATE_RESOURCE_GOLD )
		endif

		

		if (i >= 12) then
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
		elseif (i >= 4) then
			call UnitAddItemByIdSwapped(GetRandomPotion(), u)
		endif

		if (i >= 5) then
			call UnitAddItemByIdSwapped('I075', u)
		else
			call UnitAddItemByIdSwapped('I074', u)
		endif

		if (i >= 9) then
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
		endif
		
		if (i >= 10) then
			call SetChenji2SpinOK(GetOwningPlayer(u))
		endif

		if (i >= 20) then
			call GetAchievementAndSave(GetOwningPlayer(u),47)
		endif

		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    奖励物品
	*/
	function GetDailyReward takes integer days returns string
		if (days == 1) then
			return "小型网"		
		elseif (days == 2) then
			return "小型网+500金币"
		elseif (days == 3) then
			return "小型网+1000金币"
		elseif (days == 4) then
			return "小型网+1000金币+1个地狱之礼"
		elseif (days == 5) then
			return "中型网+1000金币+1个地狱之礼"
		elseif (days == 6) then
			return "中型网+1500金币+1个地狱之礼"
		elseif (days == 7) then
			return "中型网+2000金币+1个地狱之礼"
		elseif (days == 9) then
			return "|cffff00ff【虚】琉璃璞玉|r(仅限8月20日前)"
		elseif (days == 10) then
			return "永久解锁|cFFCCFF00辰寂|r的皮肤|cFFFF3333双流贯恒|r"
		elseif (days == 12) then
			return "中型网+2000金币+2个地狱之礼"
		elseif (days == 20) then
			return "永久解锁超级成就"+GetAchievementName(47)
		elseif (days == 26) then
			return "首2位达成的玩家可获得单位冠名权"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取从保存的第一天开始的时间
	*/
	function GetContinousDay takes player p returns integer
		if (DzAPI_Map_GetGameStartTime() < TIMESTAMP_START) then
			return 0
		endif
		return (DzAPI_Map_GetGameStartTime() - ILastTime[GetConvertedPlayerId(p)])/86400
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建一个对话框
	*/
	function CreateLoginDialog takes player p returns nothing
        local dialog d = DialogCreate()
        local string s = "
        	嘉年华活动连续登录奖励(7月26日-8月20日)
        	"
        local integer i = 1
        loop
        	exitwhen i > 26
        	if (GetDailyReward(i) != null) then
        		set s = s + "第" + I2S(i) + "天:" + GetDailyReward(i) +S3(IConDays[GetConvertedPlayerId(p)] >= i,"|cffff9900(已完成)|r","|cff33cccc(未完成)|r") + "
        		"
        	endif
        	set i = i +1
        endloop
                		set s = s + "
        你已经连续签到了" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天,注意断签了会重新计算哦."
        call DialogSetMessage( d, s )
        call DialogAddButton( d, "10分钟之后当天才签到成功|cffff6800(Esc)|r",512)
        call DialogDisplay( p, d, true )
        //call DialogDestroy(d)
        set d = null
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    获取当前时间的0点
	*/
	private function GetCurrentStartTime takes player p returns integer
		return TIMESTAMP_START + ((DzAPI_Map_GetGameStartTime() - TIMESTAMP_START)/86400)*86400
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	     初始化你的登录时间
	*/
	function InitContinousData takes player p returns nothing
		set IConDays[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "IConDays")
		set ILastTime[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "ILastTime")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示签到指数
	*/
	function ShowQiandao takes player p returns nothing
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的签到指数为"+I2S(IQiandao2[GetConvertedPlayerId(p)])+".")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    保存登录状态
	*/
	function SaveLoginState takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "IConDays", IConDays[GetConvertedPlayerId(p)] )
		call DzAPI_Map_StoreInteger( p,  "ILastTime", ILastTime[GetConvertedPlayerId(p)] )
		call DzAPI_Map_StoreInteger( p,  "IQiandao2", IQiandao2[GetConvertedPlayerId(p)] )
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
		call DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		等10分钟后上传到网易    
	*/
	private function UploadToNetEaseTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = LoadPlayerHandle(LHTable,id,1)
		call SaveLoginState(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set p = null
		set t = null 
	endfunction

	function UploadToNetEase takes player p returns nothing
		local timer t = CreateTimer()
		call SavePlayerHandle(LHTable,GetHandleId(t),1,p)
		call TimerStart(t,600,false,function UploadToNetEaseTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置连续时间
	*/
	function SetDenglu takes player p returns nothing
		//活动还没开始，或者说是首次
		if (DzAPI_Map_GetGameStartTime() < TIMESTAMP_START) then
			call BJDebugMsg("|cFFFF66CC【消息】|r ")
			call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r嘉年华时间未开始.")
			return
		endif

		if (ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START) then
			set ILastTime[GetConvertedPlayerId(p)] = TIMESTAMP_START
			set IConDays[GetConvertedPlayerId(p)] = 0
		endif

		//断签啦重新存储

		if (GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)])	then
			//首次连续登录的提示与奖励
			set IConDays[GetConvertedPlayerId(p)] = GetContinousDay(p) + 1

			set IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录"+I2S(IConDays[GetConvertedPlayerId(p)])+"天(注意今天的签到需要等10分钟才能保存).")
		elseif (GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1)then
			//保持当天的奖励

			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录"+I2S(IConDays[GetConvertedPlayerId(p)])+"天(今天的签到数据已经在前面游戏中保存了哦).")
		else
			set ILastTime[GetConvertedPlayerId(p)] = GetCurrentStartTime(p)
			set IConDays[GetConvertedPlayerId(p)] = 1

			set IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录"+I2S(IConDays[GetConvertedPlayerId(p)])+"天(注意今天的签到需要等10分钟才能保存).")
		endif

		call UploadToNetEase(p)
	endfunction


//---------------------------------------------------------------------------------------------------

	
	private function InitContinous takes nothing returns nothing
		
	endfunction

endlibrary