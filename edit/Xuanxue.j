//! import "LHBase.j"
//! import "Spin.j"

library_once Xuanxue  requires LHBase,Spin
	
//---------------------------------------------------------------------------------------------------
	/*
	    冰之凋零
	*/
	function Bingzhidiaoling takes unit u returns nothing
		local real damage = GetDamageInt(xuanxue)
		local real x = GetUnitX(u)
		local real y = GetUnitY(u)
	    call PrintSpell(GetOwningPlayer(xuanxue),GetAbilityName(GetSpellAbilityId()),damage)
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", x, y ))
	    call UnitDamageTarget( xuanxue, u, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    call PolledWait(1)
		call DamageAreaEff(xuanxue,x,y,600,damage,"Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl")
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    万古玄霜的被动效果
	*/
	function Wanguxuanshuang takes unit u returns nothing

		if (IsEnemy(u,xuanxue) and (udg_U_Zhuansheng_Dantiao[2] != u or GetAttacker() == xuanxue) and GetUnitState(xuanxue,UNIT_STATE_MANA) >= 400) then
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