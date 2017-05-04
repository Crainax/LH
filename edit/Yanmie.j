
//! import "SpellBase.j"
/*
    湮灭
*/
library_once Yanmie requires SpellBase 

	globals
		unit yanmie = null

		private group GShadow = null
		constant integer ICountShadowMAX = 3
		private trigger TSpellYanmie3 = null


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
		return (IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ()))) and udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] != null
	endfunction

	private function TSpellYanmie3Act takes nothing returns nothing
		local integer i = GetKillCount(GetDyingUnit())
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
		local integer count = GetHeroLevel(udg_H[index])/100 + 2
		//call SetHeroInt(udg_H[index],GetHeroInt(udg_H[index],true) + count * i ,true)
		//call SetHeroAgi(udg_H[index],GetHeroAgi(udg_H[index],true) + count * i , true)
		//call SetHeroStr(udg_H[index],GetHeroStr(udg_H[index],true) + count * i , true)
		call AddHero3W(udg_H[index],count * i)
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
	    初始化湮灭
	*/
	function InitYanmie takes unit u returns nothing

		set yanmie = u
		set GShadow = CreateGroup()

	endfunction

endlibrary