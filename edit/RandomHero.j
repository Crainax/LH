//! import "LHBase.j"
//! import "NetVersion.j"
//! import "PIV.j"

library_once RandomHero  requires LHBase,Version,PIV

	globals
		boolean array BSuiji
	endglobals

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
		local group g2 = null
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

		call GroupRemoveUnit(g,gg_unit_H02B_0293)
		set BSuiji[GetConvertedPlayerId(p)] = true
		set g2 = GetRandomSubGroup(1,g)
		set u = FirstOfGroup(g2)
		call DestroyGroup(g)
		call DestroyGroup(g2)
		set g = null
		set g2 = null

	    call SelectUnitForPlayerSingle( u, p )
	    call SelectUnitForPlayerSingle( u, p )
	    set u = null
	endfunction
endlibrary