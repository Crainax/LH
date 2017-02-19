//! import "LHBase.j"

library_once PIV initializer InitPIV requires LHBase 
	globals
		boolean array sPIV
	endglobals

//---------------------------------------------------------------------------------------------------
	function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction
	
//---------------------------------------------------------------------------------------------------
	private function InitPIV takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6

			set sPIV[i] = false

			set i = i +1
		endloop
	endfunction

endlibrary