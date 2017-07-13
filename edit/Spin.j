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
//---------------------------------------------------------------------------------------------------
	/*
	    玄雪的皮肤条件
	*/
	function IsXuanxueSpin1 takes player p returns boolean
		return GetXuanxue1Spin(p)
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    泰雅的皮肤条件
	*/
	function IsTaiyaSpin1 takes player p returns boolean
		return GetTaiya1Spin(p)
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    寒殇的皮肤条件
	*/
	function IsHanshangSpin1 takes player p returns boolean
		return GetHanshang1Spin(p)
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    辰寂的皮肤条件
	*/
	function IsChenjiSpin1 takes player p returns boolean
		return GetChenji1Spin(p)
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凌雪的皮肤条件
	*/
	function IsLingxueSpin1 takes player p returns boolean
		return GetLingxue1Spin(p)
		//return true
	endfunction

endlibrary