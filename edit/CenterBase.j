//! import "LHBase.j"
/*
    基地有关,不能A队友
*/
library_once CenterBase initializer InitCenterBase requires LHBase 


//---------------------------------------------------------------------------------------------------
	/*
		A基地的处死
	*/	
	private function TAttackCenterBaseCon takes nothing returns boolean
		return ((IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == true) and (GetOwningPlayer(GetAttackedUnitBJ()) == Player(6)) and (IsUnitAlly(GetAttacker(), Player(6)) == true))
	endfunction
	
	private function TAttackCenterBaseAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(),"stop")
			call KillSelf(GetAttacker())
			call DisplayTimedTextToForce( GetPlayersAll(), 30, "|cFFFF66CC【提示】|r有人企图攻打自己的基地，被伟大的Crainax处死了。" )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    基础爆了的触发
	*/
	function TCenterBaseDeathAct takes nothing returns nothing
	    local integer i = 1
	    loop
	    	exitwhen i > 6
	    	call CustomDefeatBJ( ConvertedPlayer(i), "基地爆了！
	    		通关攻略,寻找战友请加QQ群: 413359254" )
	    	set i = i +1
	    endloop
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitCenterBase takes nothing returns nothing

		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function TAttackCenterBaseCon))
		call TriggerAddAction(t, function TAttackCenterBaseAct)

	    set t = CreateTrigger()
	    call TriggerRegisterUnitEvent( t, gg_unit_haro_0030, EVENT_UNIT_DEATH )
	    call TriggerAddAction(t, function TCenterBaseDeathAct)

		set t = null
	endfunction



endlibrary