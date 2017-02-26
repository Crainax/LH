
//! import "LHBase.j"
//! import "PIV.j"
/*
    游戏指令
    -kill自杀
*/
library_once ChatCommand initializer InitChatCommand requires LHBase,PIV
	
	globals
		private item array IBox
		private integer IBoxCount = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    合成宝箱
	*/

	//! textmacro CombineBox takes Level,Itemtype,NewItem
		function CombineBox$Level$ takes nothing returns nothing

		    if ((GetItemTypeId(GetEnumItem()) == '$Itemtype$')) then
				if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) !=  LoadInteger(YDHT,GetHandleId(GetEnumItem()),0xA75AD423))) then
					return
				endif
		    	set IBox[IBoxCount] = GetEnumItem()
		    	set IBoxCount = IBoxCount + 1
		    endif

		    if (IBoxCount >= 2) then
		    	call RemoveItem(IBox[0])
		    	call RemoveItem(IBox[1])
		    	call RemoveItem(IBox[2])
		    	call CreateItem('$NewItem$',GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]),GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set IBox[0] = null
		    	set IBox[1] = null
		    	set IBox[2] = null
		    	set IBoxCount = 0
		    endif
		endfunction
	//! endtextmacro

	//! runtextmacro CombineBox("E","hlst","wshs")
	//! runtextmacro CombineBox("D","wshs","wild")
	//! runtextmacro CombineBox("C","wild","totw")
	//! runtextmacro CombineBox("B","totw","sror")
	//! runtextmacro CombineBox("A","sror","fgrg")

	function CombineBox takes nothing returns nothing
		if not(IsPIV(GetTriggerPlayer())) then
			call DisplayTextToPlayer( GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r需要成为永久赞助才能使用此指令!" )
			return
		endif

    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxE )
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxD )
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxC )
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxB )
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxA )
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetUnitName(udg_H[GetConvertedPlayerId(GetTriggerPlayer())])+"使用指令-hc成功将地上的所有宝箱合成为更高级的宝箱.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    聊天信息"-"指令
	*/
	function ChatCommandAct takes nothing returns nothing
		local string str = GetEventPlayerChatString()
		local unit u = udg_H[GetConvertedPlayerId(GetTriggerPlayer())]
		//自杀
		if (str == "-kill") then
			call KillSelf(u)
		    call DisplayTextToPlayer( GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r自杀成功!" )
		    return
		elseif (str == "-hc") then
			call CombineBox()
		endif
		set str = null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitChatCommand takes nothing returns nothing
		
	    local trigger t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( t, Player(0), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "-", false )
	    call TriggerAddAction(t, function ChatCommandAct)
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

endlibrary
