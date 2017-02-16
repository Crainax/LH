

//! import "SpellBase.j"
//! import "Printer.j"
library_once Kaisa requires SpellBase,Printer
	
	globals
		unit kaisa = null
	endglobals
//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	/*
	    初始化牛头
	*/
	function InitKaisa takes unit u returns nothing
		set kaisa = u
	endfunction

endlibrary