
//! import "LHBase.j"

library_once Multiboard initializer InitMultiboard requires LHBase,Version
	globals
		
		integer array centerCredit
		/*
		    统计的伤害
		*/
		integer array Mdamage1
		integer array Mdamage2
		
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    统计总伤害值
	*/
	private function TAddAllDamageCon takes nothing returns boolean
		return GetEventDamage() > 100000 and GetPlayerSlotState(GetOwningPlayer( GetEventDamageSource())) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(GetOwningPlayer( GetEventDamageSource())) == MAP_CONTROL_USER
	endfunction

	private function TAddAllDamageAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
		local integer divede1e = 0
		
		if (GetEventDamage() > 100000000) then
			set divede1e =R2I(GetEventDamage() / 100000000)
			set Mdamage2[index] = Mdamage2[index] + divede1e
			if (divede1e > 300) then
				debug call GetAchievementAndSave(ConvertedPlayer(index),46)
			endif
		endif
		set Mdamage1[index] = Mdamage1[index] + R2I(ModuloReal(GetEventDamage(),100000000))
		if (Mdamage1[index] > 100000000) then
			set Mdamage2[index] = Mdamage2[index] + 1
			set Mdamage1[index] = Mdamage1[index] - 100000000
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    增加守家积分
	*/
	function AddCenterCredit takes unit u returns nothing
		local integer index
		if (udg_RENSHU > 1) then
			set index = GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index] = centerCredit[index] + (udg_Bo) * CModeH(1,2)
			call MultiboardSetItemValueBJ( udg_D, 9,  index + 1 , I2S(centerCredit[index]) )
		else
			set index = GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index] = centerCredit[index] + (udg_Bo / 2) * CModeH(1,2)
			call MultiboardSetItemValueBJ( udg_D, 9,  index + 1 , I2S(centerCredit[index]) )
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    每10秒刷新一次伤害总值
	*/
	private function FlashDamage takes nothing returns nothing
		local integer i = 1

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				//刷新多面板
			 	call LeaderboardSetPlayerItemValueBJ( Player(11), udg_Paihang[i], Mdamage1[i] )
    			call LeaderboardSetPlayerItemLabelBJ( Player(11), udg_Paihang[i], "总伤害("+I2S(Mdamage2[i])+"亿)" )
				debug call SaveAchievement6(ConvertedPlayer(i),Mdamage2[i])
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化刷新计时器
	*/
	private function InitMultiboard takes nothing returns nothing
		local trigger t = CreateTrigger()

		call TimerStart(CreateTimer(),20,true,function FlashDamage)

    	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	    call TriggerAddCondition(t, Condition(function TAddAllDamageCon))
	    call TriggerAddAction(t, function TAddAllDamageAct)

    	set t = null
	endfunction
endlibrary