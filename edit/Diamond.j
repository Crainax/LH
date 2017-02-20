//! import "LHBase.j"
library_once Diamond initializer InitDiamond requires LHBase 

//---------------------------------------------------------------------------------------------------
	/*
	    宝石初始化
	*/
	private function InitDiamond takes nothing returns nothing
		
	endfunction

endlibrary

function Trig____________________046Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetSpellAbilityId() == 'A02Z')) then
        if ((GetItemTypeId(GetSpellTargetItem()) == 'I04Z') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
            call RemoveItem( GetSpellTargetItem() )
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
            call UnitAddItemByIdSwapped( 'nflg', GetTriggerUnit() )
            call PlaySoundBJ( gg_snd_Chenggong )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        else
            if ((GetItemTypeId(GetSpellTargetItem()) == 'I056') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( 'spre', GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                if ((GetItemTypeId(GetSpellTargetItem()) == 'I057') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                    call RemoveItem( GetSpellTargetItem() )
                    call UnitAddItemByIdSwapped( 'fwss', GetTriggerUnit() )
                    call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                    call PlaySoundBJ( gg_snd_Chenggong )
                    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                    return
                else
                    if ((GetItemTypeId(GetSpellTargetItem()) == 'I050') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                        call RemoveItem( GetSpellTargetItem() )
                        call UnitAddItemByIdSwapped( 'uflg', GetTriggerUnit() )
                        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                        call PlaySoundBJ( gg_snd_Chenggong )
                        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                        return
                    else
                        if ((GetItemTypeId(GetSpellTargetItem()) == 'I055') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                            call RemoveItem( GetSpellTargetItem() )
                            call UnitAddItemByIdSwapped( 'tgxp', GetTriggerUnit() )
                            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                            call PlaySoundBJ( gg_snd_Chenggong )
                            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                            return
                        else
                            if ((GetItemTypeId(GetSpellTargetItem()) == 'I03Y') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                call RemoveItem( GetSpellTargetItem() )
                                call UnitAddItemByIdSwapped( 'dust', GetTriggerUnit() )
                                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                call PlaySoundBJ( gg_snd_Chenggong )
                                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                                return
                            else
                                if ((GetItemTypeId(GetSpellTargetItem()) == 'rej4') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                    call RemoveItem( GetSpellTargetItem() )
                                    call UnitAddItemByIdSwapped( 'drph', GetTriggerUnit() )
                                    call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                    call PlaySoundBJ( gg_snd_Chenggong )
                                    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                                    return
                                else
                                    if ((GetItemTypeId(GetSpellTargetItem()) == 'rej6') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                        call RemoveItem( GetSpellTargetItem() )
                                        call UnitAddItemByIdSwapped( 'dtsb', GetTriggerUnit() )
                                        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                        call PlaySoundBJ( gg_snd_Chenggong )
                                        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                                        return
                                    else
                                        if ((GetItemTypeId(GetSpellTargetItem()) == 'pgin') and (IsItemPawnable(GetSpellTargetItem()) == true)) then
                                            call RemoveItem( GetSpellTargetItem() )
                                            call UnitAddItemByIdSwapped( 'gobm', GetTriggerUnit() )
                                            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                                            call PlaySoundBJ( gg_snd_Chenggong )
                                            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                                            return
                                        else
                                            call UnitAddItemByIdSwapped( 'I02N', GetTriggerUnit() )
                                            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
                                            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
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
    if ((GetSpellAbilityId() == 'Amnb')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'I04S', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'nflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'esaz', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nflg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'spre')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'asbl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'spre')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'fwss')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ram4', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'fwss')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'uflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ram3', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'uflg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tgxp')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ram2', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tgxp')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'dust')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ram1', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'dust')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'drph')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oven', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'drph')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'dtsb')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'tels', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'dtsb')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gobm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'gvsm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gobm')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 9)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'I04S', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'Ambb')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'azhr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'esaz')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'sksh', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'esaz')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'asbl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ocor', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'asbl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ram4')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rat3', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram4')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ram3')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stre', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ram2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'lure', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ram1')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rots', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram1')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oven')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frhg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oven')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tels')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'ofir', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tels')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gvsm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'gldo', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gvsm')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 8)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'azhr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACfl')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'gmfr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sksh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oslo', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'esaz')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ocor')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'blba', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'asbl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rat3')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pams', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram4')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'stre')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shrs', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'lure')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'thdm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rots')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'tmmt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram1')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'frhg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'mlst', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oven')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ofir')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'soul', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tels')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gldo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'gsou', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gvsm')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 7)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'gmfr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'Aenw')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'wolg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sksh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oslo', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'esaz')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ocor')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'blba', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'asbl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rat3')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pams', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram4')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'stre')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shrs', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'lure')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'thdm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rots')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'tmmt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram1')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'frhg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'mlst', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oven')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ofir')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'soul', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tels')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gldo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'gsou', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gvsm')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 9)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'wolg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'Aenr')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'skrt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sksh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oslo', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sksh')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ocor')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'blba', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ocor')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rat3')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pams', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rat3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'stre')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shrs', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'stre')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'lure')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'thdm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'lure')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rots')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'tmmt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rots')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'frhg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'mlst', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'frhg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'ofir')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'soul', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ofir')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gldo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'gsou', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gldo')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 6)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'skrt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACcy')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'jpnt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oslo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'grsl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sksh')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'blba')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'cosl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ocor')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'pams')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'jdrn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rat3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shrs')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'kgal', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'stre')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'thdm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsh', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'lure')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tmmt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'brag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rots')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'mlst')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'nspi', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'frhg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'soul')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'sbok', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ofir')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gsou')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'envl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gldo')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 6)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'jpnt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACbn')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'ledg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oslo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'grsl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sksh')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'blba')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'cosl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ocor')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'pams')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'jdrn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rat3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shrs')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'kgal', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'stre')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'thdm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsh', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'lure')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tmmt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'brag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rots')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'mlst')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'nspi', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'frhg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'soul')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'sbok', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ofir')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gsou')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'envl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gldo')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 8)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'ledg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'SCc1')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'wtlg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oslo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'grsl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oslo')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'blba')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'cosl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'blba')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'pams')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'jdrn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'pams')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shrs')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'kgal', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shrs')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'thdm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsh', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'thdm')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tmmt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'brag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tmmt')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'mlst')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'nspi', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'mlst')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'soul')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'sbok', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'soul')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gsou')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'envl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gsou')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 5)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'wtlg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACfb')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'gopr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oslo')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'grsl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'esaz')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'blba')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'cosl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'asbl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'pams')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'jdrn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram4')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shrs')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'kgal', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'thdm')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsh', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'tmmt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'brag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ram1')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'mlst')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'nspi', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oven')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'soul')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'sbok', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tels')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'gsou')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'envl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gvsm')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 9)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，装备降低2级！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'gopr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig____________________046 takes nothing returns nothing
    set gg_trg____________________046 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________046, "未命名触发器 046")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________046, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction(gg_trg____________________046, function Trig____________________046Actions)
