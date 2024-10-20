#include  "edit/LHBase.j"
#include  "edit/Spin.j"

library_once Bajue  requires LHBase,Spin

	globals
		private real baseX
		private real baseY
		private real tempX
		private real tempY
		private boolean BFengshuang = false
		private boolean BFengshuangStart = false
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤挑战初始化
	*/
	function InitFengshuang takes nothing returns nothing
		set baseX = 0.
		set baseY = 0.
		set tempX = 0.
		set tempY = 0.
		set BFengshuang = true
	endfunction

	//开始
	function StartFengshuang takes nothing returns nothing
		if not(BFengshuang) then
			return
		endif

		if (GetBajue1Spin(GetOwningPlayer(bajue))) then
			return
		endif

		if (GetTriggerUnit() == bajue) then
			set baseX = GetUnitX(bajue)
			set baseY = GetUnitY(bajue)
			set tempX = GetUnitX(bajue)
			set tempY = GetUnitY(bajue)
			set BFengshuangStart = true
		endif
	endfunction

	//结束判定
	function EndFengshuang takes nothing returns nothing
		local real distance = 0.

		if not(BFengshuang) then
			return
		endif

		if not(BFengshuangStart) then
			return
		endif

		set distance = GetDistance(baseX,baseY,tempX,tempY)
		call BJDebugMsg("|cFFFF66CC【消息】|r本次技能跳跃距离为"+R2S(distance)+".")
		if (distance > 8000.) then
			debug call SetBajueSpinOK(GetOwningPlayer(bajue))
		endif

		set baseX = 0.
		set baseY = 0.
		set tempX = 0.
		set tempY = 0.
		set BFengshuangStart = false

	endfunction

	//中途检测
	function JudgeFengshuang takes nothing returns nothing
		if not(BFengshuang) then
			return
		endif

		if not(BFengshuangStart) then
			return
		endif

		if (GetDistance(GetUnitX(bajue),GetUnitY(bajue),tempX,tempY) < 1100) then
			set tempX = GetUnitX(bajue)
			set tempY = GetUnitY(bajue)
		else
			call EndFengshuang()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤
	*/
	function IsBajueSpin takes nothing returns boolean
		return GetUnitTypeId(bajue) == 'N01W'
	endfunction

	function GetBajueJiaType takes nothing returns integer
		return I3(IsBajueSpin(),'N01X','N018')
	endfunction

	private function InitBajueSpin takes unit u returns unit
		if (IsBajueSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'N01W',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Nbbc_0235 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化霸绝
	*/
	function InitBajue takes unit u returns nothing
		set bajue = InitBajueSpin(u)
	endfunction
endlibrary