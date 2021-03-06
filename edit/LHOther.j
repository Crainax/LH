//! import "LHBase.j"
//! import "Diffculty.j"

library_once LHOther initializer InitLHOther requires LHBase,Diffculty
	
	globals
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    平分金钱
	*/
	function PingfenMoney takes player p returns nothing
		local integer i = 1
		local integer count = 0
		local integer lumber = 0
		local integer gold = 0
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and (ConvertedPlayer(i) != p)) then
				set count = count + 1
			endif
			set i = i +1
		endloop
		if (count != 0) then
			set lumber = GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) / count
			set gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) / count
			call AdjustPlayerStateBJ( -1000000, p, PLAYER_STATE_RESOURCE_LUMBER )
			call AdjustPlayerStateBJ( -1000000, p, PLAYER_STATE_RESOURCE_GOLD )
			set i = 1
			loop
				exitwhen i > 6
				if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and (ConvertedPlayer(i) != p)) then
					call AdjustPlayerStateBJ( lumber, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
					call AdjustPlayerStateBJ( gold, ConvertedPlayer(i), PLAYER_STATE_RESOURCE_GOLD )
				endif
				set i = i +1
			endloop
		endif
	endfunction

	function DropAllItem takes unit u returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (not(IsMinganItem(UnitItemInSlotBJ(u,i)))) then
				call SetItemPosition(UnitItemInSlotBJ(u,i),GetRectRandomX(gg_rct______________100),GetRectRandomY(gg_rct______________100))
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    物品叠加
	*/
	function TOverlayItemAct takes nothing returns boolean
	    return ((GetItemType(GetManipulatedItem()) == ITEM_TYPE_CHARGED))
	endfunction

	function TOverlayItemCon takes nothing returns nothing
	    local integer i = 1
	    loop
	        exitwhen i > 6
	        if ((GetManipulatedItem() != UnitItemInSlotBJ(GetTriggerUnit(), i)) and (GetItemTypeId(GetManipulatedItem()) == GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), i)))) then
	            call SetItemCharges( UnitItemInSlotBJ(GetTriggerUnit(), i), ( GetItemCharges(UnitItemInSlotBJ(GetTriggerUnit(), i)) + GetItemCharges(GetManipulatedItem()) ) )
	            call RemoveItem( GetManipulatedItem() )
	        else
	        endif
	        set i = i + 1
	    endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    不能相互攻击
	*/
	private function TAttackAllyCon takes nothing returns boolean
		return ((GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_USER) and (GetAttackedUnitBJ() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]) and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetAttackedUnitBJ())))
	endfunction
	
	private function TAttackAllyAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(),"stop")
			if (GetUnitTypeId(GetAttacker()) != 'h028') then
				call DisplayTimedTextToForce( GetPlayersAll(), 20, "|cFFFF66CC【提示】|r有人企图攻击自己的英雄队友，被伟大的Crainax制止了。" )
			endif
	endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取经验
    */
    function TGetExCon takes nothing returns boolean
        return ((IsPlayerEnemy(GetOwningPlayer(GetDyingUnit()), Player(0)) == true) and (GetOwningPlayer(GetKillingUnitBJ()) != Player(11)) and (GetOwningPlayer(GetKillingUnitBJ()) != Player(10)) and (IsUnitIllusionBJ(GetDyingUnit()) != true) and (GetOwningPlayer(GetKillingUnitBJ()) != Player(PLAYER_NEUTRAL_AGGRESSIVE)) and (GetUnitPointValue(GetDyingUnit()) != 0) and (GetUnitPointValue(GetDyingUnit()) != 123) and (GetPlayerController(GetOwningPlayer(GetDyingUnit())) != MAP_CONTROL_USER))
    endfunction

    function TGetExAct takes nothing returns nothing
       local integer i = 1
       local integer basicEx = 0
       loop
            exitwhen i > 6
            if (udg_H[i] != null and (udg_H[i] != xinglong or BJuexing1[i] or GetOwningPlayer(GetKillingUnitBJ()) == GetOwningPlayer(xinglong))) then
	            set basicEx = GetWanjieInt(R2I(I2R(GetUnitPointValue(GetDyingUnit())) * udg_I_Jingyan[i]),0.75)
	            call AddHeroXPSwapped( CModeH(basicEx,basicEx*2), udg_H[i], true )
            endif
            set i = i + 1
       endloop
    endfunction

//---------------------------------------------------------------------------------------------------

	private function InitLHOther takes nothing returns nothing
		//物品叠加
	    local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
	    call TriggerAddCondition(t, Condition(function TOverlayItemAct))
	    call TriggerAddAction(t, function TOverlayItemCon)

	    //队友将不能互相攻击
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function TAttackAllyCon))
		call TriggerAddAction(t, function TAttackAllyAct)

        //获取经验
		set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
        call TriggerAddCondition(t, Condition(function TGetExCon))
        call TriggerAddAction(t, function TGetExAct)

	    set t = null
	endfunction

endlibrary

