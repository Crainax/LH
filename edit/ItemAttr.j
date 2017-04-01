//! import "LHBase.j"
//! import "Attr.j"
/*
    物品类型的属性初始化
*/
library_once ItemAttr initializer InitItemAttr requires LHBase,Attr
	
//---------------------------------------------------------------------------------------------------
	/*
	    力量加成
	*/
	private function SetStrPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x06C64278,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    敏捷加成
	*/
	private function SetAgiPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x6FFF4132,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    智力加成
	*/
	private function SetIntPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xC0C6918C,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击加成
	*/
	private function SetAttackPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x4C0507D9,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    技能伤害加成
	*/
	private function SetSpellPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xF374F3BD,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    造成伤害加成
	*/
	private function SetDamagePerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xA3BA0D94,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化六涛天虹
	*/
	private function InitLiutaotianhong takes nothing returns nothing
		call SetStrPerc('I049',0.2)
		call SetAgiPerc('I049',0.2)
		call SetIntPerc('I049',0.2)
		call SetAttackPerc('I049',0.5)
		call SetSpellPerc('I049',0.4)
		call SetDamagePerc('I049',0.2)
		call SetStrPerc('I04A',1)
		call SetAgiPerc('I04A',1)
		call SetIntPerc('I04A',1)
		call SetAttackPerc('I04A',1)
		call SetSpellPerc('I04A',1)
		call SetDamagePerc('I04A',0.4)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	private function InitItemAttr takes nothing returns nothing
		call InitLiutaotianhong()
	endfunction

endlibrary