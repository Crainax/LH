
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄寒殇的技能
*/
library_once Hanshang requires SpellBase,Printer,Attr 
	
	globals

		private boolean IsLianhuan = false
		/*
		    技能
		*/
		private trigger TSpellHanshang = null

		private trigger TSpellHanshang2 = null

		private trigger TSpellHanshang3 = null

		private trigger TSpellHanshang4 = null
		/*
		    第三个技能的增益与减伤
		*/
		private real RLianjin = 0
		private real RLianjin2 = 0
		key kLianhuanBoomX
		key kLianhuanBoomY
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    鬼斧神工
	*/
	private function Guifushengong takes nothing returns nothing
	if
    return ((GetSpellAbilityId() == 'Aens') and              (IsCanCopy(GetSpellTargetItem())))


	local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r|cffff00ff鬼斧神工|r|cFFFF66CC】|r成功复制出了" + ( GetItemName(GetSpellTargetItem()) + "。" ) ) )
    call UnitAddItemByIdSwapped( GetItemTypeId(GetSpellTargetItem()), GetTriggerUnit() )
    if ((GetItemType(GetSpellTargetItem()) != ITEM_TYPE_CHARGED)) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, GetLastCreatedItem())
        call SetItemPawnable( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false )
        call PolledWait(29.00)
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
        call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "TRIGSTR_5827" )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    死神炸弹
	*/
	function SiShenZhaDan takes real x,real y,real damageRate,integer abilityID returns nothing
		local real n
		local real damage = GetDamageAgi(hanshang) * damageRate * 1.66
		local real x1 = GetUnitX(hanshang)
	    local real y1 = GetUnitY(hanshang)
	    local real facing = Atan2(y-y1,x-x1)
	    local real distance = SquareRoot((y-y1)*(y-y1)+(x-x1)*(x-x1))
	    set n = RMaxBJ( 0.1 , 1 - distance / 24000)
	    set damage = damage * n
	    if (abilityID != 0) then
	    	call PrintSpellAdd(GetOwningPlayer(hanshang),GetAbilityName(abilityID),damage,",距离伤害衰减"+I2S(100 - R2I(n*100))+"%.")
	    endif
	    call DamageAreaMirror(hanshang,x,y,450,damage)
	    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", x, y ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    吃装备
	*/
	private function Wuqiongtunshi takes nothing returns nothing
		local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if ((YDTriggerHas(integer, YDTriggerAny2I(item, GetSpellTargetItem()), 0xA75AD423) == true) and (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != YDTriggerGetEx(integer, YDTriggerAny2I(item, GetSpellTargetItem()), 0xA75AD423))) then
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【消息】|r这件东西属于" + ( GetUnitName(udg_H[YDTriggerGetEx(integer, YDTriggerAny2I(item, GetSpellTargetItem()), 0xA75AD423)]) + ",不可吞噬。" ) ) )
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        return
    else
    endif
    set udg_Unit = GetTriggerUnit()
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(udg_Unit))
    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F)) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332, GetSpellTargetItem())
    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) + "|cFFFF66CC】|r吞噬成功，增加的属性值如以下所示：" ) ) )
    if ((IsItemPawnable(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332)) == true)) then
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5BAE281D) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5BAE281D) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r全属性|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
            call ModifyHeroStat( bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
            call ModifyHeroStat( bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x8D205575) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x8D205575) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r力量|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x384C9D86) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x384C9D86) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r敏捷|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x1B5C932E) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x1B5C932E) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r智力|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5039AFFB) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5039AFFB) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r攻击|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call YDTriggerSetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0x5039AFFB, ( YDTriggerGetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0x5039AFFB) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ))
            call TriggerExecute( gg_trg_____________800W )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFCD961C9) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFCD961C9) * 2 ) / 5 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|rHP上限|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call TriggerExecute( gg_trg_HP_____________________u )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x06C64278) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x06C64278) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r力量加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ( udg_I_Xianglian[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x6FFF4132) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x6FFF4132) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r敏捷加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 6 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 6 )] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xC0C6918C) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xC0C6918C) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r智力加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 12 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 12 )] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFAA305CD) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFAA305CD) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|rHP上限加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 18 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 18 )] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x4C0507D9) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x4C0507D9) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r攻击加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 24 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 24 )] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
        if ((YDTriggerHas(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x0B6FB20F) == true)) then
            call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616, ( YDTriggerGetEx(real, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x0B6FB20F) / 5.00 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r防御加成|cFFFF66CC】|r+" + ( I2S(R2I(( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) * 100.00 ))) + "%。" ) ) )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 30 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 30 )] + YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xDD66C616) )
        else
        endif
    else
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5BAE281D) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5BAE281D) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r全属性|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
            call ModifyHeroStat( bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
            call ModifyHeroStat( bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x8D205575) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x8D205575) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r力量|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x384C9D86) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x384C9D86) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r敏捷|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x1B5C932E) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x1B5C932E) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r智力|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call ModifyHeroStat( bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5039AFFB) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0x5039AFFB) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r攻击|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call YDTriggerSetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0x5039AFFB, ( YDTriggerGetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0x5039AFFB) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ))
            call TriggerExecute( gg_trg_____________800W )
        else
        endif
        if ((YDTriggerHas(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFCD961C9) == true)) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerAny2I(itemcode, GetItemTypeId(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332))), 0xFCD961C9) / 20 ))
            call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|rHP上限|cFFFF66CC】|r+" + I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) ) )
            call YDTriggerSetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0xFCD961C9, ( YDTriggerGetEx(integer, YDTriggerAny2I(unit, GetTriggerUnit()), 0xFCD961C9) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ))
            call TriggerExecute( gg_trg_HP_____________________u )
        else
        endif
    endif
    call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x1769D332) )
    call TriggerExecute( gg_trg_D7 )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    无穷吞噬
	*/
	private function TSpellHanshang2Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == hanshang) and ( IsSecondSpellOK(hanshang) == true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, hanshang) > 200.00) and GetUnitAbilityLevel(hanshang,'AHbn') >= 1)
	endfunction

	private function TSpellHanshang2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call SiShenZhaDan(GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0.33,'AHbn')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼金之术
	*/
	private function LianJinZhiShuTimer takes nothing returns nothing
		local integer lumber = GetPlayerState(GetOwningPlayer(hanshang), PLAYER_STATE_RESOURCE_LUMBER)
		local integer update = 0
		local real Rupdate
		if (lumber > 100000) then
			set update = 90
			set RLianjin2 = 0.72
		elseif (lumber > 10000) then
			set update = 75
			set RLianjin2 = 0.6
		elseif (lumber > 1000) then
			set update = 60
			set RLianjin2 = 0.48
		elseif (lumber > 100) then
			set update = 45
			set RLianjin2 = 0.36
		elseif (lumber > 10) then
			set update = 30
			set RLianjin2 = 0.24
		elseif (lumber > 1) then
			set update = 15
			set RLianjin2 = 0.12
		endif
		set Rupdate = I2R(update)/100
		if (RLianjin != Rupdate) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(hanshang), GetUnitY(hanshang) ))
			call PrintSpellContent(GetOwningPlayer(hanshang),GetAbilityName('A0BN'),"额外技能伤害加成"+I2S(update)+"%.")
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),Rupdate - RLianjin)
			set RLianjin = Rupdate
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    连环炸弹
	*/
	
	private function LianhuanBoomTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local real x = LoadReal(spellTable,id,kLianhuanBoomX)
		local real y = LoadReal(spellTable,id,kLianhuanBoomY)
		if ((GetUnitState( hanshang , UNIT_STATE_MANA) >= 200) and (IsLianhuan == true)) then
			call SetUnitManaBJ(hanshang,GetUnitState( hanshang , UNIT_STATE_MANA)- 200)
			call SiShenZhaDan(hanshang,x,y,2,0)
		else
        	call IssueImmediateOrder( hanshang, "stop" )
        	set IsLianhuan = false
			call PrintSpellContent(GetOwningPlayer(hanshang),GetAbilityName('A0F0'),"施法结束.")
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable,id)
		endif
		set t = null 
	endfunction
	
	private function LianhuanBoom takes nothing returns nothing
		local timer t = CreateTimer()
		set IsLianhuan = true
		call EnableTrigger(TSpellHanshang4)
		call SaveReal(spellTable,GetHandleId(t),kLianhuanBoomX,GetSpellTargetX())
		call SaveReal(spellTable,GetHandleId(t),kLianhuanBoomY,GetSpellTargetY())
		call TimerStart(t,1,true,function LianhuanBoomTimer)
		call PrintSpellName(GetOwningPlayer(hanshang),GetAbilityName('A0F0'))
		set t = null
	endfunction

	/*
	    判断还在施法
	*/
	private function TSpellHanshang4Con takes nothing returns boolean
	    return ((GetSpellAbilityId() == 'A0F0'))
	endfunction

	private function TSpellHanshang4Act takes nothing returns nothing
		set IsLianhuan = false
		call DisableTrigger(TSpellHanshang4)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄使用技能
	*/
	private function TSpellHanshangCon takes nothing returns boolean
	    return (GetSpellAbilityUnit() == hanshang)
	endfunction

	private function TSpellHanshangAct takes nothing returns nothing
		if ((GetSpellAbilityId() == 'AOs2')) then
			call SiShenZhaDan(hanshang,GetSpellTargetX(),GetSpellTargetY(),1,GetSpellAbilityId())
		elseif ((GetSpellAbilityId() == 'A0F0')) then
			call LianhuanBoom()
		//鬼斧神工
		elseif ((GetSpellAbilityId() == 'A0F0')) then
			call LianhuanBoom()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寒殇金币减少受到的伤害
	*/
	private function TSpellHanshang3Con takes nothing returns boolean
		return IsThirdSpellOK(hanshang) == true and GetUnitAbilityLevel(hanshang,'A0BN') == 1 and GetEventDamage() > 100 and GetTriggerUnit() == hanshang and IsUnitAliveBJ(hanshang)
	endfunction
	
	private function TSpellHanshang3Act takes nothing returns nothing
		call SetUnitLifeBJ(hanshang,GetUnitState(hanshang,UNIT_STATE_LIFE)+GetEventDamage() * RLianjin2)
		call BJDebugMsg("炼金测试")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillHanshangI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == hanshang) then
			if (whichSpell == 3 and IsThirdSpellOK(hanshang) == true and GetUnitAbilityLevel(hanshang,'A0BN') == 1) then
				//技能3初始化
		        call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),0.25)
				set i = 1
       			loop
       				exitwhen i > 6
       				
		            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
		                call AddMoneyPercent(i,0.25)
		            endif

       				set i = i +1
       			endloop

       			//炼金之术
       			call TimerStart(CreateTimer(),3,true,function LianJinZhiShuTimer)
       		endif
		endif
	endfunction

	function LearnSkillHanshang takes unit learner,integer learnSpellID returns nothing
		if (learner == hanshang) then
			if (learnSpellID == 'AOs2') then
				call LearnSkillHanshangI(learner,1)
			elseif (learnSpellID == 'AHbn') then
				call LearnSkillHanshangI(learner,2)
			elseif (learnSpellID == 'A0BN') then
				call LearnSkillHanshangI(learner,3)
			elseif (learnSpellID == 'A0F0') then
				call LearnSkillHanshangI(learner,4)
			elseif (learnSpellID == 'AUfa') then
				call LearnSkillHanshangI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化寒殇的技能
	*/
	function InitHanshang takes unit u returns nothing
		set hanshang = u

		//1
	    set TSpellHanshang = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	    call TriggerAddCondition(TSpellHanshang, Condition(function TSpellHanshangCon))
	    call TriggerAddAction(TSpellHanshang, function TSpellHanshangAct)

	    //2
	    set TSpellHanshang2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellHanshang2, Condition(function TSpellHanshang2Con))
	    call TriggerAddAction(TSpellHanshang2, function TSpellHanshang2Act)

	    //魔能等级低于5则减少受到的50%伤害
	    set TSpellHanshang3 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHanshang3,hanshang,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(TSpellHanshang3,Condition(function TSpellHanshang3Con))
	    call TriggerAddAction(TSpellHanshang3,function TSpellHanshang3Act)

	    //4
	    set TSpellHanshang4 = CreateTrigger()
	    call DisableTrigger(TSpellHanshang4)
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_ENDCAST )
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_FINISH )
	    call TriggerAddCondition(TSpellHanshang4, Condition(function TSpellHanshang4Con))
	    call TriggerAddAction(TSpellHanshang4, function TSpellHanshang4Act)

		call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),0.3)
	endfunction
endlibrary


