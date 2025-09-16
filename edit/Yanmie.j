#ifndef YanmieIncluded
#define YanmieIncluded

#include  "edit/SpellBase.j"
#include  "edit/Skin.j"
#include  "edit/Aura.j"
#include  "edit/Printer.j"
/*
    湮灭
*/
library_once Yanmie requires SpellBase,Spin,Aura,Printer



	globals

		private group GShadow = null
		constant integer ICountShadowMAX = 3

		private integer Ilingyu = 0
		private integer Ishuaxinyifu = 0

		//trigger
		private trigger TSpellYanmie2 = null
		private trigger TSpellYanmie = null

		//雷神
		private real RYingyueX = 0.
		private real RYingyueY = 0.
		private timer TYingyue = null
		private unit UShijie = null
		private integer IYingyue = 0
		private boolean BYingyue = false

		boolean BFanzhuanYM = false

		//轰鸣
		private real RHongmingX = 0.
		private real RHongmingY = 0.
		private timer THongming = null
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    马甲伤害
	*/
	private function CreateEffect1 takes real x,real y returns nothing
		local integer i = 1
	    call CreateUnitEffect(GetOwningPlayer(yanmie),'h00C',x,y,0)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", x, y ))
		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", YDWECoordinateX(x + 600 * CosBJ(i*60)), YDWECoordinateY(y + 600 * SinBJ(i*60)) ))
	   		call CreateUnitEffect(GetOwningPlayer(yanmie),'h00C', YDWECoordinateX(x + 600 * CosBJ(i*60)), YDWECoordinateY(y + 600 * SinBJ(i*60)),0)
	   		set i = i+ 1
		endloop
	endfunction

	function SimulateDamageYanmie takes unit u returns boolean
		//雷神残影50%伤害
		if (GetUnitTypeId(u) == 'h010') then
			call UnitDamageTarget( yanmie, GetTriggerUnit(), GetDamageAgi(yanmie) * 0.4, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			return true
		elseif (GetUnitTypeId(u) == 'h02M') then
				call UnitDamageTarget( yanmie, GetTriggerUnit(), GetDamageAgi(yanmie) * 0.3 * R3(GetUnitUserData(u) == 1,2.5,1), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )

			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神领域
	*/
	function CountYanmieLingyu takes nothing returns nothing
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) then
			set Ilingyu = Ilingyu + 1
			if (Ilingyu >= 30) then
	   			call CreateSpellTextTag("雷神领域",yanmie,0,50,100,2)
 				call SimulateSpell(yanmie,yanmie,'A0HV',1,5,"stomp",false,true,false)
				set Ilingyu = 0
			endif
		endif
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) then
			set Ishuaxinyifu = Ishuaxinyifu + 1
			if (Ishuaxinyifu >= 200) then
	   			call CreateSpellTextTag("雷神免疫",yanmie,50,0,100,2)
	   			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(yanmie),  GetUnitY(yanmie) ))
	   			set udg_Yifu[GetConvertedPlayerId(GetOwningPlayer(yanmie))] = false
				set Ishuaxinyifu = 0
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神之速
	*/
	function LeishenzhisuCon takes nothing returns boolean
		return ((GetAttackedUnitBJ() == yanmie) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetUnitStateSwap(UNIT_STATE_MANA, yanmie) > 200.00))
	endfunction

	function LeishenZhisu takes nothing returns nothing
		local real damage = GetDamageAgi(yanmie) * 0.25
		local integer i = 1
		local real x = GetUnitX(yanmie)
		local real y = GetUnitY(yanmie)
		call PrintSpell(GetOwningPlayer(yanmie),GetAbilityName('AEev'),damage)
		call DamageAreaMagic(yanmie,GetUnitX(yanmie),GetUnitY(yanmie),1800, damage,null)
		call DisableTrigger(GetTriggeringTrigger())

		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(x + 300 * CosBJ(i*60)), YDWECoordinateY(y + 300 * SinBJ(i*60)) ))
			set i = i + 1
		endloop

		set i = 1
		loop
			exitwhen i > 12
			call DestroyEffect(AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(x + 900 * CosBJ(i*30)), YDWECoordinateY(y + 900 * SinBJ(i*30)) ))
			set i = i + 1
		endloop

		set i = 1
		loop
			exitwhen i > 18
			call DestroyEffect(AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(x + 1500 * CosBJ(i*20)), YDWECoordinateY(y + 1500 * SinBJ(i*20)) ))
			set i = i + 1
		endloop

		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神残影
	*/
	function BoltShadow takes real x,real y returns nothing
		local unit u
		if not (IsFourthSpellOK(yanmie) and GetUnitAbilityLevel(yanmie,'AHab') == 1 and GetUnitState(yanmie,UNIT_STATE_MANA) >= 600) then
				return
			endif
		if (CountUnitsInGroup(GShadow) >= ICountShadowMAX) then
			return
		endif
		set u = CreateUnit(GetOwningPlayer(yanmie),'h010',x,y,GetRandomReal(0,360))
	    call CreateSpellTextTag("影",u,100,100,0,2)
		call UnitApplyTimedLifeBJ( 4.00, 'BHwe',u )
		call GroupAddUnit(GShadow,u)
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡事件：移除单位组
	*/
	function SimulateDeathYanmie takes unit u returns nothing
		if (IsUnitInGroup(u,GShadow)) then
			call GroupAddUnit(GShadow,u)
		elseif (GetUnitTypeId(u) == 'h02M' and GetUnitUserData(u) == 1) then

			set IYingyue = IYingyue + 1
			call DestroyEffect(AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", GetUnitX(u),GetUnitY(u) ))

			if (IYingyue >= 10 and UShijie != null) then
				call CreateEffect1(GetUnitX(UShijie),GetUnitY(UShijie))
				call DamageAreaMagic(yanmie,GetUnitX(UShijie), GetUnitY(UShijie),1800,GetDamageAgi(yanmie) * 2,null)
				set IYingyue = 0
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
 	    雷神之怒
	*/
	function Leishenzhinu takes nothing returns nothing
		local real time = GetUnitDistance(yanmie,GetAttacker())
		local real x = GetUnitX(GetAttacker())
		local real y = GetUnitY(GetAttacker())
		local unit u = CreateUnit(GetOwningPlayer(yanmie),'h000',GetUnitX(yanmie),GetUnitY(yanmie),0)
        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'A0N8',u )
        call IssuePointOrder(u,"clusterrockets",x,y)
        set u = null
		if (time >= 1800) then
			return
		endif
		call DisableTrigger(GetTriggeringTrigger())
 		call PolledWait(time/1200)
		call DamageAreaMagic(yanmie,x,y,600, GetDamageAgi(yanmie) * 0.2,null)
	    call PrintSpell(GetOwningPlayer(yanmie),GetAbilityName('A0NA'),GetDamageAgi(yanmie) * 0.2)
		call PolledWait(2)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		雷神影跃
	*/
	private function DestroyYueying takes nothing returns nothing
		call UnitRemoveAbility(yanmie,'Avul')
		set BYingyue = false
		set RYingyueX = 0.
		set RYingyueY = 0.
		call PauseTimer(TYingyue)
		call DestroyTimer(TYingyue)
		set TYingyue = null
	endfunction

	private function LeishenyueyingTimer takes nothing returns nothing
		local integer i = LoadInteger(spellTable,GetHandleId(TYingyue),1)
		local real facing = GetFacingBetweenXY(GetUnitX(yanmie),GetUnitY(yanmie),RYingyueX,RYingyueY)
		local unit u = null
		call SaveInteger(spellTable,GetHandleId(TYingyue),1,i + 1)
		if (ModuloInteger(i,3) == 0) then
			set u = CreateUnit(GetOwningPlayer(yanmie),'h02M',GetUnitX(yanmie),GetUnitY(yanmie),GetUnitFacing(yanmie))
			call UnitApplyTimedLifeBJ( 3.00, 'BHwe', u)
		endif
		if (IsUnitDeadBJ(yanmie)) then
			call DestroyYueying()
		endif
		if (GetDistance(GetUnitX(yanmie),GetUnitY(yanmie),RYingyueX,RYingyueY) > 50.) then
			call SetUnitX(yanmie,GetUnitX(yanmie)+ CosBJ(facing) * 50.)
			call SetUnitY(yanmie,GetUnitY(yanmie)+ SinBJ(facing) * 50.)
		else
			call DestroyYueying()
		endif
		if (UShijie != null) then
			if (GetUnitDistance(UShijie,yanmie) > 1200) then
				if (BYingyue) then
					call UnitRemoveAbility(yanmie,'Avul')
					set BYingyue = false
				endif
			else
				if not(BYingyue) then
					set BYingyue = true
					call UnitAddAbility(yanmie,'Avul')
				endif
				if (u != null) then
					call SetUnitUserData(u,1)
				endif
			endif
		endif
	endfunction

	function Leishenyueying takes nothing returns nothing
		set RYingyueX = GetOrderPointX()
		set RYingyueY = GetOrderPointY()
		if (TYingyue == null) then
			set TYingyue = CreateTimer()
			call SaveInteger(spellTable,GetHandleId(TYingyue),1,0)
			call TimerStart(TYingyue,0.04,true,function LeishenyueyingTimer)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神视界
	*/
	private function LeishenshijieTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		if (IsUnitAliveBJ(UShijie)) then
			call SimulateSpell(yanmie,UShijie,'A0N9',1,5,"stomp",false,true,false)
		else
			if (BYingyue) then
				call UnitRemoveAbility(yanmie,'Avul')
				set BYingyue = false
			endif
			set UShijie = null
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null
	endfunction

	private function Leishenshijie takes nothing returns nothing
		local integer i = GetHeroLevel(xinglong)
		set UShijie = CreateUnit(GetOwningPlayer(yanmie),'h02N',GetSpellTargetX(),GetSpellTargetY(),0)
		call UnitApplyTimedLifeBJ( 15, 'BHwe',UShijie )
        call PlaySoundBJ(gg_snd_yanmie_5)
		call PrintSpellName(GetOwningPlayer(yanmie),GetAbilityName(GetSpellAbilityId()))
		call TimerStart(CreateTimer(),2,true,function LeishenshijieTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雷神轰鸣
	*/
	private function Leishenhongming takes nothing returns nothing
		local real radius = GetRandomReal(0,900)
		local real degree = GetRandomReal(0,360)
		local real x = YDWECoordinateX(RHongmingX + radius * CosBJ(degree))
		local real y = YDWECoordinateX(RHongmingY + radius * SinBJ(degree))
		if (IsUnitAliveBJ(yanmie)) then
			call DamageAreaMagic(yanmie,x,y,450, GetDamageAgi(yanmie) * 0.4,null)
		    call CreateUnitEffect(GetOwningPlayer(yanmie),'h00C',x,y,0)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", x, y ))
		else
			call PauseTimer(THongming)
			call DestroyTimer(THongming)
			set THongming = null
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/

	private function TSpellYanmieAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AHbz') then
			//雷神轰鸣
			if (THongming != null) then
				call PauseTimer(THongming)
				call DestroyTimer(THongming)
				set THongming = null
			endif
		    set RHongmingX = GetSpellTargetX()
		    set RHongmingY = GetSpellTargetY()
		    set THongming = CreateTimer()
		    call TimerStart(THongming,0.5,true,function Leishenhongming)
		    call PlaySoundBJ( gg_snd_yanmie_5 )
	        call PrintSpellName(GetOwningPlayer(yanmie),GetAbilityName(GetSpellAbilityId()))
		elseif (GetSpellAbilityId() == 'A0NC') then
			call Leishenshijie()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------

	//按照12345来判断
	function LearnSkillYanmieI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == yanmie) then


			if (whichSpell == 2 and IsSecondSpellOK(yanmie) and (GetUnitAbilityLevel(yanmie,'AEev') == 1)  ) then
				//技能2初始化
			    set TSpellYanmie2 = CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ( TSpellYanmie2, EVENT_PLAYER_UNIT_ATTACKED )
			    call TriggerAddCondition(TSpellYanmie2, Condition(function LeishenzhisuCon))
			    call TriggerAddAction(TSpellYanmie2, function LeishenZhisu)
			elseif (whichSpell == 2 and IsSecondSpellOK(yanmie) and (GetUnitAbilityLevel(yanmie,'A0NA') == 1)  ) then
				//技能2(反)初始化
			    set TSpellYanmie2 = CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ( TSpellYanmie2, EVENT_PLAYER_UNIT_ATTACKED )
			    call TriggerAddCondition(TSpellYanmie2, Condition(function LeishenzhisuCon))
			    call TriggerAddAction(TSpellYanmie2, function Leishenzhinu)
			elseif (whichSpell == 3 and IsThirdSpellOK(yanmie) and GetUnitAbilityLevel(yanmie,'AHbh') == 1) then
				//技能3初始化
				call AddSpecialEffectTargetUnitBJ("origin",yanmie,"war3mapImported\\etherealaura.mdx")
				call InitYanmieAura()
			elseif (whichSpell == 4 and IsFourthSpellOK(yanmie) and GetUnitAbilityLevel(yanmie,'AHab') == 1) then
				//技能4初始化
				set GShadow = CreateGroup()
		        call EnableTrigger( gg_trg_____________3 )
		        call EnableTrigger( gg_trg_____________5 )
			elseif (whichSpell == 4 and IsFourthSpellOK(yanmie) and GetUnitAbilityLevel(yanmie,'A0NB') == 1) then
				//技能4初始化
		        call EnableTrigger( gg_trg_____________3 )
		        call EnableTrigger( gg_trg_____________5 )
			endif
		endif
	endfunction

	function LearnSkillYanmie takes unit learner,integer learnSpellID returns nothing
		if (learner == yanmie) then
			if (learnSpellID == 'AEev' or learnSpellID == 'A0NA') then
				call LearnSkillYanmieI(learner,2)
			elseif (learnSpellID == 'AHbh') then
				call LearnSkillYanmieI(learner,3)
			elseif (learnSpellID == 'AHab' or learnSpellID == 'A0NB') then
				call LearnSkillYanmieI(learner,4)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化反转形态
	*/
	function InitFanzhuanYanmie takes nothing returns nothing
		call UnitAddAbility(yanmie,'A0ND')
		call SetPlayerAbilityAvailable(GetOwningPlayer(yanmie),'A0ND',false)
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(yanmie))+"变化了英雄|cFFFFCC66湮灭|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(yanmie))+"变化了英雄|cFFFFCC66湮灭|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(yanmie))+"变化了英雄|cFFFFCC66湮灭|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(yanmie))+"变化了英雄|cFFFFCC66湮灭|r的技能形态!")
		set BFanzhuanYM = true
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 0, 0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化皮肤
	*/
	function InitYanmieSpin takes unit u returns unit
		if (IsYanmieSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'E00F',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Eevi_0020 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],100)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------


	/*
	    初始化湮灭
	*/
	function InitYanmie takes unit u returns nothing

		set yanmie = InitYanmieSpin(u)
	    call TriggerRegisterUnitEvent( gg_trg_____________3, yanmie, EVENT_UNIT_ISSUED_POINT_ORDER )

		set TSpellYanmie = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellYanmie,yanmie,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellYanmie, function TSpellYanmieAct)

	    debug if (DzAPI_Map_GetMapLevel(GetOwningPlayer(yanmie)) >= 3 or IsVIP(GetOwningPlayer(yanmie))) then
	    	call CreateFanzhuanItem(yanmie)
	    debug endif

	endfunction

endlibrary

#endif
