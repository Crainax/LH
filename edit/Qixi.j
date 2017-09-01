//! import "LHBase.j"
//! import "Achievement.j"

/*
    七夕
*/
library_once Qixi requires LHBase,Achievement
	
//---------------------------------------------------------------------------------------------------
	/*
	    补偿
	*/
	function Buchang takes player p returns nothing
		local integer i = GetConvertedPlayerId(p)
		if (playerName[i] == "英子丶丿") then
			call SetKaisaSpinOK(p)
		elseif (playerName[i] == "嚣张城") then
			call GetAchievementAndSave(p,47)
		elseif (playerName[i] == "ㅈ轩轩") then
			call GetAchievementAndSave(p, 325)
			call GetAchievementAndSave(p, 18)
			call GetAchievementAndSave(p, 17)
			call GetAchievementAndSave(p, 16)
			call GetAchievementAndSave(p, 15)
			call GetAchievementAndSave(p, 14)
			call GetAchievementAndSave(p, 13)
			call GetAchievementAndSave(p, 12)
			call GetAchievementAndSave(p, 11)
			call GetAchievementAndSave(p, 21)
			call GetAchievementAndSave(p, 22)
			call GetAchievementAndSave(p, 23)
			call GetAchievementAndSave(p, 24)
			call GetAchievementAndSave(p, 25)
			call GetAchievementAndSave(p, 26)
			call GetAchievementAndSave(p, 27)
			call GetAchievementAndSave(p, 28)
			call GetAchievementAndSave(p, 29)
			call GetAchievementAndSave(p, 210)
			call GetAchievementAndSave(p, 211)
			call GetAchievementAndSave(p, 212)
			call GetAchievementAndSave(p, 213)
			call GetAchievementAndSave(p, 214)
			call GetAchievementAndSave(p, 215)
			call GetAchievementAndSave(p, 216)
			call GetAchievementAndSave(p, 217)
			call GetAchievementAndSave(p, 218)
			call GetAchievementAndSave(p, 219)
			call GetAchievementAndSave(p, 220)
			call GetAchievementAndSave(p, 221)
			call GetAchievementAndSave(p, 222)
			call GetAchievementAndSave(p, 223)
			call GetAchievementAndSave(p, 224)
			call GetAchievementAndSave(p, 225)
			call GetAchievementAndSave(p, 227)
			call GetAchievementAndSave(p, 228)
			call GetAchievementAndSave(p, 229)
			call GetAchievementAndSave(p, 230)
			call GetAchievementAndSave(p, 231)
			call GetAchievementAndSave(p, 32)
			call GetAchievementAndSave(p, 33)
			call GetAchievementAndSave(p, 34)
			call GetAchievementAndSave(p, 36)
			call GetAchievementAndSave(p, 37)
			call GetAchievementAndSave(p, 38)
			call GetAchievementAndSave(p, 39)
			call GetAchievementAndSave(p, 311)
			call GetAchievementAndSave(p, 312)
			call GetAchievementAndSave(p, 315)
			call GetAchievementAndSave(p, 316)
			call GetAchievementAndSave(p, 317)
			call GetAchievementAndSave(p, 326)
			call GetAchievementAndSave(p, 320)
			call GetAchievementAndSave(p, 327)
			call GetAchievementAndSave(p, 328)
			call GetAchievementAndSave(p, 329)
			call GetAchievementAndSave(p, 330)
			call GetAchievementAndSave(p, 331)
			call GetAchievementAndSave(p, 43)
			call GetAchievementAndSave(p, 45)
			call GetAchievementAndSave(p, 46)
			debug call SetSeyuSpinOK(p)
			debug call SetXiaoyueSpinOK(p)
			debug call SetYanmieSpinOK(p)
			debug call SetXuanxue1SpinOK(p)
			debug call SetTaiyaSpinOK(p)
			debug call SetChenji1SpinOK(p)
			debug call SetHanshangSpinOK(p)
			debug call SetLingxueSpinOK(p)
			debug call SetChenji2SpinOK(p)
			debug call SetMoqiSpinOK(p)
			debug call SetKaisaSpinOK(p)
			debug call SetXuanxue2SpinOK(p)
			debug call SetBajueSpinOK(p)
			debug call SetSheyanSpinOK(p)
			debug call SetHuanyiSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    倾雪发放
	*/
	private function Fafang1 takes player p returns nothing
		if (GetPlayerName(p) == "Heavy丶rain" or GetPlayerName(p) == "宥莉" or GetPlayerName(p) == "帝血弑天" or GetPlayerName(p) == "熙熙熙iii" or GetPlayerName(p) == "灵魂独白" or GetPlayerName(p) == "鹊丶南" or GetPlayerName(p) == "老吉与贼" or GetPlayerName(p) == "邪魔ご蒙圈" or GetPlayerName(p) == "僵硬麻木" or GetPlayerName(p) == "夜无丶角落" or GetPlayerName(p) == "月影清风丶" or GetPlayerName(p) == "盖世丶大摸神" or GetPlayerName(p) == "宥莉" or GetPlayerName(p) == "周时爆" or GetPlayerName(p) == "余生请安好" or GetPlayerName(p) == "完⑨琪露诺⑨美" or GetPlayerName(p) == "TenEight" or GetPlayerName(p) == "我是你的小阿飞、" or GetPlayerName(p) == "mmmmm丶辰" or GetPlayerName(p) == "a710924485" or GetPlayerName(p) == "好方好方的新雨" or GetPlayerName(p) == "SonaXXX" or GetPlayerName(p) == "老吉与贼" or GetPlayerName(p) == "吴彦祖66" or GetPlayerName(p) == "皮皮稽" or GetPlayerName(p) == "傻柒丶" or GetPlayerName(p) == "天晴哥哥丶" or GetPlayerName(p) == "LuckyEgg" or GetPlayerName(p) == "野良丶Nora" or GetPlayerName(p) == "坑爹坑爸坑你" or GetPlayerName(p) == "来不及唱的情歌" or GetPlayerName(p) == "万人呐喊丶堕落" or GetPlayerName(p) == "蔚蓝刀锋" or GetPlayerName(p) == "问你永远有多远" or GetPlayerName(p) == "绯色斩月" or GetPlayerName(p) == "丿翼灬炎龙" or GetPlayerName(p) == "淡漠品烟" or GetPlayerName(p) == "让你两只脚" or GetPlayerName(p) == "天堂流尘" or GetPlayerName(p) == "超威蓝猫" or GetPlayerName(p) == "空灵织女" or GetPlayerName(p) == "keyako" or GetPlayerName(p) == "英子丶丿" or GetPlayerName(p) == "丶安丨南秀" or GetPlayerName(p) == "亡殇i" or GetPlayerName(p) == "majia" or GetPlayerName(p) == "小左" or GetPlayerName(p) == "小波点" or GetPlayerName(p) == "打包带走卡簧" or GetPlayerName(p) == "壹梦百年" or GetPlayerName(p) == "康巴拉恶魔" or GetPlayerName(p) == "同林" or GetPlayerName(p) == "人家最萌辣i") then
			call GetAndSaveCangku(p,1)
		endif
		endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    救死
	*/
	private function Fafang2 takes player p returns nothing
		if (GetPlayerName(p) == "馨的宁静" or GetPlayerName(p) == "血撸" or GetPlayerName(p) == "埃罗芒阿纱雾" or GetPlayerName(p) == "传说Q" or GetPlayerName(p) == "紫丶痕" or GetPlayerName(p) == "Black灬Lotus" or GetPlayerName(p) == "坑爹坑爸坑你" or GetPlayerName(p) == "要么投降、要么死" or GetPlayerName(p) == "Ex、1111" or GetPlayerName(p) == "毛世玉是条狗" or GetPlayerName(p) == "heaven92" or GetPlayerName(p) == "丶安丨南秀" or GetPlayerName(p) == "UsamiHaru" or GetPlayerName(p) == "脾气哥哥" or GetPlayerName(p) == "尛‘白菜’" or GetPlayerName(p) == "黑猫丶Kuroneko" or GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "茶香i"	) then
			call GetAndSaveCangku(p,2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	   皮肤
	*/
	private function Fafang3 takes player p returns nothing
		if (GetPlayerName(p) == "彩笔丿") then
			call SetTaiyaSpinOK(p)
			call SetBajueSpinOK(p)
			call SetSheyanSpinOK(p)
		elseif (GetPlayerName(p) == "我是你的小阿飞、") then
			call SetMoqiSpinOK(p)
		elseif (GetPlayerName(p) == "℡悠悠★over") then
			call SetChenji1SpinOK(p)
			call SetBajueSpinOK(p)
			call SetYanmieSpinOK(p)
		elseif (GetPlayerName(p) == "伊人泪。") then
			call SetChenji2SpinOK(p)
		elseif (GetPlayerName(p) == "天子脚下一堆坑") then
			call SetChenji2SpinOK(p)
			call SetKaisaSpinOK(p)
			call SetBajueSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	   幻逸
	*/
	private function Fafang4 takes player p returns nothing
		if ((GetPlayerName(p) == "亡殇i") or (GetPlayerName(p) == "邪魔ご群雄") or (GetPlayerName(p) == "唯爱丶梓潼") or (GetPlayerName(p) == "中途上车的司机") or (GetPlayerName(p) == "炸Boom丶") or (GetPlayerName(p) == "北方的青年") or (GetPlayerName(p) == "Abby丶心碎") or (GetPlayerName(p) == "嚣张城") or (GetPlayerName(p) == "陈长选") or (GetPlayerName(p) == "人家最萌辣i") or (GetPlayerName(p) == "xzxsasas") or (GetPlayerName(p) == "风间优香") or (GetPlayerName(p) == "s被遗弃的人") or (GetPlayerName(p) == "一只不好惹的麋鹿") or (GetPlayerName(p) == "风丶那么安详") or (GetPlayerName(p) == "若水i三千") or (GetPlayerName(p) == "血薇笨笨哒") or (GetPlayerName(p) == "mmmmm丶辰") or (GetPlayerName(p) == "传说Q") or (GetPlayerName(p) == "柒の染") or (GetPlayerName(p) == "Bloo。") or (GetPlayerName(p) == "XOXO你妹") or (GetPlayerName(p) == "鬼画符丑八") or (GetPlayerName(p) == "英子丶丿") or (GetPlayerName(p) == "因我而空虚") or (GetPlayerName(p) == "我要抱大腿丶") or (GetPlayerName(p) == "sdkjaksjkhjk") or (GetPlayerName(p) == "＿雅姬ベ") or (GetPlayerName(p) == "司宸") or (GetPlayerName(p) == "你挺得劲") or (GetPlayerName(p) == "jiaanlan00") or (GetPlayerName(p) == "我是你的小阿飞、") or (GetPlayerName(p) == "邪魔ご蒙圈")) then
			call SetHuanyiSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    发放
	*/
	private function QixiHuodongFafang takes player p returns nothing
		//倾雪
		call Fafang1(p)

		//救死
		call Fafang2(p)

		//皮肤
		call Fafang3(p)

		//幻逸
		call Fafang4(p)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    七夕活动
	*/
	private function QixiHuodongJudgeTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = LoadPlayerHandle(LHTable,id,1)
		call QixiHuodongFafang(p)
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set p = null
		set t = null 
	endfunction

	function QixiHuodong takes player p returns nothing
		local timer t = CreateTimer()
		call SavePlayerHandle(LHTable,GetHandleId(t),1,p)
		call TimerStart(t,1,false,function QixiHuodongJudgeTimer)
		set t = null
	endfunction

endlibrary