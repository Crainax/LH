/*
    常量
*/
library_once Constant  
	
	globals
		string diffculty = ""

		constant integer COUNT_WANJIE = 17
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前版本
	*/
	function GetVersion takes nothing returns string
		return "2.74"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万劫录
	*/
	function GetWanjieluName takes nothing returns string
		local integer i = GetRandomInt(1,COUNT_WANJIE)
		if (i == 1) then
			return "玩东方入魔的超#5563"
		elseif (i == 2) then
			return "吞雷天尸"
		elseif (i == 3) then
			return "我很无聊TT"
		elseif (i == 4) then
			return "大头三"
		elseif (i == 5) then
			return "瑜丶宝宝"
		elseif (i == 6) then
			return "逝丶无心丿"
		elseif (i == 7) then
			return "小丨情兽"
		elseif (i == 8) then
			return "猪食"
		elseif (i == 9) then
			return "五老星"
		elseif (i == 10) then
			return "刈祈"
		elseif (i == 11) then
			return "未来死亡"
		elseif (i == 12) then
			return "by325614"
		elseif (i == 13) then
			return "啊啊啊大脑在颤抖"
		elseif (i == 14) then
			return "绝对无双"
		elseif (i == 15) then
			return "风萧兮兮易水寒"
		elseif (i == 16) then
			return "丨紫魂丶晓然"
		elseif (i == 17) then
			return "你等到，小NB"
		endif
		return ""
	endfunction

endlibrary