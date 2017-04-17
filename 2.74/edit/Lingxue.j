//! import "SpellBase.j"
library_once Lingxue requires SpellBase 
	
	globals
		unit lingxue = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    复活后关闭碰撞
	*/
	function AfterReviveLingxue takes unit u returns nothing
		if (u == lingxue) then
    		call SetUnitPathing( lingxue, false )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	function InitLingxue takes unit u returns nothing

		set lingxue = u
	endfunction

endlibrary