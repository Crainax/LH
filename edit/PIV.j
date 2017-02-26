//! import "LHBase.j"
/////! import "Beast.j"
library_once PIV initializer InitPIV requires LHBase,Beast
	globals
		boolean array sPIV
		private boolean isFirst = true
		private hashtable PIVTable = InitHashtable()
		key kPIV
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
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitPIVHero takes unit u returns nothing
		if not (IsPIV(GetOwningPlayer(u))) then
			return
		endif

        call UnitAddItemById(u, 'IXU1')
        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
		call SetPlayerState(GetOwningPlayer(u),PLAYER_STATE_RESOURCE_GOLD,5000)
		call Discolor(u)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    VIP验证
	*/
	function CertificatePIV takes player p,string vCode returns nothing

		if (IsPIV(p)) then
			return
		endif

		if (udg_H[GetConvertedPlayerId(p)] != null) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
			return
		endif

		if (vCode == null and TableHas(GetPIVCode(GetPlayerName(p)))) then
			call InitPlayerPIV(p)
			return
		endif

		if (I2S(GetPIVCode(GetPlayerName(p))) == vCode) then
			call InitPlayerPIV(p)
			return
		endif

		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！")
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
	private function InitPIV takes nothing returns nothing
		local integer i = 1
		local trigger t = CreateTrigger()

		//PIV名单
		call SaveBoolean(PIVTable,kPIV,560584534,true)
		call SaveBoolean(PIVTable,kPIV,632066098,true)
		call SaveBoolean(PIVTable,kPIV,679792348,true)

		//call SaveBoolean(PIVTable,kPIV,560584534,true)
		//call SaveBoolean(PIVTable,kPIV,632066098,true)
		//call SaveBoolean(PIVTable,kPIV,679792348,true)
		//test
		call SaveBoolean(PIVTable,kPIV,238541434,true)


		loop
			exitwhen i > 6

			set sPIV[i] = false
			call CertificatePIV(ConvertedPlayer(i),null)
			set i = i +1
		endloop

		call TriggerRegisterPlayerChatEvent( t, Player(0), "#", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "#", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "#", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "#", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "#", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "#", false )
	    call TriggerAddAction(t, function ChatPIV)
	    set t = null
	endfunction

endlibrary