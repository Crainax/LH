#ifndef PrinterIncluded
#define PrinterIncluded

#include  "edit/LHBase.j"
library_once Printer initializer InitPrinter requires LHBase



//---------------------------------------------------------------------------------------------------
	/*
	    打印技能数据
	*/

	function PrintSpellAdd takes player whichPlayer,string spellName,real damage,string addtional returns nothing
		if (BHideDamage[GetConvertedPlayerId(whichPlayer)]) then
			return
		endif
		if (damage > 10000) then
	    	call DisplayTextToPlayer( whichPlayer, 0, 0, ( "|cFFFF66CC【|r" +  spellName +  "|cFFFF66CC】|r伤害加成" +  I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage/10000)) + "万"  + addtional + "." ) ) ) )
	    else
	    	call DisplayTextToPlayer( whichPlayer, 0, 0, ( "|cFFFF66CC【|r" +  spellName +  "|cFFFF66CC】|r伤害加成" +  I2S(R2I(( ( udg_I_Jinengjiacheng[GetConvertedPlayerId(whichPlayer)] * 100.00 ) - 99.00 ))) + ( "%,伤害" + ( I2S(R2I(damage))  + addtional + "." ) ) ) )
		endif
	endfunction

	function PrintSpell takes player whichPlayer,string spellName,real damage returns nothing
		call PrintSpellAdd(whichPlayer,spellName,damage,"")
	endfunction

	function PrintSpellContent takes player whichPlayer,string spellName,string content returns nothing
		if (BHideDamage[GetConvertedPlayerId(whichPlayer)]) then
			return
		endif
	    call DisplayTextToPlayer( whichPlayer, 0, 0, ( "|cFFFF66CC【|r" +  spellName +  "|cFFFF66CC】|r" +  content ))
	endfunction

	function PrintSpellName takes player whichPlayer,string spellName returns nothing
		call PrintSpellContent(whichPlayer,spellName,"")
	endfunction

//---------------------------------------------------------------------------------------------------

	private function InitPrinter takes nothing returns nothing

	endfunction

endlibrary
#endif
