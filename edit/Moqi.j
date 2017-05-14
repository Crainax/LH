//! import "LHBase.j"

library_once Moqi  requires LHBase 
	
//---------------------------------------------------------------------------------------------------
	/*
	    给星加陨落技能
	*/
	function XingJuxing2 takes unit u returns nothing
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(moqi))]) then
			call UnitAddAbility(u,'A0HW')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒初始化
	*/
	function JuexingMoqi2 takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			call UnitAddAbility(udg_Unit_Qixing[i],'A0HW')
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒取消
	*/
	function QJuexingMoqi takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			call UnitRemoveAbility(udg_Unit_Qixing[i],'A0HW')
			set i = i + 1
		endloop
	endfunction
endlibrary