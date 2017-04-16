
//! import "LHBase.j"
//! import "NetVersion.j"

library_once DebugNet initializer InitDebugNet requires LHBase,Version


	function TestAchievement takes nothing returns nothing
		
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		set achieve[1] = i
		call BJDebugMsg("成就1设置成了:"+I2S(achieve[1]))

		set s = null

	endfunction

	function TestAchievement3 takes nothing returns nothing
	
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		set achieve2[1] = i
		call BJDebugMsg("成就2设置成了:"+I2S(achieve2[1]))

		set s = null

	endfunction

	function TestAchievement4 takes nothing returns nothing
	
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		set achiPage[1] = i
		call BJDebugMsg("成就指针设置成了:"+I2S(achiPage[1]))

		set s = null

	endfunction

	function TestAchievement2 takes nothing returns nothing
		
		call BJDebugMsg("achiPage:"+ S2I(achiPage[1]))
		call BJDebugMsg("achieve:"+ S2I(achieve[1]))
		call BJDebugMsg("achieve2:"+ S2I(achieve2[1]))

	endfunction

	function TestAchievement5 takes nothing returns nothing
	
		call CreateWingDialog(GetTriggerPlayer())

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitDebugNet takes nothing returns nothing
		
		//聊天打开开关进行测试
		local trigger t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"a",false)
		call TriggerAddAction(t,function TestAchievement)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"show",true)
		call TriggerAddAction(t,function TestAchievement2)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"hhh",true)
		call TriggerAddAction(t,function TestAchievement5)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"b",false)
		call TriggerAddAction(t,function TestAchievement3)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"c",false)
		call TriggerAddAction(t,function TestAchievement4)
		set t = null

	endfunction
	
endlibrary