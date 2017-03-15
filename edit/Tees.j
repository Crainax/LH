





function Trig_Z7Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z7Func003Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z7Func003Func002A takes nothing returns nothing
    call YDTriggerClearTable(YDTriggerAny2I(unit, GetEnumUnit()))
    call RemoveUnit( GetEnumUnit() )
endfunction

function TLeaveDiamondRegionCon takes nothing returns boolean
    return ((GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER))
endfunction

function TLeaveDiamondRegion1Act takes nothing returns nothing
	local group group1 = GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
	local group group2 = null
	local unit l_unit = null
    if ((CountUnitsInGroup(group1) == 0)) then
		set group2 = GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondMonsterFilter))
        loop
            set l_unit = FirstOfGroup(group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(group2, l_unit)
	        call FlushChildHashtable(YDHT,GetHandleId(l_unit))
	        call RemoveUnit( l_unit )
        endloop
    	call DestroyGroup( group2 )
    endif
    call DestroyGroup( group1 )
    set group1 = null
    set group2 = null
    set l_unit = null
endfunction

function TLeaveDiamondRegion2Act takes nothing returns nothing
	local group group1 = GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilter))
	local group group2 = null
	local unit l_unit = null
    if ((CountUnitsInGroup(group1) == 0)) then
		set group2 = GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondMonsterFilter))
        loop
            set l_unit = FirstOfGroup(group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(group2, l_unit)
	        call FlushChildHashtable(YDHT,GetHandleId(l_unit))
	        call RemoveUnit( l_unit )
        endloop
    	call DestroyGroup( group2 )
    endif
    call DestroyGroup( group1 )
    set group1 = null
    set group2 = null
    set l_unit = null
endfunction


//===========================================================================
function InitTrig_Z7 takes nothing returns nothing
    set t = CreateTrigger()
    call TriggerRegisterLeaveRectSimple( t, gg_rct________8 )
    call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
    call TriggerAddAction(t, function TLeaveDiamondRegion1Act)

    set t = CreateTrigger()
    call TriggerRegisterLeaveRectSimple( t, gg_rct_Diamond2 )
    call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
    call TriggerAddAction(t, function TLeaveDiamondRegion2Act)

endfunction


