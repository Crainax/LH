
//! import "JBase.j"
/*
    常量
*/
library_once Constant initializer InitConstant requires JBase
	
	globals
		string diffculty = ""
		string SgameMode = ""
		/*
		    英雄数量
		*/
		constant integer HERO_COUNT = 20
		/*
		    活动开关
		*/
		constant boolean Huodong = false
		/*
		    成就页数
		*/
		constant integer PAGE_ACHIEVE = 10
		constant integer PAGE_HERO_CHALLANGER = 2
		/*
		    实际人数(从一开始的)
		*/
		integer renshu = 0
		
		/*
		    游戏模式
		*/
		integer mode = 0
		constant integer COUNT_WANJIE = 47
		private integer WPointer = 1
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前版本
	*/
	function GetVersion takes nothing returns string
		return "3.371"
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取是否是11
	*/
	function Get11 takes nothing returns boolean
		return false
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
	    判断是否是皮肤
	*/
	function IsUnitIsSpin takes unit u  returns boolean
		return GetUnitTypeId(u) == 'E00F' or GetUnitTypeId(u) == 'E00E' or GetUnitTypeId(u) == 'U001' or GetUnitTypeId(u) == 'H01V' or GetUnitTypeId(u) == 'H01W' or GetUnitTypeId(u) == 'E00G' or GetUnitTypeId(u) == 'O002' or GetUnitTypeId(u) == 'H01X' or GetUnitTypeId(u) == 'U002' or GetUnitTypeId(u) == 'O004' or GetUnitTypeId(u) == 'N01W' or GetUnitTypeId(u) == 'H026' or GetUnitTypeId(u) == 'H02C' 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄索引号
	*/
	function GetHeroIndex takes integer heroType returns integer
		if (heroType == 'Ocbh' or heroType == 'O002') then
			return 1
		elseif (heroType == 'Eevi' or heroType == 'E00F') then
			return 2
		elseif (heroType == 'Hvwd' or heroType == 'H01X') then
			return 3
		elseif (heroType == 'Uktl' or heroType == 'U002') then
			return 4
		elseif (heroType == 'Nbbc' or heroType == 'N01W') then
			return 5
		elseif (heroType == 'E00D' or heroType == 'E00E') then
			return 6
		elseif (heroType == 'Usyl' or heroType == 'U001') then
			return 7
		elseif (heroType == 'Hjai' or heroType == 'H01V') then
			return 8
		elseif (heroType == 'Harf' or heroType == 'H01W') then
			return 9
		elseif (heroType == 'E00C') then
			return 10
		elseif (heroType == 'Etyr' or heroType == 'E00G') then
			return 11
		elseif (heroType == 'Othr' or heroType == 'O004') then
			return 12
		elseif (heroType == 'Udea') then
			return 13
		elseif (heroType == 'Hkal') then
			return 14
		elseif (heroType == 'Hant' or heroType == 'H026') then
			return 15
		elseif (heroType == 'Nsjs') then
			return 16
		elseif (heroType == 'Hhkl' or heroType == 'H02C') then
			return 17
		elseif (heroType == 'Hapm' or heroType == 'H01I') then
			return 18
		elseif (heroType == 'H01Y') then
			return 19
		elseif (heroType == 'H027') then
			return 20
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
			elseif (i == 17) then
				set result = "司宸"
			elseif (i == 18) then
				set result = "星胧"
			elseif (i == 19) then
				set result = "霄霆"
			elseif (i == 20) then
				set result = "离魑"
			endif
			return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄天赋
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
			return 'A0IL'
		elseif (id == 7) then
			return 'ACfs'
		elseif (id == 8) then
			return 'A0FV'
		elseif (id == 9) then
			return 'A0F2'
		elseif (id == 10) then
			return 'A0II'
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
		elseif (id == 17) then
			return 'A0IP'
		elseif (id == 18) then
			return 'AEme'
		elseif (id == 19) then
			return 'A0LJ'
		elseif (id == 20) then
			return 'A0MH'
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
			return "|cffff0000操作难度：★★★★★(极度不推荐新手使用)|r"
		elseif (id == 16) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif (id == 17) then
			return "|cffffc000操作难度：★★☆☆☆|r"
		elseif (id == 18) then
			return "|cffff4000操作难度：★★★★☆|r"
		elseif (id == 19) then
			return "|cffff0000操作难度：★★★★★(极度不推荐新手使用)|r"
		elseif (id == 20) then
			return "|cffffff00操作难度：★☆☆☆☆|r"
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
		elseif (i == 17) then
			set result = "|cff993366司宸|r"
		elseif (i == 18) then
			set result = "|cff99cc00星胧|r"
		elseif (i == 19) then
			set result = "|cff00ff00霄霆|r"
		elseif (i == 20) then
			set result = "|cff3366ff离魑|r"
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
		return achieveID == 325 or achieveID == 24 or achieveID == 28 or achieveID == 29 or achieveID == 220 or achieveID == 226 or achieveID == 230 or achieveID == 35 or achieveID == 310 or achieveID == 314 or achieveID == 318 or achieveID == 326 or achieveID == 320 or achieveID == 321 or achieveID == 322 or achieveID == 323 or achieveID == 324 or achieveID == 327 or achieveID == 331 or achieveID == 42 or achieveID == 44 or achieveID == 45 or achieveID == 46 or achieveID == 47 or achieveID == 48 or achieveID == 49 or achieveID == 410 or achieveID == 411 or achieveID == 412 or achieveID == 413 or achieveID == 414
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
		if (achieveID == 325) then
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
			return ("|cffff0000【无心冢】")
		elseif (achieveID == 32) then
			return "|cff99cc00【触天式】"
		elseif (achieveID == 33) then
			return "|cffffff00【伐天式】"
		elseif (achieveID == 34) then
			return "|cffff0000【噬天式】"
		elseif (achieveID == 35) then
			return GetColorString("【诛天式】")
		elseif (achieveID == 36) then
			return "|cff99cc00【缘灭罐】"
		elseif (achieveID == 37) then
			return "|cffffff00【彼岸花】"
		elseif (achieveID == 38) then
			return "|cffff0000【仙瀑光】"
		elseif (achieveID == 39) then
			return "|cffff0000【烛龙谱】"
		elseif (achieveID == 310) then
			return GetColorString("【零失误】")
		elseif (achieveID == 311) then
			return "|cff99cc00【破虚者】"
		elseif (achieveID == 312) then
			return "|cffffff00【裂虚者】"
		elseif (achieveID == 313) then
			return "|cffff0000【断虚者】"
		elseif (achieveID == 314) then
			return GetColorString("【弑虚帝】")
		elseif (achieveID == 315) then
			return "|cff99cc00【定无双】"
		elseif (achieveID == 316) then
			return "|cffffff00【战无双】"
		elseif (achieveID == 317) then
			return "|cffff0000【凛无双】"
		elseif (achieveID == 318) then
			return GetColorString("【魄无双】")
		elseif (achieveID == 326) then
			return GetColorString("【封神门】")
		elseif (achieveID == 320) then
			return GetColorString("【圣洁玉】")
		elseif (achieveID == 321) then 
			return GetColorString("【孤心戒】")
		elseif (achieveID == 322) then
			return GetColorString("【御天启】")
		elseif (achieveID == 323) then
			return GetColorString("【九轮圣】")
		elseif (achieveID == 324) then
			return GetColorString("【帝曜芒】")
		elseif (achieveID == 327) then
			return GetColorString("【浩劫赋】")
		elseif (achieveID == 328) then
			return "|cff99cc00【凶兽使】"
		elseif (achieveID == 329) then
			return "|cffffff00【千里眼】"
		elseif (achieveID == 330) then
			return "|cffff0000【执江山】"
		elseif (achieveID == 331) then
			return GetColorString("【啻主宰】")
		elseif (achieveID == 42) then
			return GetColorString("【傲临天魇】")
		elseif (achieveID == 43) then
			return "|cffffff00【迷踪步】"
		elseif (achieveID == 44) then
			return GetColorString("【影无缈】")
		elseif (achieveID == 45) then
			return GetColorString("【破枷皇】")
		elseif (achieveID == 46) then
			return GetColorString("【真言殿】")
		elseif (achieveID == 47) then
			return GetColorString("【不败神话】")
		elseif (achieveID == 48) then
			return GetColorString("【无上六界王】")
		elseif (achieveID == 49) then
			return GetColorString("【荒神炼】")
		elseif (achieveID == 410) then
			return GetColorString("【驻永恒】")
		elseif (achieveID == 411) then
			return GetColorString("【创世篇】")
		elseif (achieveID == 412) then
			return GetColorString("【若凰生】")
		elseif (achieveID == 413) then
			return GetColorString("【淼无极】")
		elseif (achieveID == 414) then
			return GetColorString("【金瓯体】")
		//完了再加到Achievement.j上的全成就.
		endif
		return ""
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取大厅成就名
	*/
	function GetAchievementWhiteName takes integer achieveID returns string
		if (achieveID == 325) then
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
		elseif (achieveID == 36) then
			return "缘灭罐"
		elseif (achieveID == 37) then
			return "彼岸花"
		elseif (achieveID == 38) then
			return "仙瀑光"
		elseif (achieveID == 39) then
			return "烛龙谱"
		elseif (achieveID == 310) then
			return "零失误"
		elseif (achieveID == 311) then
			return "破虚者"
		elseif (achieveID == 312) then
			return "断虚者"
		elseif (achieveID == 313) then
			return "裂虚者"
		elseif (achieveID == 314) then
			return "弑虚帝"
		elseif (achieveID == 315) then
			return "定无双"
		elseif (achieveID == 316) then
			return "战无双"
		elseif (achieveID == 317) then
			return "凛无双"
		elseif (achieveID == 318) then
			return "魄无双"
		elseif (achieveID == 326) then
			return "封神门"
		elseif (achieveID == 320) then
			return "圣洁玉"
		elseif (achieveID == 321) then
			return "孤心戒"
		elseif (achieveID == 322) then
			return "御天启"
		elseif (achieveID == 323) then
			return "九轮圣"
		elseif (achieveID == 324) then
			return "帝曜芒"
		elseif (achieveID == 327) then
			return "浩劫赋"
		elseif (achieveID == 328) then
			return "凶兽使"
		elseif (achieveID == 329) then
			return "千里眼"
		elseif (achieveID == 330) then
			return "执江山"
		elseif (achieveID == 331) then
			return "啻主宰"
		elseif (achieveID == 42) then
			return "傲临天魇"
		elseif (achieveID == 43) then
			return "迷踪步"
		elseif (achieveID == 44) then
			return "影无缈"
		elseif (achieveID == 45) then
			return "破枷皇"
		elseif (achieveID == 46) then
			return "真言殿"
		elseif (achieveID == 47) then
			return "不败神话"
		elseif (achieveID == 48) then
			return "无上六界王"
		elseif (achieveID == 49) then
			return "荒神炼"
		elseif (achieveID == 410) then
			return "驻永恒"
		elseif (achieveID == 411) then
			return "创世篇"
		elseif (achieveID == 412) then
			return "若凰生"
		elseif (achieveID == 413) then
			return "淼无极"
		elseif (achieveID == 414) then
			return "金瓯体"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取成就名条件
	*/
	function GetAchievementCondition takes integer achieveID returns string
		if (achieveID == 325) then
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
			return "单局游戏死亡次数达到100次。（凯撒触发天赋技能也算死亡）
			
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
		elseif (achieveID == 36) then
			return "通过秘境挑战13层。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 37) then
			return "通过秘境挑战15层。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 38) then
			return "通过秘境挑战17层。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 39) then
			return "通过秘境挑战20层。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 310) then
			return "击败冥刹时所有玩家均0死亡。（凯撒触发天赋技能也算死亡）
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 311) then
			return "击败任意难度巨能融合石6次。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 312) then
			return "击败任意难度巨能融合石20次。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 313) then
			return "击败轮回难度巨能融合石12次。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 314) then
			return "击败轮回难度巨能融合石40次。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 315) then
			return "总属性之和达到300W.（成就获取在1分钟内，请耐心等待）
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 316) then
			return "总属性之和达到800W.（成就获取在1分钟内，请耐心等待）
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 317) then
			return "总属性之和达到2000W.（成就获取在1分钟内，请耐心等待）
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 318) then
			return "总属性之和达到5000W.（成就获取在1分钟内，请耐心等待）
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 326) then
			return "在8分钟内将复活点处的门毁坏。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 320) then
			return "到通关为止基地未受到任何伤害。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 321) then
			return "鬼MAX戒指或者超鬼戒指吸收灵魂层数达到120.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 322) then
			return "使用至少12个英雄击败擂台十英雄-辕煞.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 323) then
			return "自己与所有队友从头到尾不打任何宝石,不打任何秘境,不打任何擂台,不合成任何翅膀通关游戏.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 324) then
			return "与低于(或等于)5级的玩家进行游戏通关满100人.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 327) then
			return "自己与所有队友不学2级技能，10级技能，20级技能，40级技能，100级技能通关游戏。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 328) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于50级的怪物。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 329) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于70级的怪物。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 330) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于100级的怪物。
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 331) then
			return "使用中型捕兽网（50W上限）成功捕捉大于或等于150级的怪物。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 43) then
			return "在迷你挑战1-骷髅海中里面的时间成功超过35秒.
			
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 44) then
			return "在迷你挑战1-骷髅海中里面的时间成功超过80秒.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 45) then
			return "4人及以上游戏时,在击败人王傀儡与妖王傀儡时从未触发过BOSS生命联结技能.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 46) then
			return "单次技能伤害达到300亿.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 49) then
			return "从头到尾全地图同时存在的进攻怪从未超过20个.
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 410) then
			return "完成任意难度的挑战模式中的\"驻永恒挑战\"
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 411) then
			return "完成任意难度的挑战模式中的\"创世篇挑战\"
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 412) then
			return "输入-hs1进行生命检测，此时你的英雄生命达到1%以下却未死。
			(检测时英雄不能带有瘟疫或者中毒的BUFF)
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 413) then
			return "输入-hs2进行生命检测，使用非霸绝英雄进行游戏，生命值达到5亿或以上。
			
			|r|cff3366ff使用该成就进行游戏英雄会有能量之光的特效哦!
			|cffffff00该成就会显示在官方对战平台游戏大厅内哦,也会显示在你的名字前面!|r"
		elseif (achieveID == 414) then
			return "输入-hs3进行防御检测，防御达到100W或以上。
			（注意检测结果将不包含于装备中的防御定值光环与装备中的短暂BUFF效果）
			
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
			return I3(index == 1,325,page * 10 + index)
		elseif (page == 2) then
			return (page * 10 + index)
		elseif (page == 3) then
			return I3(index < 8,217 - index,29)
		elseif (page == 4) then
			return index + 216
		elseif (page == 5) then
			return I3(index < 8,index + 224,310)
		elseif (page == 6) then
			return index + 31
		elseif (page == 7) then
			return index + 310
		elseif (page == 8) then
			return I3(index == 7,327,I3(index == 1,326,index + 318))
		elseif (page == 9) then
			return I3(index <= 4 ,index + 327,index + 38)
		elseif (page == 10) then
			return I3(index == 1 ,49,index + 408)
		endif
		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄挑战的名字
	*/
	function GetHeroChallenageName takes integer i,integer page returns string

		if (page == 1) then
			if (i == 1) then
				return "|cffff66cc赤血白燕|r"
			elseif (i == 2) then
				return "|cff99ccff月轮绯狱|r"
			elseif (i == 3) then
				return "|cFFFF0000殛霆无迹|r"
			elseif (i == 4) then
				return "|cFF33FF33末日权杖|r"
			elseif (i == 5) then
				return "|cFFFF3333霜夜之哀|r"
			elseif (i == 6) then
				return "|cFFCCFF66三弦星谧|r"
			elseif (i == 7) then
				return "|cFF3333FF獠牙之匕|r"
			elseif (i == 8) then
				return "|cFFFF3333双流贯恒|r"
			elseif (i == 9) then
				return "|cFF339933沐雪无瑕|r"
			endif
		elseif (page == 2) then
			if (i == 1) then
				return "|cFF6699FF熔日煌世|r"
			elseif (i == 2) then
				return "|cFFFF00CC星界麒麟|r"
			elseif (i == 3) then
				return "|cFFFF0000凝冰红灯|r"
			elseif (i == 4) then
				return "|cFF6699FF封霜玄锋|r"
			elseif (i == 5) then
				return "|cffff0000凰迹天知|r"
			elseif (i == 6) then
				return "|cffff6800天罚四界|r"
			endif
		endif

		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    超级成就的名字
	*/
	function GetSuperChallenageName takes integer i returns string
		if (i == 1) then
			return "全成就达成"
		elseif (i == 2) then
			return "通关|cff993366天魇|r"
		elseif (i == 3) then
			return "连续登录20天"
		elseif (i == 4) then
			return "所有英雄99次使用"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄挑战的条件
	*/
	function GetHeroChallenageContent takes integer i,integer page returns string
		if (page == 1) then
			if (i == 1) then
				return "使用瑟雨在1秒内将能量从0%直接增加至105%(或以上).

				完成该项挑战后你将获得瑟雨的皮肤\"|cffff66cc赤血白燕|r\"(拥有少量的属性加成)!"
			elseif (i == 2) then
				return "使用晓月在一局游戏内成功在黯黑杀阵内成功复活满150人.

				完成该项挑战后你将获得晓月的皮肤\"|cff99ccff月轮绯狱|r\"(拥有少量的属性加成)!"
			elseif (i == 3) then
				return "使用湮灭在一局游戏内成功完成125次转生.

				完成该项挑战后你将获得湮灭的皮肤\"|cFFFF0000殛霆无迹|r\"(拥有少量的属性加成)!"
			elseif (i == 4) then
				return "使用玄雪在一局游戏内成功单通战争难度(或以上).

				完成该项挑战后你将获得玄雪的模型法杖\"|cFF33FF33末日权杖|r\"(拥有少量的属性加成)!"
			elseif (i == 5) then
				return "使用辰寂在一局游戏中成功使用满7次90剑灵技能-引渡.

				完成该项挑战后你将获得辰寂的模型特效\"|cFFFF3333霜夜之哀|r\"(拥有少量的属性加成)!"
			elseif (i == 6) then
				return "使用泰雅在一局游戏中成功使用月神之箭技能触发\"秒\"效果杀死至少2500个单位.

				完成该项挑战后你将获得泰雅的皮肤\"|cFFCCFF66三弦星谧|r\"(拥有少量的属性加成)!"
			elseif (i == 7) then
				return "使用寒殇在一局游戏内成功使用无穷吞噬技能获得超过500万的总和属性.

				完成该项挑战后你将获得寒殇的模型武器\"|cFF3333FF獠牙之匕|r\"(拥有少量的属性加成)!"
			elseif (i == 8) then
				return "输入-chenji可以进行检测，若此时英雄的生命低于1%，则完成该挑战。

				完成该项挑战后你将获得辰寂的皮肤\"|cFFFF3333双流贯恒|r\"(拥有少量的属性加成)!"
			elseif (i == 9) then
				return "在每天的连续签到中达到14天。

				完成该项挑战后你将获得凌雪的皮肤\"|cFF339933沐雪无瑕|r\"(拥有少量的属性加成)!"
			endif
		elseif (page == 2) then
			if (i == 1) then
				return "使用凯撒在一局游戏中只靠|cffff6800忠诚之躯|r技能杀死攻击基地的敌人2500个.

				完成该项挑战后你将获得凯撒的皮肤\"|cFF6699FF熔日煌世|r\"(拥有少量的属性加成)!"
			elseif (i == 2) then
				return "使用莫琪在使用|cffffcc00裁决|r技能时的施法角度在89.9-90.1度之内.
						(换句话说即为完全垂直向上射)
				完成该项挑战后你将获得莫琪的皮肤\"|cFFFF00CC星界麒麟|r\"(拥有少量的属性加成)!"
			elseif (i == 3) then
				return "使用玄雪在一局游戏内成功侵入134种不同的生物.(注意,如果你需要进行该挑战,请在第一波前输入-xx以开启该英雄挑战)

				完成该项挑战后你将获得玄雪的皮肤\"|cFFFF0000凝冰红灯|r\"(拥有少量的属性加成)!"
			elseif (i == 4) then
				return "使用霸绝在使用|cFFFF0099剑法IV式 - 永恒|r技能结束后的落点距离英雄在施放该技能的位置有8000码远.(注意,如果你需要进行该挑战,请在第一波前输入-bj以开启该英雄挑战,注意要使用主英雄施放,其他分身施放无效)

				完成该项挑战后你将获得霸绝的皮肤\"|cFF6699FF封霜玄锋|r\"(拥有少量的属性加成)!"
			elseif (i == 5) then
				return "使用摄焱在一局游戏中杀敌数满125000.

				完成该项挑战后你将获得摄焱的皮肤\"|cffff0000凰迹天知|r\"(拥有少量的属性加成)!"
			elseif (i == 6) then
				return "目前该皮肤是七夕活动提前放出,英雄挑战需要在9月中旬才会上线.

				完成该项挑战后你将获得幻逸的皮肤\"|cffff6800天罚四界|r\"(拥有少量的属性加成)!"
			elseif (i == 7) then
				return "
				目前该皮肤可以通过每周六YY90163抽奖活动抽取,英雄挑战需要在9月下旬才会上线.

				完成该项挑战后你将获得司宸的皮肤\"|cff33cccc白莲圣日·黑羽魔月|r\"(拥有少量的属性加成)!"
			endif		
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄挑战的条件
	*/
	function GetSuperChallenageContent takes integer i returns string
		if (i == 1) then
			return "解锁截止上个版本以来的所有成就.(输入-cj可以查看所有成就情况)

			完成该项挑战后你将可以使用-qm指令自定义你的成就名!"
		elseif (i == 2) then
			return "通关隐藏难度|cff993366天魇|r(通关|cff008000万劫|r难度解锁)

			完成该项挑战后你的名字将在以后始终置顶于|cff008000\"封帝万劫录\"|r中!
			并获得四字成就名"+GetAchievementName(42)+"。"		
		elseif (i == 3) then
			return "在嘉年华活动版本中连续签到达20天.

			完成该项挑战后可以在每次开局选英雄后接受来自六界的欢迎。
			并获得四字成就名"+GetAchievementName(47)+"。"
		elseif (i == 4) then
			return "全英雄99次达成!

			完成该项挑战后每局游戏中在基地出现罩子时有着不一样的文字提醒哦!
			并获得五字成就名"+GetAchievementName(48)+"。"
		endif
		return ""
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万劫录
	*/
	function GetWanjieluName takes nothing returns string
		set WPointer = WPointer - 1
		if (WPointer <= 0) then
			set WPointer = COUNT_WANJIE
		endif
		if (WPointer == 1) then
			return "你把我灌醉。"
		elseif (WPointer == 2) then
			return "心亦"
		elseif (WPointer == 3) then
			return "幻、神"
		elseif (WPointer == 4) then
			return "深邃的孤独丶"
		elseif (WPointer == 5) then
			return "雷瑟守备最强王者"
		elseif (WPointer == 6) then
			return "你的牛奶呢丶"
		elseif (WPointer == 7) then
			return "浪逼郭小癞"
		elseif (WPointer == 8) then
			return "很烦很皮"
		elseif (WPointer == 9) then
			return "sky"
		elseif (WPointer == 10) then
			return "梦露丶baby"
		elseif (WPointer == 11) then
			return "丶念少。"
		elseif (WPointer == 12) then
			return "0万物皆空0"
		elseif (WPointer == 13) then
			return "辉煌丶神偷"
		elseif (WPointer == 14) then
			return "丶7℃ャ跃娃"
		elseif (WPointer == 15) then
			return "星辰末日"
		elseif (WPointer == 16) then
			return "夕子奈月"
		elseif (WPointer == 17) then
			return "枫烨桦"
		elseif (WPointer == 18) then
			return "请带着我飞"
		elseif (WPointer == 19) then
			return "树林里故事"
		elseif (WPointer == 20) then
			return "我鸡鸡贼大"
		elseif (WPointer == 21) then
			return "至简i"
		elseif (WPointer == 22) then
			return "阴优"
		elseif (WPointer == 23) then
			return "逸灬仙"
		elseif (WPointer == 24) then
			return "躺车门始祖"
		elseif (WPointer == 25) then
			return "Rascal丶恋情"
		elseif (WPointer == 26) then
			return "7葡萄"
		elseif (WPointer == 27) then
			return "心雪"
		elseif (WPointer == 28) then
			return "Ma—LePYe"
		elseif (WPointer == 29) then
			return "墙头蹲红杏"
		elseif (WPointer == 30) then
			return "one丶lelseifeの爱"
		elseif (WPointer == 31) then
			return "czy888"
		elseif (WPointer == 32) then
			return "Flower丶God"
		elseif (WPointer == 33) then
			return "月丶暗影"
		elseif (WPointer == 34) then
			return "牛头居然能打巨能"
		elseif (WPointer == 35) then
			return "Dear冷月"
		elseif (WPointer == 36) then
			return "无缘之邪"
		elseif (WPointer == 37) then
			return "话唠。"
		elseif (WPointer == 38) then
			return "那天1234"
		elseif (WPointer == 39) then
			return "糖糖不在甜"
		elseif (WPointer == 40) then
			return "1 1"
		elseif (WPointer == 41) then
			return "浪逼康小帅"
		elseif (WPointer == 42) then
			return "与你童在"
		elseif (WPointer == 43) then
			return "神天羽"
		elseif (WPointer == 44) then
			return "你挺得劲"
		elseif (WPointer == 45) then
			return "＿雅姬ベ"
		elseif (WPointer == 46) then
			return "灵魂的缠绵"
		elseif (WPointer == 47) then
			return "司宸"
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