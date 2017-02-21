
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
	    技能伤害增益
	*/
	function AddSpellPercent takes integer playerID , real value returns nothing
		set udg_I_Jinengjiacheng[playerID] = udg_I_Jinengjiacheng[playerID] + value
		call TriggerExecute( gg_trg_D7 )
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitAttr takes nothing returns nothing
		


	endfunction

endlibrary