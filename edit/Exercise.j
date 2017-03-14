//! import "LHBase.j"
library_once Exercise initializer InitExercise requires LHBase

	globals
		rect array regionAll
		//怪物的区域
		rect array regionM1 
		rect array regionM2 
		rect array regionM3 
		rect array regionM4 
		rect array regionM5 
		rect array regionM6 
		private timer array TiExercise
	endglobals
//---------------------------------------------------------------------------------------------------
	
	/*
	    区域123456的刷怪过滤器
	*/
	function TMonsterFilter1 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'nano') or (GetUnitTypeId(GetFilterUnit()) == 'nanw')))
	endfunction

	function TMonsterFilter2 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'nenf') or (GetUnitTypeId(GetFilterUnit()) == 'nbld')))
	endfunction

	function TMonsterFilter3 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'nbda') or (GetUnitTypeId(GetFilterUnit()) == 'nbdo')))
	endfunction

	function TMonsterFilter4 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'ncim') or (GetUnitTypeId(GetFilterUnit()) == 'ncnk')))
	endfunction

	function TMonsterFilter5 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'ngns') or (GetUnitTypeId(GetFilterUnit()) == 'ngnw')))
	endfunction

	function TMonsterFilter6 takes nothing returns boolean
	    return ((GetOwningPlayer(GetFilterUnit()) == Player(10)) and ((GetUnitTypeId(GetFilterUnit()) == 'nhfp') or (GetUnitTypeId(GetFilterUnit()) == 'nenc')))
	endfunction

	/*
	    玩家单位过滤器
	*/
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

		//区域1
		set g = GetUnitsInRectMatching(regionM1[$Index$], Condition(function TMonsterFilter1))
		set g2 = GetUnitsInRectMatching(regionM1[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then


			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'nano',GetRectCenterX(regionM1[$Index$]),GetRectCenterY(regionM1[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'nanw',GetRectCenterX(regionM1[$Index$]),GetRectCenterY(regionM1[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

		//区域2
		set g = GetUnitsInRectMatching(regionM2[$Index$], Condition(function TMonsterFilter2))
		set g2 = GetUnitsInRectMatching(regionM2[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then
			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'nenf',GetRectCenterX(regionM2[$Index$]),GetRectCenterY(regionM2[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'nbld',GetRectCenterX(regionM2[$Index$]),GetRectCenterY(regionM2[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    //区域3
		set g = GetUnitsInRectMatching(regionM3[$Index$], Condition(function TMonsterFilter3))
		set g2 = GetUnitsInRectMatching(regionM3[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then
			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'nbda',GetRectCenterX(regionM3[$Index$]),GetRectCenterY(regionM3[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'nbdo',GetRectCenterX(regionM3[$Index$]),GetRectCenterY(regionM3[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    //区域4
		set g = GetUnitsInRectMatching(regionM4[$Index$], Condition(function TMonsterFilter4))
		set g2 = GetUnitsInRectMatching(regionM4[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then
			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'ncim',GetRectCenterX(regionM4[$Index$]),GetRectCenterY(regionM4[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'ncnk',GetRectCenterX(regionM4[$Index$]),GetRectCenterY(regionM4[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    //区域5
		set g = GetUnitsInRectMatching(regionM5[$Index$], Condition(function TMonsterFilter5))
		set g2 = GetUnitsInRectMatching(regionM5[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then
			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'ngns',GetRectCenterX(regionM5[$Index$]),GetRectCenterY(regionM5[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'ngnw',GetRectCenterX(regionM5[$Index$]),GetRectCenterY(regionM5[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    //区域6
		set g = GetUnitsInRectMatching(regionM6[$Index$], Condition(function TMonsterFilter6))
		set g2 = GetUnitsInRectMatching(regionM6[$Index$], Condition(function TMonsterPlayerFilter))
		if (CountUnitsInGroup(g2) != 0) then
			//刷怪
			if (CountUnitsInGroup(g) == 0) then
			    if (IsUnitInGroup(udg_H[$Index$],g2) != true) then
			        call CreateUnit(Player(10), 'nhfp',GetRectCenterX(regionM6[$Index$]),GetRectCenterY(regionM6[$Index$]),270)
			    else
			        call CreateUnit(Player(10), 'nenc',GetRectCenterX(regionM6[$Index$]),GetRectCenterY(regionM6[$Index$]),270)
			    endif
			endif
		else
			if (CountUnitsInGroup(g) != 0) then
				//不刷且删兵
				call DeleteGroup(g)
			endif
		endif
	    call DestroyGroup( g )
	    call DestroyGroup( g2 )

	    set g = null
	    set g2 = null

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
			return ((ConvertedPlayer($Index$) != GetOwningPlayer(GetTriggerUnit())) and (IsEnemy3(GetTriggerUnit(),Player(10)) or GetUnitTypeId(GetTriggerUnit()) == 'ndgt'))
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
	/*
	    初始化触发
	*/
	private function InitExerciseTrigger takes nothing returns nothing
		local trigger t

		//! textmacro CreateMonsterTrigger takes Index
			if ((GetPlayerSlotState(ConvertedPlayer($Index$)) == PLAYER_SLOT_STATE_PLAYING) and GetPlayerController(ConvertedPlayer($Index$)) == MAP_CONTROL_USER) then
				set t = CreateTrigger()
			    call TriggerRegisterEnterRectSimple( t, regionAll[$Index$] )
			    call TriggerAddCondition(t, Condition(function TExerciseForbitCon$Index$))
			    call TriggerAddAction(t, function TExerciseForbitAct)
				call CreateUnit(Player(15),'uS02',GetRectCenterX(regionM1[$Index$])+300,GetRectCenterY(regionM1[$Index$])-300,270)
			    set TiExercise[$Index$] = CreateTimer()
			    call TimerStart(TiExercise[$Index$],5,true,function FlashMonsterPlayer$Index$)
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
//---------------------------------------------------------------------------------------------------
	/*
	    玩家离开后关闭定时器
	*/
	function CloseExerciseTimer takes player p returns nothing
		call PauseTimer(TiExercise[GetConvertedPlayerId(p)])
		call DestroyTimer(TiExercise[GetConvertedPlayerId(p)])
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    初始化所有区域
	*/
	private function InitExerciseRegions takes nothing returns nothing

		set regionM1[1]=Rect(- 15488.0, 13952.0, - 14240.0, 15232.0)
	    set regionM2[1]=Rect(- 13280.0, 13952.0, - 12096.0, 15232.0)
	    set regionM3[1]=Rect(- 15488.0, 12288.0, - 14208.0, 13536.0)
	    set regionM4[1]=Rect(- 13312.0, 12288.0, - 12064.0, 13568.0)
	    set regionM5[1]=Rect(- 15488.0, 10624.0, - 14208.0, 11904.0)
	    set regionM6[1]=Rect(- 13312.0, 10624.0, - 12032.0, 11904.0)
		
	    set regionM1[2]=Rect(- 15488.0, 8960.0, - 14240.0, 10240.0)
	    set regionM2[2]=Rect(- 13280.0, 8960.0, - 12096.0, 10240.0)
	    set regionM3[2]=Rect(- 15488.0, 7296.0, - 14208.0, 8544.0)
	    set regionM4[2]=Rect(- 13312.0, 7296.0, - 12064.0, 8576.0)
	    set regionM5[2]=Rect(- 15488.0, 5632.0, - 14208.0, 6912.0)
	    set regionM6[2]=Rect(- 13312.0, 5632.0, - 12032.0, 6912.0)

	    set regionM1[3]=Rect(- 11104.0, 13984.0, - 9888.0, 15232.0)
	    set regionM2[3]=Rect(- 8960.0, 13952.0, - 7680.0, 15232.0)
	    set regionM3[3]=Rect(- 11136.0, 12288.0, - 9888.0, 13536.0)
	    set regionM4[3]=Rect(- 8928.0, 12288.0, - 7680.0, 13568.0)
	    set regionM5[3]=Rect(- 11136.0, 10624.0, - 9856.0, 11904.0)
	    set regionM6[3]=Rect(- 8960.0, 10624.0, - 7680.0, 11904.0)
		
	    set regionM1[4]=Rect(- 11104.0, 8992.0, - 9888.0, 10240.0)
	    set regionM2[4]=Rect(- 8960.0, 8960.0, - 7680.0, 10240.0)
	    set regionM3[4]=Rect(- 11136.0, 7296.0, - 9888.0, 8544.0)
	    set regionM4[4]=Rect(- 8928.0, 7296.0, - 7680.0, 8576.0)
	    set regionM5[4]=Rect(- 11136.0, 5632.0, - 9856.0, 6912.0)
	    set regionM6[4]=Rect(- 8960.0, 5632.0, - 7680.0, 6912.0)
		
	    set regionM1[5]=Rect(- 6752.0, 13952.0, - 5536.0, 15200.0)
	    set regionM2[5]=Rect(- 4736.0, 13952.0, - 3456.0, 15232.0)
	    set regionM3[5]=Rect(- 6784.0, 12256.0, - 5536.0, 13504.0)
	    set regionM4[5]=Rect(- 4704.0, 12288.0, - 3456.0, 13568.0)
	    set regionM5[5]=Rect(- 6784.0, 10592.0, - 5504.0, 11872.0)
	    set regionM6[5]=Rect(- 4736.0, 10624.0, - 3456.0, 11904.0)

	    set regionM1[6]=Rect(- 6752.0, 8960.0, - 5536.0, 10208.0)
	    set regionM2[6]=Rect(- 4736.0, 8960.0, - 3456.0, 10240.0)
	    set regionM3[6]=Rect(- 6784.0, 7264.0, - 5536.0, 8512.0)
	    set regionM4[6]=Rect(- 4704.0, 7296.0, - 3456.0, 8576.0)
	    set regionM5[6]=Rect(- 6784.0, 5600.0, - 5504.0, 6880.0)
	    set regionM6[6]=Rect(- 4736.0, 5632.0, - 3456.0, 6912.0)

	    set regionAll[1]=Rect(- 15808.0, 10400.0, - 11744.0, 15456.0)
	    set regionAll[2]=Rect(- 15808.0, 5344.0, - 11712.0, 10400.0)
	    set regionAll[3]=Rect(- 11744.0, 10400.0, - 7232.0, 15456.0)
	    set regionAll[4]=Rect(- 11744.0, 5312.0, - 7232.0, 10400.0)
	    set regionAll[5]=Rect(- 7264.0, 10432.0, - 3136.0, 15456.0)
	    set regionAll[6]=Rect(- 7264.0, 5312.0, - 3136.0, 10432.0)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    购买练级场进入相对应的位置
	*/
	function EnterExerciseRegion takes nothing returns nothing
		local real x
		local real y

		//! textmacro EnterSpecifyExercise takes ItemType,Index
		if ((GetItemTypeId(GetSoldItem()) == '$ItemType$')) then
			set x = GetRectCenterX(regionM$Index$[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])
			set y = GetRectCenterY(regionM$Index$[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))])

	        call SetUnitX(GetBuyingUnit(),x)
	        call SetUnitY(GetBuyingUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	    endif
		//! endtextmacro

		//! runtextmacro EnterSpecifyExercise("I05J","1")
		//! runtextmacro EnterSpecifyExercise("I053","2")
		//! runtextmacro EnterSpecifyExercise("I05K","3")
		//! runtextmacro EnterSpecifyExercise("I06Y","4")
		//! runtextmacro EnterSpecifyExercise("I06Z","5")
		//! runtextmacro EnterSpecifyExercise("I03Z","6")
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitExercise takes nothing returns nothing
		call InitExerciseRegions()
		call InitExerciseTrigger()

	endfunction

endlibrary
	


