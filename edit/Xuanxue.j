//! import "LHBase.j"
//! import "Spin.j"
//! import "ChallangerDZ.j"

library_once Xuanxue  requires LHBase,Spin,ChallangerDZ
	
	globals
		hashtable HTXX = null
		private integer IQinru
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    皮肤的计数初始化
	*/
	function InitHongdeng takes nothing returns nothing
		set HTXX = InitHashtable()
		set IQinru = 0
	endfunction

	function CountQintu takes unit u returns nothing
		local integer i
		if (HTXX == null) then
			return
		endif

		if (GetXuanxue2Spin(GetOwningPlayer(xuanxue))) then
			return
		endif
		set i = 1
		loop
			exitwhen i > IQinru
    		if (LoadInteger(HTXX,GetHandleId(xuanxue),i) == GetUnitTypeId(u)) then
    			return
    		endif
			set i = i +1
		endloop
		set IQinru = IQinru + 1
		call SaveInteger(HTXX,GetHandleId(xuanxue),IQinru,GetUnitTypeId(u))
		if (IQinru < 134) then
			call BJDebugMsg("|cFFFF0000【凝冰红灯】|r进度:"+I2S(IQinru) + "/134.")
		else
			debug call SetXuanxue2SpinOK(GetOwningPlayer(xuanxue))
		endif
	endfunction
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

        if (IsXuanxueSpin2(GetOwningPlayer(u))) then
            set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'U002',GetUnitX(u),GetUnitY(u),0)
            set gg_unit_Uktl_0018 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
            call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
            call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
            call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
            set u = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
            call RemoveUnit(u)
        endif

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