//! import "LHBase.j"
//! import "CommonHuodong.j"

/*
    其他平台的提示文本
*/
library_once Version initializer InitVersion requires LHBase,Huodong
	
	globals
		private boolean Bxinglong = false 
		private boolean Bhuanyi = false 
		private boolean Bmengji = false 
		private boolean Bcangling = false 
		private boolean Bxiaoting = false 

		boolean BZongshu = true

		boolean BTiaozhan1 = false
		boolean BTiaozhan2 = false

		boolean array BWuxing
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，获取密码请加群413359254|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，多人通关地狱难度后在结尾获取密码,
				或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌的提示文本
	*/
	function GetCanglingHint takes nothing returns string
	return "|cff99ccff该英雄是隐藏英雄，多人通关|cFFFF0000末日|r难度后在结尾获取密码,
				或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧的提示文本
	*/
	function GetXinglongHint takes nothing returns string
	return "|cff99ccff该英雄是隐藏英雄，多人通关|cffff00ff轮回|r难度后在结尾获取密码,
				或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    宵霆的提示文本
	*/
	function GetXiaotingHint takes nothing returns string
	return "|cff99ccff考虑到操作对新手可能不友好,通关炼狱难度后证明自己的实力获取密码|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸选取条件
	*/
	function GetHuanyiSelectedCon takes player p returns boolean
		return Bhuanyi
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁选取条件
	*/
	function GetMengjiSelectedCon takes player p returns boolean
		return Bmengji
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌选取条件
	*/
	function GetCanglingSelectedCon takes player p returns boolean
		return Bcangling
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    星胧选取条件
	*/
	function GetXinglongSelectedCon takes player p returns boolean
		return Bxinglong
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    宵霆选取条件
	*/
	function GetXiaotingSelectedCon takes player p returns boolean
		return Bxiaoting
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    彩名皮肤
	*/
	function IsColorSpin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨皮肤条件
	*/
	function GetSeyu1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月皮肤条件
	*/
	function GetXiaoyue1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    湮灭皮肤条件
	*/
	function GetYanmie1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    白虎皮肤条件
	*/
	function GetTaiya1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    玄雪皮肤条件
	*/
	function GetXuanxue1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    玄雪皮肤条件
	*/
	function GetXuanxue2Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    赛殇皮肤条件
	*/
	function GetHanshang1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤条件
	*/
	function GetChenji2Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤条件
	*/
	function GetChenji1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凌雪皮肤条件
	*/
	function GetLingxue1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    莫琪皮肤条件
	*/
	function GetMoqiSpin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    牛头皮肤条件
	*/
	function GetKaisaSpin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    剑圣皮肤条件
	*/
	function GetBajue1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    摄焱皮肤条件
	*/
	function GetSheyan1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    摄焱皮肤条件
	*/
	function GetHuanyi1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    司宸皮肤条件
	*/
	function GetSichen1Spin takes player p returns boolean
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取激活码
    */
    private function GetXinglongCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 8
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,IMaxBJ(StringLength(result)-5,1),StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取激活码
    */
    private function GetXiaotingCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 9
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,IMaxBJ(StringLength(result)-5,1),StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取激活码
    */
    private function GetMengjiCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 10
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,IMaxBJ(StringLength(result)-5,1),StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取激活码
    */
    private function GetCanglingCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 15
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,IMaxBJ(StringLength(result)-5,1),StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    隐藏密码的判定
	*/
	function TSpeakPassword takes nothing returns nothing
		local string chat = GetEventPlayerChatString()
		if (chat == "hyfxhygyhsmff") then
			set Bhuanyi = true
		elseif (chat == "mj"+I2S(GetMengjiCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bmengji = true
		elseif (chat == "cl"+I2S(GetCanglingCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bcangling = true
		elseif (chat == "xl"+I2S(GetXinglongCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bxinglong = true
		elseif (chat == "xt"+I2S(GetXinglongCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bxiaoting = true
		endif
		set chat = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出星胧的密码
	*/
	function PrintXinglongPassword takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_RENSHU > 1 and udg_Nandu_JJJ == 7) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的星胧英雄选取密码:xl"+ I2S(GetXinglongCode(playerName[i])))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出梦霁的密码
	*/
	function PrintMengjiPassword takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_RENSHU > 1 and udg_Nandu_JJJ == 5) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的梦霁英雄选取密码:mj"+ I2S(GetMengjiCode(playerName[i])))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出苍凌的密码
	*/
	function PrintCanglingPassword takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_RENSHU > 1 and udg_Nandu_JJJ == 6) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的苍凌英雄选取密码:cl"+ I2S(GetCanglingCode(playerName[i])))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出宵霆的密码
	*/
	function PrintXiaotingPassword takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_RENSHU > 1 and udg_Nandu_JJJ == 5) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的宵霆英雄选取密码:xt"+ I2S(GetXiaotingCode(playerName[i])))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    成就对话框
	*/
	function CreateAchievementDialog takes player p returns nothing
		if (Get11()) then
			return
		endif
		call ShowGameHint(p,"
			使用魔兽争霸官方对战平台
			进行游戏才能使用该功能.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取时间
	*/
	function DzAPI_Map_GetGameStartTime takes nothing returns integer
		return GetRandomInt(0,1000000000)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    禁止秘藉
	*/
	/*private function ForbidMiji takes nothing returns nothing
		if (renshu == 1) then
			call Jidibaozha("
	    		使用秘藉会失去游戏体验哦!
")
		endif
	endfunction*/
//---------------------------------------------------------------------------------------------------


	private function InitVersion takes nothing returns nothing
	    /*local trigger t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( t, Player(0), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "whosyourdaddy", true )
		call TriggerRegisterPlayerChatEvent( t, Player(0), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "thereisnospoon", true )
		call TriggerRegisterPlayerChatEvent( t, Player(0), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "keysersoze", false )
		call TriggerRegisterPlayerChatEvent( t, Player(0), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "leafittome", false )
		call TriggerRegisterPlayerChatEvent( t, Player(0), "greedisgood", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "greedisgood", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "greedisgood", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "greedisgood", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "greedisgood", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "greedisgood", false )
	    call TriggerAddAction(t, function ForbidMiji)*/

	endfunction

endlibrary