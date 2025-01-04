#ifndef CanglingIncluded
#define CanglingIncluded

#include  "edit/Spin.j"
#include  "edit/SpellBase.j"
#include  "edit/Printer.j"
#include  "edit/Attr.j"
#include  "edit/Aura.j"
/*
    英雄梦霁的技能
*/
library_once Cangling requires SpellBase,Printer,Attr,Aura,Spin

	globals
		/*
		    英雄
		*/
		/*
		    物品
		*/
		//item array IBibo(放到了LHBase)
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
	    判断单位是否是苍凌皮肤
	*/
	function IsCanglingSpin takes nothing returns boolean
		return GetUnitTypeId(cangling) == 'N023'
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    判断是否获得的装备的function
	*/
	function IsSwitchItemCangling takes unit u,item it returns boolean
		local integer i = I3(BiBo,7,1)

		if (u != cangling) then
			return true
		endif

		if not(IsItemPawnable(it)) then
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
	    显示所有装备
	*/
	/*function ShowAllZhuangbei takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 12
			if (IBibo[i] == null) then
				call BJDebugMsg("第"+I2S(i)+"格: null")
			else
				call BJDebugMsg("第"+I2S(i)+"格:"+GetItemName(IBibo[i]))
			endif
			set i = i +1
		endloop
	endfunction*/
