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