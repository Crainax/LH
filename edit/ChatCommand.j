
//! import "LHBase.j"
/*
    游戏指令
    -kill自杀
*/
library_once ChatCommand initializer InitChatCommand requires LHBase 
	
//---------------------------------------------------------------------------------------------------
	/*
	    聊天信息"-"指令
	*/
	function ChatCommandAct takes nothing returns nothing
		local string str = GetEventPlayerChatString()
		local unit u = udg_H[GetConvertedPlayerId(GetTriggerPlayer())]
		//自杀
		if (str == "-kill") then
			call UnitDamageTarget( u, u, GetUnitState(u,UNIT_STATE_MAX_LIFE)*10, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
		    call DisplayTextToPlayer( GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r自杀成功!" )
		    return
		endif
		set str = null
		set u = null
	endfunction

	private function InitChatCommand takes nothing returns nothing
		
	    local trigger t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( t, Player(0), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "-", false )
	    call TriggerAddAction(t, function ChatCommandAct)
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

endlibrary

