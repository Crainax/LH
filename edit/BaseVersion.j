#ifndef BaseVersionIncluded
#define BaseVersionIncluded

#include  "edit/LHBase.j"
///#include  "edit/Box.j"

library_once BaseVersion initializer InitBaseVersion requires LHBase,Box,Version

	globals
		boolean array BDIYName

		//获取仓库与皮肤
		boolean BCangkuhuoqu = false
		boolean BSpinhuoqu = false
		integer ISpinachi = 0
	endglobals

	private function TSpeakPasswordBase takes nothing returns nothing
		local string chat = GetEventPlayerChatString()
		debug if (BDIYName[GetConvertedPlayerId(GetTriggerPlayer())]) then
			debug call SetDIYName(GetTriggerPlayer(),chat)
			debug set BDIYName[GetConvertedPlayerId(GetTriggerPlayer())] = false
		debug elseif (BBuqian1) then
		debug 	call Buqian2(GetTriggerPlayer(),GetEventPlayerChatString())
		debug elseif (BBuqian2) then
		debug 	call Buqian3(GetTriggerPlayer(),GetEventPlayerChatString())
		debug elseif (BBoxName[GetConvertedPlayerId(GetTriggerPlayer())] and chat != "-ck") then
			debug call SetDIYBoxName(GetTriggerPlayer(),chat)
			debug set BBoxName[GetConvertedPlayerId(GetTriggerPlayer())] = false

		debug elseif (BCangkuhuoqu) then
		debug 	call Huoqucangku(GetTriggerPlayer(),GetEventPlayerChatString())
		debug 	set BCangkuhuoqu = false
		debug elseif (BSpinhuoqu) then
		debug 	call Huoquspin(GetTriggerPlayer(),GetEventPlayerChatString())
		debug 	set BSpinhuoqu = false
		debug elseif (ISpinachi != 0) then
		debug 	call Huoquachi(GetTriggerPlayer(),GetEventPlayerChatString(),ISpinachi)
		debug 	set ISpinachi = 0

		debug endif

		call TSpeakPassword()
		set chat = null

		debug set BSlince = true
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
#endif
