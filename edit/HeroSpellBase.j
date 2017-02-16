
//! import "Heiyan.j"
//! import "LHBase.j"
library_once HeroSpellBase initializer InitHeroSpellBase requires LHBase,Heiyan
	
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/
	private function HeroLearnSkillCon takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetUnitTypeId(GetTriggerUnit()) != 'N018') )
	endfunction

	//直接学习
	private function HeroLearnSkillAct takes nothing returns nothing
		set learnSkillHero = udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]

		//加入英雄内部判断
		call LearnSkillHeiyan(learnSkillHero,GetLearnedSkill()) 
	endfunction

	//通过判断学习第几个来判断
	function TriggerAllHeroLearn takes integer convertedPlayerID,integer which returns nothing
		set learnSkillHero = udg_H[convertedPlayerID]

		//加入英雄内部判断
		call LearnSkillHeiyanI(learnSkillHero,which) 
	endfunction
//---------------------------------------------------------------------------------------------------


	private function InitHeroSpellBase takes nothing returns nothing
		    local trigger t = CreateTrigger()
		    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_HERO_SKILL )
		    call TriggerAddCondition(t, Condition(function HeroLearnSkillCon))
		    call TriggerAddAction(t, function HeroLearnSkillAct)
		    set t = null
	endfunction
endlibrary
