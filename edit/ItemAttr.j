//! import "LHBase.j"
//! import "Attr.j"
/*
    物品类型的属性初始化
*/
library_once ItemAttr initializer InitItemAttr requires LHBase,Attr
	
//---------------------------------------------------------------------------------------------------
	/*
	    力量
	*/
	private function SetItemStr takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x8D205575,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    敏捷
	*/
	private function SetItemAgi takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x384C9D86,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    智力
	*/
	private function SetItemInt takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x1B5C932E,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    生命
	*/
	private function SetItemHP takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0xFCD961C9,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    防御
	*/
	private function SetItemDefense takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x81FD3994,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击
	*/
	private function SetItemAttack takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x5039AFFB,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    吸血
	*/
	private function SetItemXixue takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x1ADEDE7B,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    弓直伤
	*/
	private function SetItemZhishang takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0xA6870C96,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    力量加成
	*/
	private function SetItemStrPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x06C64278,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    敏捷加成
	*/
	private function SetItemAgiPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x6FFF4132,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    智力加成
	*/
	private function SetItemIntPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xC0C6918C,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击加成
	*/
	private function SetItemAttackPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x4C0507D9,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    技能伤害加成
	*/
	private function SetItemSpellPerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xF374F3BD,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    造成伤害加成
	*/
	private function SetItemDamagePerc takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xA3BA0D94,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化六涛天虹
	*/
	private function InitErdianQi takes nothing returns nothing
		/*
		    六涛天虹
		*/
		call SetItemStrPerc('I049',0.2)
		call SetItemAgiPerc('I049',0.2)
		call SetItemIntPerc('I049',0.2)
		call SetItemAttackPerc('I049',0.5)
		call SetItemSpellPerc('I049',0.4)
		call SetItemDamagePerc('I049',0.2)
		call SetItemStrPerc('I04A',1)
		call SetItemAgiPerc('I04A',1)
		call SetItemIntPerc('I04A',1)
		call SetItemAttackPerc('I04A',1)
		call SetItemSpellPerc('I04A',1)
		call SetItemDamagePerc('I04A',0.4)
		/*
		    梵天披风
		*/
		call SetItemStr('ciri',400000)
		call SetItemAgi('ciri',400000)
		call SetItemInt('ciri',400000)
		call SetItemDefense('ciri',20000)
		call SetItemHP('ciri',9000000)
		call SetItemSpellPerc('ciri',0.8)
		call SetItemDamagePerc('ciri',0.25)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化超神器与戒指
	*/
	private function InitErdianBa takes nothing returns nothing
		/*
		    诛神噬魔
		*/
		call SetItemStr('tlum',320000)
		call SetItemAgi('tlum',470000)
		call SetItemInt('tlum',420000)
		call SetItemSpellPerc('tlum',1.5)
		call SetItemXixue('tlum',40000)
		call SetItemZhishang('tlum',8000000)
		call SetItemAttack('tlum',2000000)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	private function InitItemAttr takes nothing returns nothing
		call InitErdianQi()
		call InitErdianBa()
	endfunction

endlibrary