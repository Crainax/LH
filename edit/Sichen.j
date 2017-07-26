
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
/////! import "Pet.j"
/*
    英雄司宸的技能
*/
library_once Sichen requires SpellBase,Printer,Attr,Pet,Aura

	globals

		//触发器
		private trigger TSpellSichen = null
		private trigger TSpellSichen2 = null
		private trigger TSpellSichen3 = null
		private trigger TSpellSichenDamage = null
		private trigger TSpellSichenBuilding = null
		private trigger TSpellSichenUpdate = null
		//塔的单位组
		private group GTower = null
		private unit  UCili = null
		private real SichenDamage = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    全加金钱获得率
	*/
	private function AddAllMoney takes real value returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			
	        if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
	            call AddMoneyPercent(i,value)
	        endif

			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    全加金钱获得率
	*/
	private function AddAll3W takes real value returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			
	        if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
                call AddIntPercent(i,value)
                call AddAgiPercent(i,value)
                call AddStrPercent(i,value)
	        endif

			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    无敌条件与无敌的动作
	*/
	private function CloserWudiTowerCon takes nothing returns boolean
		return GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	endfunction

	private function CloserWudiTowerAct takes nothing returns nothing
		local unit u = LoadUnitHandle(spellTable,GetHandleId(GetTriggeringTrigger()),1)
		if (GetUnitState(u,UNIT_STATE_MANA) > 1333 and not(IsWudi(GetTriggerUnit()))) then
			call ImmuteDamageInterval(GetTriggerUnit(),3)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			call RecoverUnitMP(u,- 1333 )
		endif
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化无敌光环
	*/
	private function InitWudi takes unit u returns nothing
		local trigger t = CreateTrigger()
	    call TriggerRegisterUnitInRangeSimple(t,300,u)
	    call TriggerAddCondition(t,Condition(function CloserWudiTowerCon))
	    call TriggerAddAction(t,function CloserWudiTowerAct)
	    call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
	    call SaveTriggerHandle(spellTable,GetHandleId(u),1,t)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    删除无敌光环
	*/
	private function DestroyWudi takes unit u returns nothing
		local trigger t = LoadTriggerHandle(spellTable,GetHandleId(u),1)
		call FlushChildHashtable(spellTable,GetHandleId(t))
		call DestroyTrigger(t)
		call FlushChildHashtable(spellTable,GetHandleId(u))
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡
	*/
	function SimulateDeathSichen takes unit u returns nothing
		if (IsUnitInGroup(u,GTower)) then 
			if (GetUnitTypeId(GetDyingUnit()) == 'h0s2') then
				call DestroyEffect(LoadEffectHandle(spellTable,GetHandleId(GetDyingUnit()),1))
				call FlushChildHashtable(spellTable,GetHandleId(GetDyingUnit()))
			elseif (GetUnitTypeId(GetDyingUnit()) == 'h1s3') then
    			call AddAllMoney(-0.1)
			elseif (GetUnitTypeId(GetDyingUnit()) == 'h01F') then
    			call AddAll3W(-0.02)
			elseif (GetUnitTypeId(GetDyingUnit()) == 'h1s6') then
				call DestroyWudi(GetDyingUnit())
			elseif (GetUnitTypeId(GetDyingUnit()) == 'h1s7') then
    			call AddAllMoney(-0.1)
    			call AddAll3W(-0.02)
				call DestroyWudi(GetDyingUnit())
			endif
			call GroupRemoveUnit(GTower,u)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄的攻击
	*/
	private function GetSichenAttack takes nothing returns integer
		return GetHeroInt(sichen,true) + GetAttack(sichen)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄的生命
	*/
	private function GetSichenHP takes nothing returns integer
		return GetHeroStr(sichen,true) * 10 + GetHP(sichen)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取英雄的防御
	*/
	private function GetSichenDefense takes nothing returns integer
		return GetHeroAgi(sichen,true)/100 + GetDefense(sichen)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化黑洞
	*/
	private function InitHeidong takes unit u returns nothing
	    local Attract attract = Attract.create(u,900,0.05,15)
		call attract.SetForbitHero()
		call attract.start()
	endfunction
