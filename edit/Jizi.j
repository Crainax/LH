//! import "LHBase.j"
//! import "Achievement.j"
//! import "ChallangerDZ.j"
//! import "Attr.j"
//! import "Structs.j"

library_once Jizi  requires LHBase,Achievement,ChallangerDZ,Attr,Structs

	globals
		string array SJizi 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    集字
	*/
	private function GetZhongqiuWord takes integer i returns string

		if (i == 1) then
			return "平"
		elseif (i == 2) then
			return "分"
		elseif (i == 3) then
			return "秋"
		elseif (i == 4) then
			return "色"
		elseif (i == 5) then
			return "一"
		elseif (i == 6) then
			return "轮"
		elseif (i == 7) then
			return "满"
		elseif (i == 8) then
			return "长"
		elseif (i == 9) then
			return "伴"
		elseif (i == 10) then
			return "云"
		elseif (i == 11) then
			return "衢"
		elseif (i == 12) then
			return "千"
		elseif (i == 13) then
			return "里"
		elseif (i == 14) then
			return "明"
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    奖励物品
	*/
	private function GetRewardName takes integer days returns string
		if (days == 14) then
			return "全皮肤体验权[活动期间]
+绝版中秋英雄死亡声效.[永久]"
		elseif (days == 10) then
			return "湮灭皮肤[永久]"
		elseif (days == 12) then
			return "司宸皮肤与仓库瞬息万年[永久]"
		elseif (days == 8) then
			return "解锁星胧[活动期间]"
		endif

		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    状态
	*/
	private function GetStateName takes integer i returns string
		if (i == 1) then
			return "|cff99cc00金钱获取率+100%持续3分钟。|r"
		elseif (i == 2) then
			return "|cff99cc00技能伤害+50%持续4分钟。|r"
		elseif (i == 3) then
			return "|cffff66003秒复活持续5分钟。|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取某个字
	*/
	private function GetNewWord takes player p,integer i returns boolean
		local integer index = GetConvertedPlayerId(p)
		local string temp = null
		if (StringLength(SJizi[index]) < 62) then
			set SJizi[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		if (S2I(SubStringBJ(SJizi[index],i,i)) != 1) then
			set temp = SJizi[index]
			set SJizi[index] = SubStringBJ(temp,1,i - 1)
			set SJizi[index] = SJizi[index] + "1"
			set SJizi[index] = SJizi[index] + SubStringBJ(temp,i+1,StringLength(temp))
			set temp = null
			if (i != 15) then
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r"+GetZhongqiuWord(i)+"字.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r"+GetZhongqiuWord(i)+"字.")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你收集到从未获得的|r"+GetZhongqiuWord(i)+"字.")
			endif
			call DzAPI_Map_StoreString( p,  "SJizi", SJizi[index] )
			return true
		endif
		return false
	endfunction

	private function IsHasWord takes player p,integer i returns boolean
		return S2I(SubStringBJ(SJizi[GetConvertedPlayerId(p)],i,i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取一个玩家总共集齐了几个字
	*/
	function GetPlayerWordCount takes player p returns integer
		local integer i = 1
		local integer count = 0
		loop
			exitwhen i > 14
			if (IsHasWord(p,i)) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count
	endfunction

	function HasAll14Word takes player p returns boolean
		return IsHasWord(p,15)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    14个字
	*/
	function Get14Word takes player p returns string
		local string s = ""
		local integer i = 1
		loop
			exitwhen i > 14
			set s = s + S3(IsHasWord(p,i),"|cffff00ff","|cffffffff") + GetZhongqiuWord(i) + "|r"
			if (i == 7) then
				set s = s + "|cffff00ff，|r"
			elseif(i == 14) then
				set s = s + "|cffff00ff。|r"
			endif
			set i = i +1
		endloop
		return s
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    字数的奖励
	*/
	private function GetWordCountReward takes player p returns nothing
		if (GetPlayerWordCount(p) >= 10) then
			call SetYanmieSpinOK(p)
		endif
		if (GetPlayerWordCount(p) >= 12) then
			call SetSichenSpinOK(p)
			call GetAndSaveCangku(p,5)
		endif
		if (GetPlayerWordCount(p) >= 14) then
			call GetNewWord(p,15)
		endif
	endfunction

	private function AfterMoneyBuffTime takes player p returns nothing
		call AddMoneyPercent(GetConvertedPlayerId(p),-1.0)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的金钱时间到了.")
	endfunction

	private function AfterSpellBuffTime takes player p returns nothing
		call AddSpellPercent(GetConvertedPlayerId(p),-0.5)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的技能伤害时间到了.")
	endfunction

	private function AfterReviveBuffTime takes player p returns nothing
		set B3SecondRevive[GetConvertedPlayerId(p)] = false
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r月饼给你提供的3秒复活时间到了.")
	endfunction

	private function GetStateReward takes player p,integer state returns nothing
		if (state == 1) then
			call AddMoneyPercent(GetConvertedPlayerId(p),1.0)
			call Buff.create(p,180,AfterBuffTime.AfterMoneyBuffTime)
		elseif (state == 2) then
			call AddSpellPercent(GetConvertedPlayerId(p),0.5)
			call Buff.create(p,240,AfterBuffTime.AfterSpellBuffTime)
		elseif (state == 3) then
			set B3SecondRevive[GetConvertedPlayerId(p)] = true
			call Buff.create(p,300,AfterBuffTime.AfterReviveBuffTime)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获得某个字
	*/
	function OpenTheYuebing takes player p returns nothing
		local integer iWord = GetRandomInt(1,14)
		local integer iState = GetRandomInt(1,3)
		local integer i = 1
		local string s = null
		call GetNewWord(p,iWord)

		set s = "
			你开启该月饼获得了:

			" + GetStateName(iState) +"
			活动字\"|cffff00ff" + GetZhongqiuWord(iWord) +"|r\"

			你目前收集到的总字数为:
			" + Get14Word(p) +"
			("+I2S(GetPlayerWordCount(p))+"个字)

			"
		loop
			exitwhen i > 14
        	if (GetRewardName(i) != null) then
        		set s = s + I2S(i) + "字:" + GetRewardName(i) + S3(GetPlayerWordCount(p) >= i,"|cffff9900(已获得)|r","|cff33cccc(未获得)|r") + "
"
        	endif
			set i = i +1
		endloop

		call GetWordCountReward(p)
		call GetStateReward(p,iState)
		call ShowGameHint(p,s)
		set s = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建一个月饼
	*/	
	function CreateYuebingPlayer takes real x,real y,player p returns nothing
		local item it = null
		call BJDebugMsg("|cFFFF66CC【消息】|r地图出现了一个月饼!")
		call PingMinimapForForce( GetPlayersAll(), x, y, 5.00 )
		call PlaySoundBJ(gg_snd_MapPing)
		set it = CreateItem('I07T',x,y)
		if (p != null) then
	        call SaveInteger(YDHT,GetHandleId(it),0xA75AD423,GetConvertedPlayerId(p))
		endif
		set it = null
	endfunction

	function CreateYuebing takes real x,real y returns nothing
		call CreateYuebingPlayer(x,y,null)
	endfunction

	/*
	    每人一个月饼
	*/
	function CreateAllYuebing takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
				call CreateYuebingPlayer(GetUnitX(udg_H[i]),GetUnitY(udg_H[i]),ConvertedPlayer(i))
			endif
			set i = i +1
		endloop
	endfunction
endlibrary

