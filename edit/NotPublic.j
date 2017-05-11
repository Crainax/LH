/*
    没公布
*/
library_once NotPublic initializer InitNotPublic  
	
	globals
		boolean IsTesting = false
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    未公开不能开始游戏
	*/
	function TSixtySecondCon takes nothing returns boolean
	    return IsTesting == false
	endfunction

	function TSixtySecondAct1 takes nothing returns nothing
	    call CustomDefeatBJ( GetEnumPlayer(), "该版本处于测试版,尚未公开.!" )
	endfunction

	function TSixtySecondAct takes nothing returns nothing
	    call ForForce( GetPlayersAll(), function TSixtySecondAct1 )
	endfunction
//---------------------------------------------------------------------------------------------------
	private function VerifyTesting takes nothing returns nothing
		set IsTesting = true
	endfunction
//---------------------------------------------------------------------------------------------------
	 private function InitNotPublic takes nothing returns nothing
	    local trigger t = CreateTrigger()
	    call TriggerRegisterTimerEventSingle( t, 60.00 )
	    call TriggerAddCondition(t, Condition(function TSixtySecondCon))
	    call TriggerAddAction(t, function TSixtySecondAct)

	    set t = CreateTrigger()
	    call TriggerRegisterPlayerChatEvent( t, Player(0), "loopinghelltest2", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "loopinghelltest2", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "loopinghelltest2", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "loopinghelltest2", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "loopinghelltest2", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "loopinghelltest2", true )
	    call TriggerAddAction(t, function VerifyTesting)

	    set t = null
	 endfunction
endlibrary
