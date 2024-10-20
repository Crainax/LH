#ifndef JungleIncluded
#define JungleIncluded

#include  "edit/LHBase.j"
#include  "edit/Diffculty.j"

library_once Jungle requires LHBase,Diffculty

	globals
		unit UYeYang = null
		unit UYeYin = null
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    死亡奖励木材
	*/
	private function Jungle4DropCon takes nothing returns boolean
		return GetDyingUnit() == UYeYang or GetDyingUnit() == UYeYin
	endfunction

	private function Jungle4DropAct takes nothing returns nothing
		local integer i = 1
    	call BJDebugMsg("|cFFFF66CC【消息】|r"+GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))])+"成功地击杀了"+GetUnitName(GetDyingUnit())+",所有玩家奖励1000木材！")
    	loop
    		exitwhen i > 6
			call AdjustPlayerStateBJ( 1000, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
    		set i = i +1
    	endloop

    	call AddPlayerTechResearched( Player(10), 'R00W', udg_RENSHU )

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断旁边是否有人,然后再判定是否无敌的
	*/
	private function SetJudgeJungle4InvuFilter takes nothing returns boolean
		return IsEnemyMP(GetFilterUnit(),Player(10)) == true
	endfunction
	private function SetJudgeJungle4Invu takes unit u returns nothing
		local group l_group = CreateGroup()
		call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 900, Condition(function SetJudgeJungle4InvuFilter))
		if (GetUnitAbilityLevel(u,'Avul') < 1 and CountUnitsInGroup(l_group) == 0) then
			call UnitAddAbility(u,'Avul')
			call PauseUnit(u,true)
			call SetUnitLifePercentBJ(u,100)
		elseif (GetUnitAbilityLevel(u,'Avul') >= 1 and CountUnitsInGroup(l_group) != 0) then
			call UnitRemoveAbility(u,'Avul')
			call PauseUnit(u,false)
		endif
		set l_group = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    判断4级野有人否
	*/

	private function JungleFlash takes nothing returns nothing
		//阳
		if (IsUnitAliveBJ(UYeYang)) then
			call SetJudgeJungle4Invu(UYeYang)
		else
			call RemoveUnit(UYeYang)
			if (GetPlayerTechCountSimple('R00W', Player(10)) < 100) then
		    	set UYeYang = CreateUnit(Player(10), 'Orkn', 14707.6, - 290.4, 180.000)
	 		    call EnhanceDiffAttack(UYeYang)
		    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(UYeYang), GetUnitY(UYeYang) ))
		    	call AddTianyanmokang(UYeYang)
			endif
		endif

		//阴
		if (IsUnitAliveBJ(UYeYin)) then
			call SetJudgeJungle4Invu(UYeYin)
		else
			call RemoveUnit(UYeYin)
			if (GetPlayerTechCountSimple('R00W', Player(10)) < 100) then
		    	set UYeYin = CreateUnit(Player(10), 'Osam', 1923.9, - 420.4, 0.000)
			    call EnhanceDiffAttack(UYeYin)
		    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(UYeYin), GetUnitY(UYeYin) ))
		    	call AddTianyanmokang(UYeYin)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	function InitJungle takes nothing returns nothing
	    local trigger t = CreateTrigger()

	    set UYeYang = CreateUnit(Player(10), 'Orkn', 14707.6, - 290.4, 180.000)
	    set UYeYin = CreateUnit(Player(10), 'Osam', 1923.9, - 420.4, 0.000)
	    call EnhanceDiffAttack(UYeYang)
	    call EnhanceDiffAttack(UYeYin)
		//死亡奖励木头
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function Jungle4DropCon))
	    call TriggerAddAction(t, function Jungle4DropAct)

	    call TimerStart(CreateTimer(),5,true,function JungleFlash)

	    set t = null
	endfunction

endlibrary

#endif
