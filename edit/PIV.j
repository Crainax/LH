//! import "LHBase.j"
/////! import "Beast.j"
library_once PIV initializer InitPIV requires LHBase,Beast
	globals
		boolean array sPIV
		private boolean isFirst = true
		private hashtable PIVTable = InitHashtable()
		key kPIV
	    key kPIVStr
	    key kPIVPlayer
	    key kPIVPointer

	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    列表是否含有名单
	*/
	private function TableHas takes integer i returns boolean
		return HaveSavedBoolean(PIVTable,kPIV,i)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    是否是VIP
	*/
	function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction

//---------------------------------------------------------------------------------------------------
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
//---------------------------------------------------------------------------------------------------
	/*
	    初始化玩家
	*/
	private function InitPlayerPIV takes player p returns nothing
		if (isFirst) then
			set isFirst = false
			set udg_I_Er_diansi[1] = 3
		endif

		set sPIV[GetConvertedPlayerId(p)] = true 
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitPIVHero takes unit u returns nothing
		if (IsPIV(GetOwningPlayer(u))) then
	        call SaveInteger(YDHT,GetHandleId(UnitAddItemByIdSwapped('IXU1', u)),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,10000)
			call Discolor(u)
			return
		endif

		if (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 20) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,10000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 15) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,8000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 10) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,6000)
		elseif (DzAPI_Map_GetMapLevel(GetOwningPlayer(u)) >= 5) then
			call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,4000)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    VIP验证
	*/
	function CertificatePIV takes player p,string vCode returns nothing

		if (vCode == null and TableHas(GetPIVCode(GetPlayerName(p)))) then
			call InitPlayerPIV(p)
			return
		endif

		if (I2S(GetPIVCode(GetPlayerName(p))) == vCode) then
			call InitPlayerPIV(p)
			return
		endif

		if (vCode != null) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    判断是否有VIP
	*/
	function hasPIV takes nothing returns boolean
		local integer i = 1
		loop
			exitwhen i > 6
			if (IsPIV(ConvertedPlayer(i))) then
				return true
			endif
			set i = i +1
		endloop
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    VIP验证
	*/
    function ChatPIV takes nothing returns nothing
        local string chat = GetEventPlayerChatString()
        local string vCode = SubStringBJ(chat,2,StringLength(chat))
		call CertificatePIV(GetTriggerPlayer(),vCode)
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对话框输入验证码
	*/
	private function PIVDialogClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local integer i = 0
	    local string s = LoadStr(PIVTable,GetHandleId(d),kPIVStr)
	    local player p = LoadPlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer)
	    //验证
	    if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable,GetHandleId(d),10)) then
	        call CertificatePIV(p,s)
	        call FlushChildHashtable(PIVTable,GetHandleId(d))
        	call DialogDisplay( p, d, false )
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
	            call SaveStr(PIVTable,GetHandleId(d),kPIVStr,s)
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

	    call DialogSetMessage( d, "激活码:"+s )
        call DialogDisplay( p, d, true )
	    set d = null
	    set s = null
	    set p = null
	endfunction

	function CreatePIVDialog takes nothing returns nothing
	    local trigger t 
	    local dialog d

		if (IsPIV(GetTriggerPlayer())) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！")
			return
		endif

		if (udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
			return
		endif

	    set t = CreateTrigger()
	    set d = DialogCreate()
	    call DialogSetMessage( d, "请从第1位开始依次输入激活码" )
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
	    call SavePlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer,GetTriggerPlayer())
	    call SaveInteger(PIVTable,GetHandleId(d),kPIVPointer,1)
	    call DialogDisplay( GetTriggerPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function PIVDialogClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	function InitAllPIV takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call CertificatePIV(ConvertedPlayer(i),null)
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitPIV takes nothing returns nothing
		local integer i = 1
		local trigger t = CreateTrigger()

		loop
			exitwhen i > 6
			set sPIV[i] = false
			set i = i +1
		endloop

		call SaveBoolean(PIVTable,kPIV,560584534,true)
		call SaveBoolean(PIVTable,kPIV,632066098,true)
		call SaveBoolean(PIVTable,kPIV,679792348,true)
		call SaveBoolean(PIVTable,kPIV,244103987,true)
		call SaveBoolean(PIVTable,kPIV,1624950439,true)
		call SaveBoolean(PIVTable,kPIV,981252778,true)
		call SaveBoolean(PIVTable,kPIV,442300691,true)
		call SaveBoolean(PIVTable,kPIV,127836247,true)
		call SaveBoolean(PIVTable,kPIV,747551996,true)
		call SaveBoolean(PIVTable,kPIV,1549153604,true)
		call SaveBoolean(PIVTable,kPIV,243951516,true)
		call SaveBoolean(PIVTable,kPIV,472054031,true)
		call SaveBoolean(PIVTable,kPIV,156566316,true)
		call SaveBoolean(PIVTable,kPIV,805389327,true)

		//test
		//call SaveBoolean(PIVTable,kPIV,238541434,true)


		call TriggerRegisterPlayerChatEvent( t, Player(0), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "##", true )
	    call TriggerAddAction(t, function CreatePIVDialog)
	    set t = null
	endfunction

endlibrary