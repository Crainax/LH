
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄梦霁的技能
*/
library_once Cangling requires SpellBase,Printer,Attr

	globals
		/*
		    英雄
		*/
		unit cangling = null
		/*
		    物品
		*/
		private item array IBibo
		private boolean BiBo = false

		private trigger TSpellCangling = null
		private trigger TSpellCangling2 = null
		/*
		    光阴无梭
		*/
		private unit UGuang	= null
		private effect EGuang = null
		private real RGuang = 0.
		private integer IGuang = 10
		private timer TGuang = null
		/*
		    一气三化
		*/
		private unit UCangHuo = null
		private unit UCangFeng = null
		/*
		    贪狼芒曜
		*/
		private unit UTanlang = null
		/*
		    死亡复活的布尔
		*/
		private boolean array BWusuo
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否获得的装备的function
	*/
	function IsSwitchItemCangling takes unit u,item it returns boolean
		local integer i = I3(BiBo,7,1)

		if (u != cangling) then
			return true
		endif

		loop
			exitwhen i > I3(BiBo,12,6)
			if (it == IBibo[i]) then
				return false
			endif
			set i = i +1
		endloop

		return true
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    碧波宝镯：切换装备栏
	*/
	private function BiBoBaoZhuo takes nothing returns nothing
		local integer i = I3(BiBo,7,1)
		local integer ii = 1
		local integer iii = I3(BiBo,1,7)
		local item temp = null
		//保存装备
		loop
			exitwhen i > I3(BiBo,12,6)
			set IBibo[i] = UnitItemInSlotBJ(cangling,i)
			set i = i +1
		endloop
		set BiBo = not(BiBo)
		//丢弃装备
		loop
			exitwhen ii > 6
			set temp = UnitItemInSlotBJ(cangling,i)
			call SetItemPosition(temp,0,0)
			call SetItemVisible(temp,false)
			set ii = ii +1
		endloop
		//获得装备
		loop
			exitwhen iii > I3(BiBo,12,6)
			call UnitAddItem(cangling,IBibo[i])
			set IBibo[i] = null
			set iii = iii +1
		endloop
		set temp = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    碧波宝镯：生命效果
	*/
	private function BiBoBaoZhuoTimer takes nothing returns nothing
		if (IsUnitAliveBJ(cangling)) then
			if (GetUnitState(cangling,UNIT_STATE_LIFE) < 0.1 * GetUnitState(cangling,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(cangling,10)
			endif
		endif

		if (IsUnitAliveBJ(UCangFeng)) then
			if (GetUnitState(UCangFeng,UNIT_STATE_LIFE) < 0.1 * GetUnitState(UCangFeng,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(UCangFeng,10)
			endif
		endif

		if (IsUnitAliveBJ(UCangHuo)) then
			if (GetUnitState(UCangHuo,UNIT_STATE_LIFE) < 0.1 * GetUnitState(UCangHuo,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(UCangHuo,10)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageCangling takes unit u returns boolean

		if (GetUnitTypeId(u) == 'hhc1') then
			call UnitDamageTarget( cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'uuu5') then
			call UnitDamageTarget( cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.6, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'uuu6') then
			call SimulateSpell(GetEventDamageSource(),GetTriggerUnit(),'AHM7',1,5,"hex",false,false,true)
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    不灭真炎
	*/
	private function BuMieZhenYanTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local texttag tt = LoadTextTagHandle(spellTable,id,2)
		local integer value = GetUnitUserData(u) - 1
		if (value > 0) then
			call SetTextTagTextBJ(tt,I2S(value) + "秒",20)
			call SetUnitUserData(u,value)
		else
			call RemoveUnit(u)
			call DestroyTextTag(tt)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
		set tt = null 
	endfunction

	private function BuMieZhenYan takes integer lifeTime,integer abilityID,real x,real y returns nothing
		local real damage = GetDamageAgi(cangling) * 0.4
		local timer t = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(cangling),'hhc1',x,y,270)
		call SetUnitUserData(u,lifeTime)
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call SaveTextTagHandle(spellTable,GetHandleId(t),2,CreateTextTagUnitBJ( I2S(lifeTime)+"秒", u, 0, 20, 100, 0, 100, 0 ))
		call TimerStart(t,1,true,function BuMieZhenYanTimer)
	    call PrintSpell(GetOwningPlayer(cangling),GetAbilityName(abilityID),damage)
	    set u = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    联结谛盟
	*/
	private function LianJieDiMeng takes nothing returns nothing
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM2'),"结盟成功！")
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call PolledWait(12)
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM2'),"结盟结束！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    A出不灭真炎
	*/
	private function TSpellCangling2Con takes nothing returns boolean
		return GetAttacker() == cangling and IsSecondSpellOK(cangling) == true and GetUnitState(cangling,UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(cangling,'AHM2') == 1 and GetRandomInt(1,20) == 1
	endfunction

	private function TSpellCangling2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call BuMieZhenYan(2,'AHM2',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()))
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    光阴无梭
	*/
	private function DestroyGuangYin takes nothing returns nothing
		if (TGuang != null) then
			call PauseTimer(TGuang)
			call DestroyTimer(TGuang)
			set TGuang = null
		endif
		if (EGuang != null) then
			call DestroyEffect(EGuang)
			set EGuang = null
		endif
		set UGuang = null
		set RGuang = 0.
		set IGuang = 0
	endfunction

	private function GuangYinWuSuoTimer takes nothing returns nothing
		set IGuang = IGuang - 1
		if (IsUnitAliveBJ(UGuang) and IGuang > 0) then
			call UnitDamageTarget( cangling, UGuang, GetDamageAgi(cangling) * RGuang, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    	call CreateSpellTextTag(I2S(R2I(RGuang * 100))+"%X!",cangling,0,100,0,4)
		else
			call DestroyGuangYin()
		endif
	endfunction

	private function GuangYinWuSuo takes nothing returns nothing
		if (UGuang != GetSpellTargetUnit()) then
			call DestroyGuangYin()
			set UGuang = GetSpellTargetUnit()
		endif
		set RGuang = R3(RGuang == 0.,0.4,RGuang + 0.2)
		set IGuang = 10
		if (TGuang == null) then
			set TGuang = CreateTimer()
			call TimerStart(TGuang,1,true,function GuangYinWuSuoTimer)
		endif
		if (EGuang == null) then
			call AddSpecialEffectTargetUnitBJ("head",GetSpellTargetUnit(),"Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl")
		endif
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM3'),"百分比伤害"+I2S(R2I(RGuang * 100))+"%!")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    光阴无梭的光环效果
	*/

	function IsGuangyinRevive takes nothing returns boolean
		if (cangling != null and IsThirdSpellOK(cangling) == true and GetUnitAbilityLevel(cangling,'AHM3') == 1 and BWusuo[GetConvertedPlayerId(GetOwningPlayer(GetDyingUnit()))]) then
			call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(GetDyingUnit()))+"被"+GetUnitName(GetKillingUnitBJ())+"干掉了，被|cff808000光阴无梭|r救起,等待3秒原地复活.")
		    call PolledWait(3.00)
		    call ReviveHero( GetDyingUnit(), GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()) , true )
		    call SetUnitManaBJ( GetDyingUnit(), 0.5 * GetUnitState(GetDyingUnit(),UNIT_STATE_MAX_MANA) )
			return true
		else
			return false 	
		endif 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    紫雷护体
	*/
	private function ZiLeiHuTi takes nothing returns nothing
		if (UCangFeng != null) then
			if (IsUnitAliveBJ(UCangFeng)) then
	    		call DamageArea(cangling,GetUnitX(UCangFeng),GetUnitY(UCangFeng),450,GetDamageAgi(cangling) * 0.4)
			endif
		else
		    call PauseTimer(GetExpiredTimer())
		    call DestroyTimer(GetExpiredTimer())
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    阳炎无双
	*/
	private function YangYanWuShuang takes nothing returns nothing
		local group l_group = CreateGroup()
		local unit l_unit = null
		call GroupEnumUnitsInRange(l_group, 0, 0, 99999, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (GetUnitTypeId(l_unit) == 'hhc1') then
		    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
			call SetUnitUserData(l_unit,GetUnitUserData(l_unit) + 6)
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM6'),"成功续命6秒！")
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    一气三化
	*/
	private function YiQiSanHuaTimer takes nothing returns nothing
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM4'),"技能时间结束！")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", GetUnitX(UCangFeng), GetUnitY(UCangFeng) ))
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(UCangHuo), GetUnitY(UCangHuo) ))
	    call FlushChildHashtable(YDHT,GetHandleId(UCangFeng))
	    call FlushChildHashtable(YDHT,GetHandleId(UCangHuo))
	    call RemoveUnit(UCangFeng)
	    call RemoveUnit(UCangHuo)
	    set UCangHuo = null
	    set UCangFeng = null
	    call PauseTimer(GetExpiredTimer())
	    call DestroyTimer(GetExpiredTimer())
	endfunction

	private function YiQiSanHua takes nothing returns nothing
	    call PrintSpellName(GetOwningPlayer(cangling),GetAbilityName('AHM4'))
	    set UCangFeng = CreateUnit(GetOwningPlayer(cangling),'uuu2',YDWECoordinateX(GetUnitX(cangling) + GetRandomReal(-200,200)),YDWECoordinateY(GetUnitY(cangling) + GetRandomReal(-200,200)),0)
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", GetUnitX(UCangFeng), GetUnitY(UCangFeng) ))
	    call SetHeroInt(UCangFeng,GetHeroInt(cangling,true),true)
	    call SetHeroAgi(UCangFeng,GetHeroAgi(cangling,true),true)
	    call SetHeroStr(UCangFeng,GetHeroStr(cangling,true),true)
	    call SetAttack(UCangFeng,GetAttack(cangling))
	    call SetDefense(UCangFeng,GetDefense(cangling))
	    call SetHP(UCangFeng,GetHP(cangling))
	    set UCangHuo = CreateUnit(GetOwningPlayer(cangling),'uuu3',YDWECoordinateX(GetUnitX(cangling) + GetRandomReal(-200,200)),YDWECoordinateY(GetUnitY(cangling) + GetRandomReal(-200,200)),0)
	    call SetHeroInt(UCangHuo,GetHeroInt(cangling,true),true)
	    call SetHeroAgi(UCangHuo,GetHeroAgi(cangling,true),true)
	    call SetHeroStr(UCangHuo,GetHeroStr(cangling,true),true)
	    call SetAttack(UCangHuo,GetAttack(cangling))
	    call SetDefense(UCangHuo,GetDefense(cangling))
	    call SetHP(UCangHuo,GetHP(cangling))
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(UCangHuo), GetUnitY(UCangHuo) ))
		call TimerStart(CreateTimer(),120,false,function YiQiSanHuaTimer)
		call TimerStart(CreateTimer(),1,true,function ZiLeiHuTi)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建贪狼星
	*/
	private function CreateTanlang takes nothing returns nothing
		local integer i = GetRandomInt(1,3)
		local integer ty = 0
		local real x = YDWECoordinateX(GetUnitX(UTanlang) + GetRandomReal(-200,200))
		local real y = YDWECoordinateY(GetUnitY(UTanlang) + GetRandomReal(-200,200))
		if (i == 1) then
			set ty = 'uuu5'
		elseif (i == 2) then
			set ty = 'uuu6'
		else
			set ty = 'uuu7'
		endif
		call UnitApplyTimedLifeBJ( 20, 'BHwe',CreateUnit(GetOwningPlayer(cangling),ty,x,y,0) )
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    贪狼芒曜
	*/
	private function TanLangMangYaoTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer i = LoadInteger(spellTable,id,1)
		if (i > 0) then
			call SaveInteger(spellTable,id,1,i - 1)
			call CreateTanlang()
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
			set UTanlang = null
	    	call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('AHM5'),"技能时间结束！")
		endif
		set t = null 
	endfunction

	/*
	    对传送门的旋转
	*/
	private function TanLangMangYaoRotateTimer takes nothing returns nothing
		if (IsUnitAliveBJ(UTanlang)) then
			call SetUnitFacing(UTanlang,ModuloReal(GetUnitFacing(UTanlang)+3.6,360))
		else
			call PauseTimer(GetExpiredTimer())
			call DestroyTimer(GetExpiredTimer())
			call BJDebugMsg("停止旋转")
		endif
	endfunction

	private function TanLangMangYao takes nothing returns nothing
		local timer t = CreateTimer()
		set UTanlang = CreateUnit(GetOwningPlayer(cangling),'uuu4',GetUnitX(cangling),GetUnitY(cangling),0)
		call UnitApplyTimedLifeBJ( 45, 'BHwe',UTanlang )
		call SaveInteger(spellTable,GetHandleId(t),1,45)
		call TimerStart(t,1,true,function TanLangMangYaoTimer)
		call TimerStart(CreateTimer(),0.05,true,function TanLangMangYaoRotateTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellCanglingAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AHM1') then
			call BuMieZhenYan(5,GetSpellAbilityId(),GetSpellTargetX(),GetSpellTargetY())
		elseif (GetSpellAbilityId() == 'AHM2') then
			call LianJieDiMeng()
		elseif (GetSpellAbilityId() == 'AHM3') then 
			call GuangYinWuSuo()
		elseif (GetSpellAbilityId() == 'AHM4') then 
			call YiQiSanHua()
		elseif (GetSpellAbilityId() == 'AHM5') then 
			call TanLangMangYao()
		//切换背包
		elseif (GetSpellAbilityId() == 'AHM0') then 
			call BiBoBaoZhuo()
		//阳炎无双
		elseif (GetSpellAbilityId() == 'AHM6') then 
			call YangYanWuShuang()

		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillCanglingI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == cangling) then
			if (whichSpell == 3 and IsThirdSpellOK(cangling) == true and GetUnitAbilityLevel(cangling,'AHM3') == 1) then
				//技能3初始化
				call AddSpecialEffectTargetUnitBJ("origin",cangling,"war3mapImported\\BlightwalkerAura.mdx")
				call UnitAddAbility(gg_unit_haro_0030,'AHM8')
			endif
		endif
	endfunction

	function LearnSkillCangling takes unit learner,integer learnSpellID returns nothing
		if (learner == cangling) then
			if (learnSpellID == 'AHM1') then
				call LearnSkillCanglingI(learner,1)
			elseif (learnSpellID == 'AHM2') then
				call LearnSkillCanglingI(learner,2)
			elseif (learnSpellID == 'AHM3') then
				call LearnSkillCanglingI(learner,3)
			elseif (learnSpellID == 'AHM4') then
				call LearnSkillCanglingI(learner,4)
			elseif (learnSpellID == 'AHM5') then
				call LearnSkillCanglingI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化苍凌
	*/
	function InitCangling takes unit u returns nothing
		set cangling = u

	    //英雄第二个技能攻击事件
	    set TSpellCangling2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellCangling2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellCangling2, Condition(function TSpellCangling2Con))
	    call TriggerAddAction(TSpellCangling2, function TSpellCangling2Act)

		set TSpellCangling = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellCangling,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellCangling, function TSpellCanglingAct)

	    call TimerStart(CreateTimer(),0.05,true,function BiBoBaoZhuoTimer)

	endfunction

endlibrary