//---------------------------------------------------------------------------------------------------


	/*
	    建造完毕
	*/
	function TSichenBuildingCon takes nothing returns boolean
		return GetOwningPlayer(GetTriggerUnit()) == GetOwningPlayer(sichen)
	endfunction 

	function TSichenBuildingUpdate takes nothing returns nothing
    	local unit u = GetTriggerUnit()
    	call UnitSetUpgradeProgress( GetTriggerUnit(), 100 )
    	if (GetUnitTypeId(u) == 'h0s3') then
			call SetDefense(u,GetSichenDefense()*4)
			call SetHP(u,GetSichenHP()*3)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s6') then
			call SetDefense(u,GetSichenDefense()*5)
			call SetHP(u,GetSichenHP()*5)
			call SetAttack(u,GetSichenAttack()*5)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h01C') then
			call SetDefense(u,GetSichenDefense())
			call SetHP(u,GetSichenHP())
			call SetAttack(u,GetSichenAttack() * 5)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s2') then
			call SetDefense(u,GetSichenDefense())
			call SetHP(u,GetSichenHP())
			call SaveEffectHandle(spellTable,GetHandleId(u),1,AddSpecialEffectTargetUnitBJ("chest",u,"war3mapImported\\IceTornado.mdx"))
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s1') then
			call SetDefense(u,GetSichenDefense())
			call SetHP(u,GetSichenHP())
			call SetAttack(u,GetSichenAttack()*5)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s5') then
			call SetDefense(u,GetSichenDefense()*2)
			call SetHP(u,GetSichenHP()*2)
			call SetAttack(u,GetSichenAttack()*2)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s8') then
			call SetDefense(u,GetSichenDefense()*4)
			call SetHP(u,GetSichenHP()*4)
			call SetAttack(u,GetSichenAttack()*5)
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s4') then
			call SetHP(u,GetSichenHP()*2)
			call SetAttack(u,GetSichenAttack())
			call SetDefense(u,GetSichenDefense())
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h0s7') then
			call SetDefense(u,GetSichenDefense())
			call SetHP(u,GetSichenHP())
			call SetAttack(u,GetSichenAttack())
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h1s1') then
    		call InitHeidong(u)
			call SetDefense(u,GetSichenDefense())
			call SetHP(u,GetSichenHP())
			if (IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call UnitAddAbility(u,'A0HG')
			endif
    	elseif (GetUnitTypeId(u) == 'h1s3') then
    		call AddAllMoney(0.1)
    	elseif (GetUnitTypeId(u) == 'h01F') then
    		call AddAll3W(0.02)
    	elseif (GetUnitTypeId(u) == 'h1s6') then
    		call InitWudi(u)
    	elseif (GetUnitTypeId(u) == 'h1s7') then
    		call AddAllMoney(0.1)
    		call AddAll3W(0.02)
    		call InitWudi(u)
    	endif
    	set u = null
	endfunction

    function TSichenBuilding takes nothing returns nothing

    	local unit u = GetTriggerUnit()
    	call GroupAddUnit(GTower,u)
    	if (GetUnitTypeId(u) == 'hmtt') then
    		if (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_USED) > ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 )) then
    			call RemoveUnit(u)
                call DisplayTextToPlayer( GetOwningPlayer(sichen), 0, 0, "|cFFFF66CC【消息】|r你的人口已满." )
    		endif
    	endif
    	set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    陨落硫炎
	*/
	private function Yunluoliuyan takes integer abilityID,unit caster,integer zhenshu returns nothing
		local integer i = 1
		local unit u = null
		if (abilityID != 0) then
	    	call PrintSpell(GetOwningPlayer(sichen),GetAbilityName(abilityID),GetDamageAgi(sichen)*0.33)
		endif
		loop
			exitwhen i > zhenshu
			set u = CreateUnit(GetOwningPlayer(sichen),'h01G',GetUnitX(caster),GetUnitY(caster),0)
			if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
				call SetUnitAbilityLevel(u,'A0JA',2)
			endif
			call UnitApplyTimedLifeBJ( 3.00, 'BHwe', u)
			if (i < zhenshu) then
				call PolledWait(0.5)
			endif
			set i = i +1
		endloop
		set u = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageSichen takes nothing returns boolean

		if (GetEventDamage() > 0) then

			//塔1
			if (GetUnitTypeId(GetEventDamageSource()) == 'h01C') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.1, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 		
			//塔2
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s1') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.1, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				return true 
			//千刃
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s2') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.15, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 
			//神镜
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s4') then
				call Yunluoliuyan(0,GetTriggerUnit(),6)
				return true 
			//散华
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s5') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.2, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				call SetUnitLifeBJ(sichen,GetUnitState(sichen,UNIT_STATE_LIFE)+SichenDamage * 0.02)
				call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetDamageAgi(GetTriggerUnit()) * 0.02)
				return true 
			//十绝一灭
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s6') then
				if (GetUnitUserData(GetEventDamageSource()) >= 10) then
	    			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
	    			call CreateSpellTextTag("一灭",GetTriggerUnit(),0,100,0,3)
	    			call DamageArea(sichen,GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()),400,SichenDamage * 5)
					call SetUnitUserData(GetEventDamageSource(),0)

	    		else
					call SetUnitUserData(GetEventDamageSource(),GetUnitUserData(GetEventDamageSource())+1)
				endif
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.5, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 
			//穿云
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s7') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 2, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 
			//孤鸿
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h0s8') then


				call SetUnitLifeBJ(sichen,GetUnitState(sichen,UNIT_STATE_LIFE)+SichenDamage * 0.1)
				call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetDamageAgi(GetTriggerUnit()) * 0.1)
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				return true 
			//抓宠物
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h1s7' or GetUnitTypeId(GetEventDamageSource()) == 'h1s4') then
				if ((not(IsLoyalUnit(GetTriggerUnit()))) and (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_USED) < ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP))) and GetRandomInt(1,100) < (GetHeroLevel(sichen) - GetUnitLevel(GetTriggerUnit())) and not(IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)) and not(IsUnitIllusion(GetTriggerUnit()))) then
					call CreatePet(GetOwningPlayer(sichen),GetTriggerUnit())
				endif
			//硫炎
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h01G') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.33, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 
			//火箭
			elseif (GetUnitTypeId(GetEventDamageSource()) == 'h01H') then
				call UnitDamageTarget( sichen, GetTriggerUnit(), SichenDamage * 0.75, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
				return true 
			endif

		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    亘月天地
	*/
	private function GenyuetiandiA takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] == GetFilterUnit() and not(IsWudi(GetFilterUnit())) 
	endfunction

    private function GenyuetiandiB takes nothing returns nothing
        if (GetEnumUnit() != null) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit()) ))
			call UnitRemoveAbility(GetEnumUnit(),'Avul')
        endif
    endfunction

    private function GenyuetiandiC takes nothing returns nothing
	    if (GetEnumUnit() != null) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetEnumUnit()), GetUnitY(GetEnumUnit()) ))
			call UnitAddAbility(GetEnumUnit(),'Avul')
			call SetUnitLifePercentBJ(GetEnumUnit(),100)
	    endif
    endfunction

	private function GenyuetiandiTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group l_group = LoadGroupHandle(spellTable,id,1)
        call ForGroupBJ( l_group, function GenyuetiandiB )
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		call DestroyGroup(l_group)
		set l_group = null
		set t = null 
	endfunction

	private function Genyuetiandi takes nothing returns nothing
		local group l_group = CreateGroup()
		local timer t = CreateTimer()
		local group l_group1 = CreateGroup()
		local unit l_unit1

	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(sichen), GetUnitY(sichen) ))
		call GroupEnumUnitsInRange(l_group, GetUnitX(sichen), GetUnitY(sichen), 900, Condition(function GenyuetiandiA))
		if not(IsWudi(sichen)) then
			call GroupAddUnit(l_group,sichen)
		endif
		//加不无敌的塔进来
		call GroupAddGroup(GTower,l_group1)
		call GroupAddUnit(l_group,gg_unit_haro_0030)
		loop
		    set l_unit1 = FirstOfGroup(l_group1)
		    exitwhen l_unit1 == null
		    call GroupRemoveUnit(l_group1, l_unit1)
    		if not(IsWudi(l_unit1)) then
				call GroupAddUnit(l_group,l_unit1)
			endif
		endloop

		call ForGroup(l_group,function GenyuetiandiC)
	    call PrintSpellName(GetOwningPlayer(sichen),GetAbilityName('A0IR'))
		call SaveGroupHandle(spellTable,GetHandleId(t),1,l_group)
		call TimerStart(t,5,false,function GenyuetiandiTimer)
		set t = null
		call DestroyGroup(l_group1)
		set l_group1 = null
		set l_unit1 =null
		set l_group = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    亘月天地的被动效果
	*/
    private function TSpellSichen2Con takes nothing returns boolean
    	return (GetAttackedUnitBJ() == sichen or IsUnitInGroup(GetAttackedUnitBJ(),GTower)) and IsSecondSpellOK(sichen) == true and GetUnitState(sichen,UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(sichen,'A0IR') == 1 and GetRandomInt(1,20) == 1
    endfunction
    
    private function TSpellSichen2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call Yunluoliuyan('A0IR',GetAttackedUnitBJ(),2)
		call PolledWait(4.5)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    涅槃化凰的减伤效果
	*/
	private function TSpellSichen3Con takes nothing returns boolean
		return IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1 and GetEventDamage() > GetUnitState(sichen,UNIT_STATE_LIFE) and (GetTriggerUnit() == sichen or GetTriggerUnit() == UCili) and IsUnitAliveBJ(sichen) and GetRandomInt(1,2) == 1 and GetTriggerUnit() != null
	endfunction
	
	private function TSpellSichen3Act takes nothing returns nothing
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", GetUnitX(sichen), GetUnitY(sichen) ))
		call SetUnitLifePercentBJ(sichen,100)
	    call CreateSpellTextTag("涅槃化凰",sichen,100,0,0,3)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		圣皇赐力
	*/	
	private function ShenghuangciliTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer index = LoadInteger(spellTable,id,2)
		local effect eff = LoadEffectHandle(spellTable,id,3)
		call DestroyEffect(eff)
		call AddSpellPercent(index,-0.6)
		if (UCili != null) then
			call UnitRemoveAbility(UCili,'A0FU')
		endif	
	    call PrintSpellContent(GetOwningPlayer(sichen),GetAbilityName('A0IT'),"，时间结束。")
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		set UCili = null
		set t = null 
		set eff = null
	endfunction
		
	private function Shenghuangcili takes nothing returns nothing
		local timer t = CreateTimer()
		//圣皇赐力
		call UnitAddAbility(GetSpellTargetUnit(),'A0FU')
		call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(GetSpellTargetUnit())),0.6)
		set UCili = GetSpellTargetUnit()
		call SaveInteger(spellTable,GetHandleId(t),2,GetConvertedPlayerId(GetOwningPlayer(GetSpellTargetUnit())))
		call SaveEffectHandle(spellTable,GetHandleId(t),3,AddSpecialEffectTargetUnitBJ("chest",GetSpellTargetUnit(),"war3mapImported\\bullerouge.mdx"))
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\HowlOfTerror\\HowlCaster.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()) ))
		call TimerStart(t,60,false,function ShenghuangciliTimer)
        call PlaySoundBJ(gg_snd_sichen_4)
	    call PrintSpellName(GetOwningPlayer(sichen),GetAbilityName('A0IT'))
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    火箭支援
	*/
	private function Huojianzhiyuan2 takes nothing returns nothing
		local group l_group = CreateGroup()
		local unit l_unit
		call GroupAddGroup(GTower,l_group)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (not(IsWudi(l_unit))) then
				call UnitApplyTimedLifeBJ( 2.00, 'BHwe',CreateUnit(GetOwningPlayer(sichen),'h01H',GetUnitX(l_unit),GetUnitY(l_unit),GetUnitFacing(l_unit)) )
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	endfunction

	private function Huojianzhiyuan takes nothing returns nothing
		local integer i
		if not(UnitHasBuffBJ(sichen,'B021')) then
			return
		endif

		set i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (udg_H[i] != null)) then
				call UnitApplyTimedLifeBJ( 2.00, 'BHwe',CreateUnit(GetOwningPlayer(sichen),'h01H',GetUnitX(udg_H[i]),GetUnitY(udg_H[i]),GetUnitFacing(udg_H[i])) )
            endif
			set i = i +1
		endloop

		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))]) then
			call Huojianzhiyuan2()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellSichenAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0IQ') then
			call Yunluoliuyan(GetSpellAbilityId(),sichen,6)
		elseif (GetSpellAbilityId() == 'A0IR') then
			call Genyuetiandi()
		elseif (GetSpellAbilityId() == 'A0IS') then
			call SetUnitLifePercentBJ(GetSpellTargetUnit(),100)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()) ))
	    	call PrintSpellName(GetOwningPlayer(sichen),GetAbilityName('A0IS'))
		elseif (GetSpellAbilityId() == 'A0IT' and GetSpellTargetUnit() != gg_unit_haro_0030) then 
			call Shenghuangcili()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSichenI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == sichen) then
			if(whichSpell == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 2 and IsSecondSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IR') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 3 and IsThirdSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IS') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
				call AddSpecialEffectTargetUnitBJ("origin",sichen,"war3mapImported\\WarAura.mdx")
				call InitSichenAura()
			elseif (whichSpell == 4 and IsFourthSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IT') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			elseif (whichSpell == 5 and IsFifthSpellOK(sichen) == true and GetUnitAbilityLevel(sichen,'A0IU') == 1) then
				call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )
			endif
		endif
	endfunction

	function LearnSkillSichen takes unit learner,integer learnSpellID returns nothing
		if (learner == sichen) then
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
	    司宸升级解锁科技
	*/
	private function TSpellSichenUpdateAct takes nothing returns nothing
		if (GetHeroLevel(sichen)>= 25) then
			call SetPlayerTechResearchedSwap('R01E',1,GetOwningPlayer(sichen))
		endif
		if (GetHeroLevel(sichen)>= 50) then
			call SetPlayerTechResearchedSwap('R01B',1,GetOwningPlayer(sichen))
		endif
		if (GetHeroLevel(sichen)>= 100) then
			call SetPlayerTechResearchedSwap('R01C',1,GetOwningPlayer(sichen))
		endif
		if (GetHeroLevel(sichen)>= 150) then
			call SetPlayerTechResearchedSwap('R01D',1,GetOwningPlayer(sichen))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值
	*/
	private function FlashSichenDamage takes nothing returns nothing
		set SichenDamage = GetDamageAgi(sichen)
	endfunction
