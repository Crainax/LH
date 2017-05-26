
//! import "LHBase.j"
library_once Attr initializer InitAttr requires LHBase 
	
	globals
		integer array IStr
		integer array IAgi
		integer array IInt
	endglobals
//---------------------------------------------------------------------------------------------------

	/*
	    获取敏捷增益
	*/
	function GetAgiPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 6 )]
	endfunction

	/*
	    获取力量增益
	*/
	function GetStrPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID)]
	endfunction

	/*
	    获取智力增益
	*/
	function GetIntPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 12 )]
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新英雄的力量值
	*/
	function FlashHeroStr takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		local integer temp = 0
		if ((GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(p) == MAP_CONTROL_USER) and (GetStrPercent(index) != 0 or IStr[index] != 0)) then
			set temp = R2I(I2R(GetHeroStr(udg_H[index],true) - IStr[index]) * GetStrPercent(index))
			if (temp != IStr[index]) then
				call SetHeroStr(udg_H[index],GetHeroStr(udg_H[index],true)-IStr[index]+temp,true)
				set IStr[index] = temp
			endif
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    全刷力量
	*/
	function FlashAllHeroStr takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call FlashHeroStr(ConvertedPlayer(i))
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新英雄的敏捷值
	*/
	function FlashHeroAgi takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		local integer temp = 0
		if ((GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(p) == MAP_CONTROL_USER) and (GetAgiPercent(index) != 0 or IAgi[index] != 0)) then
			set temp = R2I(I2R(GetHeroAgi(udg_H[index],true) - IAgi[index]) * GetAgiPercent(index))
			if (temp != IAgi[index]) then
				call SetHeroAgi(udg_H[index],GetHeroAgi(udg_H[index],true)-IAgi[index]+temp,true)
				set IAgi[index] = temp
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    全刷敏捷
	*/
	function FlashAllHeroAgi takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call FlashHeroAgi(ConvertedPlayer(i))
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新英雄的智力值
	*/
	function FlashHeroInt takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		local integer temp = 0
		if ((GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(p) == MAP_CONTROL_USER) and (GetIntPercent(index) != 0 or IInt[index] != 0)) then
			set temp = R2I(I2R(GetHeroInt(udg_H[index],true) - IInt[index]) * GetIntPercent(index))
			if (temp != IInt[index]) then
				call SetHeroInt(udg_H[index],GetHeroInt(udg_H[index],true)-IInt[index]+temp,true)
				set IInt[index] = temp
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    全刷智力
	*/
	function FlashAllHeroInt takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call FlashHeroInt(ConvertedPlayer(i))
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    增加生命上限增益
	*/
	function AddHPPercent takes integer playerID , real value returns nothing
		set udg_I_Xianglian[( playerID + 18 )] =  udg_I_Xianglian[( playerID + 18 )] + value 
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    敏捷增益
	*/
	function AddAgiPercent takes integer playerID , real value returns nothing
		set udg_I_Xianglian[( playerID + 6 )] =  udg_I_Xianglian[( playerID + 6 )] + value 
		call TriggerExecute( gg_trg_D7 )
	endfunction

	/*
	    增加敏捷增益，并立即刷新
	*/
	function AddAgiPercentImme takes integer playerID , real value returns nothing
		call AddAgiPercent(playerID,value)
    	call FlashHeroAgi(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    力量增益
	*/
	function AddStrPercent takes integer playerID , real value returns nothing
		set udg_I_Xianglian[( playerID)] =  udg_I_Xianglian[( playerID)] + value 
		call TriggerExecute( gg_trg_D7 )
	endfunction

	/*
	    增加力量增益，并立即刷新
	*/
	function AddStrPercentImme takes integer playerID , real value returns nothing
		call AddStrPercent(playerID,value)
    	call FlashHeroStr(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    智力增益
	*/
	function AddIntPercent takes integer playerID , real value returns nothing
		set udg_I_Xianglian[( playerID + 12 )] =  udg_I_Xianglian[( playerID + 12 )] + value 
		call TriggerExecute( gg_trg_D7 )
	endfunction

	/*
	    增加智力增益，并立即刷新
	*/
	function AddIntPercentImme takes integer playerID , real value returns nothing
		call AddIntPercent(playerID,value)
    	call FlashHeroInt(ConvertedPlayer(playerID))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    金钱增益
	*/
	function AddMoneyPercent takes integer playerID , real value returns nothing
		set udg_I_Jinqianhuodelv[playerID] = udg_I_Jinqianhuodelv[playerID] + value
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击增益
	*/
	function AddAttackPercent takes integer playerID , real value returns nothing
		set udg_I_Jinengjiacheng[playerID + 24] = udg_I_Jinengjiacheng[playerID + 24] + value
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    技能伤害增益
	*/
	function AddSpellPercent takes integer playerID , real value returns nothing
		set udg_I_Jinengjiacheng[playerID] = udg_I_Jinengjiacheng[playerID] + value
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    造成伤害增益
	*/
	function AddDamagePercent takes integer playerID, real value returns nothing
		set udg_I_Shanghai[playerID] = udg_I_Shanghai[playerID] + value
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置攻击
	*/
	function SetAttack takes unit u,integer attack returns nothing
	    set udg_Unit = u
	    call SaveInteger(YDHT,GetHandleId(u),0x5039AFFB,attack)
	    call TriggerExecute( gg_trg_____________800W )
	endfunction	

	function GetAttack takes unit u returns integer
		return LoadInteger(YDHT,GetHandleId(u),0x5039AFFB)
	endfunction	

	function AddAttack takes unit u,integer attack returns nothing
		call SetAttack(u,GetAttack(u) + attack)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置防御
	*/
	function SetDefense takes unit u,integer defense returns nothing    
	    set udg_Unit = u
	    call SaveInteger(YDHT,GetHandleId(u),0x81FD3994,defense)
	    call TriggerExecute( gg_trg___________________4000______u )
	endfunction

	function GetDefense takes unit u returns integer
		return LoadInteger(YDHT,GetHandleId(u),0x81FD3994)
	endfunction	

	function AddDefense takes unit u,integer defense returns nothing
		call SetDefense(u,GetDefense(u) + defense)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    设置生命上限
	*/
	function SetHP takes unit u,integer hp returns nothing
	    set udg_Unit = u
	    call SaveInteger(YDHT,GetHandleId(u),0xFCD961C9,hp)
    	call TriggerExecute( gg_trg_HP_____________________u )
	endfunction
	
	function GetHP takes unit u returns integer
		return LoadInteger(YDHT,GetHandleId(u),0xFCD961C9)
	endfunction	

	function AddHP takes unit u,integer hp returns nothing
		call SetHP(u,GetHP(u) + hp)
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitAttr takes nothing returns nothing
		


	endfunction

endlibrary