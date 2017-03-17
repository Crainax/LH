
//! import "LHBase.j"
library_once Diffculty requires LHBase 
	
	globals
		/*
		    地狱1,末日2,轮回3
		*/
		integer NanDiff = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    加强攻击力
	*/
	function EnhanceDiffAttack takes unit u returns nothing
		if (NanDiff <= 0) then
			return
		endif

		//100倍攻击加强
		if (GetUnitAbilityLevel(u,'A09V') >= 1) then
			call SetUnitAbilityLevel(u,'A09V',NanDiff + 1)
			return
		endif

		call UnitAddAbility(u,'A0EY')
		call SetUnitAbilityLevel(u,'A0EY',NanDiff)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取巨能对应等级的科技
	*/
	function GetJunengTech takes nothing returns integer

		if (NanDiff == 1) then
			return 'R00T'
		elseif (NanDiff == 2) then
			return 'R00U'
		elseif (NanDiff == 3) then
			return 'R00V'
		else
			return 'R00R'
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取擂台升级的速度
	*/
	function GetArenaUpdateSpeed takes nothing returns real
		if (NanDiff == 1) then
			return 4.
		elseif (NanDiff == 2) then
			return 3.
		elseif (NanDiff == 3) then
			return 2.
		else
			return 5.
		endif
	endfunction


endlibrary