function Trig______________________dActions takes nothing returns nothing
    if ((GetItemTypeId(GetManipulatedItem()) == 'pomn')) then
        call SetHeroLevelBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 50 ), true )
    else
    endif
    if ((GetItemTypeId(GetManipulatedItem()) == 'I001')) then
        call SetUnitLifeBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + 10000.00 ) )
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call AddSpecialEffectLocBJ( udg_Point, "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl" )
        call DestroyEffect( GetLastCreatedEffectBJ() )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetItemTypeId(GetManipulatedItem()) == 'I02W')) then
        call SetUnitLifeBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + 50000.00 ) )
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call AddSpecialEffectLocBJ( udg_Point, "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl" )
        call DestroyEffect( GetLastCreatedEffectBJ() )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetItemTypeId(GetManipulatedItem()) == 'I000')) then
        call SetUnitLifeBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + 250000.00 ) )
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call AddSpecialEffectLocBJ( udg_Point, "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl" )
        call DestroyEffect( GetLastCreatedEffectBJ() )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetItemTypeId(GetManipulatedItem()) == 'I002')) then
        call SetUnitLifeBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + 1250000.00 ) )
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call AddSpecialEffectLocBJ( udg_Point, "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl" )
        call DestroyEffect( GetLastCreatedEffectBJ() )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetItemTypeId(GetManipulatedItem()) == 'I01D')) then
        call SetUnitLifeBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) + 6250000.00 ) )
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call AddSpecialEffectLocBJ( udg_Point, "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl" )
        call DestroyEffect( GetLastCreatedEffectBJ() )
        call RemoveLocation( udg_Point )
    else
    endif
endfunction

//===========================================================================
function InitTrig______________________d takes nothing returns nothing
    set gg_trg______________________d = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________________d, "使用物品的哥哥d")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________________d, EVENT_PLAYER_UNIT_USE_ITEM )
    call TriggerAddAction(gg_trg______________________d, function Trig______________________dActions)
endfunction

