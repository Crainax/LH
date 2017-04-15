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
    /*
        获取彩名
    */
    function GetColorString takes string s returns string
        //todo 彩名
        //todo getbit溢出测试
        return s
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    条件：彩名成就索引条件
	*/
	function IsAchieveColor takes integer achieveID returns boolean
		return achieveID == 19 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    白名显示条件
	*/
	function IsAchieveWhite takes integer achieveID returns boolean
		return achieveID == 12 or achieveID == 216
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    条件：能量之光特效索引条件
	*/
	function IsAchieveLight takes integer achieveID returns boolean
		return IsAchieveColor(achieveID) or achieveID == 18 or achieveID == 210 or achieveID == 222
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取成就名
	*/
	function GetAchievementName takes integer achieveID returns string
		if (achieveID == 19) then
			return GetColorString("【万劫录】")
		elseif (achieveID == 18) then
			return "|cffff00ff【轮回舰】"
		elseif (achieveID == 17) then
			return "|cffff0000【末日车】"
		elseif (achieveID == 16) then
			return "|cffff6600【地狱使】"
		elseif (achieveID == 15) then
			return "|cffffff00【灭炼狱】"
		elseif (achieveID == 14) then
			return "|cff3366ff【定战争】"
		elseif (achieveID == 13) then
			return "|cff99cc00【和谐世】"
		elseif (achieveID == 12) then
			return "【太平源】"
		elseif (achieveID == 11) then
			return "|cff999999【天国音】"
		elseif (achieveID == 21) then
			return "|cff99cc00【定心魔】"
		elseif (achieveID == 22) then
			return "|cffffff00【斩心魔】"
		elseif (achieveID == 23) then
			return "|cffff0000【净心魔】"
		elseif (achieveID == 24) then
			return GetColorString("【创心魔】")
		elseif (achieveID == 25) then
			return "|cff99cc00【复世财】"
		elseif (achieveID == 26) then
			return "|cffffff00【盛世财】"
		elseif (achieveID == 27) then
			return "|cffff0000【灭世财】"
		elseif (achieveID == 28) then
			return GetColorString("【造世财】")
		elseif (achieveID == 29) then
			return GetColorString("【单轮回】")
		elseif (achieveID == 210) then
			return "|cffff00ff【单末日】"
		elseif (achieveID == 211) then
			return "|cffff0000【单地狱】"
		elseif (achieveID == 212) then
			return "|cffff6600【单炼狱】"
		elseif (achieveID == 213) then
			return "|cffffff00【单战争】"
		elseif (achieveID == 214) then
			return "|cff3366ff【单和谐】"
		elseif (achieveID == 215) then
			return "|cff99cc00【单太平】"
		elseif (achieveID == 216) then
			return "【单天国】"
		elseif (achieveID == 217) then
			return "|cff99cc00【知天地】"
		elseif (achieveID == 218) then
			return "|cffffff00【探乾坤】"
		elseif (achieveID == 219) then
			return "|cffff0000【五界主】"
		elseif (achieveID == 220) then
			return GetColorString("【六界王】")
		elseif (achieveID == 221) then
			return "|cff99cc00【千钧劫】"
		elseif (achieveID == 222) then
			return "|cffff00ff【末世劫】"
		elseif (achieveID == 223) then
			return "|cff99cc00【风驰者】"
		elseif (achieveID == 224) then
			return "|cffffff00【电掣侠】"
		elseif (achieveID == 225) then
			return "|cffff0000【无影客】"
		elseif (achieveID == 226) then
			return GetColorString("【逆苍天】")
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------

endlibrary