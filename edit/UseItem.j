#ifndef UseItemIncluded
#define UseItemIncluded

#include  "edit/LHBase.j"
/*
    使用物品
*/
library_once UseItem initializer InitUse requires LHBase

//---------------------------------------------------------------------------------------------------
    /*
        使用物品(药与魔王之心)
    */
    private function TUseItem takes nothing returns nothing
        if ((GetItemTypeId(GetManipulatedItem()) == 'pomn')) then
            call SetHeroLevelBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 50 ), true )
        elseif ((GetItemTypeId(GetManipulatedItem()) == 'I001')) then
            call SetUnitLifeBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 10000.00 ) )
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
        elseif ((GetItemTypeId(GetManipulatedItem()) == 'I02W')) then
            call SetUnitLifeBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 50000.00 ) )
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
        elseif ((GetItemTypeId(GetManipulatedItem()) == 'I000')) then
            call SetUnitLifeBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 250000.00 ) )
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
        elseif ((GetItemTypeId(GetManipulatedItem()) == 'I002')) then
            call SetUnitLifeBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 1250000.00 ) )
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
        elseif ((GetItemTypeId(GetManipulatedItem()) == 'I01D')) then
            call SetUnitLifeBJ( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + 20000000.00 ) )
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    private function InitUse takes nothing returns nothing

        local trigger t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_USE_ITEM )
        call TriggerAddAction(t, function TUseItem)
        set t = null
    endfunction
endlibrary


#endif
