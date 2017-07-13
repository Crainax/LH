//! import "LHBase.j"
//! import "Moqi.j"
//! import "Seyu.j"
//! import "Mengji.j"
//! import "Huanyi.j"
//! import "Xinglong.j"
//! import "Sheyan.j"

library_once Juexing initializer InitJuexing requires LHBase,Moqi,Seyu,Mengji,Xinglong,Huanyi,Sheyan


//---------------------------------------------------------------------------------------------------
	/*
	    天赋禁用
	*/
	function ForbidTianfu takes nothing returns nothing
		local integer i = 1 
		set BTianfu = true
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call UnitAddAbility(udg_H[i],'A0KK')
				if (udg_H[i] == Huanyi) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),ICurrentSpell,false)
				elseif (udg_H[i] == mengji) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),'A0GX',false)
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),'A0GY',false)
				else
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),GetHeroTianFu(udg_H[i]),false)
				endif
			endif
			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天赋允许
	*/
	function AllowTianfu takes nothing returns nothing
		local integer i = 1 
		set BTianfu = false
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call UnitRemoveAbility(udg_H[i],'A0KK')
				if (udg_H[i] == Huanyi) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),ICurrentSpell,true)
				elseif (udg_H[i] == mengji) then
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),'A0GX',true)
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),'A0GY',true)
				else
					call SetPlayerAbilityAvailable(ConvertedPlayer(i),GetHeroTianFu(udg_H[i]),true)
				endif
			endif
			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    循环禁用天赋
	*/
	struct TianfuForbidder
		
		private real IForbid
		private real IAllow
		private timer t
		

		static method allowTimer takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			call AllowTianfu()
			call PauseTimer(.t)
			call TimerStart(.t,.IAllow,false,function thistype.forbitTimer)
		endmethod

		static method forbitTimer takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			call ForbidTianfu()
			call PauseTimer(.t)
			call TimerStart(.t,.IForbid,false,function thistype.allowTimer)
		endmethod

		static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method create takes unit caster,real forbidTime,real allowTime returns thistype

		   	local thistype this = thistype.allocate()
			set .IForbid = forbidTime
			set .IAllow = allowTime
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,allowTime,false,function thistype.forbitTimer)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			call AllowTianfu()
			set .IForbid = 0
			set .IAllow = 0
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
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
		elseif (u == sichen) then
			call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
		elseif (u == xinglong and IsLong()) then
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.2)
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.1)
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
		elseif (u == sichen) then
			call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
		elseif (u == xinglong and IsLong()) then
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.2)
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.1)
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
		elseif (u == sichen) then
			call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
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
		if (u == sichen) then
			if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ) )
			endif
			if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ) )
			endif
			if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2 ) )
			endif
		endif
		if (u == xinglong and IsLong()) then
			if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.2)
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.1)
			endif
			if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.2)
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.1)
			endif
		endif
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
		if (dengCount <= 1 and GetDeng(GetTriggerUnit())>= 3) then	
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