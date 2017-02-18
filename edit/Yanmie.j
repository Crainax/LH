
//! import "SpellBase.j"
/*
    湮灭
*/
library_once Yanmie requires SpellBase 

	globals
		unit yanmie = null

		private group GShadow = null
		constant integer ICountShadowMAX = 5
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    雷神残影
	*/
	function BoltShadow takes real x,real y returns nothing
		local unit u
		if not (IsFourthSpellOK(yanmie) == true and GetUnitAbilityLevel(yanmie,'AHab') == 1 and GetUnitState(yanmie,UNIT_STATE_MANA) >= 600) then
				return
			endif	
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

	function SimulateDamageYanmie takes unit u returns boolean
		local real damage
		//雷神残影50%伤害
		if (GetUnitTypeId(u) == 'h010') then
			set damage = GetDamageAgi(yanmie) * 0.4
			call UnitDamageTarget( yanmie, GetTriggerUnit(), damage, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡事件：移除单位组
	*/
	function SimulateDeathYanmie takes unit u returns nothing
		if (IsUnitInGroup(u,GShadow) == true) then 
			call GroupAddUnit(GShadow,u)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------


	/*
	    初始化湮灭
	*/
	function InitYanmie takes unit u returns nothing
		set yanmie = u
		set GShadow = CreateGroup()
	endfunction

endlibrary