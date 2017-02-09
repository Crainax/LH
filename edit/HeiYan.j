
//! import "SpellBase.j"
//! import "Printer.j"
library_once Heiyan requires SpellBase,Printer
	
	globals
		trigger TSpellHeiyan1
		boolean BIsMojie = true
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能0:切换祭品形态
	*/
	//魔界
	private function YeShenJi1 takes nothing returns nothing
		local unit u = GetSpellAbilityUnit()
		set BIsMojie = not (BIsMojie)
		if(BIsMojie == true) then
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"切换祭品控制权为魔界.")
		else
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"切换祭品控制权为自己.")
		endif
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能1:千鬼邪
	*/
	private function QianGuiXie takes nothing returns nothing
		local unit u = GetSpellAbilityUnit()
		local real damage = GetDamageStr(u)
	    local group l_group = CreateGroup()
	    local group l_group_d = CreateGroup()
	    local unit l_unit
	    local integer count
	    local unit um = CreateUnit(GetOwningPlayer(u),'h008',GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()),0)
	    call UnitApplyTimedLifeBJ( 5.00, 'BHwe',um )
	    call SetUnitAnimation(um,"birth")
	    //计算数量
	    call GroupEnumUnitsInRange(l_group, GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()), 600, null)
	    loop
	        set l_unit = FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
	        if (IsEnemy2(l_unit,u)) then
	        	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
	        	call GroupAddUnit(l_group_d,l_unit)
	        endif
	    endloop
	    //伤害
	    set count = CountUnitsInGroup(l_group_d)
	    set damage = damage * (0.5 + 0.1 * count)
	    loop
	        set l_unit = FirstOfGroup(l_group_d)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group_d, l_unit)
	        if (IsEnemy2(l_unit,u)) then
	    		call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    	endif
	    endloop
	    //输出伤害
	    call PrintSpellAdd(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),damage,",敌人数量"+I2S(count)+"个")
	    call DestroyGroup(l_group)
	    call DestroyGroup(l_group_d)
	    set l_group_d = null
	    set l_group = null
	    set l_unit =null
		set u = null
		set um = null
	endfunction
//-------------------------------------x--------------------------------------------------------------
	/*
	    主英雄技能判断
	*/
	private function TSpellHeiyanCon takes nothing returns boolean
    	return (GetSpellAbilityUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))])
	endfunction

	function TSpellHeiyanAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0C7') then
			call QianGuiXie()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitHeiyan takes nothing returns nothing
		//主英雄技能
		set TSpellHeiyan1 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellHeiyan1, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	    call TriggerAddCondition(TSpellHeiyan1, Condition(function TSpellHeiyanCon))
	    call TriggerAddAction(TSpellHeiyan1, function TSpellHeiyanAct)
	endfunction
endlibrary