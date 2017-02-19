
//! import "LHBase.j"

library_once Multiboard initializer InitMultiboard requires LHBase 
	globals
		
		integer array centerCredit

	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    增加守家积分
	*/
	function AddCenterCredit takes unit u returns nothing
		local integer index
		if (udg_RENSHU > 1) then
			set index = GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index] = centerCredit[index] + udg_Bo
			call MultiboardSetItemValueBJ( udg_D, 9,  index + 1 , I2S(centerCredit[index]) )
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	private function InitMultiboard takes nothing returns nothing
		
	endfunction
endlibrary