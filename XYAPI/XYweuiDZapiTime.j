#ifndef XYweuiDZapiTimeIncluded
#define XYweuiDZapiTimeIncluded

#include "XYwebase.j"
#include "DzAPI.j"

library XYweuiDZapiTime initializer UpdateTimeAll requires XYwebase, DzAPI

/*
º¯ÊýÃû³Æ£º    DZapi·þÎñÆ÷Ê±¼ä´Á×ª»» 
Ô­×÷Õß£º      Ð¡¹íQimp 
ÐÞ¸ÄÕß£º      ÐÂÔÂÍÅ¶Ó:¶ñÄ§-ÒÅÍü 
×îºóÐÞ¸ÄÈÕÆÚ£º2016Äê/12ÔÂ/17ÈÕ 
º¯Êý°æ±¾ºÅ£º  3.0
*/

function InitArray takes nothing returns nothing
	set NORMALMON[1] = 31
	set NORMALMON[2] = 28
	set NORMALMON[3] = 31
	set NORMALMON[4] = 30
	set NORMALMON[5] = 31
	set NORMALMON[6] = 30
	set NORMALMON[7] = 31
	set NORMALMON[8] = 31
	set NORMALMON[9] = 30
	set NORMALMON[10] = 31
	set NORMALMON[11] = 30
	set NORMALMON[12] = 31
    set WEEKSTR[0] = "æ—¥" 
    set WEEKSTR[1] = "ä¸€"
    set WEEKSTR[2] = "äºŒ"
    set WEEKSTR[3] = "ä¸‰"
    set WEEKSTR[4] = "å››"
    set WEEKSTR[5] = "äº”"
    set WEEKSTR[6] = "å…­"
endfunction

function MathMod takes integer dividend, integer divisor returns integer
    local integer modulus = dividend - (dividend / divisor) * divisor
    if (modulus < 0) then
        set modulus = modulus + divisor
    endif

    return modulus
endfunction

function MathFloor takes real a returns integer
	return R2I(a)
endfunction

function IsLeapYear takes integer y returns boolean
	if MathMod(y,4) == 0 then
		if MathMod(y,100) == 0 then
            if MathMod(y,400) == 0 then
                return true
            else
                return false
            endif
		endif
		return true
	endif
	return false
endfunction

function Time_UpdateDate takes integer y, integer remainSec, integer dayBy2015 returns nothing
	local boolean bIsLeap = IsLeapYear(y)
    local real dayNum = I2R(remainSec) / (24*60*60)
	local integer totalDay = MathFloor(dayNum)
    local integer totalDayBase = 0
	local integer totalMonDay = 0
	local integer curMonDay = 0
	local integer m = 1

	if (dayNum - I2R(totalDay)) > 0 then
		set totalDay = totalDay + 1
	endif
	if totalDay == 0 then
		set totalDay = 1
	endif

    set dayBy2015 = dayBy2015 + totalDay
    
	loop
	exitwhen m > 12
		if bIsLeap and m == 2 then 
			set curMonDay = NORMALMON[m] + 1
		else
			set curMonDay = NORMALMON[m]
		endif
        if totalDay <= curMonDay then
            set XYweuiZHDZapiTime_Year = y
			set XYweuiZHDZapiTime_Mon = m
			set XYweuiZHDZapiTime_Day = totalDay
			set XYweuiZHDZapiTime_Hour = MathMod(MathFloor(remainSec/(60*60) ), 24)
			set XYweuiZHDZapiTime_Min = MathMod(MathFloor(remainSec/60) , 60 )
			set XYweuiZHDZapiTime_Sec = MathMod(remainSec , 60)
            set m = 100
        endif
        
		set m = m + 1
        set totalDay = totalDay - curMonDay
	endloop
	
	set XYweuiZHDZapiTime_Week = MathMod( MathMod(dayBy2015,7) + BASE2015_WEEKDAY, 7 )

endfunction

function GetDate takes integer now returns nothing
	local integer remain = now - BASE2015_SEC + BJTIME// Ä¬ÈÏ¶«°ËÇø
	local integer y = 2016
	local integer baseRemain = 0
    local integer dayBy2015 = 0
    local integer baseDayBy2015 = 0
    
	loop
	exitwhen y > 3000
		set baseRemain = remain
        set baseDayBy2015 = dayBy2015
		if IsLeapYear(y) then
			set remain = remain - LS
            set dayBy2015 = dayBy2015 + 366
		else
			set remain = remain - NS
            set dayBy2015 = dayBy2015 + 365
		endif
		if remain < 0 then
			call Time_UpdateDate(y, baseRemain, baseDayBy2015)
			set y = 10000
		endif
		set y = y + 1
	endloop
endfunction


function ShowDataByTime takes integer time returns nothing
    if not udg_bIsInit then
        call InitArray()
        set udg_bIsInit = true
    endif
    if time == 0 then
        set time = DzAPI_Map_GetGameStartTime()
    endif
    call GetDate(time)
    call BJDebugMsg( "ÏÖÔÚÊ±¼äÎª" + I2S(XYweuiZHDZapiTime_Year) + "Äê" + I2S(XYweuiZHDZapiTime_Mon)+"ÔÂ"+ I2S(XYweuiZHDZapiTime_Day)+"ÈÕ"+ I2S(XYweuiZHDZapiTime_Hour)+"Ê±"+ I2S(XYweuiZHDZapiTime_Min)+"·Ö"+ I2S(XYweuiZHDZapiTime_Sec)+"Ãë  "+"ÐÇÆÚ" + WEEKSTR[XYweuiZHDZapiTime_Week]  )
endfunction

function UpdateTimeAllTimer takes nothing returns nothing
    set udg_ServerTime = udg_ServerTime + 1
    call GetDate(udg_ServerTime)
endfunction

private function UpdateTimeAll takes nothing returns nothing
    local timer t = CreateTimer()
    call InitArray()
    set udg_ServerTime = DzAPI_Map_GetGameStartTime()
    call GetDate(udg_ServerTime)
    call TimerStart( t, 1, true, function UpdateTimeAllTimer )
    set t = null
endfunction

function XYweuiZHDZapiTime takes integer XYweui1 returns integer
    local integer XYweui_1
    call XYweuiOpenAll2()
    if XYweui1 == 1 then
        set XYweui_1 = XYweuiZHDZapiTime_Year
    endif
    if XYweui1 == 2 then
        set XYweui_1 = XYweuiZHDZapiTime_Mon 
    endif
    if XYweui1 == 3 then
        set XYweui_1 = XYweuiZHDZapiTime_Day 
    endif
    if XYweui1 == 4 then
        set XYweui_1 = XYweuiZHDZapiTime_Hour 
    endif
    if XYweui1 == 5 then
        set XYweui_1 = XYweuiZHDZapiTime_Min 
    endif
    if XYweui1 == 6 then
        set XYweui_1 = XYweuiZHDZapiTime_Sec 
    endif
    if XYweui1 == 7 then
        set XYweui_1 = XYweuiZHDZapiTime_Week 
    endif
    
    return XYweui_1
endfunction

function XYweuiZHDZapiWEEK takes nothing returns string
     local string XYweui_1 = WEEKSTR[XYweuiZHDZapiTime_Week] 
     
     return XYweui_1
endfunction
 
endlibrary

#endif /// XYweuiDZapiTimeIncluded
