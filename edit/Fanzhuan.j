//! import "LHBase.j"
//! import "Achievement.j"

library_once Fanzhuan requires LHBase,Achievement

	globals
		integer array diyu
		string array SFanzhaun
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    反转条件
	*/
	function FanzhuanCondition takes player p,integer i returns boolean
		if not(DEBUG_MODE) then
			return IsPIV(p)
		else
			return S2I(SubStringBJ(SFanzhaun[GetConvertedPlayerId(p)],i,i)) == 1 or GetSpecifyHeroTimes(p,i) >= 25 or IsPIV(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    反转失败提示语
	*/
	function GetFanzhuanFailString takes player p,integer i returns string
		if not(DEBUG_MODE) then
			return "
			在该版本中获取赞助后永久解锁使用.(请看复活点介绍)

			或者在官方平台使用该英雄25次后解锁.
			"
		endif

		return "
		该英雄使用次数达到25次.

		进度:"+I2S(GetSpecifyHeroTimes(p,i))+"/25"

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
			debug call DzAPI_Map_StoreString( p,  "SFanzhaun", SFanzhaun[index] )
		endif
	endfunction
endlibrary