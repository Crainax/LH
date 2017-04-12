
globals
	//62的长度,可以存31个英雄
	string array heroCountString
endglobals

function GetIncreaseHeroString takes player p, integer i returns string
	local integer index = GetConvertedPlayerId(p)
	local integer length = StringLength(heroCountString[index])
	local integer times = S2I(SubStringBJ(heroCountString[index],2*i -1,2*i))
	local string temp = heroCountString[index]
	call BJDebugMsg(heroCountString[index])
	call BJDebugMsg("times:"+I2S(times))
	set times = IMinBJ(99,times+1)
	set heroCountString[index] = SubStringBJ(temp,1,2*i - 2)
	if (times < 10) then
		set heroCountString[index] = heroCountString[index] + "0" +I2S(times)
	else
		set heroCountString[index] = heroCountString[index] + I2S(times)
	endif
	set heroCountString[index] = heroCountString[index] + SubStringBJ(temp,2*i+1,length)
	call BJDebugMsg("out:"+heroCountString[index])
	set temp = null
	return heroCountString[index]
endfunction

function GetHeroIndexTimes takes player p, integer i returns integer
	return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)],2*i -1,2*i))
endfunction


function GetHeroTimes takes player p returns integer
	local unit u = udg_H[GetConvertedPlayerId(GetOwningPlayer(p))]
	local integer i = 0
	if (GetUnitTypeId(u) == 'aaa1') then
		set i = 1
	elseif (GetUnitTypeId(u) == 'aaa2') then
		set i = 2
	elseif (GetUnitTypeId(u) == 'aaa3') then
		set i = 3
	elseif (GetUnitTypeId(u) == 'aaa4') then
		set i = 4
	elseif (GetUnitTypeId(u) == 'aaa5') then
		set i = 5
	elseif (GetUnitTypeId(u) == 'aaa6') then
		set i = 6
	elseif (GetUnitTypeId(u) == 'aaa7') then
		set i = 7
	elseif (GetUnitTypeId(u) == 'aaa8') then
		set i = 8
	elseif (GetUnitTypeId(u) == 'aaa9') then
		set i = 9
	elseif (GetUnitTypeId(u) == 'aa10') then
		set i = 10
	elseif (GetUnitTypeId(u) == 'aa11') then
		set i = 11
	elseif (GetUnitTypeId(u) == 'aa12') then
		set i = 12
	elseif (GetUnitTypeId(u) == 'aa13') then
		set i = 13
	elseif (GetUnitTypeId(u) == 'aa14') then
		set i = 14
	elseif (GetUnitTypeId(u) == 'aa15') then
		set i = 15
	endif
	set u = null
	if (i>0) then
		return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)],2*i -1,2*i))
	else
		return 0
	endif
endfunction

function GetHeroName takes player p returns string
	local unit u = udg_H[GetConvertedPlayerId(GetOwningPlayer(p))]
	local string result = ""
	if (GetUnitTypeId(u) == 'aaa1') then
		set result = "凯撒"
	elseif (GetUnitTypeId(u) == 'aaa2') then
		set result = "湮灭"
	elseif (GetUnitTypeId(u) == 'aaa3') then
		set result = "莫琪"
	elseif (GetUnitTypeId(u) == 'aaa4') then
		set result = "玄雪"
	elseif (GetUnitTypeId(u) == 'aaa5') then
		set result = "霸绝"
	elseif (GetUnitTypeId(u) == 'aaa6') then
		set result = "瑟雨"
	elseif (GetUnitTypeId(u) == 'aaa7') then
		set result = "晓月"
	elseif (GetUnitTypeId(u) == 'aaa8') then
		set result = "凌雪"
	elseif (GetUnitTypeId(u) == 'aaa9') then
		set result = "辰寂"
	elseif (GetUnitTypeId(u) == 'aa10') then
		set result = "寒殇"
	elseif (GetUnitTypeId(u) == 'aa11') then
		set result = "泰雅"
	elseif (GetUnitTypeId(u) == 'aa12') then
		set result = "摄焱"
	elseif (GetUnitTypeId(u) == 'aa13') then
		set result = "黑阎"
	elseif (GetUnitTypeId(u) == 'aa14') then
		set result = "梦霁"
	elseif (GetUnitTypeId(u) == 'aa15') then
		set result = "幻逸"
	endif
	set u = null
	return result
endfunction

function PrintAllHeroTimes takes player p returns nothing

endfunction

function Trig_aActions takes nothing returns nothing
	local integer target = S2I(GetEventPlayerChatString())
	call GetIncreaseHeroString(Player(0),target)
	call BJDebugMsg("HeroTimes:"+I2S(GetHeroIndexTimes(Player(0),target)))
endfunction

//===========================================================================
function InitTrig_a takes nothing returns nothing
    set gg_trg_a = CreateTrigger()
    call TriggerRegisterPlayerChatEvent( gg_trg_a, Player(0), "", false )
    call TriggerAddAction(gg_trg_a, function Trig_aActions)
	set heroCountString[1] = "00000000000000000000000000000000000000000000000000000000000000"
	//call BJDebugMsg(heroCountString[1])
endfunction

