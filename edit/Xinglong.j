//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"

/*
    英雄星胧的技能
*/
library_once Xinglong requires SpellBase,Printer,Attr


	globals
		private trigger TSpellXinglong = null
		private trigger TSpellXinglongUpdate = null
		private trigger TSpellXinglongAttack = null
		//是否正在吐息
		private boolean BTuxing = false

		//伤害值
		private real XinglongDamage = 0

		private boolean BLevel450 = false
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathXinglong takes unit u returns nothing
		//todo:死亡吐息的眩晕与伤害
		if (GetUnitTypeId(u) == 'hhh7') then
			call DamageArea(xinglong,GetUnitX(u),GetUnitY(u),600,XinglongDamage)
 			call SimulateSpell(xinglong,xinglong,'A0JT',2,2,"stomp",false,true,false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇附体
	*/
	private function Longhuangfuti takes nothing returns nothing
		//todo :测试 1死亡变身 还会放吗
		if (GetUnitTypeId(xinglong) == 'xin1') then
			call AddDamagePercent(xinglong,0.2)
			call AddDefensePercent(xinglong,0.1)
		else
			call AddDamagePercent(xinglong,-0.2)
			call AddDefensePercent(xinglong,-0.1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是不是龙
	*/
	function IsLong takes nothing returns boolean
		return GetUnitTypeId(xinglong) == 'xin2'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇吐息
	*/
	private function Longhuangtuxi2 takes boolean diyfacing,real x,real y ,real damage,integer times returns nothing
		local real facing = R3(diyfacing,GetFacingBetweenXY(GetUnitX(xinglong),GetUnitY(xinglong),x,y),GetUnitFacing(xinglong))
		local real distance = R3(diyfacing,GetDistance(GetUnitX(xinglong),GetUnitY(xinglong),x,y),1200)
		//todo：龙皇吐息的单位类型
		set u = CreateUnit(GetOwningPlayer(xinglong),'hhh4',GetUnitX(xinglong),GetUnitY(xinglong),facing)
    	call SetUnitScalePercent( u,  100.00 +  times * 10.00  , 100.00 +  times * 10.00, 100.00 +  times * 10.00 )
    	call UnitApplyTimedLifeBJ( distance/900, 'BHwe', u)
    	//todo:冰块的特效
	    call YDWETimerPatternRushSlide( u, facing , distance, distance/900, 0.05, damage, 180+times*20., false, true, true, "origin", "", "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl" )
	endfunction

	private function Longhuangtuxi takes real x, real y,integer abilityID,real rate returns nothing
		local integer times = I3((IsSecondSpellOK(xinglong) == true and GetUnitAbilityLevel(xinglong,'A0IR') == 1),3,1)
		local intege i = 1
		set BTuxing = true
		if (abilityID != 0) then
	    	call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName(abilityID),XinglongDamage)
		endif
		call Longhuangtuxi2(true,GetSpellTargetX(),GetSpellTargetY(),XinglongDamage*rate,1)
		if (IsSecondSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0IR') == 1) then
			call PolledWait(0.5)
			loop
				exitwhen i > 10
				if (GetRandomInt(1,100) > (i*10)) then
					call Longhuangtuxi2(false,0,0,XinglongDamage*rate*0.1*i,i)
	    			call CreateSpellTextTag(I2S(i)+"次共鸣！",xinglong,100,0,0,3)
					call PolledWait(0.5)
	    		else
	    			exitwhen true
				endif
				set i = i +1
			endloop
		endif
		set BTuxing = false
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
	    攻击被动
	*/
	private function TSpellXinglongAttackCon takes nothing returns boolean
		return GetAttacker() == xinglong
	endfunction

	private function TSpellXinglongAttackAct takes nothing returns nothing
		if (IsSecondSpellOK(xinglong) and GetUnitState(xinglong,UNIT_STATE_MANA) >= 250 and GetRandomInt(1,20) == 1 and GetUnitAbilityLevel(xinglong,'A0IR') == 1) then
			call Longhuangtuxi(GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),'A0IR',0.33)
		endif
		if (IsThirdpellOK(xinglong) and GetUnitState(xinglong,UNIT_STATE_MANA) >= 400 and GetRandomInt(1,10) == 1 and GetUnitAbilityLevel(xinglong,'A0IS') == 1) then
			call UnitDamageTarget( xinglong, GetAttackedUnitBJ(), (GetAttack(xinglong)+GetHeroStr(xinglong,false))*3* SquareRoot(I2R(GetHeroLevel(xinglong))), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call CreateSpellTextTag("弑",GetAttackedUnitBJ(),100,0,100,3)
			//todo:被攻击目标加入流血的特效
			call DestroyEffect(AddSpecialEffect("Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇凝性的伤害被动
	*/
    private function TSpellXinglongDamageCon takes nothing returns boolean
    	return true
    endfunction
    
    private function TSpellXinglongDamageAct takes nothing returns nothing
    	// body...
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
		//todo:龙皇轮回的头顶特效
		call YDWETimerDestroyEffect(60,AddSpecialEffectTargetUnitBJ("overhead",xinglong,"war3mapImported\\music.mdx"))
		call DestroyEffect(AddSpecialEffect("Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl", x, y ))
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
			call Longhuangtuxi(GetSpellTargetX(),GetSpellTargetY(),'A0IQ',1)
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
			call CreateEffect2(GetUnitX(xinglong), GetUnitY(xinglong))
 			call SimulateSpell(xinglong,xinglong,'A0JT',2,2,"stomp",false,true,false)
	    	call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName('A0IT'),XinglongDamage*10)
	    	call PolledWait(1)
			call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage * 10)
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
	    刷新伤害值，及判断形态扣血
	*/
	private function FlashXinglongDamage takes nothing returns nothing
		set XinglongDamage = GetDamageStr(xinglong)
		if (IsLong() and IsUnitAliveBJ(xinglong)) then
			//	todo：流血特效
			call DestroyEffect(AddSpecialEffect("Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
			call UnitDamageTarget( xinglong, xinglong, GetUnitState(xinglong,UNIT_STATE_MAX_LIFE)*0.08, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
		endif
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

	    //刷新伤害,还有每秒判断形态是否扣血
	    call TimerStart(CreateTimer(),1,true,function FlashXinglongDamage)

	    //升级回血及造成伤害
	    set TSpellXinglongUpdate = CreateTrigger() 
	    call TriggerRegisterUnitEvent( TSpellXinglongUpdate, xinglong, EVENT_UNIT_HERO_LEVEL )
	    call TriggerAddAction(TSpellXinglongUpdate, function TSpellXinglongUpdateAct)

	    //攻击触发事件，星胧
	    set TSpellXinglongAttack = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellXinglongAttack, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellXinglongAttack, Condition(function TSpellXinglongAttackCon))
	    call TriggerAddAction(TSpellXinglongAttack, function TSpellXinglongAttackAct)
	    
	    //伤害免疫事件
	    set TSpellXinglongDamage = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellXinglongDamage, xinglong, EVENT_UNIT_DAMAGED )
	    call TriggerAddCondition(TSpellXinglongDamage, Condition(function TSpellXinglongDamageCon))
	    call TriggerAddAction(TSpellXinglongDamage, function TSpellXinglongDamageAct)
	endfunction

endlibrary
