#include  "LHBase.j"

library_once ChallangerDZ requires LHBase

	globals
		constant integer COUNT_CHALLANGER = 7

		string array easyCString
		string array middleCString
		string array hardCString

		//挑战难度
		integer CDiff = 0
		//挑战类型
    	integer CType = 0

		//判断是否读取成功
		boolean array Bdudang

		string array Greward2
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取仓库
	*/
	function GetAndSaveCangku takes player p,integer i returns nothing
		local integer index = GetConvertedPlayerId(p)
		local string temp = null
		//if (GetBit(Greward[index],i) < 1 and i < 9) then
		//	set Greward[index] = Greward[index] + R2I(Pow(10,i-1))
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DisplayTextToPlayer(p, 0., 0., "//|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
		//	call DzAPI_Map_StoreInteger( p,  "Greward", Greward[index] )
		//endif
		if (StringLength(Greward2[index]) < 62) then
			set Greward2[index] = "00000000000000000000000000000000000000000000000000000000000000"
		endif
		if (S2I(SubStringBJ(Greward2[index],i,i)) != 1) then
			set temp = Greward2[index]
			set Greward2[index] = SubStringBJ(temp,1,i - 1)
			set Greward2[index] = Greward2[index] + "1"
			set Greward2[index] = Greward2[index] + SubStringBJ(temp,i+1,StringLength(temp))
			set temp = null
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功新的仓库模型！|r")
			debug call DzAPI_Map_StoreString( p,  "Greward2", Greward2[index] )
		endif
	endfunction

	function IsHasCangku takes player p,integer i returns boolean
		return S2I(SubStringBJ(Greward2[GetConvertedPlayerId(p)],i,i)) == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取仓库
	*/
	function Huoqucangku takes player p,string chat returns nothing
		local integer i = 1
		local integer result = 0
		loop
			exitwhen i > 10

			if (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)]+"ck"+I2S(i),1))) then
				call GetAndSaveCangku(p,i)
				exitwhen true
			endif

			set i = i +1
		endloop
		set BBuqian2 = false
	endfunction
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
	    判断是否是镜像英雄挑战
	*/
	function CT5 takes nothing returns boolean
		return CType == 5
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是随机英雄挑战
	*/
	function CT6 takes nothing returns boolean
		return CType == 6
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是随机英雄挑战
	*/
	function CT7 takes nothing returns boolean
		return CType == 7
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是随机英雄挑战
	*/
	function IsKuanghuan takes nothing returns boolean
		return CType == -1
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
		获取一个玩家的完成率
	*/
	function GetCompleteRate takes player p returns real
		return I2R(GetAllComplete(p)) / (3.0*I2R(COUNT_CHALLANGER))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化数据与存档
	*/
	function InitChallangerData takes player p returns nothing
		if (Bdudang[GetConvertedPlayerId(p)]) then
	    	debug call DzAPI_Map_Stat_SetStat( p, "chal", I2S(GetAllComplete(p))+"/"+I2S(3*COUNT_CHALLANGER) )
			debug call DzAPI_Map_StoreString( p, "easyCString", easyCString[GetConvertedPlayerId(p)] )
			debug call DzAPI_Map_StoreString( p, "middleCString", middleCString[GetConvertedPlayerId(p)] )
			debug call DzAPI_Map_StoreString( p, "hardCString", hardCString[GetConvertedPlayerId(p)] )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    某一个挑战完成后
	*/
	function ChallangerSuccess takes player p returns nothing
		local string temp = ""
		local integer index = GetConvertedPlayerId(p)
		if (CType == -1) then
			set temp = null
			return
		endif
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
		set temp = null
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
		elseif (i == 5) then
			return "镜像挑战"
		elseif (i == 6) then
			return "随机英雄挑战"
		elseif (i == 7) then
			return "金钟罩挑战"
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
			困难最低通关要求:(轮回)

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
			困难最低通关要求:(轮回)

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
		elseif (i == 5) then
			return "
			镜像挑战如下:

			该挑战下进攻怪为英雄的转生镜像,
			与转生类似的属性,不拥有转生技能,
			拥有与英雄一样的物品,
			波数对应为转数,怪物数量会少3倍.
			(进攻怪的经验固定在100/个)

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(轮回)
			难度越大每波怪对应的转数越大。

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		elseif (i == 6) then
			return "
			随机英雄挑战如下:

			只能选取随机英雄.
			但是可以额外获得5000金币.

			简单最低通关要求:(天国)
			中等最低通关要求:(炼狱)
			困难最低通关要求:(轮回)

			|cff00ccff在该模式下不能获得成就及皮肤.|r
			"
		elseif (i == 7) then
			return "
			金钟罩挑战如下:

			所有进攻怪与BOSS只会攻击基地,
			包括部分副本BOSS.
			但是你兑换防护罩时额外获得2个.

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
			return C3(1,5,8)
		elseif (CType == 2) then
			return C3(1,5,8)
		elseif (CType == 3) then
			return C3(1,5,8)
		elseif (CType == 4) then
			return C3(1,5,8)
		elseif (CType == 5) then
			return C3(1,5,8)
		elseif (CType == 6) then
			return C3(1,5,8)
		elseif (CType == 7) then
			return C3(1,5,8)
		endif
		return 0
	endfunction
endlibrary