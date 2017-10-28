
//! import "Heiyan.j"
//! import "Seyu.j"
//! import "LHBase.j"

library_once HeroSpellBase initializer InitHeroSpellBase requires LHBase,Heiyan,Seyu,Hanshang,Huanyi,Chenji,Mengji,Yanmie,Cangling,Sichen,Xinglong,Xiaoting
	
	globals
		boolean array BTianting1
		boolean array BTianting2
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/
	private function HeroLearnSkillCon takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetTriggerUnit()) != true) and BuyerFilter(GetTriggerUnit()) )
	endfunction



	//直接学习
	private function HeroLearnSkillAct takes nothing returns nothing
		set learnSkillHero = udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]

		//加入英雄内部判断
		call LearnSkillHeiyan(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillSeyu(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillHanshang(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillHuanyi(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillChenji(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillMengji(learnSkillHero,GetLearnedSkill())
		call LearnSkillYanmie(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillCangling(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillSichen(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillXinglong(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillXiaoting(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillLichi(learnSkillHero,GetLearnedSkill()) 
		call LearnSkillMoqi(learnSkillHero,GetLearnedSkill()) 
	endfunction

	//通过判断学习第几个来判断
	function TriggerAllHeroLearn takes integer convertedPlayerID,integer which returns nothing
		set learnSkillHero = udg_H[convertedPlayerID]

		//加入英雄内部判断
		call LearnSkillHeiyanI(learnSkillHero,which) 
		call LearnSkillSeyuI(learnSkillHero,which) 
		call LearnSkillHanshangI(learnSkillHero,which) 
		call LearnSkillHuanyiI(learnSkillHero,which) 
		call LearnSkillChenjiI(learnSkillHero,which) 
		call LearnSkillMengjiI(learnSkillHero,which) 
		call LearnSkillYanmieI(learnSkillHero,which)
		call LearnSkillCanglingI(learnSkillHero,which)
		call LearnSkillSichenI(learnSkillHero,which)
		call LearnSkillXinglongI(learnSkillHero,which)
		call LearnSkillLichiI(learnSkillHero,which)
		call LearnSkillMoqiI(learnSkillHero,which)
		call LearnSkillXiaotingI(learnSkillHero,which)
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

