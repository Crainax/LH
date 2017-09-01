//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"

/*
    英雄离魑的技能
*/
library_once Lichi requires SpellBase,Printer,Attr,Aura


	globals
		private trigger TSpellLichi = null
		private trigger TSpellLichiDamage = null

		//伤害值
		private real LichiDamage = 0

		//记录点
		private real NiLiX = 0.
		private real NiLiY = 0.

		//幻影
		private integer IMaxHuanying = 0
		private unit array UHuan
		//幻影攻击目标
		private boolean BHuanAttack = false
		//0是静止,1是移动,2是攻击
		private integer ILichiDoing = 0
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathLichi takes unit u returns nothing
		if (GetUnitTypeId(u) == 'h01L') then
			call DamageArea(lichi,GetUnitX(u),GetUnitY(u),600,LichiDamage*R3(IsLong(),1.5,1)/10*GetUnitUserData(u))
 			call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", GetUnitX(u),GetUnitY(u) ))
		endif
		if (GetUnitTypeId(u) == 'h01J') then
			call DamageArea(lichi,GetUnitX(u),GetUnitY(u),300,LichiDamage*0.4)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(u),GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    一样的步调
	*/
	private function JudgeLichiMove takes nothing returns nothing
		local integer i
    	if (NiLiX != GetUnitX(lichi) or NiLiY != GetUnitY(lichi)) then
    		set NiLiX = GetUnitX(lichi)
    		set NiLiY = GetUnitY(lichi)
    		//移动
    		if (ILichiDoing != 1) then
    			set ILichiDoing = 1
    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
	    			call SetUnitAnimationByIndex( UHuan[i], 2 )
    				set i = i +1
    			endloop
    		endif
    	else
    		//静止
    		if (ILichiDoing == 1) then
    			set ILichiDoing = 0
    			call SetUnitAnimationByIndex( lichi, 1 )
    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
	    			call SetUnitAnimationByIndex( UHuan[i], 1 )
    				set i = i +1
    			endloop
    		endif
    	endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    攻击与被攻击事件
	*/
   	private function TAttackLichiCon takes nothing returns boolean
    	return GetAttacker() == lichi or GetAttackedUnitBJ() == lichi
    endfunction
    
    private function TAttackLichiAct takes nothing returns nothing
    	local integer i
    	if (GetAttacker() == lichi) then
    		//英雄攻击,命令幻影攻击
    		if not(BHuanAttack) then
    			set BHuanAttack = true
    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
					if (UHuan[i] != null) then
        				call IssueTargetOrder( UHuan[i], "attack", GetAttackedUnitBJ() )
					endif
    				set i = i +1
    			endloop
    			call PolledWait(0.6)
    			set BHuanAttack = false
    		endif
    	else
    		//英雄被攻击，放第二个技能
    		if (not(BTongyun) and IsSecondSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JO') == 1) then
    		endif
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
				exitwhen i > 10
				if (GetRandomInt(1,100) > I3(BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xinglong))] and IsLong(),0,(i*10))) then
					call Longhuangtuxi2(false,0,0,XinglongDamage*rate*0.1*i,i)
	    			call CreateSpellTextTag(I2S(i)+"次共鸣！",xinglong,100,0,0,3)
					call PolledWait(0.5)
	    		else
	    			exitwhen true
				endif
				set i = i +1
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
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
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
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local unit temp = null
		if (IsUnitAliveBJ(u)) then
    		call SetUnitFlyHeight(CreateUnit(GetOwningPlayer(xinglong),'h01J',YDWECoordinateX(GetUnitX(u)+GetRandomReal(-900,900)), YDWECoordinateY(GetUnitY(u)+GetRandomReal(-900,900)),0), 0.00, 500.00 )
		else
			set BLunhuing = false
			call UnitRemoveAbility(xinglong,'A0K1')
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set temp = null
		set t = null 
	endfunction

	private function Longhuanglunhui takes nothing returns nothing
		local integer i = GetHeroLevel(xinglong)
		local timer t2 = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(xinglong),'h01K',GetUnitX(xinglong),GetUnitY(xinglong),0)
		if (BLunhuing) then
			return
		endif
		set BLunhuing = true
		call UnitApplyTimedLifeBJ( 5, 'BHwe',u )
        call PlaySoundBJ(gg_snd_xinglong_4)
		call PrintSpellName(GetOwningPlayer(xinglong),GetAbilityName('A0JQ'))
		call UnitAddAbility(xinglong,'A0K1')
		call UnitMakeAbilityPermanent(xinglong,true,'A0K1')
		//不断伤害
		call SaveUnitHandle(spellTable,GetHandleId(t2),1,u)
		call TimerStart(t2,0.05,true,function LonghuanglunhuiDamageTimer)
		//快速升级
		set t2 = null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/

	private function TSpellLichiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0JN') then
		elseif (GetSpellAbilityId() == 'A0JO') then
		elseif (GetSpellAbilityId() == 'A0JQ') then
		elseif (GetSpellAbilityId() == 'AEme') then 
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
			call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl", YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(y + 900 * SinBJ(i*60)) ))
			set i = i +1
		endloop
	endfunction

	private function CreateEffect2 takes real x,real y returns nothing
		local integer i = 1
	    call CreateUnitEffect(GetOwningPlayer(xinglong),'h01M',x,y,0)
		loop
			exitwhen i > 6
	    	call CreateUnitEffect(GetOwningPlayer(xinglong),'h01M',YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(y + 900 * SinBJ(i*60)),0)
			set i = i +1
		endloop
	endfunction

	private function TSpellXinglongUpdateAct takes nothing returns nothing
		if (IsFourthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JQ') == 1 and GetUnitLevel(xinglong) >= 101) then
			//龙皇轮回，伤害并眩晕，还有特效
		    call SetHeroLevelBJ( xinglong, 1, false )
		    call UnitAddAbility(xinglong,'A0JN')
		    call UnitAddAbility(xinglong,'A0JO')
		    call UnitAddAbility(xinglong,'A0JP')
		    call UnitAddAbility(xinglong,'A0JQ')
		    call UnitAddAbility(xinglong,'A0JR')
			call CreateEffect2(GetUnitX(xinglong), GetUnitY(xinglong))
	    	call PrintSpell(GetOwningPlayer(xinglong),GetAbilityName('A0JQ'),XinglongDamage*10)
	    	call PolledWait(1)
			call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage *3)
	    	return
		endif

		if (IsSecondSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JO') == 1 and not(BEffUpdate)) then
			call DamageArea(xinglong,GetUnitX(xinglong), GetUnitY(xinglong),1800,XinglongDamage * 0.5)
			call CreateEffect1(GetUnitX(xinglong), GetUnitY(xinglong))
			set BEffUpdate = true
			call PolledWait(2)
			set BEffUpdate = false
		endif

    	call SetUnitLifePercentBJ(xinglong,100)
    	call SetUnitManaBJ(xinglong,GetUnitState(xinglong,UNIT_STATE_MANA)+200)
    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(xinglong), GetUnitY(xinglong) ))
    	if (IsFourthSpellOK(xinglong) and GetUnitAbilityLevel(xinglong,'A0JQ') == 1) then
    		set BAttrTime = BAttrTime + 2

    		if (GetUnitAbilityLevel(xinglong,'A0K2') != 1) then
    			call UnitAddAbility(xinglong,'A0K2')
    			call UnitMakeAbilityPermanent(xinglong,true,'A0K2')
				call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
				call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
				call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xinglong)),0.3)
    		endif
    	endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值
	*/
	private function FlashLichiDamage takes nothing returns nothing
		set LichiDamage = GetDamageInt(lichi)
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
	    	call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CC【消息】|r请选择你需要的"+I2S(IChooseAura)+"个英雄光环.")
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
	    call DisplayTextToPlayer(GetOwningPlayer(xinglong), 0., 0., "|cFFFF66CC【消息】|r请选择你需要的"+I2S(IChooseAura)+"个英雄光环.")
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
	function LearnSkillLichiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == lichi) then
			if (whichSpell == 3 and IsThirdSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JP') == 1) then
				set IChooseAura = IChooseAura + 1
				call InitChooseAura()
			elseif (whichSpell == 5 and IsFifthSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JR') == 1) then
				set IChooseAura = IChooseAura + 3
				call InitChooseAura()
			endif
		endif
	endfunction

	function LearnSkillLichi takes unit learner,integer learnSpellID returns nothing
		if (learner == lichi) then
			if (learnSpellID == 'A0JN') then
				call LearnSkillLichiI(learner,1)
			elseif (learnSpellID == 'A0JO') then
				call LearnSkillLichiI(learner,2)
			elseif (learnSpellID == 'A0JP') then
				call LearnSkillLichiI(learner,3)
			elseif (learnSpellID == 'A0JQ') then
				call LearnSkillLichiI(learner,4)
			elseif (learnSpellID == 'A0JR') then
				call LearnSkillLichiI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitLichi takes unit u returns nothing
		set lichi = u

		set IMaxHuanying = 4

		set TSpellLichi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellLichi,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellLichi, function TSpellLichiAct)

	    //刷新伤害,还有每秒判断形态是否扣血,还有加属性的判断
	    call TimerStart(CreateTimer(),1,true,function FlashLichiDamage)

	    //一致的步调
	    call TimerStart(CreateTimer(),0.1,true,function JudgeLichiMove)

	    //攻击与被攻击事件
		set TAttackLichi = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TAttackLichi,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TAttackLichi, Condition(function TAttackLichiCon))
	    call TriggerAddAction(TAttackLichi, function TAttackLichiAct)

	    //伤害免疫事件
	    set TSpellLichiDamage = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellLichiDamage,  lichi, EVENT_UNIT_DAMAGED )
	    call TriggerAddCondition(TSpellLichiDamage, Condition(function TSpellLichiDamageCon))
	    call TriggerAddAction(TSpellLichiDamage, function TSpellLichiDamageAct)
	endfunction
endlibrary
