library_once Purgatory initializer InitPurgatory  
	
	globals
		// body...
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取随机一种药水
	*/
	private function GetRandomPotion takes nothing returns integer
		local integer i = GetRandomInt(1,5)
		if (i == 1) then
			return 'sres'
		elseif (i == 2) then
			return 'I06A'
		elseif (i == 3) then
			return 'I06B'
		elseif (i == 4) then
			return 'I06C'
		elseif (i == 5) then
			return 'I06J'
		endif

		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼狱90层以上怪物的设置
	*/
	function SetPurgatory90UpUnit takes nothing returns nothing
	    if ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 91)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'Nfir'
	        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF6699【炼狱】|r额外奖励" + ( GetPlayerName(GetOwningPlayer(udg_Unit)) + "|cffffcc001个人口，人口可以用来抓宠物。" ) ) )
	        call SetPlayerStateBJ( GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP) + 1 ) )
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 92)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00D'
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call BJDebugMsg("|cFFFF6699【炼狱】|r额外奖励"+ ( GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+"."))
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 93)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00E'
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call BJDebugMsg("|cFFFF6699【炼狱】|r额外奖励"+ ( GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+"."))
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 94)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00F'
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call BJDebugMsg("|cFFFF6699【炼狱】|r额外奖励"+ ( GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+"."))
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 95)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00G'
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call BJDebugMsg("|cFFFF6699【炼狱】|r额外奖励"+ ( GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+"."))
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 96)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00J'
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call BJDebugMsg("|cFFFF6699【炼狱】|r额外奖励"+ ( GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+"."))
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼狱掉落的物品
	*/
	function TPurgatoryItemCon takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetDyingUnit()) != true) and (/*
	    */  (GetUnitTypeId(GetDyingUnit()) == 'nfra')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwld')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwzd')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'ndqp')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nsc2')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwns')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nsoc')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'npfl')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'ninm')/*
	    */))
	endfunction

	function TPurgatoryItemAct takes nothing returns nothing
		local integer dyingUnitId = GetUnitTypeId(GetDyingUnit())
		//! textmacro CreatePurgatoryItem takes UnitType,ItemType	
		if (dyingUnitId == '$UnitType$') then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()) ))
			call CreateItem('$ItemType$',GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()))
			return
		endif
		//! endtextmacro

		//! runtextmacro CreatePurgatoryItem("nfra","IB00")
		//! runtextmacro CreatePurgatoryItem("nwld","IMJ1")
		//! runtextmacro CreatePurgatoryItem("nwzd","IMJ2")
		//! runtextmacro CreatePurgatoryItem("ndqp","IMJ3")
		//! runtextmacro CreatePurgatoryItem("nsc2","IMJ4")
		//! runtextmacro CreatePurgatoryItem("nwns","IMJ5")
		//! runtextmacro CreatePurgatoryItem("nsoc","IMJ6")
		//! runtextmacro CreatePurgatoryItem("npfl","IMJ7")
		//! runtextmacro CreatePurgatoryItem("ninm","IMJ8")
	endfunction
//---------------------------------------------------------------------------------------------------


	private function InitPurgatory takes nothing returns nothing
		local trigger t = CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function TPurgatoryItemCon))
	    call TriggerAddAction(t, function TPurgatoryItemAct)

	endfunction

endlibrary