endfunction

function Trig____________________066Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetSpellAbilityId() == 'ACls')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'glsk', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'grsl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'flag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oslo')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'cosl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shhn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'blba')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'jdrn')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shcw', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'pams')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'kgal')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shtm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shrs')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'srtl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'thdm')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'brag')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'olig', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tmmt')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'nspi')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oli2', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'mlst')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sbok')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsc', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'soul')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'envl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rugt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gsou')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 5)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'glsk', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACbf')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'dthb', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'grsl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'flag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oslo')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'cosl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shhn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'blba')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'jdrn')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shcw', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'pams')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'kgal')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shtm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shrs')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'srtl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'thdm')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'brag')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'olig', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'tmmt')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'nspi')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oli2', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'mlst')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sbok')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsc', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'soul')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'envl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rugt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gsou')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 7)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'dthb', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'ACdc')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'dphe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'grsl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'flag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sksh')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'cosl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shhn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ocor')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'jdrn')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shcw', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rat3')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'kgal')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shtm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'stre')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'srtl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'lure')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'brag')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'olig', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rots')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'nspi')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oli2', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'frhg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sbok')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsc', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'ofir')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'envl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rugt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gldo')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 8)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，装备降低2级！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'dphe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'Afod')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'bzbe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'grsl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'flag', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'grsl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'cosl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shhn', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'cosl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'jdrn')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shcw', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'jdrn')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'kgal')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shtm', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'kgal')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsh')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'srtl', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsh')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'brag')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'olig', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'brag')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'nspi')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oli2', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nspi')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'sbok')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'arsc', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sbok')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'envl')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rugt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'envl')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 4)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'bzbe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DG')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'kygh', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oli2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rump', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nspi')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsc')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rde0', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sbok')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rugt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'envl')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 4)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'kygh', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DI')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'mort', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oli2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rump', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nspi')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsc')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rde0', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sbok')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rugt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'envl')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 6)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'mort', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DH')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'ches', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oli2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rump', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsc')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rde0', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rugt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 3)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'ches', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DN')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'cnhn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oli2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rump', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'mlst')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsc')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rde0', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'soul')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rugt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'gsou')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 7)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，装备降低2级！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'cnhn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig____________________066 takes nothing returns nothing
    set gg_trg____________________066 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________066, "未命名触发器 066")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________066, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction(gg_trg____________________066, function Trig____________________066Actions)