//---------------------------------------------------------------------------------------------------

	/*
	    碧波宝镯：切换装备栏
	*/
	private function BiBoBaoZhuo takes nothing returns nothing
		local integer i = 1
		local integer ii = 1
		local integer iii
		local integer iiii = 1
		local item temp = null

		//判断是否有不可丢弃的法魂
		loop
			exitwhen iiii > 6
			if (IsZhanfahun(UnitItemInSlotBJ(cangling,iiii)) and not(IsItemPawnable(UnitItemInSlotBJ(cangling,iiii)))) then
				call DisplayTextToPlayer(GetOwningPlayer(cangling), 0., 0., "|cFFFF66CC【消息】|r战魂与法魂冷却期间不能切换装备栏,请等冷却结束.")
				return
			endif
			set iiii = iiii + 1
		endloop
		//保存装备
		loop
			exitwhen i > 6
			set IBibo[i + I3(BiBo,6,0)] = UnitItemInSlotBJ(cangling,i)
			set i = i +1
		endloop
		//丢弃装备
		loop
			exitwhen ii > 6
			set temp = UnitItemInSlotBJ(cangling,ii)
			//call UnitRemoveItemSwapped(temp,mengji)
			call SetItemPosition(temp,0,0)
			call SetItemVisible(temp,false)
			set ii = ii + 1
		endloop
		set BiBo = not(BiBo)
		//获得装备
		set iii = I3(BiBo,7,1)
		loop
			exitwhen iii > I3(BiBo,12,6)
			call UnitAddItem(cangling,IBibo[iii])
			set IBibo[iii] = null
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
			if (GetUnitState(cangling,UNIT_STATE_LIFE) < (0.05 + RJ1(cangling,0.05,0) + RJ2(cangling,0.05,0)) * GetUnitState(cangling,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(cangling,10)
			endif
		endif

		if (IsUnitAliveBJ(UCangFeng)) then
			if (GetUnitState(UCangFeng,UNIT_STATE_LIFE) < (0.05 + RJ1(cangling,0.05,0) + RJ2(cangling,0.05,0)) * GetUnitState(UCangFeng,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(UCangFeng,10)
			endif
		endif

		if (IsUnitAliveBJ(UCangHuo)) then
			if (GetUnitState(UCangHuo,UNIT_STATE_LIFE) < (0.05 + RJ1(cangling,0.05,0) + RJ2(cangling,0.05,0)) * GetUnitState(UCangHuo,UNIT_STATE_MAX_LIFE)) then
				call SetUnitLifePercentBJ(UCangHuo,10)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    马甲的攻击伤害
	*/

	function SimulateDamageCangling takes unit u returns boolean

		if (GetUnitTypeId(u) == 'h00V') then
			call UnitDamageTarget( cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.33, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			if (IsUnitDeadBJ(GetTriggerUnit())) then
				call SetUnitUserData(GetEventDamageSource(),GetUnitUserData(GetEventDamageSource())+1)
				if (GetUnitUserData(GetEventDamageSource()) >= 750) then
					debug call SetCanglingSpinOK(GetOwningPlayer(cangling))
				endif
			endif
			return true
		endif
		if (GetUnitTypeId(u) == 'h00W') then
			call UnitDamageTarget( cangling, GetTriggerUnit(), GetDamageAgi(cangling) * 0.35, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		if (GetUnitTypeId(u) == 'h00Y') then
			call SimulateSpell(GetEventDamageSource(),GetTriggerUnit(),'A0HU',1,5,"hex",false,false,true)
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
		local unit u = CreateUnit(GetOwningPlayer(cangling),'h00V',x,y,270)
		call SetUnitUserData(u,lifeTime + I3(IsCanglingSpin(),1,0))
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call SaveTextTagHandle(spellTable,GetHandleId(t),2,CreateTextTagUnitBJ( I2S(lifeTime + I3(IsCanglingSpin(),1,0))+"秒", u, 0, 20, 100, 0, 100, 0 ))
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
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(cangling), GetUnitY(cangling) ))
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HJ'),"结盟成功！")
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_ALLIED_VISION )
    	call ImmuteDamageInterval(cangling,1)
    	call PolledWait(10)
    	call SetPlayerAllianceStateBJ( Player(11), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
    	call SetPlayerAllianceStateBJ( Player(10), GetOwningPlayer(cangling), bj_ALLIANCE_UNALLIED )
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl", GetUnitX(cangling), GetUnitY(cangling) ))
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HJ'),"结盟结束！")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    A出不灭真炎
	*/
	private function TSpellCangling2Con takes nothing returns boolean
		return (GetAttacker() == cangling or (GetAttacker() == UCangFeng and UCangFeng != null) or (GetAttacker() == UCangHuo and UCangHuo != null)) and IsSecondSpellOK(cangling) == true and GetUnitState(cangling,UNIT_STATE_MANA) >= 250 and GetUnitAbilityLevel(cangling,'A0HJ') == 1 and GetRandomInt(1,20) == 1
	endfunction

	private function TSpellCangling2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call BuMieZhenYan(2,'A0HJ',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()))
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
	    	call CreateSpellTextTag(I2S(R2I(RGuang * 100))+"%X!",UGuang,0,100,0,4)
		else
			call DestroyGuangYin()
		endif
	endfunction

	private function GuangYinWuSuo takes nothing returns nothing
		if (UGuang != GetSpellTargetUnit()) then
			call DestroyGuangYin()
			set UGuang = GetSpellTargetUnit()
		endif
		set RGuang = R3(RGuang == 0.,0.3,RGuang + 0.1)
		set IGuang = 10
		if (TGuang == null) then
			set TGuang = CreateTimer()
			call TimerStart(TGuang,1,true,function GuangYinWuSuoTimer)
		endif
		if (EGuang == null) then
			set EGuang =  AddSpecialEffectTargetUnitBJ("head",GetSpellTargetUnit(),"Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl")
		endif
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HK'),"百分比伤害"+I2S(R2I(RGuang * 100))+"%!")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    光阴无梭的光环效果
	*/

    private function GuangyinResetTimer takes nothing returns nothing
    	local timer t = GetExpiredTimer()
    	local integer id = GetHandleId(t)
    	local integer pID = LoadInteger(spellTable,id,1)
    	set BWusuo[pID] = false
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
    	set t = null
    endfunction

    private function StartTimerGuangyin takes unit u returns nothing
    	local timer t = CreateTimer()
	    call SaveInteger(spellTable,GetHandleId(t),1,GetConvertedPlayerId(GetOwningPlayer(u)))
	    call TimerStart(t,42,false,function GuangyinResetTimer)
	    set t = null
    endfunction

	function IsGuangyinRevive takes nothing returns boolean
		if (GetUnitAbilityLevel(gg_unit_n01S_0258,'A0HR') == 1 and not(BWusuo[GetConvertedPlayerId(GetOwningPlayer(GetDyingUnit()))])) then
			set BWusuo[GetConvertedPlayerId(GetOwningPlayer(GetDyingUnit()))] = true
			call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(GetDyingUnit()))+"被"+GetUnitName(GetKillingUnitBJ())+"干掉了，被|cff808000光阴无梭|r救起,等待3秒原地复活.")
		    call PolledWait(3.00)
		    call StartTimerGuangyin(GetDyingUnit())
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
	    		call DamageAreaMagic(cangling,GetUnitX(UCangFeng),GetUnitY(UCangFeng),450,GetDamageAgi(cangling) * 0.2,null)
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
		local group l_group = GetUnitsOfTypeIdAll('h00V')
		local unit l_unit = null
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(GetSpellAbilityUnit()), GetUnitY(GetSpellAbilityUnit()) ))
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
			call SetUnitUserData(l_unit,GetUnitUserData(l_unit) + 6)
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HS'),"成功续命6秒！")
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    一气三化
	*/
	private function YiQiSanHuaTimer takes nothing returns nothing
	    call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HL'),"技能时间结束！")
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
	    call PrintSpellName(GetOwningPlayer(cangling),GetAbilityName('A0HL'))
	    set UCangFeng = CreateUnit(GetOwningPlayer(cangling),'Ogld',YDWECoordinateX(GetUnitX(cangling) + GetRandomReal(-200,200)),YDWECoordinateY(GetUnitY(cangling) + GetRandomReal(-200,200)),0)
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", GetUnitX(UCangFeng), GetUnitY(UCangFeng) ))
	    call SetHeroInt(UCangFeng,GetHeroInt(cangling,true),true)
	    call SetHeroAgi(UCangFeng,GetHeroAgi(cangling,true),true)
	    call SetHeroStr(UCangFeng,GetHeroStr(cangling,true),true)
	    call SetHeroLevel(UCangFeng,GetHeroLevel(cangling),false)
	    call SelectHeroSkill( UCangFeng, 'A0HI' )
	    call SelectHeroSkill( UCangFeng, 'A0HJ' )
	    call SelectHeroSkill( UCangFeng, 'A0HK' )
	    call SetAttack(UCangFeng,GetAttack(cangling))
	    call SetDefense(UCangFeng,GetDefense(cangling))
	    call SetHP(UCangFeng,GetHP(cangling))
	    set UCangHuo = CreateUnit(GetOwningPlayer(cangling),'Orex',YDWECoordinateX(GetUnitX(cangling) + GetRandomReal(-200,200)),YDWECoordinateY(GetUnitY(cangling) + GetRandomReal(-200,200)),0)
	    call SetHeroInt(UCangHuo,GetHeroInt(cangling,true),true)
	    call SetHeroAgi(UCangHuo,GetHeroAgi(cangling,true),true)
	    call SetHeroStr(UCangHuo,GetHeroStr(cangling,true),true)
	    call SetHeroLevel(UCangHuo,GetHeroLevel(cangling),false)
	    call SelectHeroSkill( UCangHuo, 'A0HI' )
	    call SelectHeroSkill( UCangHuo, 'A0HJ' )
	    call SelectHeroSkill( UCangHuo, 'A0HK' )
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
		local real x = YDWECoordinateX(GetUnitX(UTanlang) + GetRandomReal(-400,400))
		local real y = YDWECoordinateY(GetUnitY(UTanlang) + GetRandomReal(-400,400))
		local unit u = null
		if (i == 1) then
			set ty = 'h00W'
		elseif (i == 2) then
			set ty = 'h00Y'
		else
			set ty = 'h00Z'
		endif
		set u = CreateUnit(GetOwningPlayer(cangling),ty,x,y,GetRandomReal(0,360))
		call UnitApplyTimedLifeBJ( 10, 'BHwe', u )
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(u), GetUnitY(u) ))
		set u = null
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
	    	call PrintSpellContent(GetOwningPlayer(cangling),GetAbilityName('A0HM'),"技能时间结束！")
		endif
		set t = null
	endfunction

	/*
	    对传送门的旋转
	*/
	private function TanLangMangYaoRotateTimer takes nothing returns nothing
		if (IsUnitAliveBJ(UTanlang)) then
			call SetUnitFacing(UTanlang,ModuloReal(GetUnitFacing(UTanlang)+7.2,360))
		else
			call PauseTimer(GetExpiredTimer())
			call DestroyTimer(GetExpiredTimer())
			set UTanlang = null
		endif
	endfunction

	private function TanLangMangYao takes nothing returns nothing
		local timer t = CreateTimer()
		set UTanlang = CreateUnit(GetOwningPlayer(cangling),'h013',GetUnitX(cangling),GetUnitY(cangling),0)
		call UnitApplyTimedLifeBJ( 25, 'BHwe',UTanlang )
		call SaveInteger(spellTable,GetHandleId(t),1,15)
		call TimerStart(t,1,true,function TanLangMangYaoTimer)
		call TimerStart(CreateTimer(),0.05,true,function TanLangMangYaoRotateTimer)
    	call PlaySoundBJ( gg_snd_cangling_5 )
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/
	private function TSpellCanglingCon takes nothing returns boolean
		return GetOwningPlayer(GetSpellAbilityUnit()) == GetOwningPlayer(cangling)
	endfunction

	private function TSpellCanglingAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0HI') then
			call BuMieZhenYan(5,GetSpellAbilityId(),GetSpellTargetX(),GetSpellTargetY())
		elseif (GetSpellAbilityId() == 'A0HJ' and GetSpellAbilityUnit() == cangling) then
			call LianJieDiMeng()
		elseif (GetSpellAbilityId() == 'A0HK') then
			call GuangYinWuSuo()
		elseif (GetSpellAbilityId() == 'A0HL') then
			call YiQiSanHua()
		elseif (GetSpellAbilityId() == 'A0HM') then
			call TanLangMangYao()
		//切换背包
		elseif (GetSpellAbilityId() == 'A0HH') then
			if (IsInRect(GetUnitX(cangling),GetUnitY(cangling),gg_rct_______a3) and IsInRect(GetUnitX(cangling),GetUnitY(cangling),gg_rct_______a3)) then
				call DisplayTextToPlayer(GetOwningPlayer(cangling), 0., 0., "|cFFFF66CC【消息】|r此处禁止切换背包.")
			else
				call BiBoBaoZhuo()
			endif
		//阳炎无双
		elseif (GetSpellAbilityId() == 'A0HS') then
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
			if (whichSpell == 3 and IsThirdSpellOK(cangling) == true and GetUnitAbilityLevel(cangling,'A0HK') == 1) then
				//技能3初始化
				call AddSpecialEffectTargetUnitBJ("origin",cangling,"war3mapImported\\yanbao.mdl")
				call InitCanglingAura()
			endif
		endif
	endfunction

	function LearnSkillCangling takes unit learner,integer learnSpellID returns nothing
		if (learner == cangling) then
			if (learnSpellID == 'A0HI') then
				call LearnSkillCanglingI(learner,1)
			elseif (learnSpellID == 'A0HJ') then
				call LearnSkillCanglingI(learner,2)
			elseif (learnSpellID == 'A0HK') then
				call LearnSkillCanglingI(learner,3)
			elseif (learnSpellID == 'A0HL') then
				call LearnSkillCanglingI(learner,4)
			elseif (learnSpellID == 'A0HM') then
				call LearnSkillCanglingI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化皮肤
	*/
	private function InitCanglingSpin takes unit u returns unit
		if (IsCanglingSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'N023',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Nsjs_0209 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化苍凌
	*/
	function InitCangling takes unit u returns nothing
		set cangling = InitCanglingSpin(u)

	    //英雄第二个技能攻击事件
	    set TSpellCangling2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellCangling2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellCangling2, Condition(function TSpellCangling2Con))
	    call TriggerAddAction(TSpellCangling2, function TSpellCangling2Act)

	    //苍凌的所有技能
		set TSpellCangling = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellCangling,EVENT_PLAYER_UNIT_SPELL_EFFECT)
	    call TriggerAddCondition(TSpellCangling, Condition(function TSpellCanglingCon))
	    call TriggerAddAction(TSpellCangling, function TSpellCanglingAct)


	    call TimerStart(CreateTimer(),0.05,true,function BiBoBaoZhuoTimer)

	endfunction

endlibrary

#endif


