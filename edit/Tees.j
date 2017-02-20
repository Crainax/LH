    if ((GetSpellAbilityId() == 'A02Z')) then
    	//复制出来的不能升级
    	if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'I02N', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r该宝石不能升级该物品。" )
            return
    	endif

        if ((GetItemTypeId(GetSpellTargetItem()) == 'I04Z') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
            call RemoveItem( GetSpellTargetItem() )
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
            call UnitAddItemByIdSwapped( 'nflg', GetTriggerUnit() )
            call PlaySoundBJ( gg_snd_Chenggong )
            return
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'I056') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( 'spre', GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                return
        endif
                if ((GetItemTypeId(GetSpellTargetItem()) == 'I057') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                    call RemoveItem( GetSpellTargetItem() )
                    call UnitAddItemByIdSwapped( 'fwss', GetTriggerUnit() )
                    call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                    call PlaySoundBJ( gg_snd_Chenggong )
                    return
                else
                    if ((GetItemTypeId(GetSpellTargetItem()) == 'I050') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                        call RemoveItem( GetSpellTargetItem() )
                        call UnitAddItemByIdSwapped( 'uflg', GetTriggerUnit() )
                        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                        call PlaySoundBJ( gg_snd_Chenggong )
                        return
                    else
                        if ((GetItemTypeId(GetSpellTargetItem()) == 'I055') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                            call RemoveItem( GetSpellTargetItem() )
                            call UnitAddItemByIdSwapped( 'tgxp', GetTriggerUnit() )
                            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                            call PlaySoundBJ( gg_snd_Chenggong )
                            return
                        else
                            if ((GetItemTypeId(GetSpellTargetItem()) == 'I03Y') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                call RemoveItem( GetSpellTargetItem() )
                                call UnitAddItemByIdSwapped( 'dust', GetTriggerUnit() )
                                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                call PlaySoundBJ( gg_snd_Chenggong )
                                return
                            else
                                if ((GetItemTypeId(GetSpellTargetItem()) == 'rej4') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                    call RemoveItem( GetSpellTargetItem() )
                                    call UnitAddItemByIdSwapped( 'drph', GetTriggerUnit() )
                                    call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                    call PlaySoundBJ( gg_snd_Chenggong )
                                    return
                                else
                                    if ((GetItemTypeId(GetSpellTargetItem()) == 'rej6') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                        call RemoveItem( GetSpellTargetItem() )
                                        call UnitAddItemByIdSwapped( 'dtsb', GetTriggerUnit() )
                                        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                        call PlaySoundBJ( gg_snd_Chenggong )
                                        return
                                    else
                                        if ((GetItemTypeId(GetSpellTargetItem()) == 'pgin') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                            call RemoveItem( GetSpellTargetItem() )
                                            call UnitAddItemByIdSwapped( 'gobm', GetTriggerUnit() )
                                            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                            call PlaySoundBJ( gg_snd_Chenggong )
                                            return
                                        else
                                            call UnitAddItemByIdSwapped( 'I02N', GetTriggerUnit() )
                                            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r该宝石不能升级该物品。" )
                                            return
                                        endif
                                    endif
                                endif
                            endif
                        endif
                    endif
                endif
            endif
        endif
    else
    endif

    private function Diamond100 takes integer itemID,integer newItemID returns boolean

    	if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            call RemoveItem( GetSpellTargetItem() )
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以100%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
            call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
            call PlaySoundBJ( gg_snd_Chenggong )
            return true
        endif
        return false
    endfunction

    if (Diamond100(itemID,newItemID) == true) then
    	// body...
    endif

    	if (GetItemTypeId(GetSpellTargetItem()) == 'I04Z') then
            call RemoveItem( GetSpellTargetItem() )
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以100%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
            call UnitAddItemByIdSwapped( 'nflg', GetTriggerUnit() )
            call PlaySoundBJ( gg_snd_Chenggong )
            return
        endif