
//! import "LHBase.j"
//! import "item.j"

library_once Purgatory initializer InitPurgatory requires LHBase,ItemBase
	
	globals
		// body...
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    许愿之蛋
	*/
	private function XuyuanClick takes nothing returns nothing
        local dialog d = GetClickedDialogBJ()
        local unit u = udg_H[GetConvertedPlayerId(LoadPlayerHandle(LHTable,GetHandleId(d),4))]

        call RemoveItem(LoadItemHandle(LHTable,GetHandleId(d),5))

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	//回归1级，然后爆炸
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
            call SetUnitX(u,GetRectCenterX(gg_rct_Diamond3))
            call SetUnitY(u,GetRectCenterY(gg_rct_Diamond3))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct_Diamond3),GetRectCenterY(gg_rct_Diamond3),0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct_Diamond3), GetRectCenterY(gg_rct_Diamond3)))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),3)) then
            call SetUnitX(u,GetRectCenterX(gg_rct________8))
            call SetUnitY(u,GetRectCenterY(gg_rct________8))
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),GetRectCenterX(gg_rct________8),GetRectCenterY(gg_rct________8),0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetRectCenterX(gg_rct________8), GetRectCenterY(gg_rct________8)))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
        call DialogDisplay( p, d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set u = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction	

	function Xuyuan takes player p,item i returns nothing
        local trigger t  = CreateTrigger()
        local dialog d = DialogCreate()
        call DialogSetMessage( d, "选择你想要的愿望" )
        call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "等级归0，属性不变"))
        call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "属性立马提高8%"))
        call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, "提高20级"))
        call SavePlayerHandle(LHTable,GetHandleId(d),4,p)
        call SaveItemHandle(LHTable,GetHandleId(d),5,i)
        call DialogDisplay( p, d, true )
        call TriggerRegisterDialogEvent( t, d )
        call TriggerAddAction(t, function DiamondDialogClick)
        set d = null
        set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼狱90层以上怪物的设置
	*/
	function SetPurgatory90UpUnit takes nothing returns nothing
		if ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] >= 92)) then
			call UnitAddItemByIdSwapped(GetRandomPotion(), udg_Unit)
			call DisplayTextToPlayer(GetOwningPlayer(udg_Unit), 0., 0., "|cFFFF6699【炼狱】|r额外奖励"+  GetPlayerName(GetOwningPlayer(udg_Unit)) + GetItemName(GetLastCreatedItem())+".")
		endif
	    if ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 91)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'Nfir'
	        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF6699【炼狱】|r额外奖励" + ( GetPlayerName(GetOwningPlayer(udg_Unit)) + "|cffffcc001个人口，人口可以用来抓宠物。" ) ) )
	        call SetPlayerStateBJ( GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP) + 1 ) )
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 92)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00D'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 93)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00E'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 94)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00F'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 95)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00G'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 96)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00J'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 97)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00K'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 98)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00N'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 99)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00O'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 100)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00R'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 101)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00S'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 102)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00V'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 103)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00X'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 104)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00Z'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 105)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N010'
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼狱掉落的物品
	*/
	function TPurgatoryItemCon takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetDyingUnit()) != true) and (/*
	    */  (GetUnitTypeId(GetDyingUnit()) == 'nfra')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwld')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwzd')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'ndqp')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nsc2')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nwns')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'nsoc')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'npfl')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'ninm')/*
	    */))
	endfunction

	function TPurgatoryItemAct takes nothing returns nothing
		local integer dyingUnitId = GetUnitTypeId(GetDyingUnit())
		//! textmacro CreatePurgatoryItem takes UnitType,ItemType	
		if (dyingUnitId == '$UnitType$') then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()) ))
			call CreateItem('$ItemType$',GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()))
			return
		endif
		//! endtextmacro

		//! runtextmacro CreatePurgatoryItem("nfra","IB00")
		//! runtextmacro CreatePurgatoryItem("nwld","IMJ1")
		//! runtextmacro CreatePurgatoryItem("nwzd","IMJ2")
		//! runtextmacro CreatePurgatoryItem("ndqp","IMJ3")
		//! runtextmacro CreatePurgatoryItem("nsc2","IMJ4")
		//! runtextmacro CreatePurgatoryItem("nwns","IMJ5")
		//! runtextmacro CreatePurgatoryItem("nsoc","IMJ6")
		//! runtextmacro CreatePurgatoryItem("npfl","IMJ7")
		//! runtextmacro CreatePurgatoryItem("ninm","IMJ8")
	endfunction
//---------------------------------------------------------------------------------------------------


	private function InitPurgatory takes nothing returns nothing
		local trigger t = CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function TPurgatoryItemCon))
	    call TriggerAddAction(t, function TPurgatoryItemAct)

	    set t = null
	endfunction

endlibrary


