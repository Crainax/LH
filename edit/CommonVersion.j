//! import "LHBase.j"
//! import "Achievement.j"

/*
    其他平台的提示文本
*/
library_once Version initializer InitVersion requires Achievement,LHBase
	
	globals
		private boolean Bheiyan = false 
		private boolean Bhuanyi = false 
		private boolean Bmengji = false 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎的提示文本
	*/
	function GetHeiyanHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，获取密码请加群148199145|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的提示文本
	*/
	function GetHuanyiHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，多人通关地狱及以上的难度后在结尾获取密码,
				或者成为永久赞助直接选取该英雄|r"
	endfunction
	/*
	    幻逸的提示文本
	*/
	function GetMengjiHint takes nothing returns string
		return "|cff99ccff该英雄是隐藏英雄，多人通关|cFFFF0000末日|r|cff99ccff及以上的难度后在结尾获取密码,
				或者成为永久赞助直接选取该英雄|r"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎选取条件
	*/
	function GetHeiyanSelectedCon takes player p returns boolean
		return Bheiyan
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
        获取激活码
    */
    private function GetHuanyiCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 3
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
	    隐藏密码的判定
	*/
	function TSpeakPassword takes nothing returns nothing
		local string chat = GetEventPlayerChatString()
		if (chat == "hydtzyqysqz") then
			set Bheiyan = true
		elseif (chat == "hy"+I2S(GetHuanyiCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bhuanyi = true
		elseif (chat == "mj"+I2S(GetMengjiCode(GetPlayerName(GetTriggerPlayer())))) then
			set Bmengji = true
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    输出幻逸的密码
	*/
	function PrintHuanyiPassword takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_RENSHU > 1 and udg_Nandu_JJJ > 5) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的幻逸英雄选取密码:hy"+ I2S(GetHuanyiCode(playerName[i])))
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
			if (udg_RENSHU > 1 and udg_Nandu_JJJ > 6) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】|r请妥善保管好你的名字"+playerName[i]+"对应的梦霁英雄选取密码:mj"+ I2S(GetMengjiCode(playerName[i])))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------


	private function InitVersion takes nothing returns nothing
	endfunction

endlibrary