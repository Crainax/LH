//! import "LHBase.j"
//! import "Attr.j"


library_once Aura requires LHBase,Attr 
	
	globals
		private integer array YKillCount
		private trigger TSpellYanmie3 = null
		private trigger TSpellMengji3 = null

		/*
		    瞬移提示
		*/
		private boolean array shunHints

	endglobals

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
	/*
	    凯撒光环
	*/
	function InitKaisaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258,'A0JU')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    湮灭光环
	*/
	function InitYanmieAura takes nothing returns nothing
		set TSpellYanmie3 = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(TSpellYanmie3,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(TSpellYanmie3, Condition(function TSpellYanmie3Con))
		call TriggerAddAction(TSpellYanmie3, function TSpellYanmie3Act)
		//湮灭新光环Todo
		call UnitAddAbility(gg_unit_n01S_0258,'A0HF')
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		call BJDebugMsg("|cffff66cc【消息】|r你已获得来自|cFF3333FF雷神寂灭|r光环的效果,杀怪可以增加|cffffff00(英雄等级/100 + 2)点全属性|r.")
		endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    共享瞬移的提示与初始化
	*/
	private function SanchuanShunTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer playerID = LoadInteger(spellTable,GetHandleId(t),1)
		if not (shunHints[playerID]) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66cc【消息】|r你已获得来自|cffffff00阴阳三川箭|r光环的效果,|cffffcc00使用M键可以瞬移至任意地点|r,冷却2.5s.")
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	private function InitShunyi takes nothing returns nothing
		local timer t = null
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_H[i] != null) then
				set t = CreateTimer()
				call SaveInteger(spellTable,GetHandleId(t),1,i)
				call TimerStart(t,4,true,function SanchuanShunTimer)
				set shunHints[i] = false
    			call TriggerRegisterUnitEvent( TSpellMengji3, udg_H[i], EVENT_UNIT_ISSUED_POINT_ORDER )
			endif
			set i = i +1
		endloop
		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    共享瞬移
	*/
	private function TSpellMengji3Con takes nothing returns boolean
	    return ((GetIssuedOrderIdBJ() == String2OrderIdBJ("move")) and (not (shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])))
	endfunction

	private function TSpellMengji3Act takes nothing returns nothing
		if (IsInForbitRegion(GetOrderPointX(),GetOrderPointY(),GetTriggerUnit())) then
			call IssueImmediateOrder( GetTriggerUnit(), "stop" )
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达." )
	        return
		endif
	    if (IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY)) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,瞬移失败！")
	    	return
	    endif
		set shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
		call SetUnitX(GetTriggerUnit(),GetOrderPointX())
		call SetUnitY(GetTriggerUnit(),GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetOrderPointX(), GetOrderPointY() ))
		call PolledWait(2.5)
		set shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = false

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月光环
	*/
	function InitXiaoyueAura takes nothing returns nothing
		call UnitAddAbilityBJ( 'A0AJ', gg_unit_n01S_0258 )
	    call EnableTrigger( gg_trg_____________71 )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    玄雪光环
	*/
	function InitXuanxueAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddDamagePercent(i,0.4)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0JV')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    霸绝光环
	*/
	function InitBajueAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddStrPercent(i,0.4)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'AOae')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨光环
	*/
	function InitSeyuAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddAgiPercent(i,0.4)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0JW')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    莫琪光环
	*/
	function InitMoqiAura takes nothing returns nothing
		call UnitAddAbility( gg_unit_n01S_0258,'A04I'  )
		call EnableTrigger( gg_trg_______21 )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    凌雪光环
	*/
	function InitLingxueAura takes nothing returns nothing
	    call UnitAddAbilityBJ( 'A0FY', gg_unit_n01S_0258 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂光环
	*/
	function InitChenjiAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddDefensePercent(i,0.4)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0JX')
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    寒殇光环
	*/
	function InitHanshangAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
            call AddMoneyPercent(i,0.5)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0JY')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    泰雅光环
	*/
	function InitTaiyaAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258,'A0JZ')
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    摄焱光环
	*/
	function InitSheyanAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
            call AddIntPercent(i,0.4)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0K0')
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎光环
	*/
	function InitHeiyanAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddHPPercent(i,0.5)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0GR')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌光环
	*/
	function InitCanglingAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258,'A0HR')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    梦霁光环
	*/
	function InitMengjiAura takes nothing returns nothing
		
	    //英雄第三个技能瞬移事件
	    set TSpellMengji3 = CreateTrigger()
	    call TriggerAddCondition(TSpellMengji3, Condition(function TSpellMengji3Con))
	    call TriggerAddAction(TSpellMengji3, function TSpellMengji3Act)
		call UnitAddAbility(gg_unit_n01S_0258,'A0EL')
		call InitShunyi()
		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸光环
	*/
	function InitHuanyiAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddSpellPercent(i,0.6)
			set i = i +1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0GS')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    司宸光环
	*/
	function InitSichenAura takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call AddStrPercent(i,0.2)
			call AddAgiPercent(i,0.2)
			call AddIntPercent(i,0.2)
			set i = i + 1
		endloop
		call UnitAddAbility(gg_unit_n01S_0258,'A0JE')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    宵霆光环
	*/
	function InitXiaotingAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258,'A0M5')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    离魑光环
	*/
	function InitLichiAura takes nothing returns nothing
		call UnitAddAbility(gg_unit_n01S_0258,'A0MR')
		call UnitAddAbility(gg_unit_n01S_0258,'A0MS')
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    根据单位来初始化光环
	*/
	function InitSpecifyAura takes unit u returns nothing
		local integer index = GetHeroIndex(GetUnitTypeId(u))
		if (index == 1) then
			call InitKaisaAura()
		elseif (index == 2) then
			call InitYanmieAura()
		elseif (index == 3) then
			call InitMoqiAura()
		elseif (index == 4) then
			call InitXuanxueAura()
		elseif (index == 5) then
			call InitBajueAura()
		elseif (index == 6) then
			call InitSeyuAura()
		elseif (index == 7) then
			call InitXiaoyueAura()
		elseif (index == 8) then
			call InitLingxueAura()
		elseif (index == 9) then
			call InitChenjiAura()
		elseif (index == 10) then
			call InitHanshangAura()
		elseif (index == 11) then
			call InitTaiyaAura()
		elseif (index == 12) then
			call InitSheyanAura()
		elseif (index == 13) then
			call InitHeiyanAura()
		elseif (index == 14) then
			call InitMengjiAura()
		elseif (index == 15) then
			call InitHuanyiAura()
		elseif (index == 16) then
			call InitCanglingAura()
		elseif (index == 17) then
			call InitSichenAura()
		elseif (index == 19) then
			call InitXiaotingAura()
		elseif (index == 20) then
			call InitLichiAura()
		endif
	endfunction

endlibrary