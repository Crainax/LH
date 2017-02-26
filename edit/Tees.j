    /*
        获取激活码
    */
    private function GetPIVCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 6
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,2,StringLength(result)))
    endfunction

    function ChatPIV takes nothing returns nothing
        //调整当前波数
        local string chat = GetEventPlayerChatString()
        local string vCode = SubStringBJ(chat,2,StringLength(chat))
        call BJDebugMsg(vCode+"的激活码是"+ I2S(GetPIVCode(vCode)))

    endfunction


    function InitChatCommand takes nothing returns nothing
        
        local trigger t = CreateTrigger()
        call TriggerRegisterPlayerChatEvent( t, Player(0), "#", false )
        call TriggerRegisterPlayerChatEvent( t, Player(1), "#", false )
        call TriggerRegisterPlayerChatEvent( t, Player(2), "#", false )
        call TriggerRegisterPlayerChatEvent( t, Player(3), "#", false )
        call TriggerRegisterPlayerChatEvent( t, Player(4), "#", false )
        call TriggerRegisterPlayerChatEvent( t, Player(5), "#", false )
        call TriggerAddAction(t, function ChatPIV)
        set t = null
    endfunction