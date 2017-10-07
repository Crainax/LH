//! import "LHBase.j"

library_once Fanzhuan requires LHBase

	globals
		integer array diyu
		string array SFanzhaun
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    反转条件
	*/
	function FanzhuanCondition takes player p,integer i returns boolean
		return S2I(SubStringBJ(SFanzhaun[GetConvertedPlayerId(p)],i,i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    反转失败提示语
	*/
	function GetFanzhuanFailString takes player p,integer i returns string
		if (i == 2) then
			return "
			在本版本中通关5次战争难度(或以上)永久解锁使用.

			进度:"+I2S(diyu[GetConvertedPlayerId(p)]/100000)+"/5"
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置可以选
	*/
	function SetFanzhuanOK takes player p,integer i returns nothing
		local integer index = GetConvertedPlayerId(p)
		local string temp = null
		if (StringLength(SFanzhaun[index]) < 62) then
			set SFanzhaun[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		if (S2I(SubStringBJ(SFanzhaun[index],i,i)) != 1) then
			set temp = SFanzhaun[index]
			set SFanzhaun[index] = SubStringBJ(temp,1,i - 1)
			set SFanzhaun[index] = SFanzhaun[index] + "1"
			set SFanzhaun[index] = SFanzhaun[index] + SubStringBJ(temp,i+1,StringLength(temp))
			set temp = null
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功解锁英雄"+GetIndexHeroColorName(i)+"|cff3366ff新的技能形态!|r")
			call DzAPI_Map_StoreString( p,  "SFanzhaun", SFanzhaun[index] )
		endif
	endfunction
endlibrary