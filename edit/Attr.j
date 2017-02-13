
//! import "LHBase.j"
library_once Attr initializer InitAttr requires LHBase 
	
//---------------------------------------------------------------------------------------------------
	/*
	    增加生命上限增益
	*/
	function AddHPPercent takes integer playerID , real value returns nothing
		set udg_I_Xianglian[( playerID + 18 )] =  udg_I_Xianglian[( playerID + 18 )] + value 
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitAttr takes nothing returns nothing
		


	endfunction

endlibrary