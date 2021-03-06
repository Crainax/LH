//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
//! import "Spin.j"

/*
    英雄星胧的技能
*/
library_once Xinglong requires SpellBase,Printer,Attr,Aura,Spin


	globals
		private trigger TSpellXinglong = null
		private trigger TSpellXinglongUpdate = null
		private trigger TSpellXinglongAttack = null
		private trigger TSpellXinglongDamage = null

		//是否已经变身
		private boolean BBianshen = false

		//伤害值
		private real XinglongDamage = 0

		//显示特效的flag
		//private boolean BEffUpdate = false

		//伤害的指示器
		private boolean BDamage = false
		//轮回加属性时间
		private integer BAttrTime = 0
		//待选光环数
		integer IChooseAura = 0

		//当前吐息数
		integer ITuxi = 0

		//龙皇轮回
		private real RLunhui = 0.
		private timer TLunhui = null
		private unit ULunhui = null
		private texttag TTLunhui = null
		private integer ILunhui = 0

		//皮肤自增值
		private integer ISpinValue = 1
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    统计龙皇皮肤值
	*/
	function IncreaseXinglongSpin takes nothing returns nothing
		if not (GetXinglong1Spin(GetOwningPlayer(xinglong))) then
			set ISpinValue = ISpinValue + 1
			if (ModuloInteger(ISpinValue,1000) == 0) then
				call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "【|cffff00ff绯想龙域|r】完成进度"+I2S(ISpinValue)+"/30000.")
			endif
			debug if (ISpinValue >= 30000) then
				debug call SetXinglong1SpinOK(GetOwningPlayer(xinglong))
			debug endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是不是龙
	*/
	function IsLong takes nothing returns boolean
		return GetUnitTypeId(xinglong) == 'H01I' or GetUnitTypeId(xinglong) == 'H02O'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathXinglong takes unit u returns nothing
		if (GetUnitTypeId(u) == 'h01L') then
			call DamageArea(xinglong,GetUnitX(u),GetUnitY(u),600,XinglongDamage*R3(IsLong(),1.5,1)/10*GetUnitUserData(u))
 			call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", GetUnitX(u),GetUnitY(u) ))
		endif
		if (GetUnitTypeId(u) == 'h01J') then
			set ILunhui = ILunhui + 1
			if (ILunhui >= 10) then
				set ILunhui = 0
				call DamageAreaMirror(xinglong,GetUnitX(u),GetUnitY(u),900,XinglongDamage*2.5)
			endif
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(u),GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇附体
	*/
	private function Longhuangfuti takes nothing returns nothing
		if (GetUnitTypeId(xinglong) == 'Hapm' or GetUnitTypeId(xinglong) == 'H02L') then
			if (not(BBianshen)) then
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.2*(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.1*(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))

			endif
			set BBianshen = true
			call PolledWait(0.01)
			call AddAttack(xinglong,0)
			call AddDefense(xinglong,0)
			call AddHP(xinglong,0)
		elseif(GetUnitTypeId(xinglong) == 'H01I' or GetUnitTypeId(xinglong) == 'H02O') then
			set BBianshen = false
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.2 *(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.1*(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))
			call PolledWait(0.01)

			call AddAttack(xinglong,0)
			call AddDefense(xinglong,0)
			call AddHP(xinglong,0)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇吐息
	*/
	private function Longhuangtuxi2 takes boolean diyfacing,real x,real y ,real damage,integer times returns nothing
		local real facing = R3(diyfacing,GetFacingBetweenXY(GetUnitX(xinglong),GetUnitY(xinglong),x,y),GetUnitFacing(xinglong))
		local real distance = R3(diyfacing,GetDistance(GetUnitX(xinglong),GetUnitY(xinglong),x,y),1200)
		local unit u = CreateUnit(GetOwningPlayer(xinglong),'h01L',GetUnitX(xinglong),GetUnitY(xinglong),facing)
    	call SetUnitScalePercent( u,  100.00 +  times * 10.00  , 100.00 +  times * 10.00, 100.00 +  times * 10.00 )
    	call SetUnitUserData(u,times)
    	call UnitApplyTimedLifeBJ( distance/900, 'BHwe', u)
	    call YDWETimerPatternRushSlide( u, facing , distance, distance/900, 0.05, damage / 10 * times, 180+times*20., false, true, true, "origin", "", "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl" )
	endfunction

	private function Longhuangtuxi takes real x, real y,integer abilityID,real rate returns nothing
		local integer times = I3((IsSecondSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JO') == 1),3,1)
		local integer i = 1
		if (ITuxi >= 3) then
			return
		endif
		set ITuxi = ITuxi + 1 
		if (abilityID != 0) then
	    	call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName(abilityID),XinglongDamage)
		endif
		call Longhuangtuxi2(true,GetSpellTargetX(),GetSpellTargetY(),XinglongDamage*rate,10)
		if (IsSecondSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JO') == 1) then
			call PolledWait(0.5)
			loop
				exitwhen i > 5
				if (GetRandomInt(1,100) > I3(BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xinglong))] and IsLong(),0,(i*10))) then
					call Longhuangtuxi2(false,0,0,XinglongDamage*rate*0.1*i*2,i*2)
	    			call CreateSpellTextTag(I2S(i)+"次共鸣！",xinglong,100,0,0,3)
					call PolledWait(0.5)
	    		else
	    			exitwhen true
				endif
				set i = i + 1
			endloop
		endif
		set ITuxi = ITuxi - 1 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇共鸣
	*/
	private function Longhuanggongming takes nothing returns nothing
		call UnitRemoveAbility(xinglong,'A0JN')
		call UnitAddAbility(xinglong,'A0JN')
    	call PrintSpellContent(GetOwningPlayer(xinglong),GetAbilityName('A0JO'),"，刷新成功。")
		call UnitDamageTarget( xinglong, xinglong, GetUnitState(xinglong,UNIT_STATE_MAX_LIFE)*0.2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
		call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击被动
	*/
	private function TSpellXinglongAttackCon takes nothing returns boolean
		return GetAttacker() == xinglong
	endfunction

	private function TSpellXinglongAttackAct takes nothing returns nothing
		if (IsSecondSpellOK(xinglong) and GetUnitState(xinglong,UNIT_STATE_MANA) >= 250 and GetRandomInt(1,20) == 1 and GetUnitAbilityLevel(xinglong,'A0JO') == 1) then
			call Longhuangtuxi(GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),'A0JO',0.33)
		endif
		if (IsThirdSpellOK(xinglong) and GetUnitState(xinglong,UNIT_STATE_MANA) >= 400 and GetRandomInt(1,10) == 1 and GetUnitAbilityLevel(xinglong,'A0JP') == 1) then
			call UnitDamageTarget( xinglong, GetAttackedUnitBJ(), (GetAttack(xinglong)+GetHeroStr(xinglong,false))*3* SquareRoot(I2R(GetHeroLevel(xinglong)))*R3(IsLong(),2,1), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call CreateSpellTextTag("弑",GetAttackedUnitBJ(),100,0,100,3)
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl", GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    龙皇凝性的伤害被动
	*/
    private function TSpellXinglongDamageCon takes nothing returns boolean
    	return IsThirdSpellOK(xinglong) and GetEventDamage() < GetUnitState(xinglong,UNIT_STATE_MAX_LIFE) and GetUnitAbilityLevel(xinglong,'A0JP') == 1 and IsUnitInUnitBack(xinglong,GetEventDamageSource(),60) and GetEventDamage() > 0 and GetEventDamageSource() != xinglong
    endfunction
    
    private function TSpellXinglongDamageAct takes nothing returns nothing
		call SetUnitLifeBJ(xinglong,GetUnitState(xinglong,UNIT_STATE_LIFE)+GetEventDamage()*2)
    	if not(BDamage) then
    		set BDamage = true
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCasterOverhead.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
    		call PolledWait(1)
    		set BDamage = false
    	endif
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    龙皇轮回
	*/

	//伤害的计时器
	private function LonghuanglunhuiDamageTimer takes nothing returns nothing
		if (RLunhui >= 0.) then
			set RLunhui = RLunhui - 0.1
			call SetTextTagTextBJ(TTLunhui,R2S(RLunhui)+"s",20)
    		call SetUnitFlyHeight(CreateUnit(GetOwningPlayer(xinglong),'h01J',YDWECoordinateX(GetUnitX(ULunhui)+GetRandomReal(-900,900)), YDWECoordinateY(GetUnitY(ULunhui)+GetRandomReal(-900,900)),0), 0.00, 500.00 )
		else
			call PauseTimer(TLunhui)
			call DestroyTimer(TLunhui)
			set TLunhui = null
			call RemoveUnit(ULunhui)
			call DestroyTextTag(TTLunhui)
			set ULunhui = null
			set TTLunhui = null
		endif
	endfunction

	private function Longhuanglunhui takes nothing returns nothing
		local integer i = GetHeroLevel(xinglong)

		set RLunhui = RMaxBJ(5.0,RLunhui)
		if (TLunhui == null) then
			set TLunhui = CreateTimer()
			set ULunhui = CreateUnit(GetOwningPlayer(xinglong),'h01K',GetUnitX(xinglong),GetUnitY(xinglong),0)
			set TTLunhui = CreateTextTagUnitBJ( R2S(RLunhui)+"s", xinglong, 20, 20, 0, 0, 100, 0 )
		endif
		call SetUnitX(ULunhui,GetUnitX(xinglong))
		call SetUnitY(ULunhui,GetUnitY(xinglong))
		//call SetTextTagPos(TTLunhui,GetUnitX(ULunhui),GetUnitY(ULunhui),0)
        call PlaySoundBJ(gg_snd_xinglong_4)
		call PrintSpellName(GetOwningPlayer(xinglong),GetAbilityName('A0JQ'))
		// call UnitAddAbility(xinglong,'A0K1')
		// call UnitMakeAbilityPermanent(xinglong,true,'A0K1')
		//不断伤害
		call TimerStart(TLunhui,0.1,true,function LonghuanglunhuiDamageTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/

	private function TSpellXinglongAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0JN') then
			//龙皇吐息
			call Longhuangtuxi(GetSpellTargetX(),GetSpellTargetY(),'A0JN',1)
		elseif (GetSpellAbilityId() == 'A0JO') then
			//龙皇共鸣
			call Longhuanggongming()
		elseif (GetSpellAbilityId() == 'A0JQ') then
			//龙皇轮回
			call Longhuanglunhui()
		elseif (GetSpellAbilityId() == 'AEme' or GetSpellAbilityId() == 'A0NG') then 
			//龙皇附体
			call Longhuangfuti()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧升级后
	*/

	private function TSpellXinglongUpdateAct takes nothing returns nothing

		call IncreaseXinglongSpin()
		if (IsFourthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JQ') == 1 and GetUnitLevel(xinglong) >= 101) then
			//龙皇轮回，伤害并眩晕，还有特效
		    call SetHeroLevelBJ( xinglong, 1, false )
		    call UnitAddAbility(xinglong,'A0JN')
		    call UnitAddAbility(xinglong,'A0JO')
		    call UnitAddAbility(xinglong,'A0JP')
		    call UnitAddAbility(xinglong,'A0JQ')
		    call UnitAddAbility(xinglong,'A0JR')
	    	call CreateUnitEffect(GetOwningPlayer(xinglong),'h01M',GetUnitX(xinglong),GetUnitY(xinglong),0)
			//call CreateEffect2(GetUnitX(xinglong), GetUnitY(xinglong))
	    	//call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName('A0JQ'),XinglongDamage*10)
	    	//call PolledWait(1)
			//call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage *3)
	    	return
		endif

		//if (IsSecondSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JO') == 1 and not(BEffUpdate)) then
		//	call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage * 0.5)
		//	call CreateEffect1(GetUnitX(xinglong), GetUnitY(xinglong))
		//	set BEffUpdate = true
		//	call PolledWait(2)
		//	set BEffUpdate = false
		//endif

		set RLunhui = RMinBJ(30.,RLunhui + 1.0)
    	call SetUnitLifePercentBJ(xinglong,100)
    	call SetUnitManaBJ(xinglong,GetUnitState(xinglong,UNIT_STATE_MANA)+200)
    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
    	//if (IsFourthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JQ') == 1) then
    	//	set BAttrTime = BAttrTime + 2
//
    	//	if (GetUnitAbilityLevel(xinglong,'A0K2') != 1) then
    	//		call UnitAddAbility(xinglong,'A0K2')
    	//		call UnitMakeAbilityPermanent(xinglong,true,'A0K2')
		//		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
		//		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
		//		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
    	//	endif
    	//endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值，及判断形态扣血
	*/
	private function FlashXinglongDamage takes nothing returns nothing
		set XinglongDamage = GetDamageStr(xinglong)
		if (IsLong() and IsUnitAliveBJ(xinglong)) then
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
			call UnitDamageTarget( xinglong, xinglong, GetUnitState(xinglong,UNIT_STATE_MAX_LIFE)*0.1, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
		endif
    	// if (IsFourthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JQ') == 1 and BAttrTime != 0) then
    	// 	set BAttrTime = BAttrTime - 1
    	// 	if (BAttrTime == 0) then
    	// 		call UnitRemoveAbility(xinglong,'A0K2')
		// 		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.3)
		// 		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.3)
		// 		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.3)
    	// 	endif
    	// endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择光环后
	*/
	function ChooseAura takes unit u returns nothing
		call InitSpecifyAura(u)
		if (GetHeroIndex(GetUnitTypeId(u)) == 1) then
			call UnitRemoveAbility(u,'AOre')
		endif
		call KillUnit(u)
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(u), GetUnitY(u) ))
		set IChooseAura = IChooseAura - 1
		if (IChooseAura == 0) then
    		call SetCameraBoundsToRectForPlayerBJ( GetOwningPlayer(xinglong), GetPlayableMapRect() )
	    	call PanCameraToTimedForPlayer( GetOwningPlayer(xinglong), GetUnitX(xinglong),GetUnitY(xinglong), 0.20 )
	    	set udg_T1[GetConvertedPlayerId(GetOwningPlayer(xinglong))] = true
	    else
	    	call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CC【消息】|r请双击选择你需要的"+I2S(IChooseAura)+"个英雄光环.")
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	     初始化选光环
	*/
	function InitChooseAura takes nothing returns nothing
		local dialog d = DialogCreate()
        local string s = "
        	请双击英雄选择你需要的"+I2S(IChooseAura)+"个英雄光环."
        call DialogSetMessage( d, s )
        call DialogAddButton( d, "确定|cffff6800(Esc)|r",512)
        call DialogDisplay( GetOwningPlayer(xinglong), d, true )
        set d = null
	    call PanCameraToTimedForPlayer( GetOwningPlayer(xinglong), GetRectCenterX(gg_rct_______c1),GetRectCenterY(gg_rct_______c1), 0.20 )
	    call SetCameraBoundsToRectForPlayerBJ( GetOwningPlayer(xinglong), gg_rct_______c1 )
	    call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CC【消息】|r请双击选择你需要的"+I2S(IChooseAura)+"个英雄光环.")
	    set udg_T1[GetConvertedPlayerId(GetOwningPlayer(xinglong))] = false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    复活后如果是龙化就取消属性加成
	*/
	function AfterReviveXinglong takes unit u returns nothing
		if (u == xinglong and BBianshen) then
			set BBianshen = false
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.2*(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))
			call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)),-0.1*(1+IJ2(xinglong,1,0)+IJ3(xinglong,1,0)))
			call PolledWait(0.01)
			call AddAttack(xinglong,0)
			call AddDefense(xinglong,0)
			call AddHP(xinglong,0)
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
			if (whichSpell == 3 and IsThirdSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JP') == 1) then
				set IChooseAura = IChooseAura + 1
				call InitChooseAura()
			elseif (whichSpell == 5 and IsFifthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JR') == 1) then
				set IChooseAura = IChooseAura + 3
				call InitChooseAura()
			endif
		endif
	endfunction

	function LearnSkillXinglong takes unit learner,integer learnSpellID returns nothing
		if (learner == xinglong) then
			if (learnSpellID == 'A0JN') then
				call LearnSkillXinglongI(learner,1)
			elseif (learnSpellID == 'A0JO') then
				call LearnSkillXinglongI(learner,2)
			elseif (learnSpellID == 'A0JP') then
				call LearnSkillXinglongI(learner,3)
			elseif (learnSpellID == 'A0JQ') then
				call LearnSkillXinglongI(learner,4)
			elseif (learnSpellID == 'A0JR') then
				call LearnSkillXinglongI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    星胧皮肤
	*/
	private function InitXinglongSpin takes unit u returns unit
		if (IsXinglongSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H02L',GetUnitX(u),GetUnitY(u),0)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			set BSpinXinglong = true
	    	set udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(u))] = udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(u))] + 0.5
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitXinglong takes unit u returns nothing
		set xinglong = InitXinglongSpin(u)

		set TSpellXinglong = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellXinglong,xinglong,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellXinglong, function TSpellXinglongAct)

	    set udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))] = udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(xinglong))] + 5.

	    //刷新伤害,还有每秒判断形态是否扣血,还有加属性的判断
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