
//! import "YDWETriggerEvent.j"
library_once debug initializer Initdebug  

	globals
		boolean show_damage = true
	endglobals

	function Initdebug takes nothing returns nothing
		
		debug call initDebugTri()

	endfunction

	function initDebugTri takes nothing returns nothing
		local trigger t = CreateTrigger()
		call YDWESyStemItemUnmovableRegistTrigger(t)
		call 
	endfunction

endlibrary