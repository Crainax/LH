
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄幻逸的技能
*/
library_once Huanyi requires SpellBase,Printer,Attr
	
	globals
		/*
		    英雄幻逸
		*/
		unit Huanyi = null

		/*
		    技能触发
		*/
		private trigger  TSpellHuanyi = null 

		/*
		    元素状态
		*/
		private boolean IsFire = false
		private boolean IsWater = false
		private boolean IsLumber = false
		private boolean IsWind = false
		private integer ICurrentSpell = 'AHH5'
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageHuanyi takes unit u returns boolean

		if (GetUnitTypeId(u) == 'h011') then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget( u, GetTriggerUnit(), DamageSacri * 50, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call EnableTrigger(GetTriggeringTrigger())
			return true 
		endif
		//泣罗刹后续伤害
		if (GetUnitTypeId(u) == 'hh04') then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget( u, GetTriggerUnit(), DamageSacri * 60, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call EnableTrigger(GetTriggeringTrigger())
			return true
		endif
		return false
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    幻元伏心
	*/
	private function HuanyiFilter takes nothing returns boolean
		return IsEnemy(GetFilterUnit(),Huanyi)
	endfunction

	private function None takes nothing returns nothing
		
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    根据元素激活与否去设置相应的技能
	*/
	private function SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,false)
		//0排列
		if (not(IsFire) and not(IsWater) and not(IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHH5'
		//1排列
		elseif ((IsFire) and not(IsWater) and not(IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHH6'
		elseif (not(IsFire) and (IsWater) and not(IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHH7'
		elseif (not(IsFire) and not(IsWater) and (IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHH8'
		elseif (not(IsFire) and not(IsWater) and not(IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHH9'
		//2排列
		elseif ((IsFire) and (IsWater) and not(IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHHA'
		elseif ((IsFire) and not(IsWater) and (IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHHB'
		elseif ((IsFire) and not(IsWater) and not(IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHC'
		elseif (not(IsFire) and (IsWater) and (IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHHD'
		elseif (not(IsFire) and (IsWater) and not(IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHE'
		elseif (not(IsFire) and not(IsWater) and (IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHF'
		//1排列
		elseif (not(IsFire) and (IsWater) and (IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHG'
		elseif ((IsFire) and not(IsWater) and (IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHH'
		elseif ((IsFire) and (IsWater) and not(IsLumber) and (IsWind))) then
			set ICurrentSpell = 'AHHI'
		elseif ((IsFire) and (IsWater) and (IsLumber) and not(IsWind))) then
			set ICurrentSpell = 'AHHJ'
		//0排列
		else
			set ICurrentSpell = 'AHHK'
		endif
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,true)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellHuanyiAct takes nothing returns nothing
		//四相
		if (GetSpellAbilityId() == 'AHH0') then
			set IsFire = not (IsFire)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH1') then
			set IsWater = not (IsWater)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH2') then 
			set IsLumber = not (IsLumber)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH3') then 
			set IsWind = not (IsWind)
			call SetHuanyiSpell()
		//复苏
		elseif (GetSpellAbilityId() == 'AHH4') then 
			call Fusu()
		//幻元伏心
		elseif (GetSpellAbilityId() == 'AHH5') then 
			call None()
		//七炎焚狱
		elseif (GetSpellAbilityId() == 'AHH6') then 
			call Fire()
		//天古木精
		elseif (GetSpellAbilityId() == 'AHH8') then 
			call Lumber()
		//幻化残卷
		elseif (GetSpellAbilityId() == 'AHH9') then 
			call Wind()
		//冰火双绝
		elseif (GetSpellAbilityId() == 'AHHA') then 
			call FireWater()
		//万象归影
		elseif (GetSpellAbilityId() == 'AHHB') then 
			call FireLumber()
		//火轮烁日
		elseif (GetSpellAbilityId() == 'AHHC') then 
			call FireWind()
		//幻冥天泉
		elseif (GetSpellAbilityId() == 'AHHE') then 
			call WaterWind()
		//沧怒古参
		elseif (GetSpellAbilityId() == 'AHHG') then 
			call WaterLumberWind()
		//雨玥千里
		elseif (GetSpellAbilityId() == 'AHHH') then 
			call FireLumberWind()
		//残月流星
		elseif (GetSpellAbilityId() == 'AHHI') then 
			call FireWaterWind()
		//引力界场
		elseif (GetSpellAbilityId() == 'AHHJ') then 
			call FireWaterLumber()
		//寰宇归一
		elseif (GetSpellAbilityId() == 'AHHK') then 
			call FireWaterLumber()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillHuanyiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == Huanyi) then
			if (whichSpell == 2 and IsSecondSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH1') == 1) then
				//技能2初始化
			elseif (whichSpell == 3 and IsThirdSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH2') == 1) then
				//技能3初始化
				set i = 1
				//增加技能伤害
				loop
					exitwhen i > 6
					call AddSpellPercent(i,0.6)
					set i = i +1
				endloop
			elseif (whichSpell == 4 and IsFourthSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH3') == 1) then
				//技能4初始化
			endif
		endif
	endfunction

	function LearnSkillHuanyi takes unit learner,integer learnSpellID returns nothing
		if (learner == Huanyi) then
			if (learnSpellID == 'AHH0') then
				call LearnSkillHuanyiI(learner,1)
			elseif (learnSpellID == 'AHH1') then
				call LearnSkillHuanyiI(learner,2)
			elseif (learnSpellID == 'AHH2') then
				call LearnSkillHuanyiI(learner,3)
			elseif (learnSpellID == 'AHH3') then
				call LearnSkillHuanyiI(learner,4)
			elseif (learnSpellID == 'AHH4') then
				call LearnSkillHuanyiI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitHuanyi takes unit u returns nothing
		set Huanyi = u
		//主英雄技能
		set TSpellHuanyi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHuanyi,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellHuanyi, function TSpellHuanyiAct)
	    //初始化技能状态
	    call UnitAddAbility(Huanyi,'AHH6')
	    call UnitAddAbility(Huanyi,'AHH7')
	    call UnitAddAbility(Huanyi,'AHH8')
	    call UnitAddAbility(Huanyi,'AHH9')
	    call UnitAddAbility(Huanyi,'AHHA')
	    call UnitAddAbility(Huanyi,'AHHB')
	    call UnitAddAbility(Huanyi,'AHHC')
	    call UnitAddAbility(Huanyi,'AHHD')
	    call UnitAddAbility(Huanyi,'AHHE')
	    call UnitAddAbility(Huanyi,'AHHF')
	    call UnitAddAbility(Huanyi,'AHHG')
	    call UnitAddAbility(Huanyi,'AHHH')
	    call UnitAddAbility(Huanyi,'AHHI')
	    call UnitAddAbility(Huanyi,'AHHJ')
	    call UnitAddAbility(Huanyi,'AHHK')
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH6',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH7',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH8',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH9',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHA',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHB',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHC',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHD',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHE',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHF',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHG',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHH',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHI',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHJ',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHK',false)
	endfunction

endlibrary