
//! import "SpellBase.j"
/*
    湮灭
*/
library_once Yanmie initializer InitYanmie requires SpellBase 

	globals
		unit yanmie

		private group GShadow
		constant integer ICountShadowMAX = 5
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    雷神残影
	*/
	function BoltShadow takes real x,real y returns nothing
		local unit u
		if (CountUnitsInGroup(GShadow) >= ICountShadowMAX) then
			return
		endif
		set u = CreateUnit(GetOwningPlayer(yanmie),'h010',x,y,GetRandomReal(0,360))
	    call CreateSpellTextTag("影",u,100,100,0,2)
		call UnitApplyTimedLifeBJ( 4.00, 'BHwe',u )
		call GroupAddUnit(GShadow,u)
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲伤害
	*/
	function SimulateDamageYanmie takes nothing returns nothing
		local real damage
		//雷神残影50%伤害
		if (GetUnitTypeId(GetEventDamageSource()) == 'h010') then
			set damage = GetDamageAgi(yanmie) * 0.5
			call UnitDamageTarget( yanmie, GetTriggerUnit(), damage, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------


	/*
	    初始化湮灭
	*/
	private function InitYanmie takes unit u returns nothing
		set yanmie = u
		set GShadow = CreateGroup()
	endfunction

endlibrary