//! import "LHBase.j"
//! import "NetVersion.j"
library_once Spin requires LHBase,Version
	
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨的皮肤条件
	*/
	function IsSeyuSpin1 takes player p returns boolean
		return GetSeyu1Spin(p)
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月的皮肤条件
	*/
	function IsXiaoyueSpin1 takes player p returns boolean
		return GetXiaoyue1Spin(p)
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    湮灭的皮肤条件
	*/
	function IsYanmieSpin1 takes player p returns boolean
		return GetYanmie1Spin(p)
		//return true
	endfunction

endlibrary