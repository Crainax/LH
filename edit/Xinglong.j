//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"

/*
    英雄星胧的技能
*/
library_once Xinglong requires SpellBase,Printer,Attr


	globals
		private trigger TSpellXinglong = null

		private boolean BTuxing = false

		//伤害值
		private real XinglongDamage = 0
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    龙皇附体
	*/
	private function Longhuangfuti takes nothing returns nothing
		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇吐息
	*/
	private function Longhuangtuxi takes integer abilityID,real rate returns nothing
		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇共鸣
	*/
	private function Longhuanggongming takes nothing returns nothing
		if not(BTuxing) then
			call UnitRemoveAbility(xinglong,'A0IQ')
			call UnitAddAbility(xinglong,'A0IQ')
	    	call PrintSpellContent(GetOwningPlayer(xinglong),GetAbilityName('A0IR'),"，刷新成功。")
	    	if (IsLong()) then
	    		call UnitDamageTarget( xinglong, xinglong, GetUnitState(xinglong,UNIT_STATE_MAX_LIFE)*0.25, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
	    	else
	    		call UnitDamageTarget( xinglong, xinglong, GetUnitState(xinglong,UNIT_STATE_MAX_LIFE)*0.5, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
	    	endif	
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
	    else
	    	call PrintSpellContent(GetOwningPlayer(xinglong),GetAbilityName('A0IR'),"，刷新失败。")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇轮回
	*/

	//伤害的计时器
	private function LonghuanglunhuiDamageTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		if (IsUnitAliveBJ(u)) then
			
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction

	//升级的计时器
	private function LonghuanglunhuiUpgradeTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer current = LoadInteger(spellTable,id,1)
		local integer step = LoadInteger(spellTable,id,2)
		if (current < 20) then
			call SetHeroLevel(xinglong,IMaxBJ(450,GetHeroLevel(xinglong)+step),true)
			call SaveInteger(spellTable,GetHandleId(t),1,current + 1)
		else
			call SetHeroLevel(xinglong,450)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	private function Longhuanglunhui takes nothing returns nothing
		local integer i = GetUnitLevel(xinglong)
		local timer t = CreateTimer()
		local timer t2 = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(xinglong),'uyan',GetUnitX(xinglong),GetUnitY(xinglong),0)
		call UnitApplyTimedLifeBJ( 10, 'BHwe',u )
		call PrintSpellName(GetOwningPlayer(xinglong),GetAbilityName('A0IT'))
		set BLevel450 = true
		//不断伤害
		call SaveUnitHandle(spellTable,GetHandleId(t2),1,u)
		call TimerStart(t2,0.05,true,function LonghuanglunhuiDamageTimer)
		//快速升级
		call SaveInteger(spellTable,GetHandleId(t),1,0)
		call SaveInteger(spellTable,GetHandleId(t),2,IMinBJ(1,(450-i)/20))
		call TimerStart(t,0.1,true,function LonghuanglunhuiUpgradeTimer)
		set t2 = null
		set t = null
		set u = null
		call PolledWait(60)
		call SetHeroLevel(xinglong,i,false)
		set BLevel450 = false
		call PrintSpellContent(GetOwningPlayer(xinglong),GetAbilityName('A0IT'),"等级增益时间结束。")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/

	private function TSpellXinglongAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0IQ') then
			//龙皇吐息
			call Longhuangtuxi('A0IQ',1)
		elseif (GetSpellAbilityId() == 'A0IR') then
			//龙皇共鸣
			call Longhuanggongming()
		elseif (GetSpellAbilityId() == 'A0IT') then
			//龙皇轮回
			call Longhuanglunhui()
		elseif (GetSpellAbilityId() == 'A0IA') then 
			//龙皇附体
			call Longhuangfuti()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧升级后
	*/
	private function CreateEffect1 takes real x,real y returns nothing
		local integer i = 1
		call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", x, y ))
		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(x + 900 * SinBJ(i*60)) ))
			set i = i +1
		endloop
	endfunction

	private function CreateEffect2 takes real x,real y returns nothing
		local integer i = 1
	    call CreateUnitEffect(GetOwningPlayer(xinglong),'h01M',x,y,0)
		loop
			exitwhen i > 6
	    	call CreateUnitEffect(GetOwningPlayer(xinglong),'h01M',YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(x + 900 * SinBJ(i*60)),0)
			set i = i +1
		endloop
	endfunction

	private function TSpellXinglongUpdateAct takes nothing returns nothing
		if (BLevel450) then
			return
		endif	
		if (IsFourthSpellOK(xinglong) == true and GetUnitAbilityLevel(xinglong,'A0IT') == 1 and GetUnitLevel(xinglong) >= 101) then
			//龙皇轮回，伤害并眩晕，还有特效
			call SetHeroLevel(xinglong,1,false)
			call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage * 10)
 			call SimulateSpell(xinglong,xinglong,'A0JT',2,2,"stomp",false,true,false)
	    	call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName('A0IT'),XinglongDamage*10)
			call CreateEffect2(GetUnitX(xinglong), GetUnitY(xinglong))
	    	return
		endif

		if (IsSecondSpellOK(xinglong) == true and GetUnitAbilityLevel(xinglong,'A0IR') == 1) then
		    call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName('A0IR'),XinglongDamage*0.5)
			call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage * 0.5)
			call SimulateSpell(xinglong,xinglong,'A0JT',1,2,"stomp",false,true,false)
			call CreateEffect1(GetUnitX(xinglong), GetUnitY(xinglong))
		endif

    	call SetUnitLifePercentBJ(xinglong,100)
    	call SetUnitManaPercentBJ(xinglong,100)
    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值
	*/
	private function FlashXinglongDamage takes nothing returns nothing
		set XinglongDamage = GetDamageAgi(xinglong)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillXinglongI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == xinglong) then
			if (whichSpell == 3 and IsThirdSpellOK(xinglong) == true and GetUnitAbilityLevel(xinglong,'A0IS') == 1) then
			elseif (whichSpell == 5 and IsFifthSpellOK(xinglong) == true and GetUnitAbilityLevel(xinglong,'A0IU') == 1) then
			endif
		endif
	endfunction

	function LearnSkillXinglong takes unit learner,integer learnSpellID returns nothing
		if (learner == xinglong) then
			if (learnSpellID == 'A0IQ') then
				call LearnSkillSichenI(learner,1)
			elseif (learnSpellID == 'A0IR') then
				call LearnSkillSichenI(learner,2)
			elseif (learnSpellID == 'A0IS') then
				call LearnSkillSichenI(learner,3)
			elseif (learnSpellID == 'A0IT') then
				call LearnSkillSichenI(learner,4)
			elseif (learnSpellID == 'A0IU') then
				call LearnSkillSichenI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitXinglong takes unit u returns nothing
		set xinglong = u

		set TSpellXinglong = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellXinglong,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellXinglong, function TSpellXinglongAct)

	    //刷新伤害
	    call TimerStart(CreateTimer(),1,true,function FlashXinglongDamage)

	    //升级回血及造成伤害
	    set TSpellXinglongUpdate = CreateTrigger() 
	    call TriggerRegisterUnitEvent( TSpellXinglongUpdate, xinglong, EVENT_UNIT_HERO_LEVEL )
	    call TriggerAddAction(TSpellXinglongUpdate, function TSpellXinglongUpdateAct)
	endfunction

endlibrary
