
//! import "LHBase.j"
/*
    守家基分商店
*/
library_once CenterCredit initializer InitCenterCredit requires LHBase 
	
	globals
		integer array centerCredit

		private constant integer CREDIT_SOLIDER_1 = 1000
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    积分购买雇佣兵
	*/
	private function TBuySoliderCon takes nothing returns boolean
		return (GetSellingUnit() == 'guyo')
	endfunction
	
	private function TBuySoliderAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
		if (GetUnitTypeId(GetSoldUnit() == 'guy1') then
			if (centerCredit[index] < CREDIT_SOLIDER_1) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有"+I2S(centerCredit[index]+",不足"+I2S(CREDIT_SOLIDER_1))
				call RemoveUnit(GetSoldUnit())
				return
			endif
			set centerCredit[index] = centerCredit[index] - 1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	private function InitCenterCredit takes nothing returns nothing
		
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SELL)
		call TriggerAddCondition(t, Condition(function TBuySoliderCon))
		call TriggerAddAction(t, function TBuySoliderAct)
	endfunction

endlibrary