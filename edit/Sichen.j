
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄梦霁的技能
*/
library_once Sichen requires SpellBase,Printer,Attr

	globals

	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageSichen takes nothing returns boolean
		//塔1
		if (GetUnitTypeId(GetEventDamageSource()) == 'hhs1') then
			call UnitDamageTarget( sichen, GetTriggerUnit(), GetDamageAgi(sichen) * 0.1, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif		
		//塔2
		if (GetUnitTypeId(GetEventDamageSource()) == 'hhs2') then
			call UnitDamageTarget( sichen, GetTriggerUnit(), GetDamageAgi(sichen) * 0.5, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡
	*/


//---------------------------------------------------------------------------------------------------
	/*
	    主英雄技能判断
	*/

	private function TSpellMengjiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AHM1') then
			call Tanyoujian(0.75,GetSpellAbilityId(),GetSpellTargetX(),GetSpellTargetY(),5)
		elseif (GetSpellAbilityId() == 'AHM2') then
			call Zhenhunsuo()
		elseif (GetSpellAbilityId() == 'AHM3') then 
			call Sanchuanjian()
		elseif (GetSpellAbilityId() == 'AHM4') then 
			call Shunfaxin()
		elseif (GetSpellAbilityId() == 'AHM5') then 
			call Linglongwu()
		//拟态
		elseif (GetSpellAbilityId() == 'A0GW' and IsCanCopy(GetSpellTargetItem())) then 
			if (IsInRect(GetUnitX(mengji),GetUnitY(mengji),gg_rct_______a3) and IsInRect(GetUnitX(mengji),GetUnitY(mengji),gg_rct_______a3)) then
				call DisplayTextToPlayer(GetOwningPlayer(mengji), 0., 0., "|cFFFF66CC【消息】|r此处禁止拟态.")
			else
				call Nitai()
			endif
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillMengjiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == mengji) then
			if(whichSpell == 1) then
			elseif (whichSpell == 2 and IsSecondSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM2') == 1) then
				//技能2初始化
			elseif (whichSpell == 3 and IsThirdSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM3') == 1) then
				//技能3初始化
				call InitShunyi()
				call AddSpecialEffectTargetUnitBJ("origin",mengji,"war3mapImported\\BlightwalkerAura.mdx")
				call UnitAddAbility(gg_unit_haro_0030,'A0EL')
			elseif (whichSpell == 4 and IsFourthSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM4') == 1) then
				//技能4初始化
			elseif (whichSpell == 5 and IsFifthSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM5') == 1) then
				//技能5初始化
			endif
		endif
	endfunction

	function LearnSkillMengji takes unit learner,integer learnSpellID returns nothing
		if (learner == mengji) then
			if (learnSpellID == 'AHM1') then
				call LearnSkillMengjiI(learner,1)
			elseif (learnSpellID == 'AHM2') then
				call LearnSkillMengjiI(learner,2)
			elseif (learnSpellID == 'AHM3') then
				call LearnSkillMengjiI(learner,3)
			elseif (learnSpellID == 'AHM4') then
				call LearnSkillMengjiI(learner,4)
			elseif (learnSpellID == 'AHM5') then
				call LearnSkillMengjiI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	function InitSichen takes unit u returns nothing

		set sichen = u

		//主英雄技能
		set TSpellSichen = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellSichen,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellSichen, function TSpellSichenAct)

	endfunction

endlibrary


