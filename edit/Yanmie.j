
//! import "SpellBase.j"
//! import "Spin.j"
/*
    湮灭
*/
library_once Yanmie requires SpellBase,Spin

	globals

		private group GShadow = null
		constant integer ICountShadowMAX = 3
		private trigger TSpellYanmie3 = null

		private integer Ilingyu = 0
		private integer Ishuaxinyifu = 0
		private integer array YKillCount
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    马甲伤害
	*/

	function SimulateDamageYanmie takes unit u returns boolean
		//雷神残影50%伤害
		if (GetUnitTypeId(u) == 'h010') then
			call UnitDamageTarget( yanmie, GetTriggerUnit(), GetDamageAgi(yanmie) * 0.4, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神领域
	*/
	function CountYanmieLingyu takes nothing returns nothing
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) then
			set Ilingyu = Ilingyu + 1
			if (Ilingyu >= 30) then
	   			call CreateSpellTextTag("雷神领域",yanmie,0,50,100,2)
 				call SimulateSpell(yanmie,yanmie,'A0HV',1,5,"stomp",false,true,false)
				set Ilingyu = 0
			endif
		endif
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) then
			set Ishuaxinyifu = Ishuaxinyifu + 1
			if (Ishuaxinyifu >= 200) then
	   			call CreateSpellTextTag("雷神免疫",yanmie,50,0,100,2)
	   			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(yanmie),  GetUnitY(yanmie) ))
	   			set udg_Yifu[GetConvertedPlayerId(GetOwningPlayer(yanmie))] = false
				set Ishuaxinyifu = 0
			endif
		endif
	endfunction
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
	    马甲的死亡事件：移除单位组
	*/
	function SimulateDeathYanmie takes unit u returns nothing
		if (IsUnitInGroup(u,GShadow) == true) then 
			call GroupAddUnit(GShadow,u)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    光环杀怪加属性
	*/
	private function TSpellYanmie3Con takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] != null and (IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE) != true) and (IsUnitIllusionBJ(GetDyingUnit()) != true) and (GetUnitPointValue(GetDyingUnit()) != 0) and (GetUnitTypeId(GetDyingUnit()) != 'h000') and (IsUnitAlly(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) != true) and (GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER)
	endfunction

	private function TSpellYanmie3Act takes nothing returns nothing
		local integer i = GetKillCount(GetDyingUnit())
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
		set YKillCount[index] = YKillCount[index] + i
		if (YKillCount[index] >= 100) then
			call AddHero3W(udg_H[index],GetHeroLevel(udg_H[index]) + 200)
			set YKillCount[index] = 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	//按照12345来判断
	function LearnSkillYanmieI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == yanmie) then

			if (whichSpell == 3 and IsThirdSpellOK(yanmie) == true and GetUnitAbilityLevel(yanmie,'AHbh') == 1) then
				//技能3初始化

				set TSpellYanmie3 = CreateTrigger()
				call TriggerRegisterAnyUnitEventBJ(TSpellYanmie3,EVENT_PLAYER_UNIT_DEATH)
				call TriggerAddCondition(TSpellYanmie3, Condition(function TSpellYanmie3Con))
				call TriggerAddAction(TSpellYanmie3, function TSpellYanmie3Act)
				//湮灭新光环Todo
				call AddSpecialEffectTargetUnitBJ("origin",yanmie,"war3mapImported\\etherealaura.mdx")
				call UnitAddAbility(gg_unit_haro_0030,'A0HF')
				call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
				call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
				call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
				call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
				call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
			endif
		endif
	endfunction

	function LearnSkillYanmie takes unit learner,integer learnSpellID returns nothing
		if (learner == yanmie) then
			if (learnSpellID == 'AHbh') then
				call LearnSkillYanmieI(learner,3)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化皮肤
	*/
	function InitYanmieSpin takes unit u returns unit
		if (IsYanmieSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'E00F',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Eevi_0020 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],100)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------


	/*
	    初始化湮灭
	*/
	function InitYanmie takes unit u returns nothing

		set yanmie = InitYanmieSpin(u)
		set GShadow = CreateGroup()
	    call TriggerRegisterUnitEvent( gg_trg_____________3, yanmie, EVENT_UNIT_ISSUED_POINT_ORDER )
	endfunction

endlibrary