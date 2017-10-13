
//! import "LHBase.j"
//! import "item.j"
//! import "ChallangerDZ.j"

library_once Purgatory initializer InitPurgatory requires LHBase,ItemBase,ChallangerDZ
	
//---------------------------------------------------------------------------------------------------
	/*
	    许愿之蛋
	*/
	private function XuyuanClick takes nothing returns nothing
        local dialog d = GetClickedDialogBJ()
        local player p = LoadPlayerHandle(LHTable,GetHandleId(d),4)
        local unit u = udg_H[GetConvertedPlayerId(p)]
        local integer int = 0
        local integer str = 0
        local integer agi = 0

        call RemoveItem(LoadItemHandle(LHTable,GetHandleId(d),5))

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	//回归100级，然后爆炸
        	set int = GetHeroInt(u,false)
        	set str = GetHeroStr(u,false)
        	set agi = GetHeroAgi(u,false)
		    call SetHeroLevelBJ( u, 100, false )
        	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你等级到了100级.")
	    	call CreateUnitEffect(GetOwningPlayer(u),'h01M',GetUnitX(u),GetUnitY(u),0)
	    	call SetHeroInt(u,int,false)
	    	call SetHeroAgi(u,agi,false)
	    	call SetHeroStr(u,str,false)
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
        	//立即获取8%的属性
        	call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.08)
        	call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.08)
        	call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.08)
	    	call CreateUnitEffect(GetOwningPlayer(u),'h01M',GetUnitX(u),GetUnitY(u),0)
        	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的获得了8%的全属性.")
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),3)) then
        	//立即提高20级
        	call SetHeroLevel(u,GetHeroLevel(u) + 50,true)
        	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的提高了50级.")
	    	call CreateUnitEffect(GetOwningPlayer(u),'h01M',GetUnitX(u),GetUnitY(u),0)
        endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
        call DialogDisplay( p, d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set u = null
        set p = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction	

	function Xuyuan takes player p returns nothing
        local trigger t  = CreateTrigger()
        local dialog d = DialogCreate()
        call DialogSetMessage( d, "选择你想要的愿望" )
        if ((udg_H[GetConvertedPlayerId(p)] != sichen and udg_H[GetConvertedPlayerId(p)] != xuanxue) or not IsKuanghuan()) then
        	call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, "提高50级"))
        endif
    	call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "等级到100，属性不变"))
        call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "属性立马提高8%"))
        call SavePlayerHandle(LHTable,GetHandleId(d),4,p)
        call DialogDisplay( p, d, true )
        call TriggerRegisterDialogEvent( t, d )
        call TriggerAddAction(t, function XuyuanClick)
        set d = null
        set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼狱90层以上怪物的设置
	*/
	function SetPurgatory90UpUnit takes nothing returns nothing
		if ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] >= 92) and (udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] != 106)) then
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
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 106)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N00Z'
	        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF6699【炼狱】|r额外奖励" + ( GetPlayerName(GetOwningPlayer(udg_Unit)) + "|cffffcc001个人口，人口可以用来抓宠物。" ) ) )
	        call SetPlayerStateBJ( GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(udg_Unit), PLAYER_STATE_RESOURCE_FOOD_CAP) + 1 ) )
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 107)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N011'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 108)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N012'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 109)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N013'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 110)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N014'
	    elseif ((udg_I_Lianyu[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] == 111)) then
	        set udg_Lianyu_Unit[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] = 'N015'
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
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'N014')/*
	    */ or (GetUnitTypeId(GetDyingUnit()) == 'N015')/*
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
		//! runtextmacro CreatePurgatoryItem("N014","IMJ8")
		//! runtextmacro CreatePurgatoryItem("N015","IMJ8")
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


