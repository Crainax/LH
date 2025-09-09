#ifndef RandomHeroIncluded
#define RandomHeroIncluded

#include  "edit/LHBase.j"
///#include  "edit/NetVersion.j"
#include  "edit/PIV.j"

library_once RandomHero  requires LHBase,Version,PIV

	globals
		boolean array BSuiji
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    选取一个单位组的随机人物
	*/
	private function GetRandomUnitInGroup takes group g returns unit
		local integer length = CountUnitsInGroup(g)
		local integer pos = 0
		local group temp = CreateGroup()
		local unit u = null
		local integer i = 1
		loop
			exitwhen i > ModuloInteger(DzAPI_Map_GetGameStartTime(),19) + length +udg_Second[1] + udg_Nandu_JJJ
			set pos = GetRandomInt(1,length)
			set i = i + 1
		endloop
		call GroupAddGroup(g,temp)
		loop
			exitwhen pos == 0
			set u = FirstOfGroup(temp)
		    call GroupRemoveUnit(temp, u)
			set pos = pos - 1
		endloop
		call DestroyGroup(temp)
		set temp = null
		return u
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选取随机英雄成功与否
	*/
	private function RandomPickCondition takes nothing returns boolean
		return (RectContainsUnit(gg_rct_______c1,GetFilterUnit()) and (not(IsUnitIsSpin(GetFilterUnit()))) and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO))
	endfunction

	function RandomPick takes player p returns nothing
		local integer i = 1
		local group g = GetUnitsOfPlayerMatching(Player(PLAYER_NEUTRAL_PASSIVE), Condition(function RandomPickCondition))
		local unit u = null
		if not(IsPIV(p)) then
			loop
				exitwhen i > HERO_COUNT
				if (i == 15 and not(GetHuanyiSelectedCon(p))) then
					call GroupRemoveUnit(g,gg_unit_Hant_0205)
				elseif (i == 16 and not(GetCanglingSelectedCon(p))) then
					call GroupRemoveUnit(g,gg_unit_Nsjs_0209)
				elseif (i == 18 and not(GetXinglongSelectedCon(p))) then
					call GroupRemoveUnit(g,gg_unit_Hapm_0255)
				elseif (i == 19 and not(GetXiaotingSelectedCon(p))) then
					call GroupRemoveUnit(g,gg_unit_H01Y_0286)
				endif
				set i = i +1
			endloop
		endif

		// call GroupRemoveUnit(g,gg_unit_H02B_0293)
		set BSuiji[GetConvertedPlayerId(p)] = true
		set u = GetRandomUnitInGroup(g)
		call DestroyGroup(g)
		set g = null

	    call SelectUnitForPlayerSingle( u, p )
	    call SelectUnitForPlayerSingle( u, p )
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    到了5分钟后清除皮肤
	*/
	function ClearSpin takes nothing returns nothing

		local integer i = 1
		local group g = GetUnitsOfPlayerMatching(Player(PLAYER_NEUTRAL_PASSIVE), Condition(function RandomPickCondition))
		local unit l_unit = null
		loop
		    set l_unit = FirstOfGroup(g)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(g, l_unit)
		    if (IsUnitIsSpin(l_unit)) then
		    	call RemoveUnit(l_unit)
		    endif
		endloop
		call DestroyGroup(g)
		set g = null
		set l_unit =null
	endfunction
endlibrary


#endif
