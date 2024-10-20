#ifndef SheyanIncluded
#define SheyanIncluded

//!import "LHBase.j"
//!import "Spin.j"

library_once Sheyan  requires LHBase,Spin


	globals
		boolean BSheyanBUG = FALSE
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    Body
	*/
	function ShowSheyanDialog takes unit u returns nothing
		if (not(BSheyanBUG) and u == sheyan) then
			set BSheyanBUG = true
			call ShowGameHint(GetOwningPlayer(sheyan),"
				该英雄目前存在着以下:

				使用小狼打巨能会出现
				英雄死亡不会复活的BUG。

				目前版本请不要使用小狼打巨能.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤
	*/
	private function InitSheyanSpin takes unit u returns unit
		if (IsSheyanSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'O004',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Othr_0256 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	function InitSheyan takes unit u returns nothing
		set sheyan = InitSheyanSpin(u)

	endfunction

endlibrary

#endif
