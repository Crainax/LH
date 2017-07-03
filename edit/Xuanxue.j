//! import "LHBase.j"
//! import "Spin.j"

library_once Xuanxue  requires LHBase,Spin
	


	function Wanguxuanshuang takes unit u returns nothing

		if (IsEnemy(u,xuanxue)) then
			call UnitDamageTarget( xuanxue, u, GetDamageInt(xuanxue) * 0.1 , false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
		endif

	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    玄雪法杖
	*/
	private function InitXuanxueSpin takes unit u returns unit
		if (IsXuanxueSpin1(GetOwningPlayer(u))) then
			call UnitRemoveAbility(u,'A046')
			call UnitAddAbility(u,'A0JM')
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.2)
			return u
		else
			return u
		endif
	endfunction

	function InitXuanxue takes unit u returns nothing
		set xuanxue = InitXuanxueSpin(u)

	endfunction

endlibrary