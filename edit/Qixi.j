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
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    倾雪发放
	*/
	private function Fafang1 takes player p returns nothing
		if (GetPlayerName(p) == "你挺得劲" or GetPlayerName(p) == "ㅈ轩轩" or GetPlayerName(p) == "利绝天" or GetPlayerName(p) == "躺车门始祖") then
			call GetAndSaveCangku(p,3)
		endif
		endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    救死
	*/
	private function Fafang2 takes player p returns nothing
		if (GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "肆虐De疼痛" or GetPlayerName(p) == "叹之奈何也" or GetPlayerName(p) == "文能题笔安天下" ) then
			call GetAndSaveCangku(p,4)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	   皮肤
	*/
	private function Fafang3 takes player p returns nothing
		if (GetPlayerName(p) == "FJ风云") then
			call SetMoqiSpinOK(p)
			call SetSeyuSpinOK(p)
			call SetXiaoyueSpinOK(p)		
		elseif (GetPlayerName(p) == "伊人泪。") then
			call SetXiaoyueSpinOK(p)
		elseif (GetPlayerName(p) == "话唠。") then
			call SetHuanyiSpinOK(p)
			call SetKaisaSpinOK(p)
		elseif (GetPlayerName(p) == "天子脚下一堆坑") then
			call SetXuanxue2SpinOK(p)
			call SetSheyanSpinOK(p)
		elseif (GetPlayerName(p) == "Cyandrizzle") then
			call SetHuanyiSpinOK(p)
		elseif (GetPlayerName(p) == "肆虐De疼痛") then
			call SetXuanxue2SpinOK(p)
		elseif (GetPlayerName(p) == "好声音更动人") then
			call SetHuanyiSpinOK(p)
		elseif (GetPlayerName(p) == "与你童在") then
			call SetHuanyiSpinOK(p)
		elseif (GetPlayerName(p) == "魔兽2333") then
			call SetHuanyiSpinOK(p)
		elseif (GetPlayerName(p) == "躺车门始祖") then
			call SetKaisaSpinOK(p)
			call SetMoqiSpinOK(p)
			call SetLingxueSpinOK(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	   司宸
	*/
	private function Fafang4 takes player p returns nothing
		if (GetPlayerName(p) == "因我而空虚" or GetPlayerName(p) == "青山绿水丶" or GetPlayerName(p) == "Bucketehad" or GetPlayerName(p) == "天子脚下一堆坑" or GetPlayerName(p) == "英子丶丿") then
			call SetSichenSpinOK(p)
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