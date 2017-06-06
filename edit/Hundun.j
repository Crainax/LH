//! import "LHBase.j"

library_once Hundun  requires LHBase 


//---------------------------------------------------------------------------------------------------
	/*
	    倚天的加木头
	*/
	function Yitian takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
				if (UnitHasItemOfTypeBJ(udg_H[i],'I04L') or UnitHasItemOfTypeBJ(udg_H[i],'I04M')) then
				    call AdjustPlayerStateBJ( 600*CModeH(1,2), ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
				    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(udg_H[i]), GetUnitY(udg_H[i]) ))
				elseif (UnitHasItemOfTypeBJ(udg_H[i],'rat6')) then
				    call AdjustPlayerStateBJ( 500*CModeH(1,2), ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
				    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(udg_H[i]), GetUnitY(udg_H[i]) ))
				endif
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    合成皎月
	*/
	function CombineJiaoyue takes unit u returns nothing
		if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'rat6')) == 'rat6') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'ratc')) == 'ratc') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'mcou')) == 'mcou') and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'rat6')) ) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'mcou')) ) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'ratc')) )) then
            call PolledWait(0.01)
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'ratc') )
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'mcou') )
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'rat6') )
            call UnitAddItemById(u, 'I04L')
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			return
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    商店合成混沌夜之哀伤
	*/
	function CombineHundunyeai takes nothing returns nothing
		local integer i 
		if ((GetItemTypeId(GetSoldItem()) == 'I04Q')) then
			
		    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L')) == 'I04L') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel')) == 'stel') and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L')) == true)) then
		    	set i = GetItemCharges(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel'))
		        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L') )
		        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel') )
		        call UnitAddItemByIdSwapped( 'I04M', GetBuyingUnit() )
		        call SetItemCharges(GetLastCreatedItem(),i)
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
		        return
		    else
		        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r你的材料不足." )
		        call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
		        return
		    endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    进入混沌之区
	*/
	function EnterHundun takes nothing returns nothing
		local real x
		local real y
		if ((GetItemTypeId(GetSoldItem()) == 'I04T')) then
			set x = GetRectCenterX(gg_rct_Hundun)
			set y = GetRectCenterY(gg_rct_Hundun)

	        call SetUnitX(GetBuyingUnit(),x)
	        call SetUnitY(GetBuyingUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	    endif
	endfunction
endlibrary