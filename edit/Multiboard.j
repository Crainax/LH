
//! import "LHBase.j"

library_once Multiboard initializer InitMultiboard requires LHBase 
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
	    增加守家积分
	*/
	function AddCenterCredit takes unit u returns nothing
		local integer index
		if (udg_RENSHU > 1) then
			set index = GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index] = centerCredit[index] + udg_Bo
			call MultiboardSetItemValueBJ( udg_D, 9,  index + 1 , I2S(centerCredit[index]) )
		else
			set index = GetConvertedPlayerId(GetOwningPlayer(u))
			set centerCredit[index] = centerCredit[index] + udg_Bo / 2
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

			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------

				if (Mdamage1 > 100000000)
					set Mdamage2 = Mdamage1 / 100000000
					set Mdamage1 = ModuloInteger(Mdamage1,100000000)
				endif
	/*
	    初始化刷新计时器
	*/
	private function InitMultiboard takes nothing returns nothing
		call CreateTimer(CreateTimer(),10,true,function FlashDamage)
	endfunction
endlibrary