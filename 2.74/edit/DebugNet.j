
//! import "LHBase.j"
//! import "NetVersion.j"

library_once DebugNet initializer InitDebugNet requires LHBase,Version


	function TestAchievement takes nothing returns nothing
		
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		set achieve[1] = i
		call BJDebugMsg("成就设置成了:"+I2S(achieve[1]))

		set s = null

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
		set t = null

	endfunction
	
endlibrary