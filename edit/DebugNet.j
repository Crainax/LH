
//! import "LHBase.j"
//! import "NetVersion.j"
//! import "MiJing.j"

library_once DebugNet initializer InitDebugNet requires LHBase,Version,MiJing


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

	function TestAchievement6 takes nothing returns nothing
	
		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))
		call GetAchievementAndSave(GetTriggerPlayer(),i)

		set s = null

	endfunction

	function TestAchievement2 takes nothing returns nothing
		
		call BJDebugMsg("achiPage:"+ I2S(achiPage[1]))
		call BJDebugMsg("achieve:"+ I2S(achieve[1]))
		call BJDebugMsg("achieve2:"+ I2S(achieve2[1]))

	endfunction

	function TestAchievement5 takes nothing returns nothing

		call CreateAchievementDialog(GetTriggerPlayer())

	endfunction

	function TestAchievement7 takes nothing returns nothing

		call BJDebugMsg("时间:" + I2S(DzAPI_Map_GetGameStartTime()))

	endfunction

	function TestMijing takes nothing returns nothing

		call Fafangmijing(1)

	endfunction

	function TestLeitai takes nothing returns nothing

		call SaveKillLeishi(Player(0))

	endfunction

	function TestDaixin takes nothing returns nothing

		call SaveDaixin(1)

	endfunction

	function TestQuanchengjiu takes nothing returns nothing

		local string s = GetEventPlayerChatString()

		local integer i = S2I(SubStringBJ(s,2,StringLength(s)))

		call GetAchievementAndSave(Player(0),i)

	endfunction

	function TestTaiya takes nothing returns nothing
		call SetXuanxueSpinOK(Player(0))

	endfunction

	function Baihujishu takes nothing returns nothing
		call IncreaseTaiyaSpin(Player(0))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitDebugNet takes nothing returns nothing
		
		//聊天打开开关进行测试,a1,b2,c指
		local trigger t = CreateTrigger()
		/*call TriggerRegisterPlayerChatEvent(t,Player(0),"a",false)
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
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"d",false)
		call TriggerAddAction(t,function TestAchievement6)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"shi",false)
		call TriggerAddAction(t,function TestAchievement7)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"caji",false)
		call TriggerAddAction(t,function TestMijing)*/

		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"a",false)
		call TriggerAddAction(t,function TestQuanchengjiu)
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"c",false)
		call TriggerAddAction(t,function Baihujishu)

		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"bb",false)
		call TriggerAddAction(t,function TestTaiya)
		set t = null

	endfunction
	
endlibrary