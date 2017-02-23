//! import "LHBase.j"
//! import "Beast.j"
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
		return StringHash(s)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化玩家
	*/
	private function InitPlayerPIV takes player p returns nothing
		if (isFirst) then
			set isFirst = false
			set fanghuzhao = 3
		endif

		set sPIV[GetConvertedPlayerId(p)] = true 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitPIVHero takes unit u returns nothing
        call UnitAddItemById(u, 'IXU1')
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

		if (vCode == null and TableHas(GetPIVCode(GetPlayerName(p)))) then
			call InitPlayerPIV(p)
			return
		endif

		if (GetPIVCode(GetPlayerName(p)) == Vcode) then
			call InitPlayerPIV(p)
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
	private function InitPIV takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6

			set sPIV[i] = false

			set i = i +1
		endloop

		//PIV名单
		call SaveBoolean(PIVTable,kPIV,"120322",true)
		call SaveBoolean(PIVTable,kPIV,"120322",true)
		call SaveBoolean(PIVTable,kPIV,"120322",true)
	endfunction

endlibrary