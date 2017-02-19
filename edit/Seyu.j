
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"

library_once Seyu requires SpellBase,Printer,Attr 
	
	globals
		unit seyu = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
		local integer i
		call BJDebugMsg(GetUnitName(learner)+"学习了第"+I2S(whichSpell)+"技能")
		if (learner == seyu) then
			if(whichSpell == 1) then
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(3)), 3 )
			elseif (whichSpell == 2 and IsSecondSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AUav') == 1) then
				//技能2初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(4)), 3 )
			elseif (whichSpell == 3 and IsThirdSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEar') == 1) then
				//技能3初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(5)), 3 )
				call SetPlayerTechResearchedSwap( 'R00D', 1, GetOwningPlayer(seyu) )
				set i = 1
       			loop
       				exitwhen i > 6
       				
		            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
		                call AddAgiPercent(i,0.4)
		            endif

       				set i = i +1
       			endloop
			elseif (whichSpell == 4 and IsFourthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEsv') == 1) then
				//技能4初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(6)), 3 )
			elseif (whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEst') == 1) then
				//技能5初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(7)), 3 )
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(8)), 3 )
			endif
		endif
	endfunction

	function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if (learner == seyu) then
			if (learnSpellID == 'AEfk') then
				call LearnSkillSeyuI(learner,1)
			elseif (learnSpellID == 'AUav') then
				call LearnSkillSeyuI(learner,2)
			elseif (learnSpellID == 'AEar') then
				call LearnSkillSeyuI(learner,3)
			elseif (learnSpellID == 'AEsv') then
				call LearnSkillSeyuI(learner,4)
			elseif (learnSpellID == 'AEst') then
				call LearnSkillSeyuI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	function InitSeyu takes unit u returns nothing
		set seyu = u
	endfunction
endlibrary