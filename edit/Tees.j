function Trig____________________037Conditions takes nothing returns boolean
    return ((UnitHasBuffBJ(GetAttackedUnitBJ(), 'Bfae') == false) and (IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetUnitAbilityLevelSwapped('Amim', GetAttackedUnitBJ()) != 1))
endfunction

function Trig____________________037Actions takes nothing returns nothing
    if (             (UnitHasItemOfTypeBJ(GetAttacker(),'ICS1'))) then
        call SimulateSpell(GetAttacker(),GetAttackedUnitBJ(),'A0CH',1,1,"faeriefire",false,false,true)
        return
    else
    endif
    if (             (UnitHasItemOfTypeBJ(GetAttacker(),'I04W'))) then
        call SimulateSpell(GetAttacker(),GetAttackedUnitBJ(),'A0K5',1,1,"faeriefire",false,false,true)
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'tlum')) == 'tlum')) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0D9', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'tbar')) == 'tbar') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'ccmd')) == 'ccmd'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0CQ', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'shtm')) == 'shtm') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'srtl')) == 'srtl') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'olig')) == 'olig'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0BK', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'kgal')) == 'kgal') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'arsh')) == 'arsh') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'brag')) == 'brag'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0BC', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'shrs')) == 'shrs') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'thdm')) == 'thdm') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'tmmt')) == 'tmmt'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0AX', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'stre')) == 'stre') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'lure')) == 'lure') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'rots')) == 'rots'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0A9', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'ram3')) == 'ram3') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'ram2')) == 'ram2') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'ram1')) == 'ram1'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A088', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'uflg')) == 'uflg') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'tgxp')) == 'tgxp') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'dust')) == 'dust'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A087', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
    if (((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'I050')) == 'I050') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'I055')) == 'I055') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetAttacker(), 'I03Y')) == 'I03Y'))) then
        set udg_Point = GetUnitLoc(GetAttacker())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 1.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A041', GetLastCreatedUnit() )
        call IssueTargetOrder( GetLastCreatedUnit(), "faeriefire", GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        return
    else
    endif
endfunction

//===========================================================================
function InitTrig____________________037 takes nothing returns nothing
    set gg_trg____________________037 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________037, "未命名触发器 037")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________037, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg____________________037, Condition(function Trig____________________037Conditions))
    call TriggerAddAction(gg_trg____________________037, function Trig____________________037Actions)
endfunction

