//!import "LHBase.j"
//!import "Moqi.j"
//!import "Seyu.j"
//!import "Mengji.j"

library_once Juexing initializer InitJuexing requires LHBase,Moqi,Seyu,Mengji


//---------------------------------------------------------------------------------------------------
	/*
	    一段觉醒
	*/
	private function InitHeroJuexing1 takes unit u returns nothing
		local integer i = GetHeroTianFu(u)
		call SetUnitAbilityLevel(u,i,2)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的"+GetAbilityName(i)+"技能一阶觉醒了!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u) ))
		set BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] = true
		if (u == seyu) then
			call JuexingSeyu1()
		elseif (u == Huanyi) then
			call UnitAddAbility(Huanyi,'A0HX')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    二段觉醒
	*/
	private function InitHeroJuexing2 takes unit u returns nothing
		local integer i = GetHeroTianFu(u)
		call SetUnitAbilityLevel(u,i,3)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的"+GetAbilityName(i)+"技能二阶觉醒了!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u) ))
		set BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] = true
		if (u == moqi) then
			call JuexingMoqi2()
		elseif (u == seyu) then
			call JuexingSeyu2()
		elseif (u == chenji) then
			call TriggerExecute( gg_trg_____________127 )
		elseif (u == sheyan) then
			call JuexingSheyan2()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    三段觉醒
	*/
	private function InitHeroJuexing3 takes unit u returns nothing
		local integer i = GetHeroTianFu(u)
		call SetUnitAbilityLevel(u,i,4)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的"+GetAbilityName(i)+"技能三阶觉醒了!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u) ))
		set BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] = true
		if (u == kaisa) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)),0.5)
		elseif (u == yanmie) then
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)),0.4)
		elseif (u == bajue) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)),0.6)
		elseif (u == xiaoyue) then
			call UnitAddAbility(gg_unit_h00K_0254,'A0IN')
		elseif (u == lingxue) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)),1)
		elseif (u == sheyan) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)),0.4)
		elseif (u == Heiyan) then
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)),1)
		elseif (u == cangling) then
			call AddHP(cangling,40000000)
		elseif (u == mengji) then
			call RuohuanmengChatBack()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    取消觉醒
	*/
	private function CancelJuexing takes unit u returns nothing
		local integer i = GetHeroTianFu(u)
		call SetUnitAbilityLevel(u,i,1)
		call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的"+GetAbilityName(i)+"技能觉醒失效了!")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u) ))
		if (u == kaisa and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(kaisa))]) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)),-0.5)
		elseif (u == yanmie and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) then
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)),-0.4)
		elseif (u == bajue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(bajue))]) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)),-0.6)
		elseif (u == xiaoyue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xiaoyue))]) then
			call UnitRemoveAbility(gg_unit_h00K_0254,'A0IN')
		elseif (u == lingxue and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(lingxue))]) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)),-1)
		elseif (u == sheyan and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sheyan))]) then
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)),-0.4)
		elseif (u == Heiyan and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Heiyan))]) then
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)),-1)
		elseif (u == cangling and BJuexing3[GetConvertedPlayerId(GetOwningPlayer(cangling))]) then
			call AddHP(cangling,-40000000)
		endif
		set BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] = false
		set BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] = false
		set BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] = false
		if (u == moqi) then
			call QJuexingMoqi()
		elseif (u == seyu) then
			call QJuexingSeyu()
		elseif (u == chenji) then
			call TriggerExecute( gg_trg_____________129 )
		elseif (u == sheyan) then
			call QJuexingSheyan()
		elseif (u == Huanyi) then
			call UnitRemoveAbility(Huanyi,'A0HX')
		elseif (u == mengji) then
			call RuohuanmengChatBack()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    装备灯的事件
	*/
	private function TDengEquitCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))]) and IsDeng(GetManipulatedItem())
	endfunction

	private function TDengEquitAct takes nothing returns nothing
		local integer i = 1
		local integer dengCount = 0 
		loop
			exitwhen i > 6
			if(IsDeng(UnitItemInSlotBJ(GetTriggerUnit(),i))) then
				set dengCount = dengCount + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (dengCount > 1) then
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备上一个秘境至宝！")
			call PolledWait(0.01)
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			return
		elseif (dengCount == 1) then
			if (GetDeng(GetTriggerUnit())>= 3) then
				call InitHeroJuexing1(GetTriggerUnit())
			endif
			if (GetDeng(GetTriggerUnit())>= 7) then
				call InitHeroJuexing2(GetTriggerUnit())
			endif
			if (GetDeng(GetTriggerUnit())>= 12) then
				call InitHeroJuexing3(GetTriggerUnit())
			endif
		endif

	endfunction

	private function TDengDropAct takes nothing returns nothing
		local integer i = 1
		local integer dengCount = 0 
		loop
			exitwhen i > 6
			if(IsDeng(UnitItemInSlotBJ(GetTriggerUnit(),i))) then
				set dengCount = dengCount + 1
			endif
			set i = i +1
		endloop
		if (dengCount <= 1 and GetDeng(GetTriggerUnit())>= 5) then	
			call CancelJuexing(GetTriggerUnit())
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitJuexing takes nothing returns nothing
		//只能同时装备一个灯
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TDengEquitCon))
		call TriggerAddAction(t,function TDengEquitAct)

		//丢弃灯事件
		set t =CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t,Condition(function TDengEquitCon))
		call TriggerAddAction(t,function TDengDropAct)

		set t = null
	endfunction
endlibrary