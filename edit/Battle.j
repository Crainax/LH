//! import "LHBase.j"

library_once Battle initializer InitBattle requires LHBase 
	
	globals
		boolean array BSkip
	endglobals
//---------------------------------------------------------------------------------------------------
	
	/*
	    开启极速模式
	*/
	function TStartFastMonsterCon takes nothing returns boolean
	    return (GetItemTypeId(GetSoldItem()) == 'I04P')
	endfunction

	function TStartFastMonsterAct takes nothing returns nothing
		local integer i = 1
		set BSkip[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))] = true
        call PingMinimap( 8189.00, 1461, 8.00 )
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				if (BSkip[i]) then
    				call BJDebugMsg("|cFFFF66CC【消息】|r"+GetUnitName(udg_H[i])+"打开了急速出怪的开关,需要全员打开才能急速出怪！")
    			else
    				call BJDebugMsg("|cFFFF66CC【消息】|r"+GetUnitName(udg_H[i])+"还未打开急速出怪的开关,需要全员打开才能急速出怪！")
				endif
			endif
			set i = i +1
		endloop

	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    是否是极速模式
	*/
	private function IsFastly takes nothing returns boolean
		local integer i = 1
		local integer count = 0
		loop
			exitwhen i > 6
			set BSkip[i] = true
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and BSkip[i]) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count >= udg_RENSHU
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    战斗调整
	*/
	function 	 takes nothing returns real
		if (IsFastly()) then
			return 1.
		endif
		return I2R(GetUnitUserData(gg_unit_ndrz_0019))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    两波间隔
	*/
	function GetBoSpeed takes nothing returns real
		if (IsFastly()) then
			return 51.
		else
			return 300.
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitBattle takes nothing returns nothing
		local integer i = 1
    	local trigger t = CreateTrigger()
		loop
			exitwhen i > 6
			set BSkip[i] = true
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) then
				set BSkip[i] = false
			endif
			set i = i +1
		endloop

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddCondition(t, Condition(function TStartFastMonsterCon))
	    call TriggerAddAction(t, function TStartFastMonsterAct)
	    set t = null
	endfunction
endlibrary
