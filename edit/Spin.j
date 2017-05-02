//! import "LHBase.j"

library_once Spin requires LHBase,Version
	
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨的皮肤条件
	*/
	function IsSeyuSpin1 takes player p returns boolean
		return GetSeyu1Spin(p)
	endfunction

endlibrary