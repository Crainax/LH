
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄司宸的技能
*/
library_once Sichen requires SpellBase,Printer,Attr

	globals

		//触发器
		private trigger TSpellSichen = null
		private trigger TSpellSichen2 = null
		//塔的单位组
		private group GTower = null
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
		//硫炎
		if (GetUnitTypeId(GetEventDamageSource()) == 'hsi1') then
			call UnitDamageTarget( sichen, GetTriggerUnit(), GetDamageAgi(sichen) * 0.33, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡
	*/
	function SimulateDeathSichen takes unit u returns nothing
		if (IsUnitInGroup(u,GTower)) then 
			call GroupAddUnit(GTower,u)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    陨落硫炎
	*/
	private function Yunluoliuyan takes integer abilityID,unit caster,integer zhenshu returns nothing
		local integer i = 1
	    call PrintSpell(GetOwningPlayer(sichen),GetAbilityName(abilityID),GetDamageAgi(sichen)*0.33)
		loop
			exitwhen i > zhenshu
			//todo:2个，多重技能与单位
			call UnitApplyTimedLifeBJ( 3.00, 'BHwe',CreateUnit(GetOwningPlayer(sichen),'hsi1',GetUnitX(caster),GetUnitY(caster),0) )
			if (i < zhenshu) then
				call PolledWait(0.5)
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    亘月天地
	*/
	private function GenyuetiandiA takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] == GetFilterUnit() and not(Iswudi(GetFilterUnit()))
	endfunction

    private function GenyuetiandiB takes nothing returns nothing
        if (GetFilterUnit() != null) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetFilterUnit()), GetUnitY(GetFilterUnit()) ))
			call UnitRemoveAbility(GetFilterUnit(),'Avul')
        endif
    endfunction

	private function GenyuetiandiTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group l_group = LoadGroupHandle(spellTable,id,1)
        call ForGroupBJ( l_group, function GenyuetiandiB )
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		call DestroyGroup(l_group)
		set l_group = null
		set t = null 
	endfunction

	private function Genyuetiandi takes nothing returns nothing
		local group l_group = CreateGroup()
		local timer t = CreateTimer()
		local unit l_unit
		local group l_group1 = CreateGroup()
		local unit l_unit1

	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(sichen), GetUnitY(sichen) ))
		call GroupEnumUnitsInRange(l_group, GetUnitX(sichen), GetUnitY(sichen), 900, Condition(function GenyuetiandiA))
		if not(Iswudi(sichen)) then
			call GroupAddUnit(l_group,sichen)
		endif
		//加不无敌的塔进来
		call GroupAddGroup(GTower,l_group1)
		loop
		    set l_unit1 = FirstOfGroup(l_group1)
		    exitwhen l_unit1 == null
		    call GroupRemoveUnit(l_group1, l_unit1)
    		if not(Iswudi(l_unit1)) then
				call GroupAddUnit(l_group,l_unit1)
			endif
		endloop

		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (l_unit != null) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
				call UnitAddAbility(l_unit,'Avul')
		    endif
		endloop
	    call PrintSpellName(GetOwningPlayer(sichen),GetAbilityName('AHM2'))
		call SaveGroupHandle(spellTable,GetHandleId(t),1,l_group)
		call TimerStart(t,5,false,function GenyuetiandiTimer)
		set t = null
		call DestroyGroup(l_group1)
		set l_group1 = null
		set l_unit1 =null
		set l_group = null
		set l_unit =null	
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    亘月天地的被动效果
	*/
    private function TSpellSichen2Con takes nothing returns boolean
    	return (GetAttackedUnitBJ() == sichen or IsUnitInGroup(GetAttackedUnitBJ(),GTower)) and IsSecondSpellOK(sichen) == true and GetUnitState(sichen,UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(sichen,'AHM2') == 1
    endfunction
    
    private function TSpellSichen2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call Yunluoliuyan('AHM2',GetAttackedUnitBJ(),2)
		call PolledWait(4.5)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    涅槃化凰的减伤效果
	*/
	private function TSpellSichen3Con takes nothing returns boolean
		return IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'AHM3') == 1 and GetEventDamage() > GetUnitState(sichen,UNIT_STATE_LIFE) and GetTriggerUnit() == sichen and IsUnitAliveBJ(sichen) and GetRandomInt(1,2) == 1
	endfunction
	
	private function TSpellSichen3Act takes nothing returns nothing
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", GetUnitX(sichen), GetUnitY(sichen) ))
		call SetUnitLifePercentBJ(sichen,100)
	    call CreateSpellTextTag("涅槃化凰",sichen,100,0,0,3)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		圣皇赐力
	*/	
	private function ShenghuangciliTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local integer index = LoadInteger(spellTable,id,2)
		local effect eff = LoadEffectHandle(spellTable,id,3)
		call DestroyEffect(eff)
		call AddSpellPercent(index,-0.6)
		if (u != null) then
			call UnitRemoveAbility(GetSpellTargetUnit(),'shen')
		endif	
	    call PrintSpellContent(GetOwningPlayer(sichen),GetAbilityName('AHM4'),"，时间结束。")
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		set u = null
		set t = null 
		set eff = null
	endfunction
		
	private function Shenghuangcili takes nothing returns nothing
		local timer t = CreateTimer()
		//圣皇赐力
		call UnitAddAbility(GetSpellTargetUnit(),'shen')
		call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(GetSpellTargetUnit())),0.6)
		call SaveUnitHandle(spellTable,GetHandleId(t),1,GetSpellTargetUnit())
		call SaveInteger(spellTable,GetHandleId(t),2,GetConvertedPlayerId(GetOwningPlayer(GetSpellTargetUnit())))
		//todo：赐力特效与绑定特效
		call SaveEffectHandle(spellTable,GetHandleId(t),3,AddSpecialEffectTargetUnitBJ("chest",GetSpellTargetUnit(),"war3mapImported\\BlightwalkerAura.mdx"))
	    call DestroyEffect(AddSpecialEffect("Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()) ))
		call TimerStart(t,60,false,function ShenghuangciliTimer)
	    call PrintSpellName(GetOwningPlayer(sichen),GetAbilityName('AHM4'))
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    火箭支援
	*/
	private function Huojianzhiyuan takes nothing returns nothing
		local integer i
		if not(UnitHasBuffBJ(sichen,'BBBB')) then
			return
		endif

		set i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (udg_H[i] != null)) then
				call UnitApplyTimedLifeBJ( 3.00, 'BHwe',CreateUnit(GetOwningPlayer(sichen),'hsi2',GetUnitX(udg_H[i]),GetUnitY(udg_H[i]),0) )
            endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellSichenAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AHM1') then
			call Yunluoliuyan(GetSpellAbilityId(),sichen,6)
		elseif (GetSpellAbilityId() == 'AHM2') then
			call Genyuetiandi()
		elseif (GetSpellAbilityId() == 'AHM4') then 
			call Shenghuangcili()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSichenI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == sichen) then
			if(whichSpell == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 2 and IsSecondSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'AHM2') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 3 and IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'AHM3') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
				//todo:光环效果
				call AddSpecialEffectTargetUnitBJ("origin",sichen,"war3mapImported\\BlightwalkerAura.mdx")
				call UnitAddAbility(gg_unit_haro_0030,'A0EL')
				set i = 1
				loop
					exitwhen i > 6
					
		            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
		                call AddIntPercent(i,0.2)
		                call AddAgiPercent(i,0.2)
		                call AddStrPercent(i,0.2)
		            endif

					set i = i +1
				endloop
			elseif (whichSpell == 4 and IsFourthSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'AHM4') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 5 and IsFifthSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'AHM5') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			endif
		endif
	endfunction

	function LearnSkillSichen takes unit learner,integer learnSpellID returns nothing
		if (learner == sichen) then
			if (learnSpellID == 'AHM1') then
				call LearnSkillSichenI(learner,1)
			elseif (learnSpellID == 'AHM2') then
				call LearnSkillSichenI(learner,2)
			elseif (learnSpellID == 'AHM3') then
				call LearnSkillSichenI(learner,3)
			elseif (learnSpellID == 'AHM4') then
				call LearnSkillSichenI(learner,4)
			elseif (learnSpellID == 'AHM5') then
				call LearnSkillSichenI(learner,5)
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
	    //被动被攻击效果
	    set TSpellSichen2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellSichen2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellSichen2, Condition(function TSpellSichen2Con))
	    call TriggerAddAction(TSpellSichen2, function TSpellSichen2Act)
	    set GTower = CreateGroup()
	    //被动3的减伤
	    set TSpellSichen3 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellSichen3,sichen,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(TSpellSichen3,Condition(function TSpellSichen3Con))
	    call TriggerAddAction(TSpellSichen3,function TSpellHanshang3Act)

	    call TimerStart(CreateTimer(),1,true,function Huojianzhiyuan)
	endfunction

endlibrary


