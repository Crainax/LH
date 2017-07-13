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
			debug call GetAchievementAndSave(GetTriggerPlayer(),215)
			debug call GetAchievementAndSave(GetTriggerPlayer(),211)
			debug call GetAchievementAndSave(GetTriggerPlayer(),212)
			debug call GetAchievementAndSave(GetTriggerPlayer(),213)
			debug call GetAchievementAndSave(GetTriggerPlayer(),322)
			debug call GetAchievementAndSave(GetTriggerPlayer(),324)
			debug call GetAchievementAndSave(GetTriggerPlayer(),43)
			debug call GetAchievementAndSave(GetTriggerPlayer(),44)
			debug call GetAchievementAndSave(GetTriggerPlayer(),45)
		debug elseif (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(GetTriggerPlayer())],21))) then
			debug call GetAchievementAndSave(GetTriggerPlayer(),324)
		debug elseif (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(GetTriggerPlayer())],22))) then
			debug call GetAchievementAndSave(GetTriggerPlayer(),322)
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