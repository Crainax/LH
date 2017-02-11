
//! import "SpellBase.j"
//! import "Printer.j"
/*
    英雄黑阎的技能
*/
library_once Heiyan requires SpellBase,Printer
	
	globals
		/*
		    主动技能触发
		*/
		private trigger TSpellHeiyan1
		private trigger TSpellHeiyan00
		private trigger TSpellHeiyan2
		private trigger TSpellHeiyan40
		private trigger TSpellHeiyan41
		private trigger TDamageSacri
		/*
		    控制权是魔界
		*/
		private boolean BIsMojie = true
		/*
		    英雄黑阎
		*/
		unit Heiyan

		/*
		    祭品
		*/
		key kUSacrifice
		/*
		    阎罗殿
		*/
		key kUYanluo
		/*
		    葬九天
		*/
		private unit UZangJiuTian

		private boolean IsDouble = false
		/*
		    祭品的数量
		*/
		private integer ISacriMaxCount = 10
		private integer ISacriCount = 0
		/*
		    祭品单位组
		*/
		private group GSacri = CreateGroup()

		/*
		    祭品攻击伤害，每3秒刷新一次数值
		*/
		private real DamageSacri
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    判断祭品是不是满了
	*/
	private function IsFull takes nothing returns boolean
		return ISacriCount >= ISacriMaxCount
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创造祭品并定时3秒的无敌
	*/
	private function CreateSacrificeTi takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local unit u = LoadUnitHandle(spellTable,GetHandleId(t),kUSacrifice)
	    call SetUnitInvulnerable(u,false)
		call DestroyTimer(t)
		set t = null 
		set u = null
	endfunction

	private function CreateBasicSacrifice takes real tx, real ty returns nothing
		local real lifeTime
		local unit u
		local timer t
		local real angle 
		local real x
		local real y 
		local integer i = 3
		if (IsDouble == true) then
			set i = 1
		endif
		loop
			exitwhen i > 3

			if (IsFull() == true) then
				call BJDebugMsg("祭品满了")
				return
			endif
			set lifeTime = 4 + SquareRoot(GetHeroLevel(Heiyan)) / 2
			set t = CreateTimer()
			set angle = GetRandomReal(0,360)
			set x = YDWECoordinateX(tx + 80 * CosBJ(angle))
			set y = YDWECoordinateY(ty + 80 * SinBJ(angle))
			if (BIsMojie == true) then
				set u =  CreateUnit(Player(11),'jipi' ,x,y,0)
			else
				set u =  CreateUnit(GetOwningPlayer(Heiyan),'jipi' ,x,y,0)
			endif
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", tx, ty ))
		    call UnitApplyTimedLifeBJ( lifeTime, 'BHwe' , u )
	    	call GroupAddUnit(GSacri,u)
			set ISacriCount = ISacriCount + 1
			//三秒无敌
		    call SetUnitInvulnerable(u,true)
		    call SaveUnitHandle(spellTable,GetHandleId(t),kUSacrifice,u)
		    call TimerStart(t,3,false,function CreateSacrificeTi)

			set i = i +1
		endloop
		set u =null
		set t = null
	endfunction

	private function CreateSuperSacrifice takes real x, real y returns nothing
		local unit u
		local integer i = 3
		if (IsDouble == true) then
			set i = 1
		endif
		loop
			exitwhen i > 3

			set u =  CreateUnit(GetOwningPlayer(Heiyan),'jipi' ,x,y,0)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", x, y ))
		    call UnitApplyTimedLifeBJ( 30, 'BHwe' , u )
			//三秒无敌
		    call SetUnitInvulnerable(u,true)

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
	private function TDamageSacriCon takes nothing returns boolean
		return ((GetEventDamage() > 0) and (IsUnitIllusion(GetEventDamageSource()) == false) and (IsUnitInGroup(GetEventDamageSource(),GSacri) == true or GetUnitTypeId(GetEventDamageSource()) == 'gjip'))
	endfunction
	
	private function TDamageSacriAct takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		if (IsEnemy(GetTriggerUnit(),GetEventDamageSource())) then
			if (IsUnitInGroup(GetEventDamageSource(),GSacri) == true) then
				call UnitDamageTarget( GetEventDamageSource(), GetTriggerUnit(), DamageSacri, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'gjip') then
				call UnitDamageTarget( GetEventDamageSource(), GetTriggerUnit(), DamageSacri*4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			endif
		else
			call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*0.01)
		endif
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能0:切换祭品形态
	*/
	//魔界
	private function YeShenJi takes nothing returns nothing
		local unit u = GetSpellAbilityUnit()
		set BIsMojie = not (BIsMojie)
		if(BIsMojie == true) then
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"当前祭品控制权为魔界.")
		    call UnitRemoveAbility(u,'yes1')
		    call UnitAddAbility(u,'yes2')
		else
		    call PrintSpellContent(GetOwningPlayer(u),GetAbilityName(GetSpellAbilityId()),"当前祭品控制权为自己.")
		    call UnitRemoveAbility(u,'yes2')
		    call UnitAddAbility(u,'yes1')
		endif
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能0：杀死创造祭品
	*/

	private function TSpellHeiyan00Con takes nothing returns boolean
		return (GetKillingUnitBJ() == Heiyan and IsUnitIllusion(GetKillingUnitBJ()) == false and GetUnitPointValue(GetDyingUnit()) != 123	and GetUnitPointValue(GetDyingUnit()) != 0 and IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) and GetUnitTypeId(GetDyingUnit()) != 'jipi')
	endfunction

	private function TSpellHeiyan00Act takes nothing returns nothing
		call CreateSacrifice(GetDyingUnit())
		call BJDebugMsg("杀死创造祭品")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能1:千鬼邪
	*/
	private function QianGuiXie takes unit speller,unit target,real damageRate,integer abilityID returns nothing
		local unit u = speller
		local real damage = GetDamageStr(u) * damageRate
	    local group l_group = CreateGroup()
	    local group l_group_d = CreateGroup()
	    local unit l_unit
	    local integer count
	    call CreateUnitEffect(GetOwningPlayer(u),'h008',GetUnitX(target),GetUnitY(target),0)
	    //计算数量
	    call GroupEnumUnitsInRange(l_group, GetUnitX(target), GetUnitY(target), 600, null)
	    loop
	        set l_unit = FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
	        if (IsEnemy2(l_unit,u)) then
	        	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
	        	call GroupAddUnit(l_group_d,l_unit)
	        endif
	    endloop
	    //伤害
	    set count = CountUnitsInGroup(l_group_d)
	    set damage = damage * (0.5 + 0.1 * count)
	    loop
	        set l_unit = FirstOfGroup(l_group_d)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group_d, l_unit)
	        if (IsEnemy2(l_unit,u)) then
	    		call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    	endif
	    endloop
	    //输出伤害
	    call PrintSpellAdd(GetOwningPlayer(u),GetAbilityName(abilityID),damage,",敌人数量"+I2S(count)+"个")
	    call DestroyGroup(l_group)
	    call DestroyGroup(l_group_d)
	    set l_group_d = null
	    set l_group = null
	    set l_unit =null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能2:阎罗殿攻击效果
	*/
    private function TSpellHeiyan2Con takes nothing returns boolean
    	return GetAttacker() == Heiyan and IsSecondSpellOK(Heiyan) == true and GetUnitState(Heiyan,UNIT_STATE_MANA) >= 250 and ISacriCount >= 5
    endfunction
    
    private function TSpellHeiyan2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call QianGuiXie(Heiyan,GetAttackedUnitBJ(),0.4,'yanl')
		call PolledWait(5)
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
		call PrintSpellName(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()))
	endfunction

	/*
	    黑阎技能3：赦魂诀刷新效果
	*/
	private function SheHunJueFlash takes nothing returns nothing
		if (IsUnitAliveBJ(Heiyan) == true and GetUnitState(Heiyan,UNIT_STATE_MANA) >= 400 and IsThirdSpellOK(Heiyan) == true) then
			call CreateSacrifice(Heiyan)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能4：祭品死亡计数，还有爆炸效果
	*/

	private function TSpellHeiyan4ActBoom takes nothing returns nothing
		local group l_group = CreateGroup()
		local real damage = GetDamageStr(Heiyan) * 0.1
		local unit u = GetDyingUnit()
		local unit l_unit
		call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 400, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (IsEnemy(l_unit,u) == true) then
		    	call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
		    endif
		endloop
	    call CreateUnitEffect(GetOwningPlayer(u),'hh04',GetUnitX(u),GetUnitY(u),0)
	    call CreateSpellTextTag("爆",u,100,0,0,2)
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	endfunction

	private function TSpellHeiyan4Con takes nothing returns boolean
		return IsUnitInGroup(GetDyingUnit(),GSacri) == true
	endfunction

	private function TSpellHeiyan4Act takes nothing returns nothing
		local group l_group = CreateGroup()
		local unit l_unit
		call GroupRemoveUnit(GSacri,GetDyingUnit())
		set ISacriCount = ISacriCount - 1
		call BJDebugMsg(I2S(ISacriCount)+"个")
		call GroupAddGroup(GSacri,l_group)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    call SetUnitLifePercentBJ(l_unit,100)
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		if(IsFourthSpellOK(Heiyan) == true) then
			call TSpellHeiyan4ActBoom()
		endif
	endfunction


	/*
	    黑阎技能4：泣罗刹暂时乘3的祭品数
	*/
	private function QiLuoCha takes nothing returns nothing
		set IsDouble = true
		call PrintSpellName(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()))
		call YDWETimerDestroyEffect(60,AddSpecialEffectTargetUnitBJ("chest",Heiyan,""))
		call PolledWait(60)
		set IsDouble = false
	endfunction

	/*
	    黑阎技能4：致死伤害无效化
	*/
	private function TSpellHeiyan41Con takes nothing returns boolean
		return (GetEventDamage() > GetUnitState(Heiyan,UNIT_STATE_LIFE) and (ISacriCount >= 1) and (IsFourthSpellOK(Heiyan) == true))
	endfunction
	
	private function TSpellHeiyan41Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call SetUnitInvulnerable(Heiyan,true)
		call SetUnitLifeBJ(Heiyan,GetUnitState(Heiyan,UNIT_STATE_LIFE) + GetUnitState(Heiyan,UNIT_STATE_MAX_LIFE) * 0.05)
		call PolledWait(0.1)
		call SetUnitInvulnerable(Heiyan,false)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎技能5：葬九天
	*/
	private function ZangJiuTianTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local real x = GetUnitX(UZangJiuTian)
		local real y = GetUnitY(UZangJiuTian)
		local integer i = 1
		local unit l_unit
		//如果祭品大于3个,则牺牲3个
		if (CountUnitsInGroup(GSacri) >= 3) then
			loop
				exitwhen i > 3
			    set l_unit = FirstOfGroup(GSacri)
			    //牺牲3个
			    call KillUnit(l_unit)
				set i = i +1
			endloop
			call DestroyEffect(AddSpecialEffect("", x, y ))
			call DamageArea(Heiyan,x,y,600,GetDamageStr(Heiyan))
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable,id)
		endif
		set l_unit =null
		set t = null 
	endfunction

	private function ZangJiuTian takes nothing returns nothing
		local timer t = CreateTimer()
		set UZangJiuTian = CreateUnit(GetOwningPlayer(GetSpellAbilityUnit()),'hh05',GetSpellTargetX(),GetSpellTargetY(),0)
	    call PrintSpell(GetOwningPlayer(GetSpellAbilityUnit()),GetAbilityName(GetSpellAbilityId()),GetDamageStr(Heiyan))
		call TimerStart(t,1,true,function ZangJiuTianTimer)
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
		elseif (GetSpellAbilityId() == 'yes1' or GetSpellAbilityId() == 'yes2') then
			call YeShenJi()
			//不召唤祭品
			return
		elseif (GetSpellAbilityId() == 'yanl') then 
			call YanLuoDian()
		elseif (GetSpellAbilityId() == 'qilu') then 
			call QiLuoCha()
		elseif (GetSpellAbilityId() == 'zang') then 
			call ZangJiuTian()
		endif

		if not (GetUnitState(Heiyan,UNIT_STATE_MANA) >= 100) then
			return
		endif
		//召唤2个祭品
		loop
			exitwhen i > 2
			call CreateSacrifice(GetSpellAbilityUnit())
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitHeiyan takes unit u returns nothing
		local timer t = CreateTimer()		
		set Heiyan = u
		//主英雄技能
		set TSpellHeiyan1 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHeiyan1,u,EVENT_UNIT_SPELL_EFFECT)
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

	    //英雄第三个技能刷新事件
		call TimerStart(t,3,true,function SheHunJueFlash)

		//祭品伤害的刷新
		call TimerStart(t,3,true,function SacriDamageFlash)
		set t = null

		//死亡事件与英雄第四个技能爆炸
	    set TSpellHeiyan40 = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(TSpellHeiyan40,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(TSpellHeiyan40, Condition(function TSpellHeiyan4Con))
		call TriggerAddAction(TSpellHeiyan40, function TSpellHeiyan4Act)

		//祭品伤害事件
	    set TDamageSacri = CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(TDamageSacri)
		call TriggerAddCondition(TDamageSacri, Condition(function TDamageSacriCon))
		call TriggerAddAction(TDamageSacri, function TDamageSacriAct)

		//英雄第四个技能时的无敌
	    set TSpellHeiyan41 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHeiyan41,Heiyan,EVENT_UNIT_DAMAGED)
		call TriggerAddCondition(TSpellHeiyan41, Condition(function TSpellHeiyan41Con))
		call TriggerAddAction(TSpellHeiyan41, function TSpellHeiyan41Act)
	endfunction

endlibrary