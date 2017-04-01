
//! import "LHBase.j"
library_once Attr initializer InitAttr requires LHBase 
	
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
    	call TriggerExecute( gg_trg_papa9____________u )
	endfunction

	/*
	    获取敏捷增益
	*/
	function GetAgiPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 6 )]
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
    	call TriggerExecute( gg_trg_papa8____________u )
	endfunction

	/*
	    获取力量增益
	*/
	function GetStrPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID)]
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
    call TriggerExecute( gg_trg_papa10____________u )
	endfunction

	/*
	    获取智力增益
	*/
	function GetIntPercent takes integer playerID returns real
		return udg_I_Xianglian[( playerID + 12 )]
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
//---------------------------------------------------------------------------------------------------
	/*
	    设置防御
	*/
	function SetDefense takes unit u,integer defense returns nothing    
	    set udg_Unit = u
	    call SaveInteger(YDHT,GetHandleId(u),0x81FD3994,defense)
	    call TriggerExecute( gg_trg___________________4000______u )
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
//---------------------------------------------------------------------------------------------------

	private function InitAttr takes nothing returns nothing
		


	endfunction

endlibrary