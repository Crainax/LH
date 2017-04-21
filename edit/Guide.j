//! import "LHBase.j"

library_once Guide requires LHBase 

	globals
		texttag array ttGuide
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    刷新一下指示文字的位置
	*/
	private function FlashGuideLoc takes nothing returns nothing
		local integer index = LoadInteger(LHTable,GetHandleId(GetExpiredTimer()),1)
		call SetTextTagPosUnitBJ(ttGuide[index],udg_H[index],20)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    绑定教程漂浮文字
	*/
	function BindGuide takes unit u returns nothing

		local timer t = CreateTimer()
		set ttGuide[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateTextTagUnitBJ("<新手指引>欢迎进入轮回之狱的世界，在该模式中，该处的指示文字会介绍最简单的入门流程，跟着一起行动吧！", u, 0, 12, 100, 0, 100, 0 )
		call SaveInteger(LHTable,GetHandleId(t),1,GetConvertedPlayerId(GetOwningPlayer(u)))
		call TimerStart(t,0.05,true,function FlashGuideLoc)
		set t = null

	endfunction

endlibrary