endfunction

function Trig____________________042Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetSpellAbilityId() == 'A0DJ')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'sehr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rump')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shen', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rde0')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oflg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'crdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 4)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'sehr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DK')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'k3m3', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rump')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shen', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rde0')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oflg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'crdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 6)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'k3m3', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DL')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'k3m2', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rump')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shen', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rump')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rde0')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oflg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rde0')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'crdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shdt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 3)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'k3m2', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DM')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'kybl', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rump')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shen', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nspi')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rde0')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oflg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sbok')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'crdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'envl')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 7)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，装备降低2级！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'kybl', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DO')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'bzbf', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shen')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stpg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rump')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frgd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rde0')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'crdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pspd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shdt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 4)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'bzbf', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DR')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'kysn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shen')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stpg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rump')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frgd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rde0')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'crdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pspd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shdt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 6)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，等级降低！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'kysn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DQ')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'ktrm', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shen')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stpg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'shen')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frgd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oflg')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'crdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pspd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'crdt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 3)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'ktrm', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    if ((GetSpellAbilityId() == 'A0DP')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'shwd', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shen')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stpg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frgd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'crdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pspd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            if ((GetRandomInt(1, 10) <= 7)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
                call PlaySoundBJ( gg_snd_Chenggong )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            else
                call RemoveItem( GetLastCreatedItem() )
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738), GetTriggerUnit() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "升级神器失败，装备降低2级！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
                call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
                return
            endif
        else
            call UnitAddItemByIdSwapped( 'shwd', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig____________________042 takes nothing returns nothing
    set gg_trg____________________042 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________042, "未命名触发器 042")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________042, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction(gg_trg____________________042, function Trig____________________042Actions)
endfunction

//血精石
function Trig____________________042_______uActions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetSpellAbilityId() == 'A0EK')) then
        if ((IsItemPawnable(GetSpellTargetItem()) == true)) then
        else
            call UnitAddItemByIdSwapped( 'k3m1', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'clsd')
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oli2')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rump', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'nspi')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'arsc')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'rde0', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'sbok')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rugt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'envl')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shen')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'stpg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'oflg')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'frgd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'crdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'pspd', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rump')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'shen', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'oli2')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'rde0')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'oflg', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'arsc')
        else
        endif
        if ((GetItemTypeId(GetSpellTargetItem()) == 'shdt')) then
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( 'crdt', GetTriggerUnit() )
            call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738, 'rugt')
        else
        endif
        if ((YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x52AD0738) != 'clsd')) then
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "成功的升级了神器！" ) ) )
            call PlaySoundBJ( gg_snd_Chenggong )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        else
            call UnitAddItemByIdSwapped( 'k3m1', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_045" )
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            return
        endif
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig____________________042_______u takes nothing returns nothing
    set gg_trg____________________042_______u = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________042_______u, "未命名触发器 042 复制")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________042_______u, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction(gg_trg____________________042_______u, function Trig____________________042_______uActions)
endfunction

