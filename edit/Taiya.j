//! import "LHBase.j"
//! import "Spin.j"

library_once Taiya requires LHBase,Spin,Version
	
	globals
		private integer ITaiyamiao = 0
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    泰雅皮肤
	*/
	function AddTaiyaSpin takes nothing returns nothing
		if (ITaiyamiao > 2000) then
			debug call SetTaiyaSpinOK(GetOwningPlayer(taiya))
		else
			set ITaiyamiao = ITaiyamiao + 1
			if (ModuloInteger(ITaiyamiao,100) == 0) then
				call DisplayTextToPlayer(GetOwningPlayer(taiya), 0., 0., "【|cFFCCFF66三弦星谧|r】完成进度"+I2S(ITaiyamiao)+"/2000.")
			endif
		endif
	endfunction
	
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