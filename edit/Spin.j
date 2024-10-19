#include  "LHBase.j"
///#include  "NetVersion.j"

library_once Spin requires LHBase,Version

	globals
		boolean array BCancelSpin

	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    反转物品
	*/
	private function CreateFanzhuanItemTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local item it = LoadItemHandle(LHTable,id,1)
		if (it != null) then
			call RemoveItem(it)
		endif
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set it = null
		set t = null
	endfunction

	function CreateFanzhuanItem takes unit u returns nothing
    	local timer t = CreateTimer()
    	call SaveItemHandle(LHTable,GetHandleId(t),1,UnitAddItemByIdSwapped(GetFanzhuanItemType(u), u))
    	call TimerStart(t,60,false,function CreateFanzhuanItemTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨的皮肤条件
	*/
	function IsSeyuSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetSeyu1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月的皮肤条件
	*/
	function IsXiaoyueSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetXiaoyue1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    湮灭的皮肤条件
	*/
	function IsYanmieSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetYanmie1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    玄雪的皮肤条件
	*/
	function IsXuanxueSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetXuanxue1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    泰雅的皮肤条件
	*/
	function IsTaiyaSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetTaiya1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    寒殇的皮肤条件
	*/
	function IsHanshangSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetHanshang1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    辰寂的皮肤条件
	*/
	function IsChenjiSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetChenji1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂的皮肤条件
	*/
	function IsChenjiSpin2 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetChenji2Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凌雪的皮肤条件
	*/
	function IsLingxueSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetLingxue1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    莫琪的皮肤条件
	*/
	function IsMoqiSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetMoqiSpin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凯撒的皮肤条件
	*/
	function IsKaisaSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetKaisaSpin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    玄雪的皮肤条件
	*/
	function IsXuanxueSpin2 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetXuanxue2Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    霸绝的皮肤条件
	*/
	function IsBajueSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetBajue1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    摄焱的皮肤条件
	*/
	function IsSheyanSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetSheyan1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸的皮肤条件
	*/
	function IsHuanyiSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetHuanyi1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    司宸的皮肤条件
	*/
	function IsSichenSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetSichen1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌的皮肤条件
	*/
	function IsCanglingSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetCangling1Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    司宸的皮肤条件
	*/
	function IsHeiyanSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetHeiyan1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    炼金的皮肤条件
	*/
	function IsHanshangSpin2 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetHanshang2Spin(p))
		//return true
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    离魑的皮肤条件
	*/
	function IsLichiSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetLichi1Spin(p))
		//return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    星胧的皮肤条件
	*/
	function IsXinglongSpin1 takes player p returns boolean
		return (not(BCancelSpin[GetConvertedPlayerId(p)])) and (GetXinglong1Spin(p))
		//return true
	endfunction

endlibrary