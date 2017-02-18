//! import "LHBase.j"
library_once Exercise initializer InitExercise requires LHBase

	globals
		rect array regionAll
		rect array regionM1
		rect array regionM2
		rect array regionM3
		rect array regionM4
		rect array regionM5
		rect array regionM6
	endglobals
//---------------------------------------------------------------------------------------------------
	

	function TMonsterFilter1 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'nano') or (GetUnitTypeId(GetFilterUnit()) == 'nanw')))
	endfunction

	function TMonsterPlayerFilter takes nothing returns boolean
	    return ((GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER) and (IsUnitAliveBJ(GetFilterUnit()) == true))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    刷新怪物
	*/
	//! textmacro FlashMonster takes Index
	function FlashMonsterPlayer$Index$ takes nothing returns nothing

		local group g 
		local group g2
		local unit l_unit

		//区域1
		set g = GetUnitsInRectMatching(regionM$Index$[1], Condition(function TMonsterFilter1))
		set g2 = GetUnitsInRectMatching(regionM$Index$[1], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then

			    if (IsUnitInGroup(udg_H[$Index$],g2) == true) then
			        call CreateUnit(Player(10), 'nano',GetRectCenterX(regionM$Index$[1]),GetRectCenterY(regionM$Index$[1]),270)
			    else
			        call CreateUnit(Player(10), 'nanw',GetRectCenterX(regionM$Index$[1]),GetRectCenterY(regionM$Index$[1]),270)
			    endif
			    call DestroyGroup( g2 )

			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				loop
				    set l_unit = FirstOfGroup(g)
				    exitwhen l_unit == null
				    call GroupRemoveUnit(g, l_unit)
			        call FlushChildHashtable(YDHT,GetHandleId(l_unit))
			        call YDWEFlushMissionByInteger( YDWEH2I(l_unit) )
			        call RemoveUnit( l_unit )
				endloop
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    set g = null
	    set g2 = null
	    set l_unit = null

	endfunction

	//! endtextmacro
	
	//! runtextmacro FlashMonster("1")
	//! runtextmacro FlashMonster("2")
	//! runtextmacro FlashMonster("3")
	//! runtextmacro FlashMonster("4")
	//! runtextmacro FlashMonster("5")
	//! runtextmacro FlashMonster("6")
//---------------------------------------------------------------------------------------------------
	/*
		禁止进入
	*/	
	//! textmacro TExerciseForbitCon takes Index
		private function TExerciseForbitCon$Index$ takes nothing returns boolean
			return ((ConvertedPlayer($Index$) == GetOwningPlayer(GetTriggerUnit())) and IsEnemy3(GetTriggerUnit(),Player(10)) == true)
		endfunction
	//! endtextmacro

	//! runtextmacro TExerciseForbitCon("1")
	//! runtextmacro TExerciseForbitCon("2")
	//! runtextmacro TExerciseForbitCon("3")
	//! runtextmacro TExerciseForbitCon("4")
	//! runtextmacro TExerciseForbitCon("5")
	//! runtextmacro TExerciseForbitCon("6")

	private function TExerciseForbitAct takes nothing returns nothing
		call SetUnitX(GetTriggerUnit(),GetUnitX(gg_unit_haro_0030))
		call SetUnitY(GetTriggerUnit(),GetUnitY(gg_unit_haro_0030))
		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你不能进入其他玩家的房间！")
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitExercise takes nothing returns nothing
		local trigger t

		//! textmacro CreateMonsterTrigger takes Index
			if ((GetPlayerSlotState(ConvertedPlayer($Index$)) == PLAYER_SLOT_STATE_PLAYING) and GetPlayerController(ConvertedPlayer($Index$)) == MAP_CONTROL_USER) then
				set t = CreateTrigger()
			    call TriggerRegisterEnterRectSimple( t, regionAll[$Index$] )
			    call TriggerAddCondition(t, Condition(function TExerciseForbitCon$Index$))
			    call TriggerAddAction(t, function TExerciseForbitAct)
			endif
		//! endtextmacro

		//! runtextmacro CreateMonsterTrigger("1")
		//! runtextmacro CreateMonsterTrigger("2")
		//! runtextmacro CreateMonsterTrigger("3")
		//! runtextmacro CreateMonsterTrigger("4")
		//! runtextmacro CreateMonsterTrigger("5")
		//! runtextmacro CreateMonsterTrigger("6")

		set t = null
	endfunction

endlibrary


