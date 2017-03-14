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

/*
function Trig_Z5Conditions takes nothing returns boolean
    return ((GetUnitTypeId(GetBuyingUnit()) != 'N018'))
endfunction

function Trig_Z5Func002Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func002Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func003Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func003Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func004Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func004Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func005Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func005Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func006Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func006Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func007Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func007Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func008Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func008Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func009Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func009Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func010Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func010Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func011Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func011Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func012Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func012Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func013Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func013Func002Func002003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func014Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func014Func002Func003003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func015Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func015Func002Func003003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Func016Func001003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
endfunction

function Trig_Z5Func016Func002Func003003002 takes nothing returns boolean
    return (((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER)))
endfunction

function Trig_Z5Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((GetItemTypeId(GetSoldItem()) == 'rre1')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func002Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func002Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nnmg', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'rhe1')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func003Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func003Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nmyr', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 2 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'guvi')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func004Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func004Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nnsw', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 3 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'tpow')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func005Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func005Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nsnp', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 4 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'rhe2')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func006Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func006Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nhyc', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 5 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'tint')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func007Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func007Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nnrg', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 6 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'modt')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func008Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func008Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nplb', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 7 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'sman')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func009Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func009Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'ntrv', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 8 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'sorf')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func010Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func010Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nmmu', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 9 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'ratf')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func011Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func011Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nanb', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 5 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'rreb')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func012Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func012Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nanm', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 5 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'ckng')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func013Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func013Func002Func002003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                set udg_Zhishaodiaoyike = 21
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set bj_forLoopAIndex = 1
                set bj_forLoopAIndexEnd = 20
                loop
                    exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
                    set udg_Point = GetRandomLocInRect(gg_rct________8)
                    call CreateNUnitsAtLoc( 1, 'nane', Player(10), udg_Point, GetRandomDirectionDeg() )
                    call SetUnitAbilityLevelSwapped( 'AB01', GetLastCreatedUnit(), 5 )
                    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                    call RemoveLocation( udg_Point )
                    set bj_forLoopAIndex = bj_forLoopAIndex + 1
                endloop
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'desc')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func014Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func014Func002Func003003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set udg_Point = GetRandomLocInRect(gg_rct________8)
                call CreateNUnitsAtLoc( 1, 'Nbrn', Player(10), udg_Point, GetRandomDirectionDeg() )
                call EnableTrigger(TSpellQianfa)
                call EnableTrigger(TSpellDart)
                call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                call RemoveLocation( udg_Point )
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
                call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
            call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'rde4')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func015Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func015Func002Func003003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set udg_Point = GetRandomLocInRect(gg_rct________8)
                call CreateNUnitsAtLoc( 1, 'Nngs', Player(10), udg_Point, GetRandomDirectionDeg() )
                call EnableTrigger(TSpellQianfa)
                call EnableTrigger(TSpellDart)
                call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                call RemoveLocation( udg_Point )
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
                call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
            call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    if ((GetItemTypeId(GetSoldItem()) == 'ofro')) then
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func016Func001003002)))
        if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) == 0)) then
            call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB, GetUnitsInRectMatching(gg_rct________8, Condition(function Trig_Z5Func016Func002Func003003002)))
            if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB)) != 0)) then
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_269" )
                set udg_Point = GetRandomLocInRect(gg_rct________8)
                call CreateNUnitsAtLoc( 1, 'N00Q', Player(10), udg_Point, GetRandomDirectionDeg() )
                set udg_Juneng[1] = GetLastCreatedUnit()
                call EnableTrigger( gg_trg_Z8 )
                call EnableTrigger( gg_trg_Z9 )
                call EnableTrigger(TSpellQianfa)
                call EnableTrigger(TSpellDart)
                call SetPlayerTechResearchedSwap( 'R00R', level_juneng, Player(10) )
                call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetRectCenter(gg_rct______________001))
                call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x8D3C1FA0, GetRectCenter(gg_rct________8))
                set udg_Juneng[2] = CreateUnitAtLoc(Player(10), 'h00L', YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F), 135.00)
                call UnitAddAbilityBJ( 'A0DY', udg_Juneng[2] )
                call IssuePointOrderLoc( udg_Juneng[2], "stampede", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x8D3C1FA0) )
                call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
                call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x8D3C1FA0) )
                call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", udg_Point) )
                call RemoveLocation( udg_Point )
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_273" )
                call AdjustPlayerStateBJ( 2000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
            endif
            call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xAA168BFB) )
        else
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "TRIGSTR_261" )
            call AdjustPlayerStateBJ( 2000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
        endif
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig_Z5 takes nothing returns nothing
    set gg_trg_Z5 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_Z5, "Z5")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Z5, EVENT_PLAYER_UNIT_SELL_ITEM )
    call TriggerAddCondition(gg_trg_Z5, Condition(function Trig_Z5Conditions))
    call TriggerAddAction(gg_trg_Z5, function Trig_Z5Actions)
endfunction


*/

