
//! import "LHBase.j"
//! import "NetVersion.j"
//! import "Continous.j"
//! import "Kuanghuan.j"

library_once DebugNet initializer InitDebugNet requires LHBase,Version,Continous,Kuanghuan


	function TestAchievement takes nothing returns nothing
		
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		set IConDays[1] = i
		call BJDebugMsg("|cFFFF66CC【消息】|r连续签到"+I2S(i))

		//set time_simulate = i
		//call BJDebugMsg("当前时间为:"+I2S(time_simulate))

		set s = null

	endfunction

	private function Showxiao1 takes nothing returns nothing
		//call SetPlayerName(Player(0),"无心使者")
		//set playerName[1] = "无心使者"
		//call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r无心使者")
		call IncreaseXinglongSpin()

	endfunction	

	private function TestCangku takes nothing returns nothing
		call SetKuanghuanOK(Player(0))
	endfunction

	/*private function Showxiao2 takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 16
			call BJDebugMsg("|cFFFF66CC【消息】|r"+I2S(i)+":"+I2S(IComboHistory[i]))
			set i = i +1
		endloop
	endfunction*/

	/*function TestTime takes nothing returns nothing
		
		call SetDenglu(Player(0))
	endfunction	

	function ShowTime takes nothing returns nothing
		call BJDebugMsg("IConDays[1]"+"="+I2S(IConDays[1]))
		call BJDebugMsg("ILastTime[1]"+"="+I2S(ILastTime[1]))
		call BJDebugMsg("GetContinousDay(1)"+"="+I2S(GetContinousDay(Player(0))))
	endfunction

	function ShowDialog takes nothing returns nothing
		call CreateLoginDialog(Player(0))
	endfunction	

	function SetHanxin takes nothing returns nothing
		set Greward[1] = 1
		call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r寒心")
	endfunction*/

//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitDebugNet takes nothing returns nothing
		
		local trigger t = CreateTrigger()

		call TriggerRegisterPlayerChatEvent(t,Player(0),"a",false)
		call TriggerAddAction(t,function TestAchievement)

		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"b",true)
		call TriggerAddAction(t,function Showxiao1)

		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"c",true)
		call TriggerAddAction(t,function TestCangku)

		set t = null

	endfunction
	
endlibrary