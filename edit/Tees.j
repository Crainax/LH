
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

'clsd'
'oli2'
'rump'
'nspi'
'arsc'
'rde0'
'sbok'
'rugt'
'shdt'
'envl'