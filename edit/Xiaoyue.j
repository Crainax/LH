//! import "LHBase.j"
//! import "Spin.j"

library_once Xiaoyue  requires LHBase,Spin
	

//---------------------------------------------------------------------------------------------------
	/*
	    判断单位是否是晓月皮肤
	*/
	function IsXiaoyueSpin takes nothing returns boolean
		return GetUnitTypeId(xiaoyue) == 'U001'
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    晓月皮肤
	*/
	private function InitXiaoyueSpin takes unit u returns unit
		if (IsXiaoyueSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'U001',GetUnitX(u),GetUnitY(u),0)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	function InitXiaoyue takes unit u returns nothing

		set xiaoyue = InitXiaoyueSpin(u)
		
	endfunction
endlibrary