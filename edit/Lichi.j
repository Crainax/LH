//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
//! import "Spin.j"

/*
    英雄离魑的技能
*/
library_once Lichi requires SpellBase,Printer,Attr,Aura,Spin


	globals
		private trigger TSpellLichi = null
		private trigger TSpellLichiDamage = null
		private trigger TAttackLichi = null

		//伤害值
		private real LichiDamage = 0

		//记录点
		private real NiLiX = 0.
		private real NiLiY = 0.

		//幻影
		integer IMaxHuanying = 0
		private unit array UHuan
		//幻影攻击目标
		private boolean BHuanAttack = false
		//0是静止,1是移动,2是攻击
		private integer ILichiDoing = 0
		//统计值
		private integer IHuanyingCount = 0

		//第二个技能的冷却期
		private boolean BTongyun = false

		//湮魂印连结效果
		private Connect array CYanhun
		integer Iyanhun = 0
		unit Uyanhun = null

		//神月缺的单位组
		private integer IShenyue = 0
		private group array GShenyue 
		private boolean BShenyue = false

		//囚天地
		private trigger TSpellLichi51 = null
		private trigger TSpellLichi52 = null
		private integer IQiutian = 0


		//皮肤统计
		private integer ISpinLichi = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    皮肤统计
	*/
	private function SpinTongji takes nothing returns nothing
		if not (GetLichi1Spin(GetOwningPlayer(lichi))) then
			set ISpinLichi = ISpinLichi + 1
			if (ModuloInteger(ISpinLichi,10) == 0) then
				call DisplayTextToPlayer(GetOwningPlayer(lichi), 0., 0., "【|cffff6800谜幻逸空|r】完成进度"+I2S(ISpinLichi)+"/100.")
			endif
			debug if (ISpinLichi >= 100) then
				debug call SetLichiSpinOK(GetOwningPlayer(lichi))
			debug endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断单位是否是离魑皮肤
	*/
	function IsLichiSpin takes nothing returns boolean
		return GetUnitTypeId(lichi) == 'H02E'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathLichi takes unit u returns nothing
		if (GetUnitTypeId(u) == 'h02A') then
			call DamageArea(lichi,GetUnitX(u),GetUnitY(u),350,LichiDamage * 0.25)
 			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(u),GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    伤害
	*/
	function SimulateDamageLichi takes unit u returns boolean
		//幻影
		if (GetUnitTypeId(u) == 'h028' or GetUnitTypeId(u) == 'h02F') then
			call UnitDamageTarget( lichi, GetTriggerUnit(), LichiDamage * 0.05 * IJ3(lichi,2,1) , false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'h02A') then
			call UnitDamageTarget( lichi, GetTriggerUnit(), LichiDamage * 0.01 , false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取某个幻影对应的位置，下面的话是负数形式
	*/
	private function GetHuanyingIndex takes integer id returns integer
		if (ModuloInteger(id,2) == 1) then
			// 奇数
			return (id/2)+1
		else
			return -1 * (id/2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取幻影的数量
	*/
	private function GetHuanyingCount takes nothing returns integer 
		local integer i = 1
		local integer result = 0
		loop
			exitwhen i > IMaxHuanying
			if (UHuan[i] != null) then
				set result = result + 1
			endif
			set i = i +1
		endloop
		return result
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    创建一个分身
	*/
	function CreateHuanying takes nothing returns nothing
		local integer i = 1
		local integer index = 0
		loop
			exitwhen i > IMaxHuanying
			if (UHuan[i] == null) then
				set index = GetHuanyingIndex(i)
				set UHuan[i] = CreateUnit(GetOwningPlayer(lichi),I3(IsLichiSpin(),'h02F','h028'),GetUnitX(lichi) +  IAbsBJ(index) * 150 * CosBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)),GetUnitY(lichi) +  IAbsBJ(index) * 150 * SinBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)),GetUnitFacing(lichi))
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(UHuan[i]),GetUnitY(UHuan[i]) ))
        		call UnitAddType( UHuan[i], UNIT_TYPE_PEON )
    			call SetUnitAcquireRange( UHuan[i], 1.00 )
        		call IssueTargetOrder(UHuan[i],"attack",lichi)
				return
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    杀怪统计创造分身
	*/
	function KillCountHuanying takes integer i returns nothing
		if (BTianfu) then
			return
		endif
		set IHuanyingCount = IHuanyingCount + i
		if (IHuanyingCount >= 200) then
			call CreateHuanying()
			set IHuanyingCount = 0
		elseif (ModuloInteger(IHuanyingCount,50) == 0) then
    		call CreateTextTagA("影:"+I2S(IHuanyingCount),lichi,0,100,100,3,12)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    一样的步调
	*/
	private function JudgeLichiMove takes nothing returns nothing
		local integer i
		local integer index
    	if (NiLiX != GetUnitX(lichi) or NiLiY != GetUnitY(lichi)) then
    		set NiLiX = GetUnitX(lichi)
    		set NiLiY = GetUnitY(lichi)
    		set i = 1
    		loop
    			exitwhen i > IMaxHuanying
				set index = GetHuanyingIndex(i)
    			call SetUnitX(UHuan[i],GetUnitX(lichi) + IAbsBJ(index) * 150 * CosBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)))
    			call SetUnitY(UHuan[i],GetUnitY(lichi) + IAbsBJ(index) * 150 * SinBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)))
    			call SetUnitFacing(UHuan[i],GetUnitFacing(lichi))
    			set i = i +1
    		endloop
    		//移动
    		if (ILichiDoing != 1) then
    			set ILichiDoing = 1
    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
        			call IssueImmediateOrder(UHuan[i],"stop")
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
        			call IssueImmediateOrder(UHuan[i],"stop")
    				set i = i +1
    			endloop
    		endif
    	endif
	endfunction	
