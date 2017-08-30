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
		if (playerName[i] == "℡悠悠★over") then
			call SetSeyuSpinOK(GetTriggerPlayer())
			call SetXiaoyueSpinOK(GetTriggerPlayer())
			call SetXuanxue1SpinOK(GetTriggerPlayer())
			call SetTaiyaSpinOK(GetTriggerPlayer())
			call SetHanshangSpinOK(GetTriggerPlayer())
			call SetLingxueSpinOK(GetTriggerPlayer())
			call SetChenji2SpinOK(GetTriggerPlayer())
			call SetMoqiSpinOK(GetTriggerPlayer())
			call SetKaisaSpinOK(GetTriggerPlayer())
			call SetXuanxue2SpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
			call SetHuanyiSpinOK(GetTriggerPlayer())		
		elseif (playerName[i] == "绝对无双") then
			set heroCountString[i] = "18181818181818181818181818181818181818000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
		elseif (playerName[i] == "英子丶丿") then
			set heroCountString[i] = "99999999000000000000000000000000000000000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
			call SetMoqiSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
			call SetXuanxue2SpinOK(GetTriggerPlayer())
			call SetBajueSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
		elseif (playerName[i] == "小米酥丶") then
			set heroCountString[i] = "99999999999999180000000000000000000000000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
		elseif (playerName[i] == "泛舟") then
			set heroCountString[i] = "33333333333333333333333333333333333333000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
		elseif (playerName[i] == "司宸") then
			set heroCountString[i] = "99999999999999999999999999999999999999000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
			set easyCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			set middleCString[i] = "11010000000000000000000000000000000000000000000000000000000000"
			set hardCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			call DzAPI_Map_StoreString( p, "easyCString", easyCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "middleCString", middleCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "hardCString", hardCString[GetConvertedPlayerId(p)] )
			call SetMoqiSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
			call SetXuanxue2SpinOK(GetTriggerPlayer())
			call SetBajueSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
		elseif (playerName[i] == "＿雅姬ベ") then
			set heroCountString[i] = "99999999999999999999999999999999999999000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
			set easyCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			set middleCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			set hardCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			call DzAPI_Map_StoreString( p, "easyCString", easyCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "middleCString", middleCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "hardCString", hardCString[GetConvertedPlayerId(p)] )
			call SetMoqiSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
			call SetXuanxue2SpinOK(GetTriggerPlayer())
			call SetBajueSpinOK(GetTriggerPlayer())
			call SetSheyanSpinOK(GetTriggerPlayer())
		elseif (playerName[i] == "月丶暗影") then
			set heroCountString[i] = "13131313131313131313131313131313131313000000000000000000000000"
			call DzAPI_Map_StoreString( p, "hero", heroCountString[GetConvertedPlayerId(p)] )
			set easyCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			set middleCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			set hardCString[i] = "11111000000000000000000000000000000000000000000000000000000000"
			call DzAPI_Map_StoreString( p, "easyCString", easyCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "middleCString", middleCString[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreString( p, "hardCString", hardCString[GetConvertedPlayerId(p)] )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    倾雪发放
	*/
	private function Fafang1 takes player p returns nothing
		if (GetPlayerName(p) == "Heavy丶rain" or GetPlayerName(p) == "宥莉" or GetPlayerName(p) == "帝血弑天" or GetPlayerName(p) == "熙熙熙iii" or GetPlayerName(p) == "灵魂独白" or GetPlayerName(p) == "鹊丶南" or GetPlayerName(p) == "老吉与贼" or GetPlayerName(p) == "邪魔ご蒙圈" or GetPlayerName(p) == "僵硬麻木" or GetPlayerName(p) == "夜无丶角落" or GetPlayerName(p) == "月影清风丶" or GetPlayerName(p) == "盖世丶大摸神" or GetPlayerName(p) == "宥莉" or GetPlayerName(p) == "周时爆" or GetPlayerName(p) == "余生请安好" or GetPlayerName(p) == "完⑨琪露诺⑨美" or GetPlayerName(p) == "TenEight" or GetPlayerName(p) == "我是你的小阿飞、" or GetPlayerName(p) == "mmmmm丶辰" or GetPlayerName(p) == "a710924485" or GetPlayerName(p) == "好方好方的新雨" or GetPlayerName(p) == "SonaXXX" or GetPlayerName(p) == "老吉与贼" or GetPlayerName(p) == "吴彦祖66" or GetPlayerName(p) == "皮皮稽" or GetPlayerName(p) == "傻柒丶" or GetPlayerName(p) == "天晴哥哥丶" or GetPlayerName(p) == "LuckyEgg" or GetPlayerName(p) == "野良丶Nora" or GetPlayerName(p) == "坑爹坑爸坑你" or GetPlayerName(p) == "来不及唱的情歌" or GetPlayerName(p) == "万人呐喊丶堕落" or GetPlayerName(p) == "蔚蓝刀锋" or GetPlayerName(p) == "问你永远有多远" or GetPlayerName(p) == "绯色斩月" or GetPlayerName(p) == "丿翼灬炎龙" or GetPlayerName(p) == "淡漠品烟" or GetPlayerName(p) == "让你两只脚" or GetPlayerName(p) == "天堂流尘" or GetPlayerName(p) == "超威蓝猫" or GetPlayerName(p) == "空灵织女" or GetPlayerName(p) == "keyako" or GetPlayerName(p) == "℡悠悠★over" or GetPlayerName(p) == "丶安丨南秀" or GetPlayerName(p) == "亡殇i" or GetPlayerName(p) == "majia" or GetPlayerName(p) == "小左" or GetPlayerName(p) == "小波点" or GetPlayerName(p) == "打包带走卡簧" or GetPlayerName(p) == "壹梦百年" or GetPlayerName(p) == "康巴拉恶魔" or GetPlayerName(p) == "同林" or GetPlayerName(p) == "人家最萌辣i" or GetPlayerName(p) == "chineseBOYhans") then
			if (GetBit(Greward[GetConvertedPlayerId(p)],1) < 1) then
				set Greward[GetConvertedPlayerId(p)] = Greward[GetConvertedPlayerId(p)] + 1
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功通过七夕活动获取倾雪寒晶！|r")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功通过七夕活动获取倾雪寒晶！|r")
				call DisplayTextToPlayer(p, 0., 0., "|cff3366ff【消息】恭喜你成功通过七夕活动获取倾雪寒晶！|r")
				call DzAPI_Map_StoreInteger( p,  "Greward", Greward[GetConvertedPlayerId(p)] )
			endif

		endif
		endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    救死
	*/
	private function Fafang2 takes player p returns nothing
		if (GetPlayerName(p) == "馨的宁静" or GetPlayerName(p) == "血撸" or GetPlayerName(p) == "埃罗芒阿纱雾" or GetPlayerName(p) == "传说Q" or GetPlayerName(p) == "紫丶痕" or GetPlayerName(p) == "Black灬Lotus" or GetPlayerName(p) == "坑爹坑爸坑你" or GetPlayerName(p) == "要么投降、要么死" or GetPlayerName(p) == "Ex、1111" or GetPlayerName(p) == "毛世玉是条狗" or GetPlayerName(p) == "heaven92" or GetPlayerName(p) == "丶安丨南秀" or GetPlayerName(p) == "UsamiHaru" or GetPlayerName(p) == "脾气哥哥" or GetPlayerName(p) == "尛‘白菜’" or GetPlayerName(p) == "黑猫丶Kuroneko" or GetPlayerName(p) == "英子丶丿" or GetPlayerName(p) == "茶香i"	) then
			if (GetBit(Greward[GetConvertedPlayerId(p)],2) < 1) then
				set Greward[GetConvertedPlayerId(p)] = Greward[GetConvertedPlayerId(p)] + 10
				call DisplayTextToPlayer(p, 0., 0., "|cffff6800【消息】恭喜你成功通过七夕活动获取救死扶伤！|r")
				call DisplayTextToPlayer(p, 0., 0., "|cffff6800【消息】恭喜你成功通过七夕活动获取救死扶伤！|r")
				call DisplayTextToPlayer(p, 0., 0., "|cffff6800【消息】恭喜你成功通过七夕活动获取救死扶伤！|r")
				call DzAPI_Map_StoreInteger( p,  "Greward", Greward[GetConvertedPlayerId(p)] )
			endif
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
		elseif (GetPlayerName(p) == "邪魔ご群雄") then
			call SetTaiyaSpinOK(p)
			call SetBajueSpinOK(p)
			call SetKaisaSpinOK(p)
		elseif (GetPlayerName(p) == "我是你的小阿飞、") then
			call SetMoqiSpinOK(p)
		elseif (GetPlayerName(p) == "℡悠悠★over") then
			call SetXuanxue2SpinOK(p)
			call SetSheyanSpinOK(p)
			call SetTaiyaSpinOK(p)
		elseif (GetPlayerName(p) == "伊人泪。") then
			call SetChenji2SpinOK(p)
		elseif (GetPlayerName(p) == "敖利给") then
			call SetXuanxue2SpinOK(p)
			call SetYanmieSpinOK(p)
			call SetBajueSpinOK(p)
		elseif (GetPlayerName(p) == "完⑨琪露诺⑨美") then
			call SetMoqiSpinOK(p)
			call SetLingxueSpinOK(p)
			call SetBajueSpinOK(p)
			call SetKaisaSpinOK(p)
		elseif (GetPlayerName(p) == "FJ风云") then
			call SetMoqiSpinOK(p)
			call SetXiaoyueSpinOK(p)
			call SetSeyuSpinOK(p)
		elseif (GetPlayerName(p) == "咸菜拉条子") then
			call SetChenji2SpinOK(p)
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