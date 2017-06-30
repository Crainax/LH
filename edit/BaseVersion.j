//! import "LHBase.j"

library_once BaseVersion initializer InitBaseVersion requires LHBase,Version

	globals
		boolean array BDIYName
	endglobals

	private function TSpeakPasswordBase takes nothing returns nothing
		local string chat = GetEventPlayerChatString()
		debug if (BDIYName[GetConvertedPlayerId(GetTriggerPlayer())]) then
			debug call SetDIYName(GetTriggerPlayer(),chat)
			debug set BDIYName[GetConvertedPlayerId(GetTriggerPlayer())] = false
		debug elseif (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(GetTriggerPlayer())],20))) then
			debug call GetAchievementAndSave(GetTriggerPlayer(),42)
		debug elseif (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(GetTriggerPlayer())],21))) then
			debug call GetAchievementAndSave(GetTriggerPlayer(),318)
		debug endif


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