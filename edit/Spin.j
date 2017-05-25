//! import "LHBase.j"
//! import "NetVersion.j"
library_once Spin requires LHBase,Version
	
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨的皮肤条件
	*/
	function IsSeyuSpin1 takes player p returns boolean
		return GetSeyu1Spin(p)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月的皮肤条件
	*/
	function IsXiaoyueSpin1 takes player p returns boolean
		return GetXiaoyue1Spin(p)
	endfunction

endlibrary