//---------------------------------------------------------------------------------------------------
	/*
	    殉-影炎绝
	*/
	//神月盈爆炸
	private function ShenyueyingBoom takes nothing returns nothing
		local integer i = 1
		local real x = GetUnitX(lichi)
		local real y = GetUnitY(lichi)
		local real damage = LichiDamage * 5
		call DestroyEffect(AddSpecialEffect("war3mapImported\\DarkNova.mdx", x, y ))
		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("war3mapImported\\DarkNova.mdx", YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(y + 900 * SinBJ(i*60)) ))
			set i = i +1
		endloop
	    call PrintSpell(GetOwningPlayer(lichi),GetAbilityName('A0MP'),damage)
		call DamageArea(lichi,x,y,1800,damage)
		call SpinTongji()
	endfunction

	//神月盈判断
	private function ShenyueyingJudge takes nothing returns nothing
		if not(BShenyue) then
			if (IsUnitInGroup(GetEnumUnit(),GShenyue[1]) and IsUnitInGroup(GetEnumUnit(),GShenyue[2]) and IsUnitInGroup(GetEnumUnit(),GShenyue[3]) and IsUnitInGroup(GetEnumUnit(),GShenyue[4])) then
				set BShenyue = true
			endif
		endif
	endfunction

	//伤害并进行统计
	private function ShenyueyingCount takes real x,real y,real damage returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        set IShenyue = I3(IShenyue >= 4,1,IShenyue + 1)
        call GroupClear(GShenyue[IShenyue])
        call GroupEnumUnitsInRange(l_group, x, y, 350 + RJ3(lichi,50,0), null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,lichi)) then
                call UnitDamageTarget( lichi, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
                call GroupAddUnit(GShenyue[IShenyue],l_unit)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
        call ForGroup(GShenyue[IShenyue],function ShenyueyingJudge)
        //如果有就爆炸
        if (BShenyue) then
        	call ShenyueyingBoom()
        endif
        set BShenyue = false
	endfunction

	private function Yingyanjue takes integer abilityID,real x,real y returns nothing
		local real damage = LichiDamage
		local integer i = 1
		local integer index = 0
		local real nx = 0.
		local real ny = 0.
	    call PrintSpell(GetOwningPlayer(lichi),GetAbilityName(abilityID),damage)
	    call DestroyEffect(AddSpecialEffect("war3mapImported\\lichi1.mdx", x, y ))
	    if (IsFourthSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0MP') == 1 and abilityID != 'A0MN') then
	    	call ShenyueyingCount(x,y,damage)
	    else
			call DamageArea(lichi,x,y,350 + RJ3(lichi,50,0) + R3(IsLichiSpin(),25,0),damage)
	    endif
		loop
			exitwhen i > IMaxHuanying
			if (UHuan[i] != null) then
				set index = GetHuanyingIndex(i)
				set nx = x + IAbsBJ(index) * 150 * CosBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.))
				set ny = y + IAbsBJ(index) * 150 * SinBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.))
				call DamageArea(lichi,nx,ny,350 + RJ3(lichi,50,0) + R3(IsLichiSpin(),25,0),damage)
	    		call DestroyEffect(AddSpecialEffect("war3mapImported\\lichi1.mdx", nx,ny ))
    		    call SetUnitAnimation( UHuan[i], "Spell Throw" ) 
			endif
			set i = i +1
		endloop
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
    		if (not(BTongyun) and IsSecondSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0MN') == 1 and GetUnitState(lichi,UNIT_STATE_MANA) > 200 and GetRandomInt(1,20) == 1) then
    			set BTongyun = true
    			call Yingyanjue('A0MN',GetUnitX(GetAttacker()),GetUnitY(GetAttacker()))
    			call PolledWait(10)
    			set BTongyun = false
    		endif
    	endif
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    替死
	*/
    private function TSpellLichiDamageCon takes nothing returns boolean
    	return GetEventDamage() > GetUnitState(lichi,UNIT_STATE_LIFE) and not(BTianfu)
    endfunction
    
    private function TSpellLichiDamageAct takes nothing returns nothing
    	local integer i = 1
    	loop
    		exitwhen i > IMaxHuanying
    		if (UHuan[i] != null) then
    			call KillUnit(UHuan[i])
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(UHuan[i]), GetUnitY(UHuan[i]) ))
    			set UHuan[i] = null
				call ImmuteDamageInterval(lichi,1)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(lichi), GetUnitY(lichi) ))
				call SetUnitLifePercentBJ(lichi,100)
				call PrintSpellContent(GetOwningPlayer(lichi),GetAbilityName('A0MH'),"续命.")
			    call PlaySoundBJ( gg_snd_Baodiao )
    			return
    		endif
    		set i = i +1
    	endloop
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    湮魂印
	*/
	//清除湮魂印的遗留物
	private function ClearYanhun takes nothing returns nothing
		local integer i = 0
		set Iyanhun = 0
		set Uyanhun = null
		loop
			exitwhen i > IMaxHuanying
			if (CYanhun[i] != 0 and UHuan[i] != null) then
				call CYanhun[i].destroy()
				set CYanhun[i] = 0
			endif
			set i = i +1
		endloop
	endfunction

	private function YanhunyinTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer count = GetHuanyingCount()
		if (IsUnitAliveBJ(Uyanhun) and IsUnitAliveBJ(lichi) and GetUnitDistance(Uyanhun,lichi) < 2000) then
			call UnitDamageTarget( lichi, Uyanhun, GetUnitState(lichi,UNIT_STATE_MAX_LIFE)*0.1*count, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			call SetUnitLifeBJ(lichi,GetUnitState(lichi,UNIT_STATE_LIFE) + GetUnitState(lichi,UNIT_STATE_MAX_LIFE) * 0.1 * count)
			call SetUnitManaBJ(Uyanhun,GetUnitState(Uyanhun,UNIT_STATE_MANA) - 5 *count)
			call SetUnitManaBJ(lichi,GetUnitState(lichi,UNIT_STATE_MANA) + 5 * count)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call ClearYanhun()
		endif
		set t = null 
	endfunction

	private function Yanhunyin takes unit u returns nothing
		local integer i = 1
		local timer t = CreateTimer()
		call ClearYanhun()
		set Iyanhun = 1
		loop
			exitwhen i > IMaxHuanying
     		if (UHuan[i] != null) then
				set CYanhun[i] = Connect.create(UHuan[i],u,"LEAS")
				call CYanhun[i].setDieVanish()
				set Iyanhun = Iyanhun + 1
    		endif
			set i = i + 1
		endloop
		set CYanhun[0] = Connect.create(lichi,u,"LEAS")
		call CYanhun[0].setDieVanish()
		set Uyanhun = u
		call TimerStart(t,1,true,function YanhunyinTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    神月盈     
	*/
	private function ShenyueyingTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer i = 1
		if not(BJuexing1[GetConvertedPlayerId(GetOwningPlayer(lichi))]) then
	    	call UnitRemoveAbility(lichi,'A0B9')
	    	loop
	    		exitwhen i > IMaxHuanying
	    		if (UHuan[i] != null) then
	    			call UnitRemoveAbility(UHuan[i],'A0B9')
	    		endif
	    		set i = i +1
	    	endloop
		endif
		call CreateSpellTextTag("神月盈时间到！",lichi,0,50,100,3)
		call PauseTimer(t)
		call DestroyTimer(t)
		set t = null
	endfunction

	private function Shenyueying takes nothing returns nothing
		local integer i = 1
		call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(lichi),GetUnitY(lichi)) )
	    call UnitAddAbility(lichi,'A0B9')
		loop
			exitwhen i > IMaxHuanying
     		if (UHuan[i] != null) then
				call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(UHuan[i]),GetUnitY(UHuan[i])) )
	    		call UnitAddAbility(UHuan[i],'A0B9')
    		    call SetUnitAnimation( UHuan[i], "Spell Throw" ) 
    		endif
			set i = i +1
		endloop
		call TimerStart(CreateTimer(),20,false,function ShenyueyingTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    囚天地
	*/
	private function QiutiandiSmart takes real x,real y returns nothing
		local unit u = null
		if (GetDistance(GetUnitX(lichi),GetUnitY(lichi),x,y) > 1200) then
			return 
		endif
		set u = CreateUnit(GetOwningPlayer(lichi),'h02A',x,y,0)
		set IQiutian = IQiutian + 1
		if (IQiutian >= 30) then
			set IQiutian = 0
			call SetUnitLifePercentBJ(lichi,100)
			call ImmuteDamageInterval(lichi,2)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", x,y ))
		endif
		call UnitApplyTimedLifeBJ( 3, 'BHwe',u )
        call IssuePointOrder(lichi,"move",GetUnitX(lichi),GetUnitY(lichi))
		set u = null
	endfunction

	private function Qiutiandi takes nothing returns nothing
		local real time = GetUnitState(lichi,UNIT_STATE_MANA) * 0.01 * 0.5
		local unit u = CreateUnit(GetOwningPlayer(lichi),'h029',GetUnitX(lichi),GetUnitY(lichi),0)
	    local Attract attract = Attract.create(u,1200,0.05,20)
	    call attract.start()
		call UnitApplyTimedLifeBJ( time, 'BHwe',u )
		call PlaySoundBJ( gg_snd_lichidazhao )
	    call EnableTrigger(TSpellLichi51)
	    call EnableTrigger(TSpellLichi52)
	    call PrintSpellContent(GetOwningPlayer(lichi),GetAbilityName(GetSpellAbilityId()),"持续"+I2S(R2I(time))+"s.")
	    call SetUnitManaPercentBJ(lichi,0)
	    call PolledWait(time)
	    call DisableTrigger(TSpellLichi51)
	    call DisableTrigger(TSpellLichi52)
	    call PrintSpellContent(GetOwningPlayer(lichi),GetAbilityName('A0MQ'),",施法结束.")
	    set u = null
	endfunction

	private function TSpellLichi5Con takes nothing returns boolean
	    return ((GetIssuedOrderIdBJ() == String2OrderIdBJ("smart")))
	endfunction

	private function TSpellLichi51Act takes nothing returns nothing
	    call QiutiandiSmart(GetUnitX(GetOrderTargetUnit()),GetUnitY(GetOrderTargetUnit()))
	endfunction

	private function TSpellLichi52Act takes nothing returns nothing
	    call QiutiandiSmart(GetOrderPointX(),GetOrderPointY())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/
	private function TSpellLichiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0MJ') then
			call Yingyanjue(GetSpellAbilityId(),GetUnitX(lichi) + 250 * CosBJ(GetUnitFacing(lichi)),GetUnitY(lichi) + 250 * SinBJ(GetUnitFacing(lichi)))
		elseif (GetSpellAbilityId() == 'A0MK') then
			call Yingyanjue(GetSpellAbilityId(),GetUnitX(lichi) + 500 * CosBJ(GetUnitFacing(lichi)),GetUnitY(lichi) + 500 * SinBJ(GetUnitFacing(lichi)))
		elseif (GetSpellAbilityId() == 'A0ML') then
			call Yingyanjue(GetSpellAbilityId(),GetUnitX(lichi) + 750 * CosBJ(GetUnitFacing(lichi)),GetUnitY(lichi) + 750 * SinBJ(GetUnitFacing(lichi)))
		elseif (GetSpellAbilityId() == 'A0MM') then 
			call Yingyanjue(GetSpellAbilityId(),GetUnitX(lichi) + 1000 * CosBJ(GetUnitFacing(lichi)),GetUnitY(lichi) + 1000 * SinBJ(GetUnitFacing(lichi)))
		elseif (GetSpellAbilityId() == 'A0MO') then 
			//湮魂印
			call Yanhunyin(GetSpellTargetUnit())
		elseif (GetSpellAbilityId() == 'A0MP') then 
			//神月盈
			call Shenyueying()
		elseif (GetSpellAbilityId() == 'A0MQ') then 
			//囚天地
			call Qiutiandi()
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值
	*/
	private function FlashLichiDamage takes nothing returns nothing
		set LichiDamage = GetDamageInt(lichi)
		if (IsSecondSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0MN') == 1) then
			if (GetUnitLifePercent(lichi) < 98) then
				call SetUnitLifeBJ(lichi,(GetUnitState(lichi,UNIT_STATE_LIFE)/6) * 5 + GetUnitState(lichi,UNIT_STATE_MAX_LIFE)  / 6)
		    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", GetUnitX(lichi), GetUnitY(lichi) ))
			endif	
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
			if (whichSpell == 3 and IsThirdSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0MO') == 1) then
				call InitLichiAura()
				call AddSpecialEffectTargetUnitBJ("origin",lichi,"war3mapImported\\yanbao.mdx")
			endif
		endif
	endfunction

	function LearnSkillLichi takes unit learner,integer learnSpellID returns nothing
		if (learner == lichi) then
			if (learnSpellID == 'A0MI') then
				call LearnSkillLichiI(learner,1)
			elseif (learnSpellID == 'A0MN') then
				call LearnSkillLichiI(learner,2)
			elseif (learnSpellID == 'A0MO') then
				call LearnSkillLichiI(learner,3)
			elseif (learnSpellID == 'A0MP') then
				call LearnSkillLichiI(learner,4)
			elseif (learnSpellID == 'A0MQ') then
				call LearnSkillLichiI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    离魑皮肤
	*/
	private function InitLichiSpin takes unit u returns unit
		if (IsLichiSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H02E',GetUnitX(u),GetUnitY(u),0)
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],100)
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
	function InitLichi takes unit u returns nothing
		local integer i = 1

		loop
			exitwhen i > 4
			set GShenyue[i] = CreateGroup()
			set i = i +1
		endloop

		set lichi = InitLichiSpin(u)
		set UHuan[0] = lichi
		//上限是4
		set IMaxHuanying = 4

		//施法总事件
		set TSpellLichi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellLichi,lichi,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellLichi, function TSpellLichiAct)

	    //初始加成
	    call AddAttackPercent(GetConvertedPlayerId(GetOwningPlayer(lichi)),5.)
	    call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(lichi)),0.5)

	    //刷新伤害,还有每秒判断形态是否扣血,还有加属性的判断
	    call TimerStart(CreateTimer(),1,true,function FlashLichiDamage)
	    call UnitRemoveAbility(lichi,'A0B9')

	    //一致的步调动作与位置
	    call TimerStart(CreateTimer(),0.05,true,function JudgeLichiMove)
	    //call TimerStart(CreateTimer(),0.055,true,function JudgeLichiPos)

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

	    //囚天地
	    set TSpellLichi51 = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellLichi51, lichi, EVENT_UNIT_ISSUED_TARGET_ORDER )
	    call TriggerAddCondition(TSpellLichi51, Condition(function TSpellLichi5Con))
	    call TriggerAddAction(TSpellLichi51, function TSpellLichi51Act)
	    call DisableTrigger(TSpellLichi51)
	    set TSpellLichi52 = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellLichi52, lichi, EVENT_UNIT_ISSUED_POINT_ORDER )
	    call TriggerAddCondition(TSpellLichi52, Condition(function TSpellLichi5Con))
	    call TriggerAddAction(TSpellLichi52, function TSpellLichi52Act)
	    call DisableTrigger(TSpellLichi52)

	    call CreateHuanying()
	    call CreateHuanying()
	endfunction
endlibrary
