//! import "LHBase.j"
//! import "Spin.j"

library_once Taiya requires LHBase,Spin
	
//---------------------------------------------------------------------------------------------------
	/*
	    泰雅皮肤
	*/
	private function InitTaiyaSpin takes unit u returns unit
		if (IsTaiyaSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'E00G',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Etyr_0017 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],100)
			
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	function InitTaiya takes unit u returns nothing
		set taiya = InitTaiyaSpin(u)

    	call TriggerRegisterUnitEvent( gg_trg_____________86, taiya, EVENT_UNIT_DAMAGED )
	endfunction
endlibrary