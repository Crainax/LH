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
	    3W
	*/
	private function SetItem3W takes integer itemID,integer value returns nothing
		call SaveInteger(YDHT,itemID,0x5BAE281D,value)
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
	    被攻击反击
	*/
	private function SetItemFanji takes integer itemID,integer value returns nothing

		call SaveInteger(YDHT,itemID,0x0F3DF677,value)

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
	    经验获得率
	*/
	private function SetItemJingyan takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x3EBF688A,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    HP加成
	*/
	private function SetItemHPPer takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0xFAA305CD,value)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    防御加成
	*/
	private function SetItemDefensePer takes integer itemID,real value returns nothing
		call SaveReal(YDHT,itemID,0x0B6FB20F,value)
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
		call SetItemSpellPerc('tlum',1.3)
		call SetItemXixue('tlum',40000)
		call SetItemZhishang('tlum',8000000)
		call SetItemAttack('tlum',2000000)
		/*
		    鬼戒指
		*/
		call SetItem3W( 'rat9', 3000)
	    call SetItem3W( 'rlif', 9000)
	    call SetItem3W( 'lgdh', 18000)
	    call SetItem3W( 'clfm', 30000)
	    call SetItem3W( 'bgst', 45000)
	    call SetItem3W( 'belv', 63000)
	    call SetItem3W( 'hcun', 84000)
	    call SetItem3W( 'rag1', 108000 )
	    call SetItem3W( 'penr', 135000 )
	    call SetItem3W( 'brac', 165000 )
	    call SetItem3W( 'lhst', 240000 )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化衣服还有新灯
	*/
	
	private function InitDengClothes takes nothing returns nothing
		//灯
	    call SetItem3W( 'ILI1', 1000 )
	    call SetItem3W( 'ILI2', 3000 )
	    call SetItem3W( 'ILI3', 7500 )
	    call SetItem3W( 'ILI4', 15000 )
	    call SetItem3W( 'ILI5', 25000 )
	    call SetItem3W( 'ILI6', 40000 )
	    call SetItem3W( 'ILI7', 60000 )
	    call SetItem3W( 'ILI8', 80000 )
	    call SetItem3W( 'ILI9', 120000 )
	    call SetItem3W( 'ILIA', 150000 )
	    call SetItem3W( 'ILIB', 180000 )
	    call SetItem3W( 'ILIC', 200000 )
	    call SetItem3W( 'ILID', 220000 )
	    call SetItem3W( 'ILIE', 250000 )
	    call SetItem3W( 'ILIF', 290000 )
	    call SetItem3W( 'ILIG', 340000 )
	    call SetItem3W( 'ILIH', 380000 )
	    call SetItem3W( 'ILII', 420000 )
	    call SetItem3W( 'ILIJ', 450000 )
	    call SetItem3W( 'ILIK', 490000 )
		call SetItemXixue( 'ILI3', 8000 )
		call SetItemXixue( 'ILI4', 16000 )
		call SetItemXixue( 'ILI5', 25000 )
		call SetItemXixue( 'ILI6', 34000)
		call SetItemXixue( 'ILI7', 50000)
		call SetItemXixue( 'ILI8', 100000)
		call SetItemXixue( 'ILI9', 200000)
		call SetItemXixue( 'ILIA', 300000)
		call SetItemXixue( 'ILIB', 400000)
		call SetItemXixue( 'ILIC', 600000)
		call SetItemXixue( 'ILID', 800000)
		call SetItemXixue( 'ILIE', 1000000)
		call SetItemXixue( 'ILIF', 1300000)
		call SetItemXixue( 'ILIG', 1500000)
		call SetItemXixue( 'ILIH', 1800000)
		call SetItemXixue( 'ILII', 2200000)
		call SetItemXixue( 'ILIJ', 2800000)
		call SetItemXixue( 'ILIK', 3300000)

		//衣服
	    call SetItemDefense( 'rej6' , 1500)
	    call SetItemDefense( 'dtsb' , 2000)
	    call SetItemDefense( 'tels' , 3000)
		call SetItemDefense( 'ofir' , 3800)
		call SetItemDefense( 'soul' , 5000)
		call SetItemDefense( 'sbok' , 6000)
		call SetItemDefense( 'arsc' , 9500)
		call SetItemDefense( 'rde0' , 13000)
		call SetItemDefense( 'oflg' , 13000)
		call SetItemDefense( 'frgd' , 16000)
		call SetItemDefense( 'rej4' , 2000)
		call SetItemDefense( 'drph' , 3000)
		call SetItemDefense( 'oven' , 3800)
		call SetItemDefense( 'frhg' , 5000)
		call SetItemDefense( 'mlst' , 6000)
		call SetItemDefense( 'nspi' , 7000)
		call SetItemDefense( 'oli2' , 10500)
		call SetItemDefense( 'rump' , 13000)
		call SetItemDefense( 'shen' , 15000)
		call SetItemDefense( 'stpg' , 19000)
		call SetItemDefense( 'pgin' , 1500)
		call SetItemDefense( 'gobm' , 2000)
		call SetItemDefense( 'gvsm' , 3000)
		call SetItemDefense( 'gldo' , 3800)
		call SetItemDefense( 'gsou' , 5000)
		call SetItemDefense( 'envl' , 6000)
		call SetItemDefense( 'rugt' , 7000)
		call SetItemDefense( 'shdt' , 11000)
		call SetItemDefense( 'crdt' , 13000)
		call SetItemDefense( 'pspd' , 16000)
	    call SetItemHP('rej6' , 200000)
		call SetItemHP('dtsb' , 300000)
		call SetItemHP('tels' , 400000)
		call SetItemHP('ofir' , 500000)
		call SetItemHP('soul' , 600000)
		call SetItemHP('sbok' , 1750000)
		call SetItemHP('arsc' , 2950000)
		call SetItemHP('rde0' , 4200000)
		call SetItemHP('oflg' , 4500000)
		call SetItemHP('frgd' , 6000000)
		call SetItemHP('rej4' , 300000)
		call SetItemHP('drph' , 400000)
		call SetItemHP('oven' , 500000)
		call SetItemHP('frhg' , 600000)
		call SetItemHP('mlst' , 750000)
		call SetItemHP('nspi' , 1950000)
		call SetItemHP('oli2' , 3200000)
		call SetItemHP('rump' , 4500000)
		call SetItemHP('shen' , 2000000)
		call SetItemHP('stpg' , 6500000)
		call SetItemHP('pgin' , 200000)
		call SetItemHP('gobm' , 300000)
		call SetItemHP('gvsm' , 400000)
		call SetItemHP('gldo' , 500000)
		call SetItemHP('gsou' , 600000)
		call SetItemHP('envl' , 1750000)
		call SetItemHP('rugt' , 2950000)
		call SetItemHP('shdt' , 4200000)
		call SetItemHP('crdt' , 4500000)
		call SetItemHP('pspd' , 6000000)
    	call SetItem3W('rej6' , 10000)
		call SetItem3W('dtsb' , 16000)
		call SetItem3W('tels' , 25000)
		call SetItem3W('ofir' , 50000)
		call SetItem3W('soul' , 80000)
		call SetItem3W('sbok' , 120000)
		call SetItem3W('arsc' , 150000)
		call SetItem3W('rde0' , 210000)
		call SetItem3W('oflg' , 270000)
		call SetItem3W('frgd' , 320000)
		call SetItem3W('rej4' , 6000)
		call SetItem3W('drph' , 10000)
		call SetItem3W('oven' , 16000)
		call SetItem3W('frhg' , 35000)
		call SetItem3W('mlst' , 60000)
		call SetItem3W('nspi' , 100000)
		call SetItem3W('oli2' , 130000)
		call SetItem3W('rump' , 160000)
		call SetItem3W('shen' , 220000)
		call SetItem3W('stpg' , 280000)
		call SetItem3W('pgin' , 6000)
		call SetItem3W('gobm' , 10000)
		call SetItem3W('gvsm' , 16000)
		call SetItem3W('gldo' , 35000)
		call SetItem3W('gsou' , 60000)
		call SetItem3W('envl' , 100000)
		call SetItem3W('rugt' , 130000)
		call SetItem3W('shdt' , 160000)
		call SetItem3W('crdt' , 220000)
		call SetItem3W('pspd' , 280000)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    魔兽
	*/
	private function InitBeast takes nothing returns nothing

		call SetItemJingyan('I01S', 0.50)
	    call SetItemJingyan('IB05', 1.75)
	    call SetItemJingyan('IB03', 1.25)
	    call SetItemJingyan('IB00', 0.50)
	    call SetItemJingyan('IB01', 0.75)
	    call SetItemJingyan('IB09', 3.00)
	    call SetItemJingyan('IB08', 2.50)
	    call SetItemJingyan('IB06', 2.00)
	    call SetItemJingyan('IB07', 2.25)
	    call SetItemJingyan('IB04', 1.50)
	    call SetItemJingyan('IB02', 1.00)
	    call SetItemJingyan('I04X', 3.50)
	    call SetItemJingyan('IB0A', 3.50)

	    call SetItemJingyan('ratc', 5.00)
	    call SetItemJingyan('I04L', 6.00)
	    call SetItemJingyan('I04M', 6.00)

	    call SetItemHP('IB05' , 3200000)
		call SetItemHP('IB03' , 800000)
		call SetItemHP('IB00' , 50000)
		call SetItemHP('IB01' , 200000)
		call SetItemHP('IB09' , 20000000)
		call SetItemHP('I04X' , 30000000)
		call SetItemHP('IB0A' , 30000000)
		call SetItemHP('IB08' , 14000000)
		call SetItemHP('IB06' , 5000000)
		call SetItemHP('IB07' , 7000000)
		call SetItemHP('IB04' , 1600000)
		call SetItemHP('IB02' , 400000)
	    call SetItem3W( 'IB05' , 32000)
	    call SetItem3W( 'IB03' , 15000)
	    call SetItem3W( 'IB01' , 5000)
	    call SetItem3W( 'IB09' , 150000)
	    call SetItem3W( 'I04X' , 220000)
	    call SetItem3W( 'IB0A' , 220000)
	    call SetItem3W( 'IB08' , 100000)
	    call SetItem3W( 'IB06' , 50000)
	    call SetItem3W( 'IB07' , 70000)
	    call SetItem3W( 'IB04' , 24000)
	    call SetItem3W( 'IB02' , 8000)
    
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    擂台初始化
	*/
	private function InitLeitai takes nothing returns nothing
		//擂台
		call SetItem3W( 'prvt' , 1500)
	    call SetItem3W( 'cnob' , 5000)
	    call SetItem3W( 'rhth' , 8000)
	    call SetItemStr( 'hval' , 30000)
	    call SetItem3W( 'afac' , 30000)
	    call SetItem3W( 'pmna' , 57000)
	    call SetItem3W( 'evtl' , 100000)
	    call SetItem3W( 'bspd' , 160000)

	    call SetItem3W( 'mcou' , 250000)
		call SetItemSpellPerc( 'mcou' , 0.70)
		call SetItemAttack( 'mcou' , 2300000)
		call SetItemDefensePer( 'mcou', 0.15)
		call SetItemDamagePerc( 'mcou' , 0.20)
		//皎月
	    call SetItem3W( 'I04L' , 250000)
		call SetItemSpellPerc( 'I04L' , 0.70)
		call SetItemAttack( 'I04L' , 2300000)
		call SetItemDefensePer( 'I04L', 0.15)
		call SetItemDamagePerc( 'I04L' , 0.20)
		//混沌夜哀
	    call SetItem3W( 'I04M' , 250000)
		call SetItemSpellPerc( 'I04M' , 0.70)
		call SetItemAttack( 'I04M' , 2300000)
		call SetItemDefensePer( 'I04M', 0.15)
		call SetItemDamagePerc( 'I04M' , 0.20)

	    call SetItemSpellPerc( 'cnob' , 0.15)
		call SetItemSpellPerc( 'hval' , 0.25)
		call SetItemSpellPerc( 'afac' , 0.40)
		call SetItemSpellPerc( 'pmna' , 0.50)
		call SetItemSpellPerc( 'evtl' , 0.55)
		call SetItemSpellPerc( 'bspd' , 0.65)
		call SetItemSpellPerc( 'rde3' , 0.30)
	    call SetItemAttack( 'rhth' , 35000)
		call SetItemAttack( 'afac' , 200000)
		call SetItemAttack( 'bspd' , 1500000)
	    call SetItemHP( 'rhth' , 100000)
	    call SetItemHP( 'evtl' , 1000000)
	    call SetItemDefense( 'hval' , 1000)
	    call SetItemHPPer( 'pmna' , 0.10)
		call SetItemHPPer( 'rde3' , 0.20)
		call SetItemDefensePer( 'evtl', 0.10)
		call SetItemDefensePer( 'rde3', 0.20)
		call SetItemDamagePerc( 'evtl' , 0.10)
		call SetItemDamagePerc( 'bspd' , 0.15)
		call SetItemDamagePerc( 'rde3' , 0.20)
		call SetItemStrPerc('rde3', 0.20)
		call SetItemAgiPerc( 'rde3', 0.20)
		call SetItemIntPerc( 'rde3', 0.20)
		call SetItemAttackPerc( 'rde3', 0.50)

		call SetItemHPPer( 'ssil' , 0.30)
		call SetItemDefensePer( 'ssil', 0.30)
		call SetItemDamagePerc( 'ssil' , 0.30)
		call SetItemStrPerc('ssil', 0.30)
		call SetItemAgiPerc( 'ssil', 0.30)
		call SetItemIntPerc( 'ssil', 0.30)
		call SetItemAttackPerc( 'ssil', 0.75)
	    call SetItemSpellPerc( 'ssil' ,  0.45)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    超神
	*/
	function InitChaoshen takes nothing returns nothing
	    call SetItemAttack( 'rst1', 1500000)
	    call SetItemSpellPerc( 'rst1', 1.00)
	    call SetItem3W('I05F', 370000)
	    call SetItemHPPer('I05F', 2500000)
	    call SetItemFanji('I05F' , 5000000)
	    call SetItemSpellPerc( 'I05F', 1.00)
	    call SetItem3W('tbsm', 350000)
	    call SetItemDefense('tbsm', 25000)
	    call SetItemHPPer('tbsm', 9000000)
	    call SetItem3W('tfar', 420000)
	    call SetItemDefense('tfar', 20000)
	    call SetItemHPPer('tfar', 7500000)
	    call SetItem3W('tbak', 350000)
	    call SetItemHPPer('tbak', 7500000)
	    call SetItemDefense('tbak', 20000)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化混沌装备
	*/
	function InitHundun takes nothing returns nothing
		/*
		    诛神噬魔
		*/
		call SetItemStr('ICS1',360000)
		call SetItemAgi('ICS1',510000)
		call SetItemInt('ICS1',460000)
		call SetItemSpellPerc('ICS1',1.4)
		call SetItemXixue('ICS1',80000)
		call SetItemZhishang('ICS1',10000000)
		call SetItemAttack('ICS1',3000000)
		call SetItemStr('I04W',360000)
		call SetItemAgi('I04W',510000)
		call SetItemInt('I04W',460000)
		call SetItemSpellPerc('I04W',1.4)
		call SetItemXixue('I04W',80000)
		call SetItemZhishang('I04W',10000000)
		call SetItemAttack('I04W',3000000)
		/*
		    幽冥项链
		*/
		call SetItemHPPer( 'I05T' , 0.35)
		call SetItemDefensePer( 'I05T', 0.35)
		call SetItemDamagePerc( 'I05T' , 0.35)
		call SetItemStrPerc('I05T', 0.35)
		call SetItemAgiPerc( 'I05T', 0.35)
		call SetItemIntPerc( 'I05T', 0.35)
		call SetItemAttackPerc( 'I05T', 0.75)
	    call SetItemSpellPerc( 'I05T' ,  0.5)		
		call SetItemHPPer( 'I04Y' , 0.35)
		call SetItemDefensePer( 'I04Y', 0.35)
		call SetItemDamagePerc( 'I04Y' , 0.35)
		call SetItemStrPerc('I04Y', 0.35)
		call SetItemAgiPerc( 'I04Y', 0.35)
		call SetItemIntPerc( 'I04Y', 0.35)
		call SetItemAttackPerc( 'I04Y', 0.75)
	    call SetItemSpellPerc( 'I04Y' ,  0.5)		

		/*
		    衣服
		*/
	    call SetItem3W('I05Y', 400000)
	    call SetItemDefense('I05Y', 30000)
	    call SetItemHPPer('I05Y', 15000000)
	    call SetItem3W('I05Z', 470000)
	    call SetItemDefense('I05Z', 25000)
	    call SetItemHPPer('I05Z', 10000000)
	    call SetItem3W('I060', 400000)
	    call SetItemDefense('I060', 25000)
	    call SetItemHPPer('I060', 10000000)
	    /*
	        双魂
	    */
	    call SetItemSpellPerc('ICX1',1.5)
	    call SetItemAttack('ICX1',2500000)
	    /*
	        戒指
	    */
	    call SetItem3W('I05W',400000)
	    call SetItem3W('I05V',300000)
	    /*
	        翅膀
	    */
	    call SetItem3W('I05X',410000)
	    call SetItemHP('I05X',5000000)
	    call SetItemFanji('I05X',80000000)
	    call SetItemSpellPerc('I05X',1.2)
	    call SetItem3W('ICY1',470000)
	    call SetItemHP('ICY1',5000000)
	    call SetItemFanji('ICY1',80000000)
	    call SetItemSpellPerc('ICY1',1.3)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	private function InitItemAttr takes nothing returns nothing
		call InitErdianQi()
		call InitErdianBa()
		call InitDengClothes()
		call InitBeast()
		call InitLeitai()
		call InitChaoshen()
		call InitHundun()
	endfunction

endlibrary