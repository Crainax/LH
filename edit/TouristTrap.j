#include  "LHBase.j"
/*
    黑店
*/
library_once TouristTrap initializer InitTouristTrap requires LHBase

	globals
		/*
		    是否合成过半超神的Flag
		*/
		boolean array HasCombineHalf
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    贩卖顶级神器的地方
	*/
	private function TTouristTrapSellCon takes nothing returns boolean
		return (GetUnitTypeId(GetSellingUnit()) == 'uS01')
	endfunction

	private function TTouristTrapSellAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
		local integer lumber
		if not (HasCombineHalf[index]) then
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r你从未合成过任一半超神器！")
			return
		endif
		if (HasLiuli(GetBuyingUnit())) then
			set lumber = 1000
		else
			set lumber = 3000
		endif

		if (GetPlayerState(GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER) < lumber) then
			call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r你没有"+I2S(lumber)+"的木头！")
			return
		endif

		call AdjustPlayerStateBJ(-1*lumber,ConvertedPlayer(index),PLAYER_STATE_RESOURCE_LUMBER)
		call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r购买成功！")

		//! textmacro GiveMaxShen takes BuyType,GiveType
			if ((GetItemTypeId(GetSoldItem()) == '$BuyType$')) then
				call UnitAddItemByIdSwapped('$GiveType$',GetBuyingUnit())
        		call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit())))
	            return
			endif
		//! endtextmacro

		//! runtextmacro GiveMaxShen("IXU2","olig")
		//! runtextmacro GiveMaxShen("IXU3","srtl")
		//! runtextmacro GiveMaxShen("IXU4","shhn")
		//! runtextmacro GiveMaxShen("IXU5","flag")
		//! runtextmacro GiveMaxShen("IXU6","shcw")
		//! runtextmacro GiveMaxShen("IXU7","shtm")
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitTouristTrap takes nothing returns nothing


		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SELL_ITEM)
		call TriggerAddCondition(t, Condition(function TTouristTrapSellCon))
		call TriggerAddAction(t, function TTouristTrapSellAct)
		set t = null
	endfunction
endlibrary