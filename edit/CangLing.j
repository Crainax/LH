
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄梦霁的技能
*/
library_once Mengji requires SpellBase,Printer,Attr

	globals

		unit cangling = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageCangling takes unit u returns boolean

		if (GetUnitTypeId(u) == 'uuu1') then
			call UnitDamageTarget( cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    不灭真炎
	*/
	private function BuMieZhenYanTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local texttag tt = LoadTextTagHandle(spellTable,id,2)
		local integer value = GetUnitUserData(u) - 1
		if (value > 0) then
			call SetTextTagTextBJ(tt,I2S(value) + "秒",20)
			call SetUnitUserData(value)
		else
			call RemoveUnit(u)
			call DestroyTextTag(tt)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
		set tt = null 
	endfunction

	private function BuMieZhenYan takes integer lifeTime,integer abilityID,real x,real y returns nothing
		local real damage = GetDamageAgi(cangling) * 0.4
		local timer t = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(cangling),'uuu1',x,y,270)
		call SetUnitUserData(u,lifeTime)
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call SaveTextTagHandle(spellTable,GetHandleId(t),2,CreateTextTagUnitBJ( I2S(lifeTime)+"秒", u, 0, 20, 100, 0, 100, 0 ))
		call TimerStart(t,1,true,function BuMieZhenYanTimer)
	    call PrintSpell(GetOwningPlayer(cangling),GetAbilityName(abilityID),damage)
	    set u = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    联结谛盟
	*/
	private function LianJieDiMeng takes nothing returns nothing
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM2'),"结盟成功！")
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call PolledWait(12)
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM2'),"结盟结束！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    A出不灭真炎
	*/
	private function TSpellCangling2Con takes nothing returns boolean
		return GetAttacker() == cangling and IsSecondSpellOK(cangling) == true and GetUnitState(cangling,UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(cangling,'AHM2') == 1 and GetRandomInt(1,20) == 1
	endfunction

	private function TSpellCangling2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call BuMieZhenYan(2,'AHM2',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()))
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    主英雄技能判断
	*/

	private function TSpellMengjiAct takes nothing returns nothing
		local integer i = 1
		if (GetSpellAbilityId() == 'AHM1') then
			call BuMieZhenYan(5,GetSpellAbilityId(),GetSpellTargetX(),GetSpellTargetY())
		elseif (GetSpellAbilityId() == 'AHM2') then
			call LianJieDiMeng()
		elseif (GetSpellAbilityId() == 'AHM3') then 
			call Sanchuanjian()
		elseif (GetSpellAbilityId() == 'AHM4') then 
			call Shunfaxin()
		elseif (GetSpellAbilityId() == 'AHM5') then 
			call Linglongwu()
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
	/*
	    初始化凌苍
	*/
	function InitCangling takes unit u returns nothing

		set cangling = u

	    //英雄第二个技能攻击事件
	    set TSpellCangling2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellCangling2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellCangling2, Condition(function TSpellCangling2Con))
	    call TriggerAddAction(TSpellCangling2, function TSpellCangling2Act)

	endfunction

endlibrary


