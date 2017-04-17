//! import "LHBase.j"
/*
    翅膀
*/
library_once Wing requires LHBase 
	
	globals
		key kWingDialog1
		key kWingDialog2
		key kWingDialog3
		key kWingDialog4
		key kWingDialog5
		key kWingDialog6
		key kWingUnit
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    翅膀点击进入
	*/
	private function WingDialogClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local unit u = LoadUnitHandle(itemTable,GetHandleId(d),kWingUnit)

	    //! textmacro WingClick takes Region

	        if (GetClickedButtonBJ() == LoadButtonHandle(itemTable,GetHandleId(d),kWingDialog$Region$)) then
	        	call SetUnitX(u,GetRectCenterX(gg_rct____$Region$))
	        	call SetUnitY(u,GetRectCenterY(gg_rct____$Region$))
		        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct____$Region$),GetRectCenterY(gg_rct____$Region$),0.2)
		        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct____$Region$), GetRectCenterY(gg_rct____$Region$)))
		        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	        endif
	    //! endtextmacro

	    //! runtextmacro WingClick("1")
	    //! runtextmacro WingClick("2")
	    //! runtextmacro WingClick("3")
	    //! runtextmacro WingClick("4")
	    //! runtextmacro WingClick("5")
	    //! runtextmacro WingClick("6")

        call FlushChildHashtable(itemTable,GetHandleId(d))
    	call DialogDisplay( GetOwningPlayer(u), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set u = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction

	function CreateWingDialog takes unit u returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

	    call DialogSetMessage( d, "请选择进入的翅膀区" )
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog1,DialogAddButton( d, "翅膀1区",'1'))
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog2,DialogAddButton( d, "翅膀2区",'2'))
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog3,DialogAddButton( d, "翅膀3区",'3'))
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog4,DialogAddButton( d, "翅膀4区",'4'))
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog5,DialogAddButton( d, "翅膀5区",'5'))
	    call SaveButtonHandle(itemTable,GetHandleId(d),kWingDialog6,DialogAddButton( d, "翅膀6区",'6'))
	    call SaveUnitHandle(itemTable,GetHandleId(d),kWingUnit,u)
	    call DialogDisplay( GetOwningPlayer(u), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function WingDialogClick)
	    set d = null
	    set t = null
	endfunction

endlibrary