//! import "LHBase.j"

library_once GoldSystem initializer InitGoldSystem requires LHBase 
	
//---------------------------------------------------------------------------------------------------
	/*
	    怪物死亡事件
	*/
	function TGoldDeathCon takes nothing returns boolean
	    return ((HaveSavedInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395) == true) and (IsUnitIllusionBJ(GetDyingUnit()) != true) and (GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER) and (GetPlayerSlotState(GetOwningPlayer(GetKillingUnitBJ())) == PLAYER_SLOT_STATE_PLAYING))
	endfunction

	function TGoldDeathAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
	    set udg_gold[index] = R2I(I2R(LoadInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395)) * udg_I_Jinqianhuodelv[index]) + udg_gold[index] + udg_gold[index + 6] 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    每秒加黄金
	*/
	function AddGoldForPlayerTimer takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6

			if ((udg_gold[i] != 0)) then
		        call AdjustPlayerStateBJ( udg_gold[i], ConvertedPlayer(i), PLAYER_STATE_RESOURCE_GOLD )
	    		call CreateSpellTextTag("黄金+"+ I2S(udg_gold[i]),udg_H[i],255,255,0,2)
		        set udg_gold[i] = 0
		    endif

			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitGoldSystem takes nothing returns nothing

		//怪物死亡事件
	    local trigger t = CreateTrigger()
	    local timer ti = CreateTimer()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function TGoldDeathCon))
	    call TriggerAddAction(t, function TGoldDeathAct)

	    //每秒增加黄金
	    call TimerStart(ti,1,true,function AddGoldForPlayerTimer)
	    set t = null
	    set ti = null
	endfunction

endlibrary

