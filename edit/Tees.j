

dialog
DialogAddButton


function Trig_____________abActions takes nothing returns nothing
    local integer ydul_g
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[1])) then
        set udg_Nandu = 1
        call ForForce( GetPlayersAll(), function Trig_____________abFunc001Func002A )
        set udg_Nandu_JJJ = 1
        set udg_IWang = 2
    else
    endif

    call DestroyTrigger(GetTriggeringTrigger())
endfunction
//===========================================================================
function InitTrig_____________ab takes nothing returns nothing
    set t = CreateTrigger()
    call TriggerRegisterDialogEvent( t, udg_X_Nandu )
    call TriggerAddAction(t, function Trig_____________abActions)
endfunction

globals
    PIVTable

    key kPIVStr
    key kPIVPlayer
    key kPIVPointer
endglobals

private function PIVDialogClick takes nothing returns nothing
    local dialog d = GetClickedDialogBJ()
    local integer i = 0
    local string s = LoadStr(PIVTable,GetHandleId(d),kPIVStr)
    local player p = LoadPlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer)
    //验证
    if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable,GetHandleId(d),10)) then
        call CertificatePIV(p,s)
        call FlushChildHashtable(PIVTable,GetHandleId(d))
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set s = null
        set p = null
        call DestroyTrigger(GetTriggeringTrigger())
        return
    endif

    //输入
    loop
        exitwhen i > 9
        if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable,GetHandleId(d),i)) then
            set s = s + I2S(i)
            call SaveStr(PIVTable,GetHandleId(d),kPIVStr,s+I2S(i))
            call DialogSetMessage( d, "激活码:"+s )
            call DialogDisplay( p, d, true )
            exitwhen true
        endif
        set i = i +1
    endloop
    set d = null
    set s = null
    set p = null
endfunction

function CreatePIVDialog takes player p returns nothing
    local trigger t = CreateTrigger()
    local dialog d = DialogCreate()
    call DialogSetMessage( d, "请输入第1位激活码" )
    call SaveButtonHandle(PIVTable,GetHandleId(d),0,DialogAddButton( d, "0",'0'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),1,DialogAddButton( d, "1",'1'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),2,DialogAddButton( d, "2",'2'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),3,DialogAddButton( d, "3",'3'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),4,DialogAddButton( d, "4",'4'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),5,DialogAddButton( d, "5",'5'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),6,DialogAddButton( d, "6",'6'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),7,DialogAddButton( d, "7",'7'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),8,DialogAddButton( d, "8",'8'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),9,DialogAddButton( d, "9",'9'))
    call SaveButtonHandle(PIVTable,GetHandleId(d),10,DialogAddButton( d, "输入完毕|cffff6800(Esc)|r",512))
    call SaveStr(PIVTable,GetHandleId(d),kPIVStr,"")
    call SavePlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer,p)
    call SaveInteger(PIVTable,GetHandleId(d),kPIVPointer,1)
    call DialogDisplay( p, d, true )
    call TriggerRegisterDialogEvent( t, d )
    call TriggerAddAction(t, function PIVDialogClick)
    set d = null
    set t = null
endfunction

