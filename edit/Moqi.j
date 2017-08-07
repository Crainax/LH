//! import "LHBase.j"
//! import "Spin.j"

library_once Moqi  requires LHBase,Spin
	
//---------------------------------------------------------------------------------------------------
	/*
	    大招角度得皮肤
	*/
	function JudgeMoqiSpin takes nothing returns nothing
		local location point1 = null
		local location point2 = null
		local real angle = 0.
		if (GetDistance(GetUnitX(moqi),GetUnitY(moqi),GetSpellTargetX(),GetSpellTargetY())<10) then
			return
		endif
		set point1 = GetUnitLoc(moqi)
		set point2 = GetSpellTargetLoc()
		set angle = AngleBetweenPoints(point1, point2)
		call DisplayTextToPlayer(GetOwningPlayer(moqi), 0., 0., "|cFFFF66CC【消息】|r技能施放角度为"+R2S(angle)+"度.")
		if (angle < 90.1 and angle > 89.9) then
			call SetMoqiSpinOK(GetOwningPlayer(moqi))
		endif

		call RemoveLocation(point1)
		call RemoveLocation(point2)
	endfunction
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
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是皮肤
	*/
	function IsMoqiSpin takes nothing returns boolean
		return GetUnitTypeId(xiaoyue) == 'H01X'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤
	*/
	private function InitMoqiSpin takes unit u returns unit
		if (IsMoqiSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H01X',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Hvwd_0016 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化莫琪
	*/
	function InitMoqi takes unit u returns nothing
		set moqi = InitMoqiSpin(u)

		call TriggerRegisterUnitEvent( gg_trg_______17, moqi, EVENT_UNIT_DAMAGED )
		call TriggerRegisterUnitEvent( gg_trg_______19, moqi, EVENT_UNIT_ATTACKED )

	endfunction
endlibrary
