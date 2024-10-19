
#include  "SpellBase.j"
#include  "Printer.j"
#include  "Attr.j"
/*
    英雄瑟雨的技能
*/
library_once Seyu requires SpellBase,Printer,Attr

	globals
		unit seyu = null

		/*
		    异界能量
		*/
		private texttag TTPower
		private integer IPower
		/*
			增益值
		*/
		private real RAddtion

		/*
		    空间封冻技能
		*/
		private trigger TSpellSeyu
		private trigger TSpellSeyu2
		private trigger TSpellSeyu3
		key kAnShaCount
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取虫洞单位组
	*/
	private function EnemyFilterSeyu takes nothing returns boolean
		return IsEnemy(GetFilterUnit(),seyu) == true
	endfunction

	function GetChongdongGroup takes real radius,integer count returns group
		local unit chongdong
		local group result = CreateGroup()
		local group temp
		local group l_group
		local unit l_unit
		local integer i = 1
		loop
			exitwhen i > 8
			set chongdong = YDWEGetUnitByString("空间虫洞", I2S(i))
			if ((RectContainsUnit(gg_rct______________095, chongdong) != true)) then
				set l_group = CreateGroup()
				call GroupEnumUnitsInRange(l_group, GetUnitX(chongdong), GetUnitY(chongdong), radius, Condition(function EnemyFilterSeyu))
				set temp = GetRandomSubGroup( count, l_group)
				call GroupAddGroup(temp,result)
				call DestroyGroup(l_group)
				call DestroyGroup(temp)
       		endif
			set i = i +1
		endloop

		set chongdong = null
		set l_group = null
		set l_unit =null
		set temp =null
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    把虫洞单位组加到指定单位组中
	*/
	function AddChongdongGroup takes group p,real radius,integer count returns nothing
		local group g = GetChongdongGroup(radius,count)
		call GroupAddGroup(g,p)
		set g = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    曼陀罗之刺
	*/
	function Mantuoluo takes unit speller,real damageRate,integer abilityID returns nothing
		local unit u = speller
		local real damage = GetDamageAgi(u) * damageRate
	    local group l_group = CreateGroup()
	    local unit l_unit
	    call GroupEnumUnitsInRange(l_group, GetUnitX(speller), GetUnitY(speller), 600, Condition(function EnemyFilterSeyu))
	    call AddChongdongGroup(l_group,600,R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))

	    loop
	        set l_unit = FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
    		call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleHitTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
	    endloop
	    //输出伤害
	    call PrintSpell(GetOwningPlayer(u),GetAbilityName(abilityID),damage)
	    call DestroyGroup(l_group)
	    set l_group = null
	    set l_unit =null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    异界能量
	*/
	function TSpellSeyu2Con takes nothing returns boolean
	    return (((GetAttacker() == seyu) or (GetUnitTypeId(GetAttacker()) == 'espv')) and (IsUnitIllusionBJ(GetAttacker()) != true) and ( IsSecondSpellOK(seyu) == true) and (GetRandomInt(1, 20) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, seyu) > 200.00))
	endfunction

	function TSpellSeyu2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Mantuoluo(seyu,0.33,'AUav')
		call PolledWait(1)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    异界能量1:文字位置
	*/
	//位置刷新，0.05s
	private function FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTPower,seyu,25)
	endfunction


	//数值刷新,1秒1次
	private function FlashPowerData takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(seyu))
		local real delta
		//限制能量在0-105之间
		set IPower = IMinBJ(IMaxBJ(IPower - 1,0),105)
		call SetTextTagTextBJ(TTPower,I2S(IPower) + "%能量",20)
		set delta = I2R((IPower/10)*10)/100
		if (RAddtion != delta) then

			call AddStrPercent(index, delta - RAddtion  )
			call AddIntPercent(index, delta - RAddtion  )
			call AddAgiPercent(index, delta - RAddtion  )
			set RAddtion = delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(seyu), GetUnitY(seyu) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
    	异界能量的获取
	*/
	private function TDeathAddPowerCon takes nothing returns boolean
		return (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu)
	endfunction

	private function TDeathAddPowerAct takes nothing returns nothing
		set IPower = IPower + 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化异界能量
	*/
	private function InitPower takes nothing returns nothing
		local timer ti = CreateTimer()
		local trigger t = CreateTrigger()

		//异界能量触发
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(t, Condition(function TDeathAddPowerCon))
		call TriggerAddAction(t, function TDeathAddPowerAct)

		set IPower = 0
		set RAddtion = 0
		set TTPower = CreateTextTagUnitBJ( I2S(IPower) + "%能量", seyu, 0, 20, 100, 0, 100, 0 )
		call TimerStart(ti,0.05,true,function FlashPowerLocation)

		set ti = CreateTimer()
		call TimerStart(ti,1,true,function FlashPowerData)

		set ti = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    空间封冻
	*/
	private function TSpellSeyu3Con takes nothing returns boolean
    	return GetAttackedUnitBJ() == seyu and GetRandomInt(1,20) == 1 and GetUnitState(seyu,UNIT_STATE_MANA) >= 400
	endfunction

	private function TSpellSeyu3Act takes nothing returns nothing
		local real damage = GetDamageAgi(seyu) * 2.5
		local group g = CreateGroup()
	    local unit l_unit
		call DisableTrigger(GetTriggeringTrigger())
		//初始化虫洞单位组
		call GroupAddUnit(g,GetAttacker())
		call AddChongdongGroup(g,600,1)
	    call PrintSpell(GetOwningPlayer(seyu),GetAbilityName('AEar'),damage)
	    //局部单位组伤害
	    loop
	        set l_unit = FirstOfGroup(g)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(g, l_unit)
	        call CreateUnitEffect(GetOwningPlayer(seyu),'hh00',GetUnitX(l_unit),GetUnitY(l_unit),0)
	    	call CreateSpellTextTag("冻",l_unit,0,100,0,2)
	        call UnitDamageTarget( seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    endloop
	    call DestroyGroup(g)
		set g = null
	    set l_unit =null
		call PolledWait(8)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    暗杀之舞
	*/
	private function AnShaZhiWuTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group g
		local real damage = GetDamageAgi(seyu) * 0.5
		local integer value = LoadInteger(spellTable,id,kAnShaCount)
		local group l_group
		local unit l_unit
		local unit chongdong
		local integer i
		if (value < 30) then
			//++1
			call SaveInteger(spellTable,id,kAnShaCount,value + 1)
	    	set l_group = CreateGroup()
			call GroupEnumUnitsInRange(l_group, GetUnitX(seyu), GetUnitY(seyu), 600, Condition(function EnemyFilterSeyu))
	    	call AddChongdongGroup(l_group,600,R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
    			call UnitDamageTarget( seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null

			//特效
	        call CreateUnitEffect(GetOwningPlayer(seyu),'h00E',GetUnitX(seyu),GetUnitY(seyu),0)
			set i = 1
			loop
				exitwhen i > 8
				set chongdong = YDWEGetUnitByString("空间虫洞", I2S(i))
				if ((RectContainsUnit(gg_rct______________095, chongdong) != true)) then
	       			call CreateUnitEffect(GetOwningPlayer(chongdong),'h00E',GetUnitX(chongdong),GetUnitY(chongdong),0)
	       		endif
				set i = i +1
			endloop
			set chongdong =null
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable,id)
		endif
		set t = null
	endfunction

	private function AnShaZhiWu takes nothing returns nothing
		local timer t = CreateTimer()
	    call PrintSpell(GetOwningPlayer(seyu),GetAbilityName(GetSpellAbilityId()),GetDamageAgi(seyu))
		call SaveInteger(spellTable,GetHandleId(t),kAnShaCount,0)
		call TimerStart(t,0.5,true,function AnShaZhiWuTimer)
		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄使用技能
	*/
	private function TSpellSeyuCon takes nothing returns boolean
	    return (GetSpellAbilityUnit() == seyu)
	endfunction

	private function TSpellSeyuAct takes nothing returns nothing
		if ((GetSpellAbilityId() == 'AEfk')) then
			call Mantuoluo(seyu,1,GetSpellAbilityId())
		elseif ((GetSpellAbilityId() == 'AEst')) then
			call AnShaZhiWu()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == seyu) then
			if(whichSpell == 1) then
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(3)), 3 )
			elseif (whichSpell == 2 and IsSecondSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AUav') == 1) then
				//技能2初始化
				call InitPower()
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

			    //注册空间封冻技能
			    set TSpellSeyu3 = CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ(TSpellSeyu3,EVENT_PLAYER_UNIT_ATTACKED)
			    call TriggerAddCondition(TSpellSeyu3, Condition(function TSpellSeyu3Con))
			    call TriggerAddAction(TSpellSeyu3, function TSpellSeyu3Act)
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
	/*
	    初始化瑟雨
	*/
	function InitSeyu takes unit u returns nothing
		set seyu = u

		//1
	    set TSpellSeyu = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellSeyu, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	    call TriggerAddCondition(TSpellSeyu, Condition(function TSpellSeyuCon))
	    call TriggerAddAction(TSpellSeyu, function TSpellSeyuAct)

	    //2
	    set TSpellSeyu2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellSeyu2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellSeyu2, Condition(function TSpellSeyu2Con))
	    call TriggerAddAction(TSpellSeyu2, function TSpellSeyu2Act)
	endfunction
endlibrary