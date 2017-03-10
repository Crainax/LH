//! import "LHBase.j"
/*
    宝石升级装备
*/
library_once Diamond initializer InitDiamond requires LHBase 

    globals
        constant string DIAMOND_CANT_UPDATE = "|cFFFF66CC【消息】|r该宝石不能升级该物品。"
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        100%几率成功
    */
    private function Diamond100 takes integer itemID,integer newItemID returns boolean

        if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以100%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
            call PlaySoundBJ( gg_snd_Chenggong )
            return true
        endif
        return false
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        特定几率成功，失败不降级
    */
    private function DiamondA takes integer itemID,integer newItemID,integer poss returns boolean
        //琉璃璞玉
        if (HasLiuli(GetTriggerUnit()) == true) then
            return Diamond100(itemID,newItemID)
        endif
        //非琉璃璞玉
        if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            if ((GetRandomInt(1, 100) <= poss)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_Chenggong )
            else
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率升级"+GetItemName(GetSpellTargetItem())+"失败！" ) ) )
                call PlaySoundBJ( gg_snd_Shibai )
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        特定几率成功，失败降级
    */
    private function DiamondB takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if (HasLiuli(GetTriggerUnit()) == true) then
            return Diamond100(itemID,newItemID)
        endif
        //非琉璃璞玉
        if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            if ((GetRandomInt(1, 100) <= poss)) then
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_Chenggong )
            else
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率升级"+GetItemName(GetSpellTargetItem())+"失败,等级降低！" ) ) )
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( oldItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_Shibai )
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        特定几率成功，失败降2级
    */
    private function DiamondC takes integer itemID,integer newItemID,integer oldItemID,integer poss returns boolean
        //琉璃璞玉
        if (HasLiuli(GetTriggerUnit()) == true) then
            return Diamond100(itemID,newItemID)
        endif
        //非琉璃璞玉
        if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            if ((GetRandomInt(1, 100) <= poss)) then
                call RemoveItem( GetSpellTargetItem() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
                call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_Chenggong )
            else
                call RemoveItem( GetSpellTargetItem() )
                call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以"+I2S(poss)+"%的成功率升级"+GetItemName(GetSpellTargetItem())+"失败,等级降低2级！" ) ) )
                call UnitAddItemByIdSwapped( oldItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_Shibai )
            endif
            return true
        endif
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +1宝石
    */
    private function AddOneDiamond takes nothing returns nothing
                //复制出来的不能升级
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'I02N', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif

        if (Diamond100('I04Z','nflg') == true) then
            return
        endif
        if (Diamond100('I056','spre') == true) then
            return
        endif
        if (Diamond100('I057','fwss') == true) then
            return
        endif
        if (Diamond100('I050','uflg') == true) then
            return
        endif
        if (Diamond100('I055','tgxp') == true) then
            return
        endif
        if (Diamond100('I03Y','dust') == true) then
            return
        endif
        if (Diamond100('rej4','drph') == true) then
            return
        endif
        if (Diamond100('rej6','dtsb') == true) then
            return
        endif
        if (Diamond100('pgin','gobm') == true) then
            return
        endif
        call UnitAddItemByIdSwapped( 'I02N', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +2宝石
    */
    private function AddSecondDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'I04S', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif

        if (DiamondA('nflg','esaz',90) == true) then
            return
        endif
        if (DiamondA('spre','asbl',90) == true) then
            return
        endif
        if (DiamondA('fwss','ram4',90) == true) then
            return
        endif
        if (DiamondA('uflg','ram3',90) == true) then
            return
        endif
        if (DiamondA('tgxp','ram2',90) == true) then
            return
        endif
        if (DiamondA('dust','ram1',90) == true) then
            return
        endif
        if (DiamondA('drph','oven',90) == true) then
            return
        endif
        if (DiamondA('dtsb','tels',90) == true) then
            return
        endif
        if (DiamondA('gobm','gvsm',90) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'I04S', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +3宝石
    */
    private function AddThirdDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'azhr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('esaz','sksh',80) == true) then
            return
        endif
        if (DiamondA('asbl','ocor',80) == true) then
            return
        endif
        if (DiamondA('ram4','rat3',80) == true) then
            return
        endif
        if (DiamondA('ram3','stre',80) == true) then
            return
        endif
        if (DiamondA('ram2','lure',80) == true) then
            return
        endif
        if (DiamondA('ram1','rots',80) == true) then
            return
        endif
        if (DiamondA('oven','frhg',80) == true) then
            return
        endif
        if (DiamondA('tels','ofir',80) == true) then
            return
        endif
        if (DiamondA('gvsm','gldo',80) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'azhr', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +4宝石
    */
    private function AddFourthDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'gmfr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('sksh','oslo','esaz',70) == true) then
            return
        endif
        if (DiamondB('ocor','blba','asbl',70) == true) then
            return
        endif
        if (DiamondB('rat3','pams','ram4',70) == true) then
            return
        endif
        if (DiamondB('stre','shrs','ram3',70) == true) then
            return
        endif
        if (DiamondB('lure','thdm','ram2',70) == true) then
            return
        endif
        if (DiamondB('rots','tmmt','ram1',70) == true) then
            return
        endif
        if (DiamondB('frhg','mlst','oven',70) == true) then
            return
        endif
        if (DiamondB('ofir','soul','tels',70) == true) then
            return
        endif
        if (DiamondB('gldo','gsou','gvsm',70) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'gmfr', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +4强化宝石
    */
    private function AddFourthStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'wolg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('sksh','oslo','esaz',90) == true) then
            return
        endif
        if (DiamondB('ocor','blba','asbl',90) == true) then
            return
        endif
        if (DiamondB('rat3','pams','ram4',90) == true) then
            return
        endif
        if (DiamondB('stre','shrs','ram3',90) == true) then
            return
        endif
        if (DiamondB('lure','thdm','ram2',90) == true) then
            return
        endif
        if (DiamondB('rots','tmmt','ram1',90) == true) then
            return
        endif
        if (DiamondB('frhg','mlst','oven',90) == true) then
            return
        endif
        if (DiamondB('ofir','soul','tels',90) == true) then
            return
        endif
        if (DiamondB('gldo','gsou','gvsm',90) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'wolg', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +4祝福宝石
    */
    private function AddFourthBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'skrt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('sksh','oslo', 60) == true) then
            return
        endif
        if (DiamondA('ocor','blba', 60) == true) then
            return
        endif
        if (DiamondA('rat3','pams', 60) == true) then
            return
        endif
        if (DiamondA('stre','shrs', 60) == true) then
            return
        endif
        if (DiamondA('lure','thdm', 60) == true) then
            return
        endif
        if (DiamondA('rots','tmmt', 60) == true) then
            return
        endif
        if (DiamondA('frhg','mlst', 60) == true) then
            return
        endif
        if (DiamondA('ofir','soul', 60) == true) then
            return
        endif
        if (DiamondA('gldo','gsou', 60) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'skrt', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +5宝石
    */
    private function AddFifthDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'jpnt', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('oslo','grsl','sksh',60) == true) then
            return
        endif
        if (DiamondB('blba','cosl','ocor',60) == true) then
            return
        endif
        if (DiamondB('pams','jdrn','rat3',60) == true) then
            return
        endif
        if (DiamondB('shrs','kgal','stre',60) == true) then
            return
        endif
        if (DiamondB('thdm','arsh','lure',60) == true) then
            return
        endif
        if (DiamondB('tmmt','brag','rots',60) == true) then
            return
        endif
        if (DiamondB('mlst','nspi','frhg',60) == true) then
            return
        endif
        if (DiamondB('soul','sbok','ofir',60) == true) then
            return
        endif
        if (DiamondB('gsou','envl','gldo',60) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'jpnt', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +5强化宝石
    */
    private function AddFifthStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'ledg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('oslo','grsl','sksh',80) == true) then
            return
        endif
        if (DiamondB('blba','cosl','ocor',80) == true) then
            return
        endif
        if (DiamondB('pams','jdrn','rat3',80) == true) then
            return
        endif
        if (DiamondB('shrs','kgal','stre',80) == true) then
            return
        endif
        if (DiamondB('thdm','arsh','lure',80) == true) then
            return
        endif
        if (DiamondB('tmmt','brag','rots',80) == true) then
            return
        endif
        if (DiamondB('mlst','nspi','frhg',80) == true) then
            return
        endif
        if (DiamondB('soul','sbok','ofir',80) == true) then
            return
        endif
        if (DiamondB('gsou','envl','gldo',80) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'ledg', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +5祝福宝石
    */
    private function AddFifthBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'wtlg', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('oslo','grsl', 50) == true) then
            return
        endif
        if (DiamondA('blba','cosl', 50) == true) then
            return
        endif
        if (DiamondA('pams','jdrn', 50) == true) then
            return
        endif
        if (DiamondA('shrs','kgal', 50) == true) then
            return
        endif
        if (DiamondA('thdm','arsh', 50) == true) then
            return
        endif
        if (DiamondA('tmmt','brag', 50) == true) then
            return
        endif
        if (DiamondA('mlst','nspi', 50) == true) then
            return
        endif
        if (DiamondA('soul','sbok', 50) == true) then
            return
        endif
        if (DiamondA('gsou','envl', 50) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'wtlg', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +5诅咒宝石
    */
    private function AddFifthCurseDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'gopr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif

        if (DiamondC('oslo','grsl','esaz',90) == true) then
            return
        endif
        if (DiamondC('blba','cosl','asbl',90) == true) then
            return
        endif
        if (DiamondC('pams','jdrn','ram4',90) == true) then
            return
        endif
        if (DiamondC('shrs','kgal','ram3',90) == true) then
            return
        endif
        if (DiamondC('thdm','arsh','ram2',90) == true) then
            return
        endif
        if (DiamondC('tmmt','brag','ram1',90) == true) then
            return
        endif
        if (DiamondC('mlst','nspi','oven',90) == true) then
            return
        endif
        if (DiamondC('soul','sbok','tels',90) == true) then
            return
        endif
        if (DiamondC('gsou','envl','gvsm',90) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'gopr', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +6宝石
    */
    private function AddSixthDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'glsk', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('grsl','flag','oslo',50) == true) then
            return
        endif
        if (DiamondB('cosl','shhn','blba',50) == true) then
            return
        endif
        if (DiamondB('jdrn','shcw','pams',50) == true) then
            return
        endif
        if (DiamondB('kgal','shtm','shrs',50) == true) then
            return
        endif
        if (DiamondB('arsh','srtl','thdm',50) == true) then
            return
        endif
        if (DiamondB('brag','olig','tmmt',50) == true) then
            return
        endif
        if (DiamondB('nspi','oli2','mlst',50) == true) then
            return
        endif
        if (DiamondB('sbok','arsc','soul',50) == true) then
            return
        endif
        if (DiamondB('envl','rugt','gsou',50) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'glsk', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +6强化宝石
    */
    private function AddSixthStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'dthb', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('grsl','flag','oslo',70) == true) then
            return
        endif
        if (DiamondB('cosl','shhn','blba',70) == true) then
            return
        endif
        if (DiamondB('jdrn','shcw','pams',70) == true) then
            return
        endif
        if (DiamondB('kgal','shtm','shrs',70) == true) then
            return
        endif
        if (DiamondB('arsh','srtl','thdm',70) == true) then
            return
        endif
        if (DiamondB('brag','olig','tmmt',70) == true) then
            return
        endif
        if (DiamondB('nspi','oli2','mlst',70) == true) then
            return
        endif
        if (DiamondB('sbok','arsc','soul',70) == true) then
            return
        endif
        if (DiamondB('envl','rugt','gsou',70) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'dthb', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +6祝福宝石
    */
    private function AddSixthBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'bzbe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('grsl','flag',40) == true) then
            return
        endif
        if (DiamondA('cosl','shhn',40) == true) then
            return
        endif
        if (DiamondA('jdrn','shcw',40) == true) then
            return
        endif
        if (DiamondA('kgal','shtm',40) == true) then
            return
        endif
        if (DiamondA('arsh','srtl',40) == true) then
            return
        endif
        if (DiamondA('brag','olig',40) == true) then
            return
        endif
        if (DiamondA('nspi','oli2',40) == true) then
            return
        endif
        if (DiamondA('sbok','arsc',40) == true) then
            return
        endif
        if (DiamondA('envl','rugt',40) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'bzbe', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +6诅咒宝石
    */
    private function AddSixthCurseDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'dphe', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondC('grsl','flag','sksh',80) == true) then
            return
        endif
        if (DiamondC('cosl','shhn','ocor',80) == true) then
            return
        endif
        if (DiamondC('jdrn','shcw','rat3',80) == true) then
            return
        endif
        if (DiamondC('kgal','shtm','stre',80) == true) then
            return
        endif
        if (DiamondC('arsh','srtl','lure',80) == true) then
            return
        endif
        if (DiamondC('brag','olig','rots',80) == true) then
            return
        endif
        if (DiamondC('nspi','oli2','frhg',80) == true) then
            return
        endif
        if (DiamondC('sbok','arsc','ofir',80) == true) then
            return
        endif
        if (DiamondC('envl','rugt','gldo',80) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'dphe', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +7宝石
    */
    private function AddSeventhDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'kygh', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('oli2','rump','nspi',40) == true) then
            return
        endif
        if (DiamondB('arsc','rde0','sbok',40) == true) then
            return
        endif
        if (DiamondB('rugt','shdt','envl',40) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'kygh', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +7强化宝石
    */
    private function AddSeventhStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'mort', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('oli2','rump','nspi',60) == true) then
            return
        endif
        if (DiamondB('arsc','rde0','sbok',60) == true) then
            return
        endif
        if (DiamondB('rugt','shdt','envl',60) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'mort', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +7祝福宝石
    */
    private function AddSeventhBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'ches', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('oli2','rump',30) == true) then
            return
        endif
        if (DiamondA('arsc','rde0',30) == true) then
            return
        endif
        if (DiamondA('rugt','shdt',30) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'ches', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +7诅咒宝石
    */
    private function AddSeventhCurseDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondC('oli2','rump','mlst',70) == true) then
            return
        endif
        if (DiamondC('arsc','rde0','soul',70) == true) then
            return
        endif
        if (DiamondC('rugt','shdt','gsou',70) == true) then
            return
        endif

        call UnitAddItemByIdSwapped('cnhn', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +8宝石
    */
    private function AddEighthDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'sehr', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('rump','shen','oli2',40) == true) then
            return
        endif
        if (DiamondB('rde0','oflg','arsc',40) == true) then
            return
        endif
        if (DiamondB('shdt','crdt','rugt',40) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'sehr', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +8强化宝石
    */
    private function AddEighthStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'k3m3', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB('rump','shen','oli2',60) == true) then
            return
        endif
        if (DiamondB('rde0','oflg','arsc',60) == true) then
            return
        endif
        if (DiamondB('shdt','crdt','rugt',60) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'k3m3', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +8祝福宝石
    */
    private function AddEighthBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'k3m2', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('rump','shen',30) == true) then
            return
        endif
        if (DiamondA('rde0','oflg',30) == true) then
            return
        endif
        if (DiamondA('shdt','crdt',30) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'k3m2', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +8诅咒宝石
    */
    private function AddEighthCurseDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'kybl', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondC('rump','shen','nspi',70) == true) then
            return
        endif
        if (DiamondC('rde0','oflg','sbok',70) == true) then
            return
        endif
        if (DiamondC('shdt','crdt','envl',70) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'kybl', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +9宝石
    */
    private function AddNinthDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'bzbf', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB ('shen','stpg','rump',40) == true) then
            return
        endif
        if (DiamondB ('oflg','frgd','rde0',40) == true) then
            return
        endif
        if (DiamondB ('crdt','pspd','shdt',40) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'bzbf', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +9强化宝石
    */
    private function AddNinthStrDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'kysn', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondB ('shen','stpg','rump',60) == true) then
            return
        endif
        if (DiamondB ('oflg','frgd','rde0',60) == true) then
            return
        endif
        if (DiamondB ('crdt','pspd','shdt',60) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'kysn', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +9祝福宝石
    */
    private function AddNinthBlessDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'ktrm', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondA('shen','stpg',30) == true) then
            return
        endif
        if (DiamondA('oflg','frgd',30) == true) then
            return
        endif
        if (DiamondA('crdt','pspd',30) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'ktrm', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        +9诅咒宝石
    */
    private function AddNinthCurseDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'shwd', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (DiamondC ('shen','stpg','oli2',70) == true) then
            return
        endif
        if (DiamondC ('oflg','frgd','arsc',70) == true) then
            return
        endif
        if (DiamondC ('crdt','pspd','rugt',70) == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'shwd', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        血精石
    */
    private function XueJingDiamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'k3m1', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (Diamond100('oli2','rump') == true) then
            return
        endif
        if (Diamond100('arsc','rde0') == true) then
            return
        endif
        if (Diamond100('rugt','shdt') == true) then
            return
        endif
        if (Diamond100('shen','stpg') == true) then
            return
        endif
        if (Diamond100('oflg','frgd') == true) then
            return
        endif
        if (Diamond100('crdt','pspd') == true) then
            return
        endif
        if (Diamond100('rump','shen') == true) then
            return
        endif
        if (Diamond100('rde0','oflg') == true) then
            return
        endif
        if (Diamond100('shdt','crdt') == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'k3m1', GetTriggerUnit() )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
        return
    endfunction

//---------------------------------------------------------------------------------------------------

    /*
        技能跳转
    */
    private function TSpellDiamondAct takes nothing returns nothing
        if (GetSpellAbilityId() == 'A02Z') then
            call AddOneDiamond()
        elseif (GetSpellAbilityId() == 'Amnb') then
            call AddSecondDiamond()
        elseif (GetSpellAbilityId() == 'Ambb') then
            call AddThirdDiamond()
        elseif ((GetSpellAbilityId() == 'ACfl')) then
            call AddFourthDiamond()
        elseif ((GetSpellAbilityId() == 'Aenw')) then
            call AddFourthStrDiamond()
        elseif ((GetSpellAbilityId() == 'Aenr')) then
            call AddFourthBlessDiamond()
        elseif ((GetSpellAbilityId() == 'ACcy')) then
            call AddFifthDiamond()
        elseif ((GetSpellAbilityId() == 'ACbn')) then
            call AddFifthStrDiamond()
        elseif ((GetSpellAbilityId() == 'SCc1')) then
            call AddFifthBlessDiamond()
        elseif ((GetSpellAbilityId() == 'ACfb')) then
            call AddFifthCurseDiamond()
        elseif ((GetSpellAbilityId() == 'ACls')) then
            call AddSixthDiamond()
        elseif ((GetSpellAbilityId() == 'ACbf')) then
            call AddSixthStrDiamond()
        elseif ((GetSpellAbilityId() == 'Afod')) then
            call AddSixthBlessDiamond()
        elseif ((GetSpellAbilityId() == 'ACdc')) then
            call AddSixthCurseDiamond()
        elseif ((GetSpellAbilityId() == 'A0DG')) then
            call AddSeventhDiamond()
        elseif ((GetSpellAbilityId() == 'A0DI')) then
            call AddSeventhStrDiamond()
        elseif ((GetSpellAbilityId() == 'A0DH')) then
            call AddSeventhBlessDiamond()
        elseif ((GetSpellAbilityId() == 'A0DN')) then
            call AddSeventhCurseDiamond()
        elseif ((GetSpellAbilityId() == 'A0DJ')) then
            call AddEighthDiamond()
        elseif ((GetSpellAbilityId() == 'A0DK')) then
            call AddEighthStrDiamond()
        elseif ((GetSpellAbilityId() == 'A0DL')) then
            call AddEighthBlessDiamond()
        elseif ((GetSpellAbilityId() == 'A0DM')) then
            call AddEighthCurseDiamond()
        elseif ((GetSpellAbilityId() == 'A0DO')) then
            call AddNinthDiamond()
        elseif ((GetSpellAbilityId() == 'A0DR')) then
            call AddNinthStrDiamond()
        elseif ((GetSpellAbilityId() == 'A0DQ')) then
            call AddNinthBlessDiamond()
        elseif ((GetSpellAbilityId() == 'A0DP')) then
            call AddNinthCurseDiamond()
        elseif ((GetSpellAbilityId() == 'A0EK')) then
            call XueJingDiamond()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    宝石初始化
	*/
	private function InitDiamond takes nothing returns nothing
		
        local trigger t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
        call TriggerAddAction(t, function TSpellDiamondAct)

        set t = null
	endfunction

endlibrary
