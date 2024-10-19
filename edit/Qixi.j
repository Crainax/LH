#include  "LHBase.j"
#include  "Achievement.j"

/*
    七夕
*/
library_once Qixi requires LHBase,Achievement

//---------------------------------------------------------------------------------------------------
	/*
	    补偿
	*/
	function Buchang takes player p returns nothing
		// local integer i = GetConvertedPlayerId(p)
		// if (playerName[i] == "Cyandrizzle") then
		// 	call GetAchievementAndSave(p,325)
		// 	call GetAchievementAndSave(p,35)
		// 	call GetAchievementAndSave(p,321)
		// 	call GetAchievementAndSave(p,412)
		// 	call GetAchievementAndSave(p,413)
		// 	call GetAchievementAndSave(p,414)
		// endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瞬息万年
	*/
	/*private function Fafang1 takes player p returns nothing
		if (GetPlayerName(p) == "你挺得劲" or GetPlayerName(p) == "ㅈ轩轩" or GetPlayerName(p) == "利绝天" or GetPlayerName(p) == "米老鼠的米") then
			call GetAndSaveCangku(p,3)
		endif
		endfunction*/
//---------------------------------------------------------------------------------------------------
	/*
	    紫雷之极
	*/
	/*private function Fafang2 takes player p returns nothing
		if (GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "肆虐De疼痛" or GetPlayerName(p) == "叹之奈何也" or GetPlayerName(p) == "文能题笔安天下" ) then
			call GetAndSaveCangku(p,4)
		endif
	endfunction*/
//---------------------------------------------------------------------------------------------------
	/*
	   皮肤
	*/
	/*private function Fafang3 takes player p returns nothing
		if (GetPlayerName(p) == "玉之魂") then
			call SetHuanyiSpinOK(p)
		elseif (GetPlayerName(p) == "泛舟") then
			call SetLichiSpinOK(p)
			call SetSichenSpinOK(p)
		elseif (GetPlayerName(p) == "英子丶丿") then
			call GetAndSaveCangku(p,4)
			call GetAndSaveCangku(p,7)
			call SetHeiyanSpinOK(p)
		elseif (GetPlayerName(p) == "冷灬无情") then
			call SetMoqiSpinOK(p)
			call SetChenji2SpinOK(p)
		elseif (GetPlayerName(p) == "因我而空虚") then
			call SetXuanxue2SpinOK(p)
			call GetAndSaveCangku(p,6)
			call SetCanglingSpinOK(p)
		elseif (GetPlayerName(p) == "Buckethead") then
			call SetMoqiSpinOK(p)
			call SetCanglingSpinOK(p)
		elseif (GetPlayerName(p) == "小米酥丶") then
			call SetLichiSpinOK(p)
			call GetAndSaveCangku(p,5)
		elseif (GetPlayerName(p) == "FuYou丶") then
			call GetAndSaveCangku(p,5)
			call GetAndSaveCangku(p,6)
			call GetAndSaveCangku(p,7)
		elseif (GetPlayerName(p) == "邪魔ご逆神") then
			call SetHeiyanSpinOK(p)
		elseif (GetPlayerName(p) == "嚣张城") then
			call SetSichenSpinOK(p)
		elseif (GetPlayerName(p) == "wc不在线") then
			call GetAndSaveCangku(p,3)
		elseif (GetPlayerName(p) == "星际诺娃") then
			call GetAndSaveCangku(p,3)
		elseif (GetPlayerName(p) == "午夜魅") then
			call SetXuanxue2SpinOK(p)
		elseif (GetPlayerName(p) == "Cyandrizzle") then
			call SetXuanxue2SpinOK(p)
			call SetKaisaSpinOK(p)
		endif
	endfunction*/

//---------------------------------------------------------------------------------------------------
	/*
	   司宸
	*/
	/*private function Fafang4 takes player p returns nothing
		if (GetPlayerName(p) ==  "FuYou丶" or GetPlayerName(p) ==  "因我而空虚" or GetPlayerName(p) ==  "Buckethead" or GetPlayerName(p) ==  "英子丶丿" or GetPlayerName(p) ==  "小米酥丶" or GetPlayerName(p) ==  "嚣张城" or GetPlayerName(p) ==  "利绝天" or GetPlayerName(p) ==  "１１" or GetPlayerName(p) ==  "与你童在") then
			call SetSichenSpinOK(p)
		endif
	endfunction*/

//---------------------------------------------------------------------------------------------------
	/*
	    发放
	*/
	private function QixiHuodongFafang takes player p returns nothing
		//倾雪
		//call Fafang1(p)

		//救死
		//call Fafang2(p)

		//皮肤
		//call Fafang3(p)

		//幻逸
		//call Fafang4(p)

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