//! import "LHBase.j"

library_once Xuanxue  requires LHBase 
	


	function Wanguxuanshuang takes nothing returns nothing

		call UnitDamageTarget( xuanxue, GetAttackedUnitBJ(), GetDamageInt(xuanxue) * 0.1 , false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )

	endfunction


	function InitXuanxue takes unit u returns nothing
		set xuanxue = u

	endfunction

endlibrary