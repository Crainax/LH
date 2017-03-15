


/*
function Trig_Z7Conditions takes nothing returns boolean
    return ((GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER))
endfunction

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

function Trig_Z7Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z7Func002003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) == 0)) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z7Func003Func001003002)))
        call ForGroupBJ( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F), function Trig_Z7Func003Func002A )
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig_Z7 takes nothing returns nothing
    set gg_trg_Z7 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_Z7, "Z7")
#endif
    call TriggerRegisterLeaveRectSimple( gg_trg_Z7, gg_rct________8 )
    call TriggerAddCondition(gg_trg_Z7, Condition(function Trig_Z7Conditions))
    call TriggerAddAction(gg_trg_Z7, function Trig_Z7Actions)
endfunction


*/