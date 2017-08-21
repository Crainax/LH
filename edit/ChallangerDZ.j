//! import "LHBase.j"

library_once ChallangerDZ requires LHBase
	
	globals
		constant integer COUNT_CHALLANGER = 4

		string array easyCString
		string array middleCString
		string array hardCString

		//挑战难度
		integer CDiff = 0
		//挑战类型
    	integer CType = 0
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    对应难度的对应数字
	*/
	private function C3 takes integer i1,integer i2,integer i3 returns integer
		if (CDiff == 1) then
			return i1
		elseif (CDiff == 2) then
			return i2
		elseif (CDiff == 3) then
			return i3
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是力量透支挑战
	*/
	function CT1 takes nothing returns boolean
		return CType == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是纯装备挑战
	*/
	function CT2 takes nothing returns boolean
		return CType == 2
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是tz1挑战
	*/
	function CT3 takes nothing returns boolean
		return CType == 3
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是tz2挑战
	*/
	function CT4 takes nothing returns boolean
		return CType == 4
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取某个玩家的完成挑战(某个难度)
	*/
	function GetEasyComplete takes player p returns integer
		local integer index = GetConvertedPlayerId(p)
		local integer i = 1
		local integer result = 0
		if (StringLength(easyCString[index]) < 62) then
			set easyCString[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if (S2I(SubStringBJ(easyCString[index],i,i)) > 0) then
				set result = result + 1
			endif
			set i = i +1
		endloop
		return result
	endfunction

	function GetMiddleComplete takes player p returns integer
		local integer index = GetConvertedPlayerId(p)
		local integer i = 1
		local integer result = 0
		if (StringLength(middleCString[index]) < 62) then
			set middleCString[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if (S2I(SubStringBJ(middleCString[index],i,i)) > 0) then
				set result = result + 1
			endif
			set i = i +1
		endloop
		return result
	endfunction

	function GetHardComplete takes player p returns integer
		local integer index = GetConvertedPlayerId(p)
		local integer i = 1
		local integer result = 0
		if (StringLength(hardCString[index]) < 62) then
			set hardCString[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		loop
			exitwhen i > COUNT_CHALLANGER
			if (S2I(SubStringBJ(hardCString[index],i,i)) > 0) then
				set result = result + 1
			endif
			set i = i +1
		endloop
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取一个玩家的总完成数
	*/
	function GetAllComplete takes player p returns integer
		return GetHardComplete(p) + GetEasyComplete(p) + GetMiddleComplete(p)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化数据与存档
	*/
	function InitChallangerData takes player p returns nothing
    	call DzAPI_Map_Stat_SetStat( p, "chal", I2S(GetAllComplete(p))+"/"+I2S(3*COUNT_CHALLANGER) )
		call DzAPI_Map_StoreString( p, "easyCString", easyCString[GetConvertedPlayerId(p)] )
		call DzAPI_Map_StoreString( p, "middleCString", middleCString[GetConvertedPlayerId(p)] )
		call DzAPI_Map_StoreString( p, "hardCString", hardCString[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    某一个挑战完成后
	*/
	function ChallangerSuccess takes player p returns nothing
		local string temp = ""
		local integer index = GetConvertedPlayerId(p)
		if (CDiff == 1) then
			set temp = easyCString[index]
			set easyCString[index] = SubStringBJ(temp,1,CType - 1)
			set easyCString[index] = easyCString[index] + "1"
			set easyCString[index] = easyCString[index] + SubStringBJ(temp,CType+1,StringLength(temp))
		elseif (CDiff == 2) then
			set temp = middleCString[index]
			set middleCString[index] = SubStringBJ(temp,1,CType - 1)
			set middleCString[index] = middleCString[index] + "1"
			set middleCString[index] = middleCString[index] + SubStringBJ(temp,CType+1,StringLength(temp))
		elseif (CDiff == 3) then
			set temp = hardCString[index]
			set hardCString[index] = SubStringBJ(temp,1,CType - 1)
			set hardCString[index] = hardCString[index] + "1"
			set hardCString[index] = hardCString[index] + SubStringBJ(temp,CType+1,StringLength(temp))
		endif
		call InitChallangerData(p)
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的完成了"+SgameMode+".")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否解锁
	*/
	function IsChallangerComplete takes player p, integer bit returns boolean
		local integer index = GetConvertedPlayerId(p)
		local string s = ""
		if (CDiff == 1) then
			return S2I(SubStringBJ(easyCString[index] ,bit,bit)) > 0
		elseif (CDiff == 2) then 
			return S2I(SubStringBJ(middleCString[index] ,bit,bit)) > 0
		elseif (CDiff == 3) then 
			return S2I(SubStringBJ(hardCString[index] ,bit,bit)) > 0
		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取挑战的名字
	*/
	function GetChallangerTitle takes integer i returns string
		if (i == 1) then
			return "力量透支挑战"
		elseif (i == 2) then
			return "纯装备挑战"
		elseif (i == 3) then
			return "驻永恒挑战"
		elseif (i == 4) then
			return "创世篇挑战"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取挑战的介绍
	*/
	function GetChallangerContent takes integer i returns string
		if (i == 1) then
			return "
			力量透支挑战内容如下:

			英雄初始等级为450级.
			但是英雄初始属性为负95%.
			该模式下禁止捕捉超过20级的宠物.

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(万劫)

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		elseif (i == 2) then
			return "
			纯装备挑战如下:

			所有玩家英雄只有1个装备栏.
			英雄获取任何装备时,
			都增加该装备的6倍属性.

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(万劫)

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		elseif (i == 3) then
			return "
			驻永恒挑战如下:

			该挑战下英雄攻击速度极慢,
			移动速度-10000000%.

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(轮回)

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		elseif (i == 4) then
			return "
			创世篇挑战如下:

			该挑战下英雄获得金钱为1%,
			英雄每秒减少10%的生命.
			(13波开始每秒减少30%的生命)

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(轮回)

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对应的难度返回
	*/
	function GetChallangerDifficulty takes nothing returns integer
		if (CType == 1) then
			return C3(1,5,9)
		elseif (CType == 2) then
			return C3(1,5,9)
		elseif (CType == 3) then
			return C3(1,5,8)
		elseif (CType == 4) then
			return C3(1,5,8)
		endif
		return 0
	endfunction
endlibrary