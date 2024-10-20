#include  "edit/SpellBase.j"
#include  "edit/Spin.j"
library_once Lingxue requires SpellBase ,Spin

	globals
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    复活后关闭碰撞
	*/
	function AfterReviveLingxue takes unit u returns nothing
		if (u == lingxue) then
    		call SetUnitPathing( lingxue, false )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凌雪皮肤
	*/
	private function InitLingxueSpin takes unit u returns unit
		if (IsLingxueSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H01V',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Hjai_0014 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	function InitLingxue takes unit u returns nothing

		set lingxue = InitLingxueSpin(u)

    	call TriggerRegisterUnitEvent( gg_trg_____________21, lingxue, EVENT_UNIT_DAMAGED )
    	call SetUnitPathing( lingxue, false )
	endfunction

endlibrary