
//! import "JBase.j"
/*
    常量
*/
library_once Constant initializer InitConstant requires JBase
	
	globals
		string diffculty = ""
		/*
		    英雄数量
		*/
		constant integer HERO_COUNT = 16
		/*
		    活动开关
		*/
		constant boolean Huodong = false
		/*
		    成就页数
		*/
		constant integer PAGE_ACHIEVE = 6
		/*
		    实际人数(从一开始的)
		*/
		integer renshu = 0
		/*
		    游戏模式
		*/
		integer mode = 0
		constant integer COUNT_WANJIE = 44
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前版本
	*/
	function GetVersion takes nothing returns string
		return "2.84"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断游戏模式是否为经典
	*/
	function IsClassic takes nothing returns boolean
		return mode == 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断游戏模式是否为加速
	*/
	function IsHighSpeed takes nothing returns boolean
		return mode == 2
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    整数经典或加速
	*/
	function CModeH takes integer i1,integer i2 returns integer
		if (IsClassic()) then
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    实数经典或加速
	*/
	function RCModeH takes real r1,real r2 returns real
		if (IsClassic()) then
			return r1
		else
			return r2
		endif
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
		elseif (heroType == 'Nbbc') then
			return 5
		elseif (heroType == 'Ewrd' or heroType == 'E00C') then
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
		elseif (heroType == 'Othr') then
			return 12
		elseif (heroType == 'Udea') then
			return 13
		elseif (heroType == 'Hkal') then
			return 14
		elseif (heroType == 'Hant') then
			return 15
		elseif (heroType == 'Nsjs') then
			return 16
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
			elseif (i == 16) then
				set result = "苍凌"
			endif
			return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄难度
	*/
	function GetHeroTianFu takes unit u returns integer
		local integer id = GetHeroIndex(GetUnitTypeId(u))
		if (id == 1) then
			return 'AOre'
		elseif (id == 2) then
			return 'A072'
		elseif (id == 3) then
			return 'A04G'
		elseif (id == 4) then
			return 'A042'
		elseif (id == 5) then
			return 'Absk'
		elseif (id == 6) then
			return 'ACst'
		elseif (id == 7) then
			return 'ACfs'
		elseif (id == 8) then
			return 'A0FV'
		elseif (id == 9) then
			return 'A0F2'
		elseif (id == 10) then
			return 'Aens'
		elseif (id == 11) then
			return 'ACbc'
		elseif (id == 12) then
			return 'A0E7'
		elseif (id == 13) then
			return 'A0A3'
		elseif (id == 14) then
			return 'A0GX'
		elseif (id == 15) then
			return 'AHHD'
		elseif (id == 16) then
			return 'A0HH'
		endif
		return 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄难度
	*/
	function GetHeroDifficulty takes unit u returns string
		local integer id = GetHeroIndex(GetUnitTypeId(u))
		if (id == 1) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif (id == 2) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif (id == 3) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif (id == 4) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif (id == 5) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif (id == 6) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif (id == 7) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif (id == 8) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif (id == 9) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif (id == 10) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif (id == 11) then
			return "|cffff8000操作难度：★★★☆☆|r"
		elseif (id == 12) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif (id == 13) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif (id == 13) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif (id == 14) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
		elseif (id == 15) then
			return "|cffff0000操作难度：★★★★★|r"
		elseif (id == 16) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		endif
		return ""
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
		elseif (i == 16) then
			set result = "|cff80ff80苍凌|r"
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
    /*
        获取彩名依赖
    */
	function GetRandomColor takes nothing returns string
		local integer random = GetRandomInt(1,8)
		if (random == 1) then
			return "|cff0000ff"
		elseif (random == 2) then
			return "|cffcc99ff"
		elseif (random == 3) then
			return "|cff99cc00"
		elseif (random == 4) then
			return "|cffff0000"
		elseif (random == 5) then
			return "|cffff6600"
		elseif (random == 6) then
			return "|cffff00ff"
		elseif (random == 7) then
			return "|cff808000"
		else
			return "|cffffff00"
		endif
	endfunction
    /*
        获取彩名
    */
    function GetColorString takes string s returns string
		local integer length = StringLength(s)
		local string result = ""
		local integer i =1 
		if (length == 0) then
			return ""
		endif
		loop
			exitwhen i > length
			set result = result + GetRandomColor() + SubStringBJ(s,i,i+2)
			set i = i + 3
		endloop
        return result + "|r"
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    条件：彩名成就索引条件
	*/
	function IsAchieveColor takes integer achieveID returns boolean
		return achieveID == 19 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 231 or achieveID == 35
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
		elseif (achieveID == 227) then
			return "|cff99cc00【逐天魔】"
		elseif (achieveID == 228) then
			return "|cffffff00【驱天魔】"
		elseif (achieveID == 229) then
			return "|cffff0000【伏天魔】"
		elseif (achieveID == 230) then
			return GetColorString("【赦天魔】")
		elseif (achieveID == 231) then
			return GetColorString("【无心冢】")
		elseif (achieveID == 32) then
			return "|cff99cc00【触天式】"
		elseif (achieveID == 33) then
			return "|cffffff00【伐天式】"
		elseif (achieveID == 34) then
			return "|cffff0000【噬天式】"
		elseif (achieveID == 35) then
			return GetColorString("【诛天式】")
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取大厅成就名
	*/
	function GetAchievementWhiteName takes integer achieveID returns string
		if (achieveID == 19) then
			return "万劫录"
		elseif (achieveID == 18) then
			return "轮回舰"
		elseif (achieveID == 17) then
			return "末日车"
		elseif (achieveID == 16) then
			return "地狱使"
		elseif (achieveID == 15) then
			return "灭炼狱"
		elseif (achieveID == 14) then
			return "定战争"
		elseif (achieveID == 13) then
			return "和谐世"
		elseif (achieveID == 12) then
			return "太平源"
		elseif (achieveID == 11) then
			return "天国音"
		elseif (achieveID == 21) then
			return "定心魔"
		elseif (achieveID == 22) then
			return "斩心魔"
		elseif (achieveID == 23) then
			return "净心魔"
		elseif (achieveID == 24) then
			return "创心魔"
		elseif (achieveID == 25) then
			return "复世财"
		elseif (achieveID == 26) then
			return "盛世财"
		elseif (achieveID == 27) then
			return "灭世财"
		elseif (achieveID == 28) then
			return "造世财"
		elseif (achieveID == 29) then
			return "单轮回"
		elseif (achieveID == 210) then
			return "单末日"
		elseif (achieveID == 211) then
			return "单地狱"
		elseif (achieveID == 212) then
			return "单炼狱"
		elseif (achieveID == 213) then
			return "单战争"
		elseif (achieveID == 214) then
			return "单和谐"
		elseif (achieveID == 215) then
			return "单太平"
		elseif (achieveID == 216) then
			return "单天国"
		elseif (achieveID == 217) then
			return "知天地"
		elseif (achieveID == 218) then
			return "探乾坤"
		elseif (achieveID == 219) then
			return "五界主"
		elseif (achieveID == 220) then
			return "六界王"
		elseif (achieveID == 221) then
			return "千钧劫"
		elseif (achieveID == 222) then
			return "末世劫"
		elseif (achieveID == 223) then
			return "风驰者"
		elseif (achieveID == 224) then
			return "电掣侠"
		elseif (achieveID == 225) then
			return "无影客"
		elseif (achieveID == 226) then
			return "逆苍天"
		elseif (achieveID == 227) then
			return "逐天魔"
		elseif (achieveID == 228) then
			return "驱天魔"
		elseif (achieveID == 229) then
			return "伏天魔"
		elseif (achieveID == 230) then
			return "赦天魔"
		elseif (achieveID == 231) then
			return "无心冢"
		elseif (achieveID == 32) then
			return "触天式"
		elseif (achieveID == 33) then
			return "伐天式"
		elseif (achieveID == 34) then
			return "噬天式"
		elseif (achieveID == 35) then
			return "诛天式"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取成就名条件
	*/
	function GetAchievementCondition takes integer achieveID returns string
		if (achieveID == 19) then
			return "通关|cff008000\"万劫\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|r|cff99ccff若你通关了该难度可以加轮回之狱主群申请上|r|cff99cc00封帝万劫录|r|cff99ccff哦!|r"
		elseif (achieveID == 18) then
			return "通关|cffff00ff\"轮回\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!|r"
		elseif (achieveID == 17) then
			return "通关|cffff0000\"末日\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 16) then
			return "通关|cffff6600\"地狱\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 15) then
			return "通关|cffffff00\"炼狱\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 14) then
			return "通关|cff3366ff\"战争\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 13) then
			return "通关|cff99cc00\"和谐\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 12) then
			return "通关\"太平\"难度后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 11) then
			return "通关|cff999999\"天国\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 21) then
			return "完成20次转生即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 22) then
			return "完成50次转生即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 23) then
			return "完成100次转生即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 24) then
			return "完成150次转生即可自动获得该成就.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 25) then
			return "木材大于20000即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 26) then
			return "木材大于50000即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 27) then
			return "木材大于100000即可自动获得该成就.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 28) then
			return "木材大于200000即可自动获得该成就.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 29) then
			return "单通|cffff00ff\"轮回\"难度|r即可自动获得该成就.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 210) then
			return "单通|cffff0000\"末日\"难度|r即可自动获得该成就.

			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 211) then
			return "单通|cffff6600\"地狱\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 212) then
			return "单通|cffffff00\"炼狱\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 213) then
			return "单通|cff3366ff\"战争\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 214) then
			return "单通|cff99cc00\"和谐\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 215) then
			return "单通\"太平\"难度后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 216) then
			return "单通|cff999999\"天国\"难度|r后可以自动获得该成就.

			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 217) then
			return "使用至少12个英雄，每个进行至少1场游戏.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 218) then
			return "使用至少12个英雄，每个进行至少5场游戏.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 219) then
			return "使用至少12个英雄，每个进行至少10场游戏.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 220) then
			return "使用至少12个英雄，每个进行至少30场游戏.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 221) then
			return "在基地剩余0次防护罩时通关游戏.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 222) then
			return "在基地剩余0次防护罩,且生命低于25%时通关游戏.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 223) then
			return "在经典模式中135分钟内击败冥刹.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 224) then
			return "在经典模式中120分钟内击败冥刹.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 225) then
			return "在经典模式中90分钟内击败冥刹.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 226) then
			return "在经典模式中60分钟内击败冥刹.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 227) then
			return "在单场游戏中杀敌数达到1.5万。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 228) then
			return "在单场游戏中杀敌数达到4万。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 229) then
			return "在单场游戏中杀敌数达到8万。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 230) then
			return "在单场游戏中杀敌数达到15万。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 231) then
			return "单局游戏死亡次数达到100次。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 32) then
			return "在单场游戏中造成的总伤害达500亿。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 33) then
			return "在单场游戏中造成的总伤害达4000亿。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 34) then
			return "在单场游戏中造成的总伤害达30000亿。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 35) then
			return "在单场游戏中造成的总伤害达600000亿。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取页数与索引对应的成就序号
	*/
	function GetAchievementIndex takes integer page,integer index returns integer
		if (page == 1 or page == 2) then
			return (page * 10 + index)
		elseif (page == 3) then
			return I3(index < 8,217 - index,29)
		elseif (page == 4) then
			return index + 216
		elseif (page == 5) then
			return index + 224
		elseif (page == 6) then
			return index + 31
		endif
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万劫录
	*/
	function GetWanjieluName takes nothing returns string
		local integer i = GetRandomInt(1,COUNT_WANJIE)
		if (i == 1) then
			return "玩东方入魔的超"
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
			return "种子哥"
		elseif (i == 17) then
			return "清茶i"
		elseif (i == 18) then
			return "玉之魂"
		elseif (i == 19) then
			return "suinxboss"
		elseif (i == 20) then
			return "丿风再起时"
		elseif (i == 21) then
			return "马蓉被Ri"
		elseif (i == 22) then
			return "熊锚"
		elseif (i == 23) then
			return "咸菜拉条子"
		elseif (i == 24) then
			return "Coffeekaffa"
		elseif (i == 25) then
			return "Nightmare丶K3"
		elseif (i == 26) then
			return "浅入风华"
		elseif (i == 27) then
			return "那你那下次"
		elseif (i == 28) then
			return "吃斋念佛人"
		elseif (i == 29) then
			return "ychochen"
		elseif (i == 30) then
			return "小小小小奶"
		elseif (i == 31) then
			return "顶——"
		elseif (i == 32) then
			return "天纳万海"
		elseif (i == 33) then
			return "疯一样的T怪"
		elseif (i == 34) then
			return "xue蓝"
		elseif (i == 35) then
			return "至简c"
		elseif (i == 36) then
			return "无上神尊"
		elseif (i == 37) then
			return "无动于衷"
		elseif (i == 38) then
			return "你把我灌醉。"
		elseif (i == 39) then
			return "请带着我飞"
		elseif (i == 40) then
			return "你的牛奶呢丶"
		elseif (i == 41) then
			return "心亦"
		elseif (i == 42) then
			return "逸灬仙"
		elseif (i == 43) then
			return "司宸"
		elseif (i == 44) then
			return "灵魂的缠绵"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitConstant takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				set renshu = renshu + 1
			endif
			set i = i +1
		endloop
	endfunction
endlibrary