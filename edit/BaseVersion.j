//! import "LHBase.j"

library_once BaseVersion initializer InitBaseVersion requires LHBase,Version

	globals
	endglobals

	private function TSpeakPasswordBase takes nothing returns nothing
		local string chat = GetEventPlayerChatString()
		call TSpeakPassword()
	endfunction

//---------------------------------------------------------------------------------------------------

	private function InitBaseVersion takes nothing returns nothing
		    local trigger t = CreateTrigger()
		    call TriggerRegisterPlayerChatEvent( t, Player(0), "", false )
		    call TriggerRegisterPlayerChatEvent( t, Player(1), "", false )
		    call TriggerRegisterPlayerChatEvent( t, Player(2), "", false )
		    call TriggerRegisterPlayerChatEvent( t, Player(3), "", false )
		    call TriggerRegisterPlayerChatEvent( t, Player(4), "", false )
		    call TriggerRegisterPlayerChatEvent( t, Player(5), "", false )
		    call TriggerAddAction(t, function TSpeakPasswordBase)
	endfunction

endlibrary