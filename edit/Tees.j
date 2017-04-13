
globals
	//62的长度,可以存31个英雄
	string array heroCountString
	unit array udg_H
	constant integer HERO_COUNT = 15
endglobals

function GetIncreaseHeroString takes player p, integer i returns string
		local integer index = GetConvertedPlayerId(p)
		local integer length
		local integer times 
		local string temp 
		if (i<1 or i>31) then
			return null
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
		return heroCountString[index]
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄索引号
	*/
	function GetHeroIndex takes integer heroType returns integer
		if (heroType == 'Ocbh') then
			return 1
		elseif (heroType == 'Eevi') then
			return 2
		elseif (heroType == 'Hvwd') then
			return 3
		elseif (heroType == 'Uktl') then
			return 4
		elseif (heroType == 'N018') then
			return 5
		elseif (heroType == 'Ewrd') then
			return 6
		elseif (heroType == 'Usyl') then
			return 7
		elseif (heroType == 'Hjai') then
			return 8
		elseif (heroType == 'Harf') then
			return 9
		elseif (heroType == 'Nalc') then
			return 10
		elseif (heroType == 'Etyr') then
			return 11
		elseif (heroType == 'aa12') then
			return 12
		elseif (heroType == 'Udea') then
			return 13
		elseif (heroType == 'Hkal') then
			return 14
		elseif (heroType == 'Hant') then
			return 15
		endif
		return 0
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
	    获取英雄名，由索引
	*/
function GetIndexHeroName takes integer i returns string
		local string result = ""
		if (i == 1) then
			set result = "凯撒"
		elseif (i == 2) then
			set result = "湮灭"
		elseif (i == 3) then
			set result = "莫琪"
		elseif (i == 4) then
			set result = "玄雪"
		elseif (i == 5) then
			set result = "霸绝"
		elseif (i == 6) then
			set result = "瑟雨"
		elseif (i == 7) then
			set result = "晓月"
		elseif (i == 8) then
			set result = "凌雪"
		elseif (i == 9) then
			set result = "辰寂"
		elseif (i == 10) then
			set result = "寒殇"
		elseif (i == 11) then
			set result = "泰雅"
		elseif (i == 12) then
			set result = "摄焱"
		elseif (i == 13) then
			set result = "黑阎"
		elseif (i == 14) then
			set result = "梦霁"
		elseif (i == 15) then
			set result = "幻逸"
		endif
		return result
endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄彩名
	*/
	function GetIndexHeroColorName takes integer i returns string
		local string result = ""
		if (i == 1) then
			set result = "|cffff0000凯撒|r"
		elseif (i == 2) then
			set result = "|cFFFFCC66湮灭|r"
		elseif (i == 3) then
			set result = "|cFF999900莫琪|r"
		elseif (i == 4) then
			set result = "|cFF33FF33玄雪|r"
		elseif (i == 5) then
			set result = "|cFFCCFF66霸绝|r"
		elseif (i == 6) then
			set result = "|cFFCCFF33瑟雨|r"
		elseif (i == 7) then
			set result = "|cffff00ff晓月|r"
		elseif (i == 8) then
			set result = "|cFFFF3399凌雪|r"
		elseif (i == 9) then
			set result = "|cFFCCFF00辰寂|r"
		elseif (i == 10) then
			set result = "|cFF33FF33寒殇|r"
		elseif (i == 11) then
			set result = "|cFFFF3399泰雅|r"
		elseif (i == 12) then
			set result = "|cff00ccff摄焱|r"
		elseif (i == 13) then
			set result = "|cffff6800黑阎|r"
		elseif (i == 14) then
			set result = "|cffff99cc梦霁|r"
		elseif (i == 15) then
			set result = "|cff00ccff幻逸|r"
		endif
		return result
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

function Trig_aActions takes nothing returns nothing
	local integer target = S2I(GetEventPlayerChatString())
	call GetIncreaseHeroString(Player(0),target)
	call PrintAllHeroTimes(Player(0))
	call BJDebugMsg("你的最多英雄:"+GetIndexHeroColorName(GetBestHero(Player(0))))
endfunction

//===========================================================================
function InitTrig_a takes nothing returns nothing
    set gg_trg_a = CreateTrigger()
    call TriggerRegisterPlayerChatEvent( gg_trg_a, Player(0), "", false )
    call TriggerAddAction(gg_trg_a, function Trig_aActions)
	set heroCountString[1] = "00000000000000000000000000000000000000000000000000000000000000"
	//call BJDebugMsg(heroCountString[1])
endfunction

