library_once Purgatory initializer InitPurgatory  
	
	globals
		// body...
	endglobals

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


