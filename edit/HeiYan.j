
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
//! import "Spin.j"
/*
    英雄黑阎的技能
*/
library_once Heiyan requires SpellBase,Printer,Attr,Aura,Spin
	
	globals
		/*
		    主动技能触发
		*/
		private trigger TSpellHeiyan1 = null
		private trigger TSpellHeiyan00 = null
		private trigger TSpellHeiyan2 = null
		private trigger TSpellHeiyan40 = null
		private trigger TSpellHeiyan41 = null
		/*
		    控制权是魔界
		*/
		private boolean BIsMojie = true
		/*
		    英雄黑阎
		*/

		/*
		    阎罗殿
		*/
		key kUYanluo
		/*
		    葬九天
		*/
		private unit UZangJiuTian = null

		private boolean IsDouble = false
		/*
		    祭品的数量
		*/
		private integer ISacriMaxCount = 6
		/*
		    祭品单位组
		*/
		private group GSacri = null

		/*
		    祭品攻击伤害，每3秒刷新一次数值
		*/
		private real DamageSacri = 0

		//成就死亡值
		private integer ISpinHeiyan = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	  	次数统计  
	*/
	private function SpinTongji takes nothing returns nothing
		if not (GetHeiyan1Spin(GetOwningPlayer(Heiyan))) then
			set ISpinHeiyan = ISpinHeiyan + 1
			if (ModuloInteger(ISpinHeiyan,25) == 0 and ISpinHeiyan > 0) then
				call DisplayTextToPlayer(GetOwningPlayer(Heiyan), 0., 0., "【|cff0000ff七阴之恸|r】完成进度"+I2S(ISpinHeiyan)+"/300.")
			endif
			debug if (ISpinHeiyan >= 300) then
				debug call SetHeiyanSpinOK(GetOwningPlayer(Heiyan))
			debug endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断祭品是不是满了
	*/
	private function IsFull takes nothing returns boolean
		return CountUnitsInGroup(GSacri) >= ISacriMaxCount
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创造祭品并无敌
	*/
	private function CreateBasicSacrifice takes real tx, real ty returns nothing
		local unit u
		local real angle 
		local real x
		local real y 
		local integer i = 3
		if (IsFull()) then
			return
		endif
		if (IsDouble == true) then
			set i = 1
		endif
		loop
			exitwhen i > 3

			set angle = GetRandomReal(0,360)
			set x = YDWECoordinateX(tx + 80 * CosBJ(angle))
			set y = YDWECoordinateY(ty + 80 * SinBJ(angle))
			if (BIsMojie == true) then
				set u =  CreateUnit(Player(11),'h012' ,x,y,0)
			else
				set u =  CreateUnit(GetOwningPlayer(Heiyan),'h012' ,x,y,0)
			endif
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", x, y ))
		    call UnitApplyTimedLifeBJ( 6 + IJ1(Heiyan,3,0) + IJ2(Heiyan,3,0), 'BHwe' , u )
	    	call GroupAddUnit(GSacri,u)

		    set i = i +1
		endloop

		set u =null
	endfunction

	private function CreateSuperSacrifice takes real x, real y returns nothing
		local unit u
		local integer i = 3
		if (IsDouble == true) then
			set i = 1
		endif
		loop
			exitwhen i > 3

			set u =  CreateUnit(GetOwningPlayer(Heiyan),'h011' ,x,y,0)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", x, y ))
		    call UnitApplyTimedLifeBJ( 30, 'BHwe' , u )

			set i = i +1
		endloop
		set u =null
	endfunction

	private function CreateSacrifice takes unit creater returns nothing
		call CreateBasicSacrifice(GetUnitX(creater),GetUnitY(creater))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    祭品攻击伤害的刷新
	*/
	private function SacriDamageFlash takes nothing returns nothing
		set DamageSacri = GetDamageStr(Heiyan) * 0.01
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    祭品的攻击伤害
	*/
	
	function SimulateDamageHeiyan takes unit u returns boolean
		//祭品的伤害
		if (GetUnitTypeId(u) == 'h012') then
			if (IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(Heiyan))) then
				call DisableTrigger(GetTriggeringTrigger())
				if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Heiyan))]) then
					call UnitDamageTarget( u, GetTriggerUnit(), RMaxBJ(DamageSacri * IJ2(Heiyan,12,IJ1(Heiyan,6,3)),GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*0.01*0.5), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				else
					call UnitDamageTarget( u, GetTriggerUnit(), DamageSacri * IJ2(Heiyan,12,IJ1(Heiyan,6,3)), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				endif
				call EnableTrigger(GetTriggeringTrigger())
			else
				call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*RJ2(Heiyan,0.12,RJ1(Heiyan,0.06,0.03)) )
				call SetUnitManaBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA) + 3)
			endif
				return true
		endif

		//泣罗刹后续与高级祭品
		if (GetUnitTypeId(u) == 'hh04') then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget( u, GetTriggerUnit(), DamageSacri * 10, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call EnableTrigger(GetTriggeringTrigger())
			return true 
		endif
		if (GetUnitTypeId(u) == 'h011') then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget( u, GetTriggerUnit(), DamageSacri * 50, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call SetUnitLifeBJ(Heiyan,GetUnitState(Heiyan,UNIT_STATE_LIFE)+ DamageSacri * 1.5)
			call EnableTrigger(GetTriggeringTrigger())
			return true 
		endif
		return false
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能0:切换祭品形态
	*/
	//魔界
	private function YeShenJi takes nothing returns nothing
		local unit u = GetSpellAbilityUnit()
		local group l_group = CreateGroup()
		local unit l_unit
		set BIsMojie = not (BIsMojie)
		call GroupAddGroup(GSacri,l_group)
		if(BIsMojie == true) then
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"当前祭品控制权为魔界.")

		    loop
		        set l_unit = FirstOfGroup(l_group)
		        exitwhen l_unit == null
		        call GroupRemoveUnit(l_group, l_unit)

		        call SetUnitOwner(l_unit,Player(11),true)
		    endloop
		else
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"当前祭品控制权为自己.")
		    loop
		        set l_unit = FirstOfGroup(l_group)
		        exitwhen l_unit == null
		        call GroupRemoveUnit(l_group, l_unit)

		    	call SetUnitOwner(l_unit,GetOwningPlayer(Heiyan),true)
		    endloop
		endif
		call DestroyGroup(l_group)
		set l_group = null
		set u = null
		set l_unit = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能0：杀死创造祭品
	*/

	private function TSpellHeiyan00Con takes nothing returns boolean
		return (GetKillingUnitBJ() == Heiyan and IsUnitIllusion(GetKillingUnitBJ()) == false and GetUnitPointValue(GetDyingUnit()) != 123	and GetUnitPointValue(GetDyingUnit()) != 0 and IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) and GetUnitTypeId(GetDyingUnit()) != 'h012')
	endfunction

	private function TSpellHeiyan00Act takes nothing returns nothing
		call CreateSacrifice(GetDyingUnit())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能1:千鬼邪
	*/
	private function HeiyanFilter takes nothing returns boolean
		return (IsEnemy(GetFilterUnit(),Heiyan) or IsUnitInGroup(GetFilterUnit(),GSacri))
	endfunction

	private function QianGuiXie takes unit speller,unit target,real damageRate,integer abilityID returns nothing
		local unit u = speller
		local real damage = GetDamageStr(u) * damageRate
	    local group l_group = CreateGroup()
	    local unit l_unit
	    local integer count
	    call CreateUnitEffect(GetOwningPlayer(u),'h008',GetUnitX(target),GetUnitY(target),0)
	    call GroupEnumUnitsInRange(l_group, GetUnitX(target), GetUnitY(target), 600, Condition(function HeiyanFilter))
	    set count = CountUnitsInGroup(l_group)
	    set damage = damage * (0.5 + 0.20 * count)
	    loop
	        set l_unit = FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
	        if not (IsUnitInGroup(l_unit,GSacri)) then
	        	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
	    		call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	        endif
	    endloop
	    //输出伤害
	    call PrintSpellAdd(GetOwningPlayer(u),GetAbilityName(abilityID),damage,",敌人数量"+I2S(count)+"个")
	    call DestroyGroup(l_group)
	    set l_group = null
	    set l_unit =null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能2:阎罗殿攻击效果
	*/
    private function TSpellHeiyan2Con takes nothing returns boolean
    	return GetAttacker() == Heiyan and IsSecondSpellOK(Heiyan) == true and GetUnitState(Heiyan,UNIT_STATE_MANA) >= 250 and CountUnitsInGroup(GSacri) >= 1 and GetUnitAbilityLevel(Heiyan,'A0C8') == 1
    endfunction
    
    private function TSpellHeiyan2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call QianGuiXie(Heiyan,GetAttackedUnitBJ(),0.4,'A0C8')
		call PolledWait(2)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction

    /*
        黑阎技能2：阎罗殿产生效果
    */

    private function YanLuoDianCreate takes nothing returns nothing
    	local timer t = GetExpiredTimer()
    	local unit u = LoadUnitHandle(spellTable,GetHandleId(t),kUYanluo)
    	if (IsUnitAliveBJ(u) == true) then
    		call CreateSacrifice(u)
    	else
    		call PauseTimer(t)
    		call DestroyTimer(t)
    		call FlushChildHashtable(spellTable,GetHandleId(t))
    	endif
    	set u = null
    	set t = null 
    endfunction

    private function YanLuoDian takes nothing returns nothing
    	local timer t = CreateTimer()
    	local unit u = CreateUnit(GetOwningPlayer(GetSpellAbilityUnit()),'hh02',GetSpellTargetX(),GetSpellTargetY(),0)
	    call UnitApplyTimedLifeBJ( 30.00, 'BHwe',u )
    	call SaveUnitHandle(spellTable,GetHandleId(t),kUYanluo,u)
    	call TimerStart(t,1,true,function YanLuoDianCreate)
		call PrintSpellName(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()))
    	set u = null
    	set t = null
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能3：赦魂诀主动效果
	*/
	private function SheHunJue takes nothing returns nothing
		call CreateSuperSacrifice(GetSpellTargetX(),GetSpellTargetY())
		call PrintSpell(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()),DamageSacri)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能4：祭品死亡计数，还有爆炸效果
	*/

	private function SimulateDeathHeiyanBoom takes unit u returns nothing
	    call CreateUnitEffectSpecifyTime(GetOwningPlayer(Heiyan),'hh04',GetUnitX(u),GetUnitY(u),0,1.8)
	endfunction
	/*
	    祭品死亡事件
	*/
	function SimulateDeathHeiyan takes unit u returns nothing
		if not(IsUnitInGroup(u,GSacri) == true) then
			return
		endif

		call GroupRemoveUnit(GSacri,GetDyingUnit())
		if(IsFourthSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan,'A0D2') == 1 and GetUnitState(Heiyan,UNIT_STATE_MANA) >= 600) then
			call SimulateDeathHeiyanBoom(u)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    黑阎技能4：泣罗刹暂时乘3的祭品数
	*/
	private function QiLuoCha takes nothing returns nothing
		set IsDouble = true
		call PrintSpellName(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()))
		call YDWETimerDestroyEffect(60,AddSpecialEffectTargetUnitBJ("chest",Heiyan,"war3mapImported\\doomtargetpurpl.mdx"))
		call PolledWait(60)
		call PrintSpellContent(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()),"加速结束。")
		set IsDouble = false
	endfunction

	/*
	    黑阎技能4：致死伤害无效化
	*/
	private function TSpellHeiyan41Con takes nothing returns boolean
		return (GetEventDamage() > GetUnitState(Heiyan,UNIT_STATE_LIFE) and (CountUnitsInGroup(GSacri) >= 1) and (IsFourthSpellOK(Heiyan) == true) and (GetUnitAbilityLevel(Heiyan,'A0D2') == 1)) and (GetEventDamage() < GetUnitState(Heiyan,UNIT_STATE_MAX_LIFE) or GetRandomInt(1,2) == 1)
	endfunction
	
	private function TSpellHeiyan41Act takes nothing returns nothing
		call KillUnit(FirstOfGroup(GSacri))
    	call RecoverUnitHP(Heiyan,0.1)
		call ImmuteDamageInterval(Heiyan,0.1)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(Heiyan), GetUnitY(Heiyan) ))
		call PrintSpellContent(GetOwningPlayer(Heiyan),GetAbilityName('A0D2'),"抵消致死伤害.")
		call SpinTongji()
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能5：葬九天
	*/
	private function ZangJiuTianTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local real x = GetUnitX(UZangJiuTian)
		local real y = GetUnitY(UZangJiuTian)
		local integer ii = 1
		//如果祭品没有了则阵消失
		if (CountUnitsInGroup(GSacri) >= 1) then
			loop
				exitwhen ii > 6
					call DestroyEffect(AddSpecialEffect("war3mapImported\\GhostStrike.mdx", x + CosBJ( ii*60 ) * GetRandomInt(100,500), y + SinBJ( ii*60 ) * GetRandomInt(100,500)))
				set ii = ii +1
			endloop
			call DamageArea(Heiyan,x,y,600,GetDamageStr(Heiyan))
		else
			call RemoveUnit(UZangJiuTian)
			call PauseTimer(t)
			call DestroyTimer(t)
			set UZangJiuTian = null
		endif
		set t = null 
	endfunction

	private function ZangJiuTian takes nothing returns nothing
		local timer t = CreateTimer()
		call RemoveUnit(UZangJiuTian)
		set UZangJiuTian = CreateUnit(GetOwningPlayer(GetSpellAbilityUnit()),'hh05',GetUnitX(GetSpellAbilityUnit()),GetUnitY(GetSpellAbilityUnit()),0)
	    call PrintSpell(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()),GetDamageStr(Heiyan))
		call TimerStart(t,1,true,function ZangJiuTianTimer)
        call PlaySoundBJ(gg_snd_heiyan_5)

		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄技能判断
	*/

	private function TSpellHeiyanAct takes nothing returns nothing
		local integer i = 1
		if (GetSpellAbilityId() == 'A0C7') then
			call QianGuiXie(Heiyan,GetSpellTargetUnit(),1,GetSpellAbilityId())
		elseif (GetSpellAbilityId() == 'A0A3' or GetSpellAbilityId() == 'A0BI') then
			call YeShenJi()
			//不召唤祭品
			return
		elseif (GetSpellAbilityId() == 'A0C8') then 
			call YanLuoDian()
		elseif (GetSpellAbilityId() == 'A0JH') then 
			call SheHunJue()
		elseif (GetSpellAbilityId() == 'A0D2') then 
			call QiLuoCha()
		elseif (GetSpellAbilityId() == 'A0DD') then 
			call ZangJiuTian()
		endif

		if not (GetUnitState(Heiyan,UNIT_STATE_MANA) >= 100) then
			return
		endif

		call CreateSacrifice(GetSpellAbilityUnit())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillHeiyanI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == Heiyan) then
			if(whichSpell == 1) then
				set ISacriMaxCount = ISacriMaxCount + 3
			elseif (whichSpell == 2 and IsSecondSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan,'A0C8') == 1) then
				//技能2初始化
				set ISacriMaxCount = ISacriMaxCount + 3
			elseif (whichSpell == 3 and IsThirdSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan,'A0JH') == 1) then
				//技能3初始化
				set ISacriMaxCount = ISacriMaxCount + 3
				call AddSpecialEffectTargetUnitBJ("origin",Heiyan,"war3mapImported\\devilaura.mdl")
				call InitHeiyanAura()
			elseif (whichSpell == 4 and IsFourthSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan,'A0D2') == 1) then
				//技能4初始化
				set ISacriMaxCount = ISacriMaxCount + 3
			elseif (whichSpell == 5 and IsFifthSpellOK(Heiyan) == true and GetUnitAbilityLevel(Heiyan,'A0DD') == 1) then
				//技能5初始化
				set ISacriMaxCount = ISacriMaxCount + 6
			endif
		endif
	endfunction

	function LearnSkillHeiyan takes unit learner,integer learnSpellID returns nothing
		if (learner == Heiyan) then
			if (learnSpellID == 'A0C7') then
				call LearnSkillHeiyanI(learner,1)
			elseif (learnSpellID == 'A0C8') then
				call LearnSkillHeiyanI(learner,2)
			elseif (learnSpellID == 'A0JH') then
				call LearnSkillHeiyanI(learner,3)
			elseif (learnSpellID == 'A0D2') then
				call LearnSkillHeiyanI(learner,4)
			elseif (learnSpellID == 'A0DD') then
				call LearnSkillHeiyanI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    复活后关闭碰撞
	*/
	function AfterReviveHeiyan takes unit u returns nothing
		if (u == Heiyan) then
    		call SetUnitPathing( Heiyan, false )
    		set ISpinHeiyan = -1000
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎皮肤
	*/
	private function InitHeiyanSpin takes unit u returns unit
		if (IsHeiyanSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'U003',GetUnitX(u),GetUnitY(u),0)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],100)
			call RemoveUnit(u)
			set ISacriMaxCount = ISacriMaxCount + 2
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitHeiyan takes unit u returns nothing
		local timer t = CreateTimer()		
		set GSacri = CreateGroup()
		set Heiyan = InitHeiyanSpin(u)
		call SetUnitPathing( Heiyan, false )
		//主英雄技能
		set TSpellHeiyan1 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHeiyan1,Heiyan,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellHeiyan1, function TSpellHeiyanAct)

	    //主英雄杀敌事件
	    set TSpellHeiyan00 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellHeiyan00,EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddCondition(TSpellHeiyan00, Condition(function TSpellHeiyan00Con))
	    call TriggerAddAction(TSpellHeiyan00, function TSpellHeiyan00Act)

	    //英雄第二个技能攻击事件
	    set TSpellHeiyan2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellHeiyan2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellHeiyan2, Condition(function TSpellHeiyan2Con))
	    call TriggerAddAction(TSpellHeiyan2, function TSpellHeiyan2Act)

		//祭品伤害的刷新
		call TimerStart(t,3,true,function SacriDamageFlash)
		set t = null

		//英雄第四个技能时的无敌
	    set TSpellHeiyan41 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHeiyan41,Heiyan,EVENT_UNIT_DAMAGED)
		call TriggerAddCondition(TSpellHeiyan41, Condition(function TSpellHeiyan41Con))
		call TriggerAddAction(TSpellHeiyan41, function TSpellHeiyan41Act)
	endfunction

endlibrary