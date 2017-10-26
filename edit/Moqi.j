//! import "LHBase.j"
//! import "Printer.j"
//! import "SpellBase.j"
//! import "Spin.j"

library_once Moqi  requires LHBase,Spin,Printer,SpellBase
	
	globals
		private group GMoqiXingxuan = null
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	     这个是星璇伤害
	*/
	function SimulateDamageMoqi takes unit u returns boolean
		//星璇的伤害
		if (GetUnitTypeId(u) == 'h010') then
			if not(IsUnitInGroup(GetTriggerUnit(),GMoqiXingxuan)) then
				call UnitDamageTarget( moqi, GetTriggerUnit(), GetDamageAgi(moqi) * 0.01 * GetUnitUserData(u), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
				call GroupAddUnit(GMoqiXingxuan,GetTriggerUnit())
			endif
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星璇
	*/
	function XingxuanTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local integer times = LoadInteger(spellTable,GetHandleId(t),2)
		//是第几颗星星
		local integer i = LoadInteger(spellTable,GetHandleId(t),3)
		local real degree = ModuloReal((((-80.0)*times/200.0)+90.0)*times,360.)+i*51.42
		local real x = 20 * times * CosBJ(degree) + LoadReal(spellTable,GetHandleId(t),4)
		local real y = 20 * times * SinBJ(degree) + LoadReal(spellTable,GetHandleId(t),5)
		//call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r"+I2S(times)+":"+R2S(degree))
		if (times < 100) then
			set times = times + 1
			//call CreateUnit(Player(0),'hpea', x,y ,0)
			call SetUnitUserData(u,times * 2 + 50)
			call SaveInteger(spellTable,GetHandleId(t),2,times)
			//call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r"+I2S(times))
			call SetUnitX(u,x)
			call SetUnitY(u,y)
			call SetUnitFacing(u,degree+90)
		else
			call DestroyGroup(GMoqiXingxuan)
			set GMoqiXingxuan = null
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", x, y ))
			call RemoveUnit(u)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction

	function XingxuanStart takes unit u,integer i returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(spellTable,GetHandleId(t),1, CreateUnit(Player(0),'hpea', GetUnitX(u),GetUnitY(u) ,0))
		call TimerStart(t,0.05,true,function XingxuanTimer)
		call SaveInteger(spellTable,GetHandleId(t),2,0)
		call SaveInteger(spellTable,GetHandleId(t),3,i)
		call SaveReal(spellTable,GetHandleId(t),4,GetUnitX(moqi))
		call SaveReal(spellTable,GetHandleId(t),5,GetUnitY(moqi))
		set t = null	
	endfunction

	function Xingxuan takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Unit_Qixing[i])) then
				call XingxuanStart(udg_Unit_Qixing[i],i)
			endif
			set i = i +1
		endloop
		set GMoqiXingxuan = CreateGroup()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星尘
	*/
	private function XingchenTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local real x = LoadReal(spellTable,GetHandleId(t),2)
		local real y = LoadReal(spellTable,GetHandleId(t),3)
		local real facing = LoadReal(spellTable,GetHandleId(t),4)
		if (GetDistance(GetUnitX(u),GetUnitY(u),x,y) > 50.) then
			call SetUnitX(u,GetUnitX(u)+ CosBJ(facing) * 75.)
			call SetUnitY(u,GetUnitY(u)+ SinBJ(facing) * 75.)
		else
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u),GetUnitY(u) ))
	    	call DamageArea(moqi,GetUnitX(u),GetUnitY(u),450,GetDamageAgi(moqi)* 0.7)
			call KillUnit(u)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction

	function XingchenStart takes unit u,real x,real y returns nothing
		local timer t = CreateTimer()
		local real facing = GetFacingBetweenXY(GetUnitX(u),GetUnitY(u),x,y)
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call SaveReal(spellTable,GetHandleId(t),2,x)
		call SaveReal(spellTable,GetHandleId(t),3,y)
		call SaveReal(spellTable,GetHandleId(t),4,facing)
		call SetUnitFacing(u,facing)
		call TimerStart(t,0.05,true,function XingchenTimer)
		set t = null
	endfunction

	function Xingchen takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Unit_Qixing[i])) then
				call XingchenStart(udg_Unit_Qixing[i],GetSpellTargetX(),GetSpellTargetY())
			endif
			set i = i +1
		endloop
	endfunction
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
			debug call SetMoqiSpinOK(GetOwningPlayer(moqi))
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
