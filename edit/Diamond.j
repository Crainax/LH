//! import "LHBase.j"
//! import "Diffculty.j"
/////! import "NetVersion.j"
/*
    宝石升级装备
*/
library_once Diamond initializer InitDiamond requires LHBase,Diffculty,Version

    globals
        constant string DIAMOND_CANT_UPDATE = "|cFFFF66CC【消息】|r该宝石不能升级该物品。"

        /*
            至少爆一颗的变量
        */
        integer IAtleast1 = 0
        integer IAtleast2 = 0
        integer IAtleast3 = 0

        /*
            裸上提示
        */
        private boolean array BLuoshang1
        private boolean array BLuoshang2
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        是否在宝石区内
    */
    function IsInDiamondRegion takes real x, real y returns boolean
        local location point = Location(x,y)
        local boolean b = RectContainsLoc(gg_rct_Diamond2,point) or RectContainsLoc(gg_rct_Diamond3,point) or RectContainsLoc(gg_rct________8,point)
        call RemoveLocation(point)
        return b
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        100%几率成功
    */
    private function Diamond100 takes integer itemID,integer newItemID returns boolean
        local integer charges = 0
        if (GetItemTypeId(GetSpellTargetItem()) == itemID) then
            call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + ( GetUnitName(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) + "以100%的成功率成功地升级了"+GetItemName(GetSpellTargetItem())+"！" ) ) )
            set charges = GetItemCharges(GetSpellTargetItem())
            call RemoveItem( GetSpellTargetItem() )
            call UnitAddItemByIdSwapped( newItemID, GetTriggerUnit() )
            call SetItemCharges(GetLastCreatedItem(),charges)
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
                if (GetRandomInt(1,5) == 1) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r装备到了+4以后推荐使用祝福/强化/诅咒石去升级.")
                else
                    if (GetRandomInt(1,4) == 1) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r|cffff00ff琉璃璞玉|r可以将宝石成功率提升至100%,可以通过42转或者永久赞助(详情按F9)获取.")
                    endif
                endif
                call PlaySoundBJ( gg_snd_f_baoshi )
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
                if (GetRandomInt(1,5) == 1) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r装备到了+4以后推荐使用祝福/强化/诅咒石去升级.")
                else
                    if (GetRandomInt(1,4) == 1) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r|cffff00ff琉璃璞玉|r可以将宝石成功率提升至100%,可以通过42转或者永久赞助(详情按F9)获取.")
                    endif
                endif
                call RemoveItem( GetSpellTargetItem() )
                call UnitAddItemByIdSwapped( oldItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_f_baoshi )
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
                if (GetRandomInt(1,5) == 1) then
                    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r装备到了+4以后推荐使用祝福/强化/诅咒石去升级.")
                else
                    if (GetRandomInt(1,4) == 1) then
                        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【小提示】|r|cffff00ff琉璃璞玉|r可以将宝石成功率提升至100%,可以通过42转或者永久赞助(详情按F9)获取.")
                    endif
                endif
                call UnitAddItemByIdSwapped( oldItemID, GetTriggerUnit() )
                call PlaySoundBJ( gg_snd_f_baoshi )
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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
        
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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
        
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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
        
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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
        
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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
        
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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
 
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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
 
        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                    小提示

                    3级以上的装备不建议使用未经强化的宝石祼升.
                    因为未经强化的宝石失败率较高,且失败会降级.

                    |cff6699ff祝福石能令装备失败不会降级.
                    强化石能有效提高升级成功率.
                    诅咒石更能提高成功率.|r

                    以上3种宝石能与普通的宝石融合在一起.
                    以上3种宝石均在宝石专区刷怪获取.
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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

        if not(HasLiuli(GetTriggerUnit())) then
            if not(BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
                set BLuoshang2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
                call ShowGameHint(GetOwningPlayer(GetTriggerUnit()),"
                小提示

                7级以上的装备几率可能会较低.

                你还可以通过下面2种方式提高成功率:
                1.通过42次转生获取|cffff00ff【虚】琉璃璞玉|r
                (100%的升级成功率,当局无限次使用)
                2.使用杀敌数在基地左边购买|cffff0000血精石|r.
                (100%的升级成功率,消耗品)
    ")
            endif
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
        二阶混沌之石
    */
    private function Hundun2Diamond takes nothing returns nothing
        if (IsItemPawnable(GetSpellTargetItem()) == false) then
            call UnitAddItemByIdSwapped( 'I07R', GetTriggerUnit() )
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, DIAMOND_CANT_UPDATE )
            return
        endif
        
        if (Diamond100('I04W','I07E') == true) then
            return
        endif
        if (Diamond100('ICS1','I07F') == true) then
            return
        endif
        if (Diamond100('I04Y','I07G') == true) then
            return
        endif
        if (Diamond100('I05T','I07H') == true) then
            return
        endif
        if (Diamond100('I060','I07I') == true) then
            return
        endif
        if (Diamond100('I05Z','I07J') == true) then
            return
        endif
        if (Diamond100('I05Y','I07K') == true) then
            return
        endif
        if (Diamond100('I04X','I07O') == true) then
            return
        endif
        if (Diamond100('IB0A','I07N') == true) then
            return
        endif
        if (Diamond100('I05X','I07P') == true) then
            return
        endif
        if (Diamond100('ICY1','I07Q') == true) then
            return
        endif
        if (Diamond100('I05W','I07M') == true) then
            return
        endif
        if (Diamond100('I05V','I07L') == true) then
            return
        endif
        if (Diamond100('ICX1','I05U') == true) then
            return
        endif

        call UnitAddItemByIdSwapped( 'I07R', GetTriggerUnit() )
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
        elseif ((GetSpellAbilityId() == 'A0N6')) then
            call Hundun2Diamond()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        宝石区怪物过滤
    */
    function DiamondMonsterFilter takes nothing returns boolean
        return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        宝石区玩家过滤
    */
    function DiamondPlayerFilter takes nothing returns boolean
        return ((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER) and (IsUnitAliveBJ(GetFilterUnit()) or (GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] and not(IsWanjie()) )))
    endfunction

    function DiamondPlayerFilterOther takes nothing returns boolean
        return ((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER) and (IsUnitAliveBJ(GetFilterUnit()) or (GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] )))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        创建宝石怪并给予其技能
    */
    private function CreateDiamonMonster takes integer whichType,integer aLevel returns nothing
        local real x = 0
        local real y = 0
        local unit u
        if (RectContainsUnit(gg_rct________8,GetSellingUnit())) then
            set x = GetRandomReal(GetRectMinX(gg_rct________8),GetRectMaxX(gg_rct________8))
            set y = GetRandomReal(GetRectMinY(gg_rct________8),GetRectMaxY(gg_rct________8))
        elseif (RectContainsUnit(gg_rct_Diamond2,GetSellingUnit())) then
            set x = GetRandomReal(GetRectMinX(gg_rct_Diamond2),GetRectMaxX(gg_rct_Diamond2))
            set y = GetRandomReal(GetRectMinY(gg_rct_Diamond2),GetRectMaxY(gg_rct_Diamond2))
        else 
            set x = GetRandomReal(GetRectMinX(gg_rct_Diamond3),GetRectMaxX(gg_rct_Diamond3))
            set y = GetRandomReal(GetRectMinY(gg_rct_Diamond3),GetRectMaxY(gg_rct_Diamond3))
        endif
        set u = CreateUnit(Player(10),whichType,x,y,GetRandomDirectionDeg())
        call EnhanceDiffAttack(u)
        call SetUnitAbilityLevel(u, 'AB01', GetWanjieAddInt(aLevel,9) )
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", x, y ))
        set u = null
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        购买开始刷宝石怪
    */
    function TBuyDiamondStartCon takes nothing returns boolean
        return (BuyerFilter(GetBuyingUnit()) and (GetUnitTypeId(GetSellingUnit()) == 'nmr5' or GetUnitTypeId(GetSellingUnit()) == 'nmre' or GetUnitTypeId(GetSellingUnit()) == 'n01D' or GetUnitTypeId(GetSellingUnit()) == 'n01C'))
    endfunction

    function TBuyDiamondStartAct takes nothing returns nothing
        local group group1
        local group group2
        local integer i = 1

        if (RectContainsUnit(gg_rct________8,GetSellingUnit())) then
            set group1 = GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondMonsterFilter))
            set group2 = GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
        elseif (RectContainsUnit(gg_rct_Diamond2,GetSellingUnit())) then
            set group1 = GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondMonsterFilter))
            set group2 = GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilter))
        elseif (RectContainsUnit(gg_rct_Diamond3,GetSellingUnit())) then
            set group1 = GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondMonsterFilter))
            set group2 = GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondPlayerFilter))
        endif

        //! textmacro StartDiamondMonster takes ItemType,UnitType,Level

        if ((GetItemTypeId(GetSoldItem()) == '$ItemType$')) then
            if ((CountUnitsInGroup(group1) == 0)) then
                if ((CountUnitsInGroup(group2) != 0)) then
                    if (RectContainsUnit(gg_rct________8,GetSellingUnit())) then
                        set IAtleast1 = 21
                    elseif (RectContainsUnit(gg_rct_Diamond2,GetSellingUnit())) then
                        set IAtleast2 = 21
                    elseif (RectContainsUnit(gg_rct_Diamond3,GetSellingUnit())) then
                        set IAtleast3 = 21
                    endif
                    debug set BJiulun = true
                    call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r祝你好运!" )
                    set i = 1
                    loop
                        exitwhen i > 20
                        call CreateDiamonMonster('$UnitType$',$Level$)
                        set i = i +1
                    endloop
                else
                    call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r没英雄不开刷!" )
                endif
            else
                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r清完这波东西再来买!" )
            endif
        endif

        //! endtextmacro

        //! runtextmacro StartDiamondMonster("rre1","nnmg","1")
        //! runtextmacro StartDiamondMonster("rhe1","nmyr","2")
        //! runtextmacro StartDiamondMonster("guvi","nnsw","3")
        //! runtextmacro StartDiamondMonster("tpow","nsnp","4")
        //! runtextmacro StartDiamondMonster("rhe2","nhyc","5")
        //! runtextmacro StartDiamondMonster("tint","nnrg","6")
        //! runtextmacro StartDiamondMonster("modt","nplb","7")
        //! runtextmacro StartDiamondMonster("sman","ntrv","8")
        //! runtextmacro StartDiamondMonster("sorf","nmmu","9")
        //! runtextmacro StartDiamondMonster("ratf","nanb","5")
        //! runtextmacro StartDiamondMonster("rreb","nanm","5")
        //! runtextmacro StartDiamondMonster("ckng","nane","5")

        call DestroyGroup(group1)
        call DestroyGroup(group2)
        set group1 = null
        set group2 = null

    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        根据死亡单位类型去掉落相对应的宝石
    */
    private function MonsterDropDiamond takes nothing returns boolean
        local integer i = 1
       
            if ((GetUnitTypeId(GetDyingUnit()) == 'nnmg')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                        call CreateItem( 'I02N', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                        set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nmyr')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                    call CreateItem( 'I04S', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nnsw')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                    call CreateItem( 'azhr', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nsnp')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                    call CreateItem( 'gmfr', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nhyc')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                    call CreateItem( 'jpnt', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nnrg')) then
                loop
                    exitwhen i > CModeH(1,2) * I3(JJ2,3,1)
                    call CreateItem( 'glsk', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nplb')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'kygh', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'ntrv')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'sehr', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nmmu')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'bzbf', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nanb')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'thle', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nanm')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'dkfw', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            elseif ((GetUnitTypeId(GetDyingUnit()) == 'nane')) then
                loop
                    exitwhen i > CModeH(1,2)
                    call CreateItem( 'phlt', GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()) )
                    set i = i + 1
                endloop
                return true
            endif
            set i = i +1
        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        掉落触发的条件
    */
    function TDropDiamondCon takes nothing returns boolean
        return (GetOwningPlayer(GetDyingUnit()) == Player(10) or GetOwningPlayer(GetDyingUnit()) == Player(11)) and not (IsUnitIllusion(GetDyingUnit()))
    endfunction
    /*
        掉落触发的动作
    */
    function TDropDiamondAct takes nothing returns nothing
        if (((GetUnitTypeId(GetDyingUnit()) == 'nnmg') or (GetUnitTypeId(GetDyingUnit()) == 'nmyr') or (GetUnitTypeId(GetDyingUnit()) == 'nnsw') or (GetUnitTypeId(GetDyingUnit()) == 'nsnp') or (GetUnitTypeId(GetDyingUnit()) == 'nhyc') or (GetUnitTypeId(GetDyingUnit()) == 'nnrg') or (GetUnitTypeId(GetDyingUnit()) == 'nplb') or (GetUnitTypeId(GetDyingUnit()) == 'ntrv') or (GetUnitTypeId(GetDyingUnit()) == 'nmmu') or (GetUnitTypeId(GetDyingUnit()) == 'nanb') or (GetUnitTypeId(GetDyingUnit()) == 'nanm') or (GetUnitTypeId(GetDyingUnit()) == 'nane')) and (GetPlayerController(GetOwningPlayer(GetDyingUnit())) == MAP_CONTROL_COMPUTER)) then
            if (RectContainsUnit(gg_rct________8,GetDyingUnit())) then
                set IAtleast1 = ( IAtleast1 - 1 )
                if ((IAtleast1 == 1)) then
                    set IAtleast1 = 100
                    call MonsterDropDiamond()
                    return
                endif
            elseif (RectContainsUnit(gg_rct_Diamond2,GetDyingUnit())) then
                set IAtleast2 = ( IAtleast2 - 1 )
                if ((IAtleast2 == 1)) then
                    set IAtleast2 = 100
                    call MonsterDropDiamond()
                    return
                endif
            elseif (RectContainsUnit(gg_rct_Diamond3,GetDyingUnit())) then
                set IAtleast3 = ( IAtleast3 - 1 )
                if ((IAtleast3 == 1)) then
                    set IAtleast3 = 100
                    call MonsterDropDiamond()
                    return
                endif
            endif
            if ((GetRandomInt(1, 25) == 1) and not(IsTianyan) and IsInDiamondRegion(GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()))) then
                if (MonsterDropDiamond()) then
                    if (RectContainsUnit(gg_rct________8,GetDyingUnit())) then
                        set IAtleast1 = 100
                    elseif (RectContainsUnit(gg_rct_Diamond2,GetDyingUnit())) then
                        set IAtleast2 = 100
                    elseif (RectContainsUnit(gg_rct_Diamond3,GetDyingUnit())) then
                        set IAtleast3 = 100
                    endif
                endif
            endif
        endif
        
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        清空宝石区域
    */
    function ClearDiamondRegion takes rect r returns nothing
        local unit l_unit = null
        local group group2 = GetUnitsInRectMatching(r, Condition(function DiamondMonsterFilter))
        set group2 = GetUnitsInRectMatching(r, Condition(function DiamondMonsterFilter))
        loop
            set l_unit = FirstOfGroup(group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(group2, l_unit)
            call FlushChildHashtable(YDHT,GetHandleId(l_unit))
            call RemoveUnit( l_unit )
        endloop
        call DestroyGroup( group2 )
        set group2 = null
        set l_unit = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        离开宝石区域
    */
    function TLeaveDiamondRegionCon takes nothing returns boolean
        return ((GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER))
    endfunction

    function TLeaveDiamondRegion1Act takes nothing returns nothing
        local group group1 = GetUnitsInRectMatching(gg_rct________8, Condition(function DiamondPlayerFilter))
        if ((CountUnitsInGroup(group1) == 0)) then
            call ClearDiamondRegion(gg_rct________8)
        endif
        call DestroyGroup( group1 )
        set group1 = null
    endfunction

    function TLeaveDiamondRegion2Act takes nothing returns nothing
        local group group1 = GetUnitsInRectMatching(gg_rct_Diamond2, Condition(function DiamondPlayerFilterOther))
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

    function TLeaveDiamondRegion3Act takes nothing returns nothing
        local group group1 = GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondPlayerFilterOther))
        local group group2 = null
        local unit l_unit = null
        if ((CountUnitsInGroup(group1) == 0)) then
            set group2 = GetUnitsInRectMatching(gg_rct_Diamond3, Condition(function DiamondMonsterFilter))
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
//---------------------------------------------------------------------------------------------------
    /*
        宝石对话框
    */
    private function DiamondDialogClick takes nothing returns nothing
        local dialog d = GetClickedDialogBJ()
        local unit u = LoadUnitHandle(LHTable,GetHandleId(d),3)

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
            call SetUnitX(u,GetRectCenterX(gg_rct_Diamond2))
            call SetUnitY(u,GetRectCenterY(gg_rct_Diamond2))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct_Diamond2),GetRectCenterY(gg_rct_Diamond2),0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct_Diamond2), GetRectCenterY(gg_rct_Diamond2)))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),4)) then
            call SetUnitX(u,GetRectCenterX(gg_rct_Diamond3))
            call SetUnitY(u,GetRectCenterY(gg_rct_Diamond3))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct_Diamond3),GetRectCenterY(gg_rct_Diamond3),0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct_Diamond3), GetRectCenterY(gg_rct_Diamond3)))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
            call SetUnitX(u,GetRectCenterX(gg_rct________8))
            call SetUnitY(u,GetRectCenterY(gg_rct________8))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct________8),GetRectCenterY(gg_rct________8),0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct________8), GetRectCenterY(gg_rct________8)))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
        call DialogDisplay( GetOwningPlayer(u), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set u = null
        call DestroyTrigger(GetTriggeringTrigger())
    endfunction

    function CreateDiamondDialog takes unit u returns nothing
        local trigger t  = CreateTrigger()
        local dialog d = DialogCreate()

        call DialogSetMessage( d, "请选择进入的宝石区" )
        call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "低级宝石区1（次）"))
        call SaveButtonHandle(LHTable,GetHandleId(d),4,DialogAddButtonBJ( d, "低级宝石区2（次）"))
        call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "高级宝石区（主）"))
        call SaveUnitHandle(LHTable,GetHandleId(d),3,u)
        call DialogDisplay( GetOwningPlayer(u), d, true )
        call TriggerRegisterDialogEvent( t, d )
        call TriggerAddAction(t, function DiamondDialogClick)
        set d = null
        set t = null
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        进入宝石区域
    */
    function EnterDiamond takes nothing returns nothing
        if ((GetItemTypeId(GetSoldItem()) == 'rspd')) then
            call CreateDiamondDialog(GetBuyingUnit())
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

        //开始刷宝石
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
        call TriggerAddCondition(t, Condition(function TBuyDiamondStartCon))
        call TriggerAddAction(t, function TBuyDiamondStartAct)

        //宝石怪物掉落
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
        call TriggerAddCondition(t, Condition(function TDropDiamondCon))
        call TriggerAddAction(t, function TDropDiamondAct)

        //宝石区离开事件
        set t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct________8 )
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion1Act)
        set t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Diamond2 )
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion2Act)
        set t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Diamond3 )
        call TriggerAddCondition(t, Condition(function TLeaveDiamondRegionCon))
        call TriggerAddAction(t, function TLeaveDiamondRegion3Act)

        set t = null
	endfunction

endlibrary