/*

function Trig_Z6Conditions takes nothing returns boolean
    return ((IsUnitEnemy(GetKillingUnitBJ(), Player(10)) == true))
endfunction

function Trig_Z6Func014Func006A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Z6Func015Func006A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Z6Func016Func007A takes nothing returns nothing
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_Z6Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if (((GetUnitTypeId(GetDyingUnit()) == 'nnmg') or (GetUnitTypeId(GetDyingUnit()) == 'nmyr') or (GetUnitTypeId(GetDyingUnit()) == 'nnsw') or (GetUnitTypeId(GetDyingUnit()) == 'nsnp') or (GetUnitTypeId(GetDyingUnit()) == 'nhyc') or (GetUnitTypeId(GetDyingUnit()) == 'nnrg') or (GetUnitTypeId(GetDyingUnit()) == 'nplb') or (GetUnitTypeId(GetDyingUnit()) == 'ntrv') or (GetUnitTypeId(GetDyingUnit()) == 'nmmu') or (GetUnitTypeId(GetDyingUnit()) == 'nanb') or (GetUnitTypeId(GetDyingUnit()) == 'nanm') or (GetUnitTypeId(GetDyingUnit()) == 'nane')) and (GetPlayerController(GetOwningPlayer(GetDyingUnit())) == MAP_CONTROL_COMPUTER)) then
        set udg_Zhishaodiaoyike = ( udg_Zhishaodiaoyike - 1 )
        if ((udg_Zhishaodiaoyike == 2)) then
            set udg_Zhishaodiaoyike = 100
            if ((GetUnitTypeId(GetDyingUnit()) == 'nnmg')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'I02N', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nmyr')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'I04S', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nnsw')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'azhr', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nsnp')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'gmfr', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nhyc')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'jpnt', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nnrg')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'glsk', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nplb')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'kygh', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'ntrv')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'sehr', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nmmu')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'bzbf', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nanb')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'thle', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nanm')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'dkfw', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            if ((GetUnitTypeId(GetDyingUnit()) == 'nane')) then
                set udg_Point = GetUnitLoc(GetDyingUnit())
                call CreateItemLoc( 'phlt', udg_Point )
                call RemoveLocation( udg_Point )
            else
            endif
            call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
            set ydl_group = null
            set ydl_unit = null
            return
        else
        endif
    else
    endif
    if ((GetRandomInt(1, 20) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nnmg')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'I02N', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 22) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nmyr')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'I04S', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 24) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nnsw')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'azhr', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 26) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nsnp')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'gmfr', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 28) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nhyc')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'jpnt', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 30) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nnrg')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'glsk', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 30) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nplb')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'kygh', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 30) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'ntrv')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'sehr', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 30) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nmmu')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'bzbf', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 25) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nanb')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'thle', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 25) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nanm')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'dkfw', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetRandomInt(1, 25) == 1) and (GetUnitTypeId(GetDyingUnit()) == 'nane')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'phlt', udg_Point )
        call RemoveLocation( udg_Point )
        set udg_Zhishaodiaoyike = 100
    else
    endif
    if ((GetUnitTypeId(GetDyingUnit()) == 'Nbrn')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'sclp', udg_Point )
        call DisableTrigger(TSpellQianfa)
        call DisableTrigger(TSpellDart)
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfTypeIdAll('hs00'))
        call ForGroupBJ( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F), function Trig_Z6Func014Func006A )
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetUnitTypeId(GetDyingUnit()) == 'Nngs')) then
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call CreateItemLoc( 'engs', udg_Point )
        call DisableTrigger(TSpellQianfa)
        call DisableTrigger(TSpellDart)
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfTypeIdAll('hs00'))
        call ForGroupBJ( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F), function Trig_Z6Func015Func006A )
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
        call RemoveLocation( udg_Point )
    else
    endif
    if ((GetUnitTypeId(GetDyingUnit()) == 'N00Q')) then
        set level_juneng = level_juneng + 1
        set udg_Point = GetUnitLoc(GetDyingUnit())
        call DisableTrigger(TSpellQianfa)
        call DisableTrigger(TSpellDart)
        call CreateItemLoc( 'mgtk', udg_Point )
        call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfTypeIdAll('hs00'))
        call ForGroupBJ( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F), function Trig_Z6Func016Func007A )
        call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
        call RemoveLocation( udg_Point )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig_Z6 takes nothing returns nothing
    set gg_trg_Z6 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_Z6, "Z6")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_Z6, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddCondition(gg_trg_Z6, Condition(function Trig_Z6Conditions))
    call TriggerAddAction(gg_trg_Z6, function Trig_Z6Actions)
endfunction


*/

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