//---------------------------------------------------------------------------------------------------
	function InitSichen takes unit u returns nothing
		local trigger t = CreateTrigger()
		local integer i = 1
		set sichen = u

		//主英雄技能
		set TSpellSichen = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellSichen,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellSichen, function TSpellSichenAct)
	    //被动被攻击效果
	    set TSpellSichen2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellSichen2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellSichen2, Condition(function TSpellSichen2Con))
	    call TriggerAddAction(TSpellSichen2, function TSpellSichen2Act)
	    set GTower = CreateGroup()
	    //被动3的减伤
	    set TSpellSichen3 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellSichen3,sichen,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(TSpellSichen3,Condition(function TSpellSichen3Con))
	    call TriggerAddAction(TSpellSichen3,function TSpellSichen3Act)
	    //升级解锁科技
	    set TSpellSichenUpdate = CreateTrigger() 
	    call TriggerRegisterUnitEvent( TSpellSichenUpdate, sichen, EVENT_UNIT_HERO_LEVEL )
	    call TriggerAddAction(TSpellSichenUpdate, function TSpellSichenUpdateAct)
	    //马甲伤害
	    set TSpellSichenDamage = CreateTrigger()
	    call YDWESyStemAnyUnitDamagedRegistTrigger( TSpellSichenDamage )
	    call TriggerAddAction(TSpellSichenDamage, function SimulateDamageSichen)
		//完成建造
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH )
	    call TriggerAddCondition(t,Condition(function TSichenBuildingCon))
	    call TriggerAddAction(t, function TSichenBuilding)
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_UPGRADE_START )
	    call TriggerAddCondition(t,Condition(function TSichenBuildingCon))
	    call TriggerAddAction(t, function TSichenBuildingUpdate)

	    call TimerStart(CreateTimer(),1,true,function Huojianzhiyuan)
	    //刷新伤害
	    call TimerStart(CreateTimer(),1,true,function FlashSichenDamage)

		call SetPlayerStateBJ( GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, ( GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2 ) )

	    loop
	    	exitwhen i > 6
            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				call SetPlayerAbilityAvailable(ConvertedPlayer(i),'A0FU',false)
            endif
	    	set i = i +1
	    endloop
		call SetPlayerAbilityAvailable(Player(6),'A0FU',false)
		set t = null
	endfunction

endlibrary


