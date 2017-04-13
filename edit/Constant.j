/*
    常量
*/
library_once Constant  
	
	globals
		string diffculty = ""
		/*
		    英雄数量
		*/
		constant integer HERO_COUNT = 15
		/*
		    活动开关
		*/
		boolean Huodong = false
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
	    获取英雄索引号
	*/
	function GetHeroIndex takes integer heroType returns integer
		if (heroType == 'Ocbh') then
			return 1
		elseif (heroType == 'Eevi') then
			return 2
		elseif (heroType == 'Hvwd') then
			return 3
		elseif (heroType == 'Uktl') then
			return 4
		elseif (heroType == 'N018') then
			return 5
		elseif (heroType == 'Ewrd') then
			return 6
		elseif (heroType == 'Usyl') then
			return 7
		elseif (heroType == 'Hjai') then
			return 8
		elseif (heroType == 'Harf') then
			return 9
		elseif (heroType == 'Nalc') then
			return 10
		elseif (heroType == 'Etyr') then
			return 11
		elseif (heroType == 'aa12') then
			return 12
		elseif (heroType == 'Udea') then
			return 13
		elseif (heroType == 'Hkal') then
			return 14
		elseif (heroType == 'Hant') then
			return 15
		endif
		return 0
	endfunction	
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄名，由索引
	*/
	function GetIndexHeroName takes integer i returns string
			local string result = ""
			if (i == 1) then
				set result = "凯撒"
			elseif (i == 2) then
				set result = "湮灭"
			elseif (i == 3) then
				set result = "莫琪"
			elseif (i == 4) then
				set result = "玄雪"
			elseif (i == 5) then
				set result = "霸绝"
			elseif (i == 6) then
				set result = "瑟雨"
			elseif (i == 7) then
				set result = "晓月"
			elseif (i == 8) then
				set result = "凌雪"
			elseif (i == 9) then
				set result = "辰寂"
			elseif (i == 10) then
				set result = "寒殇"
			elseif (i == 11) then
				set result = "泰雅"
			elseif (i == 12) then
				set result = "摄焱"
			elseif (i == 13) then
				set result = "黑阎"
			elseif (i == 14) then
				set result = "梦霁"
			elseif (i == 15) then
				set result = "幻逸"
			endif
			return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄彩名
	*/
	function GetIndexHeroColorName takes integer i returns string
		local string result = ""
		if (i == 1) then
			set result = "|cffff0000凯撒|r"
		elseif (i == 2) then
			set result = "|cFFFFCC66湮灭|r"
		elseif (i == 3) then
			set result = "|cFF999900莫琪|r"
		elseif (i == 4) then
			set result = "|cFF33FF33玄雪|r"
		elseif (i == 5) then
			set result = "|cFFCCFF66霸绝|r"
		elseif (i == 6) then
			set result = "|cFFCCFF33瑟雨|r"
		elseif (i == 7) then
			set result = "|cffff00ff晓月|r"
		elseif (i == 8) then
			set result = "|cFFFF3399凌雪|r"
		elseif (i == 9) then
			set result = "|cFFCCFF00辰寂|r"
		elseif (i == 10) then
			set result = "|cFF33FF33寒殇|r"
		elseif (i == 11) then
			set result = "|cFFFF3399泰雅|r"
		elseif (i == 12) then
			set result = "|cff00ccff摄焱|r"
		elseif (i == 13) then
			set result = "|cffff6800黑阎|r"
		elseif (i == 14) then
			set result = "|cffff99cc梦霁|r"
		elseif (i == 15) then
			set result = "|cff00ccff幻逸|r"
		endif
		return result
	endfunction
//---------------------------------------------------------------------------------------------------

endlibrary