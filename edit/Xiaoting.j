
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
/////! import "Diamond.j"
/*
    英雄霄霆的技能
*/
library_once Xiaoting requires SpellBase,Printer,Attr,Aura,Diamond
	
	globals
		/*
		    技能触发
		*/
		private trigger TSpellXiaoting = null
		private trigger TAttackXT = null
		/*
		    伤害
		*/
		private real RDamageXiaoting = 0.

		/*
		    元素状态
		*/
		integer ISpellState = 0
		/*
		    Combo数
		*/
		integer ICombo = 0


		/*
		    箭的单位
		*/
		private integer IMaxCombo = 0
		private timer TArrow = null
		private unit array UArrow
		private group array GArrow
		//整秒读数
		private integer IZhengmiao = 0
		//反弹读秒
		private integer IFantan = 0
		//绝焱读秒
		private integer IJueyan = 0
		//静止布尔
		private boolean BJingzhi = false
		//御箭
		private boolean BYujian = false
		//Combo判断
		private timer TComboAdd = null

		//两个科技(前者射出,后者未射出)
		private unit UJianKeji1 = null
		private unit UJianKeji2 = null

		/*
			增益值 
		*/	
		private real RAddtion = 0.


		//攻击保留特效
		private effect EAttackXT = null
		private integer IAttackAdd = 0
		private integer ITimeAttackadd = 0

		//分裂时间
		private timer TFenlie = null

		//大招持续
		private timer TDazhao = null

		//衰减
		private boolean array BShuaijian
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    攻击加攻击
	*/
    private function TAttackXTCon takes nothing returns boolean
    	return GetAttacker() == xiaoting
    endfunction
    
    private function TAttackXTAct takes nothing returns nothing
    	local integer attack = IMinBJ(500000000,IAttackAdd + GetHeroAgi(xiaoting,true)/4)
    	if (EAttackXT == null) then
			set EAttackXT = AddSpecialEffectTargetUnitBJ("overhead",xiaoting,"Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl")
    	endif
    	call AddAttack(xiaoting,attack - IAttackAdd)
    	set IAttackAdd = attack
    	set ITimeAttackadd = 5
    endfunction

    //时间减少
    private function AttackTimeReduce takes nothing returns nothing
    	set ITimeAttackadd = IMaxBJ(0,ITimeAttackadd - 1)
    	if (ITimeAttackadd == 0 and EAttackXT != null) then
    		call DestroyEffect(EAttackXT)
    		set EAttackXT = null
	    	call AddAttack(xiaoting,0 - IAttackAdd)
	    	set IAttackAdd = 0
    	endif
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取combo对应的层数
	*/
	private function GetComboMulti takes nothing returns integer

		if not(IsFourthSpellOK(xiaoting) and GetUnitAbilityLevel(xiaoting,'A0LZ') == 1) then
			return 1
		endif

		if (ICombo > 40) then
			return 4
		elseif (ICombo > 20) then
			return 3
		elseif (ICombo > 10) then
			return 2
		else
			return 1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取Combo消逝时间
	*/
	//private function GetComboTime takes nothing returns real
	//	if (ICombo > 80) then
	//		return 1.
	//	elseif (ICombo > 60) then
	//		return 2.
	//	elseif (ICombo > 40) then
	//		return 3.
	//	elseif (ICombo > 20) then
	//		return 4.
	//	else
	//		return 5.
	//	endif
	//endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageXiaoting takes unit u returns boolean
		//绝焱
		if (GetUnitTypeId(u) == 'h022') then
			call UnitDamageTarget( xiaoting, GetTriggerUnit(), RDamageXiaoting * 1.2 * GetComboMulti(), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    科技
	*/
	private function SetShe1Tech takes nothing returns nothing
		if (UJianKeji2 != null) then
			call RemoveUnit(UJianKeji2)
			set UJianKeji2 = null
		endif
		if (UJianKeji1 == null) then
			set UJianKeji1 =  CreateUnit(GetOwningPlayer(xiaoting),'h01Z',0,0,0)
			call ShowUnitHide(UJianKeji1)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    科技
	*/
	private function SetShe2Tech takes nothing returns nothing
		if (UJianKeji1 != null) then
			call RemoveUnit(UJianKeji1)
			set UJianKeji1 = null
		endif
		if (UJianKeji2 == null) then
			set UJianKeji2 =  CreateUnit(GetOwningPlayer(xiaoting),'h020',0,0,0)
			call ShowUnitHide(UJianKeji2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    清除指定箭
	*/
	private function ClearRestArrow takes integer start returns nothing
		local integer i = start
		loop
			exitwhen i > 16
			if (UArrow[i] != null) then
				call RemoveUnit(UArrow[i])
				set UArrow[i] = null
				call DestroyGroup(GArrow[i])
				set GArrow[i] = null
				set BShuaijian[i] = false
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    清除所有箭有关的东西
	*/
	private function ClearAllArrow takes nothing returns nothing
		call PauseTimer(TArrow)
		call DestroyTimer(TArrow)
		set IZhengmiao = 0
		set TArrow = null
		call ClearRestArrow(1)
		set IFantan = 0
		set IJueyan = 0
		set BJingzhi = false
		set BYujian = false
		call SetShe1Tech()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建绝焱
	*/
	private function CreateJueyan takes unit u returns nothing
		local unit temp = CreateUnit(GetOwningPlayer(xiaoting),'h022',GetUnitX(u),GetUnitY(u),0)
		call UnitApplyTimedLifeBJ( 10.00, 'BHwe',temp )
		set temp = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断冰墙
	*/
	private function BingqiangFilter takes nothing returns boolean
		return GetUnitTypeId(GetFilterUnit()) == 'hwtw'
	endfunction

	private function PingzhangFilter takes nothing returns boolean
		return GetUnitTypeId(GetFilterUnit()) == 'h021'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    重新创建一个箭,并换角度
	*/
	private function ChangeFacing takes integer i,real facing returns nothing
		local unit temp = CreateUnit(GetOwningPlayer(xiaoting),'h024',GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),facing)
		call RemoveUnit(UArrow[i])
		set UArrow[i] = temp
		set temp = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭的运动
	*/
	private function FlashArrowMove takes integer index returns nothing
		local real x = GetUnitX(UArrow[index])
		local real y = GetUnitY(UArrow[index])
        local real xp = x + 100. * CosBJ(GetUnitFacing(UArrow[index]))
        local real yp = y + 100. * SinBJ(GetUnitFacing(UArrow[index]))
        local group l_group = null
        local unit l_unit
        local integer times = GetComboMulti()
        local real radius = 200
        local integer IBing = 0
        local boolean isBingqiang = false

        //如果英雄死亡则清除
        if (BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(xiaoting))] and not(BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xiaoting))])) then
        	call ClearAllArrow()
        	return
        endif
        //御箭
        if (BYujian and index == 1) then
    		call RecoverUnitHP(xiaoting,0.1)
        	call SetUnitManaPercentBJ(xiaoting,100)
        	call SetUnitX(xiaoting,GetUnitX(UArrow[1]))
        	call SetUnitY(xiaoting,GetUnitY(UArrow[1]))
        endif


        if (BJingzhi) then
        	if (IZhengmiao == 1) then
        		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", GetUnitX(UArrow[index]),GetUnitY(UArrow[index]) ))
        	endif
        	return
        endif

        set l_group = CreateGroup()
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,xiaoting) and not(IsUnitInGroup(l_unit,GArrow[index]))) then
            	call UnitDamageTarget( xiaoting, l_unit, RDamageXiaoting * R3(BShuaijian[index],0.2,1), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
            	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", GetUnitX(l_unit),GetUnitY(l_unit) ))
            	call GroupAddUnit(GArrow[index],l_unit)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null

        set l_group = CreateGroup()
        call GroupEnumUnitsInRange(l_group, xp, yp, 100, Condition(function BingqiangFilter))
        if (CountUnitsInGroup(l_group) > 0) then
        	set IBing = I3(CountUnitsInGroup(l_group) > 0,GetUnitUserData( FirstOfGroup(l_group)),0)
        	set isBingqiang = true
        else
	        call GroupEnumUnitsInRange(l_group, xp, yp, 100, Condition(function PingzhangFilter))
        	set IBing = I3(CountUnitsInGroup(l_group) > 0,GetUnitUserData( FirstOfGroup(l_group)),0)
        endif
        call DestroyGroup(l_group)
        set l_group = null

        //反弹与静滞
    	if (IsTerrainPathable(xp, yp, PATHING_TYPE_WALKABILITY) or IBing != 0) then
    		if (xp > yd_MapMaxX or xp < yd_MapMinX) then
					call ChangeFacing(index,180-GetUnitFacing(UArrow[index]))
        			return
        	elseif(yp > yd_MapMaxY or yp < yd_MapMinY) then
					call ChangeFacing(index,-GetUnitFacing(UArrow[index]))
        			return
    		endif

	        if (IFantan > 0) then
        		if (IBing != 0) then
        			call GroupClear(GArrow[index])
					call ChangeFacing(index,R3(IBing >= 1000,180+GetUnitFacing(UArrow[index]),2*IBing-GetUnitFacing(UArrow[index])))
					if not (isBingqiang) then
						set BShuaijian[index] = true
					else
						set BShuaijian[index] = false
					endif
					return
        		endif
        		if not(IsTerrainPathable(xp, y, PATHING_TYPE_WALKABILITY)) then
        			call GroupClear(GArrow[index])
					call ChangeFacing(index,-GetUnitFacing(UArrow[index]))
					set BShuaijian[index] = true

        		elseif not(IsTerrainPathable(x, yp, PATHING_TYPE_WALKABILITY)) then
        			call GroupClear(GArrow[index])
					call ChangeFacing(index,180-GetUnitFacing(UArrow[index]))
					set BShuaijian[index] = true

        		elseif not(IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)) then
					call ChangeFacing(index,180+GetUnitFacing(UArrow[index]))
        			call GroupClear(GArrow[index])
					set BShuaijian[index] = true
        		else
		        	call SetUnitX(UArrow[index],YDWECoordinateX(xp))
		        	call SetUnitY(UArrow[index],YDWECoordinateY(yp))
				    //绝焱
			        if (IJueyan > 0) then
			        	if (ModuloInteger(IZhengmiao,3) == 0) then
			        		call CreateJueyan(UArrow[index])
			        	endif
			        endif
        		endif
        	else
	        	call SetUnitX(UArrow[index],YDWECoordinateX(xp))
	        	call SetUnitY(UArrow[index],YDWECoordinateY(yp))
	        	//绝焱
		        if (IJueyan > 0) then
		        	if (ModuloInteger(IZhengmiao,3) == 0) then
		        		call CreateJueyan(UArrow[index])
		        	endif
		        endif
			endif
    	else
        	call SetUnitX(UArrow[index],YDWECoordinateX(xp))
        	call SetUnitY(UArrow[index],YDWECoordinateY(yp))
	        //绝焱
	        if (IJueyan > 0) then
	        	if (ModuloInteger(IZhengmiao,3) == 0) then
	        		call CreateJueyan(UArrow[index])
	        	endif
	        endif
    	endif

	endfunction

	private function FlashArrowMoveTimer takes nothing returns nothing
		local integer i = 1

		set IZhengmiao = I3(IZhengmiao >= 20,1,IZhengmiao + 1)
		if (IZhengmiao == 1) then
			set IFantan = I3(IFantan > 0,IFantan - 1,0)
			set IJueyan = I3(IJueyan > 0,IJueyan - 1,0)
		endif
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call FlashArrowMove(i)
			endif
			set i = i +1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    贯虹箭
	*/
	private function Guanhongjian takes real x,real y,real facing,boolean spellID returns nothing
		local integer i = 1 
		call SetShe2Tech()
		if (spellID) then
	    	call PrintSpell(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),RDamageXiaoting * GetComboMulti())
		endif
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] == null) then
				set UArrow[i] = CreateUnit(GetOwningPlayer(xiaoting),'h024',x,y,facing)
				if (TArrow == null) then
					set TArrow = CreateTimer()
					set IZhengmiao = 1
					call TimerStart(TArrow,0.05,true,function FlashArrowMoveTimer)
				endif
				set GArrow[i] = CreateGroup()
				return
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    折返
	*/
	private function Zhefan takes nothing returns nothing
		set IFantan = 5
	    call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"折返剩余时间" + I2S(IFantan)+"s.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炎止
	*/
	private function Yanzhi takes nothing returns nothing
		local integer i = 1 
		if (BJingzhi) then
			call ClearAllArrow()
			return
		endif
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call DamageArea(xiaoting,GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),900,RDamageXiaoting* 0.25 * (GetComboMulti() + 1))
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(UArrow[i]),GetUnitY(UArrow[i]) ))
			endif
			set i = i +1
		endloop
		call ClearAllArrow()
	    call PrintSpell(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),RDamageXiaoting* 0.25 * (GetComboMulti() + 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    沉默
	*/
	private function Chenmo takes nothing returns nothing
		local integer i = 1 
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call ChangeFacing(i,GetFacingBetweenXY(GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),GetSpellTargetX(),GetSpellTargetY()))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(UArrow[i]), GetUnitY(UArrow[i]) ))
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    追心
	*/
	private function Zhuixin takes nothing returns nothing
		local integer i = 1 
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call ChangeFacing(i,GetFacingBetweenXY(GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),GetUnitX(xiaoting),GetUnitY(xiaoting)))
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(UArrow[i]), GetUnitY(UArrow[i]) ))
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冰墙
	*/
	private function Bingqiang takes nothing returns nothing
	    local integer i = 1
	    local real facing = Atan2BJ(GetSpellTargetY()-GetUnitY(xiaoting),GetSpellTargetX()-GetUnitX(xiaoting))
	    local unit u = null
	    loop
	    	exitwhen i > (6 + 4 * GetComboMulti())
	    	set u = CreateUnit(GetOwningPlayer(xiaoting),'hwtw',YDWECoordinateX(GetUnitX(xiaoting) + 200.00 *  I2R(i) * CosBJ(facing) ), YDWECoordinateY(GetUnitY(xiaoting) + 200.00 *  I2R(i) * SinBJ(facing) ),0)
	    	if (i == 1 or i == (6 + 4 * GetComboMulti())) then

	    	endif
	    	call SetUnitUserData(u,R2I(facing)+I3((i == 1 or i == (6 + 4 * GetComboMulti())),2000,0))
	    	call UnitApplyTimedLifeBJ( 12.00 + RJ2(xiaoting,5,0), 'BHwe',u )
	    	set i = i +1
	    endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    静体
	*/
	private function JingtiTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local real intTimes = LoadReal(spellTable,GetHandleId(t),1)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),-1 * intTimes)
		call FlushChildHashtable(spellTable,GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t = null
	endfunction

	private function Jingti takes nothing returns nothing
		local real intTimes = 0.25 + GetComboMulti() * 0.25
		local timer t = CreateTimer()
		call SaveReal(spellTable,GetHandleId(t),1,intTimes)
		call TimerStart(t,30,false,function JingtiTimer)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),intTimes)
		call YDWETimerDestroyEffect(30,AddSpecialEffectTargetUnitBJ("overhead",xiaoting,"war3mapImported\\state_xiaoting.mdx"))
	    call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"成功增加"+I2S(25 +GetComboMulti()*25)+"%的敏捷，持续30秒。")
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    分裂
	*/
	private function FenlieTimeout takes nothing returns nothing
		call ClearRestArrow(2)
    	call CreateSpellTextTag("分裂箭时间到",xiaoting,0,100,0,3)
	endfunction

	private function Fenlie takes nothing returns nothing
		local integer i = 1 
		local integer max = 0
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] == null) then
				set max = i - 1
				exitwhen true
			endif
			set i = i +1
		endloop
		set i = 1
		loop
			exitwhen i > max
			if (UArrow[i] != null) then
				call Guanhongjian(GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),GetUnitFacing(UArrow[i])+GetRandomReal(-15,15),false)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetUnitX(UArrow[i]),GetUnitY(UArrow[i]) ))
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	    call TimerStart(TFenlie,7,false,function FenlieTimeout)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瞬体
	*/
	private function Shunti takes nothing returns nothing
		local integer i = 1 
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
			    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(UArrow[i]), GetUnitY(UArrow[i]) ))
			    call SetUnitX(UArrow[i],GetUnitX(xiaoting))
				call SetUnitY(UArrow[i],GetUnitY(xiaoting))
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    渡越
	*/
    private function DuyueTimer takes nothing returns nothing
    	local timer t = GetExpiredTimer()
    	local integer id = GetHandleId(t)
    	local Attract attract = LoadInteger(spellTable,id,1)
    	call attract.destroy()
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
    	set t = null 
    endfunction

	private function Duyue takes nothing returns nothing
		local integer i = 1
	    local timer t = CreateTimer()
	    local Attract attract = Attract.create(xiaoting,I3(IsInDiamondRegion(GetUnitX(xiaoting),GetUnitY(xiaoting)),900,900*GetComboMulti()),0.05,50 * GetComboMulti())
	    call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"范围"+I2S(900*GetComboMulti()) +".")
		call YDWETimerDestroyEffect(3,AddSpecialEffectTargetUnitBJ("chest",xiaoting,"war3mapImported\\hole.mdl"))
		call attract.SetForbitHero()
		call attract.SetDeathContinue()
	    call attract.start()
	    call SaveInteger(spellTable,GetHandleId(t),1,attract)
	    call TimerStart(t,3,false,function DuyueTimer)
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    御箭
	*/
	private function Yujian takes nothing returns nothing
		set BYujian = not(BYujian)
		if (BYujian) then
			call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"开启御箭形态.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"关闭御箭形态.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    绝焱
	*/
	private function Jueyan takes nothing returns nothing
		set IJueyan = IJueyan + 2
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    静滞
	*/
	private function Jingzhi takes nothing returns nothing
		set BJingzhi = not(BJingzhi)
		if (BJingzhi) then
			call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"开启静滞形态.")
		else
			call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"关闭静滞形态.")
		endif
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭灵
	*/
	private function Jianling takes nothing returns nothing
		local integer times = GetComboMulti()
		local integer attack = IMinBJ(1000000000,(GetHeroInt(xiaoting,true) + GetAttack(xiaoting)) * 4)
		local integer defense =(GetHeroAgi(xiaoting,true)/100 + GetDefense(xiaoting))
		local integer hp =(GetHeroStr(xiaoting,true) * 10 + GetHP(xiaoting))
		local unit u
		local integer i = 1 
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				set u = CreateUnit(GetOwningPlayer(xiaoting),'n01V',GetUnitX(UArrow[i]),GetUnitY(UArrow[i]),0)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", GetUnitX(u),GetUnitY(u) ))
				call UnitApplyTimedLifeBJ( 180.00, 'BHwe',u )
				call SetAttack(u,attack)
				call SetDefense(u,defense)
				call SetHP(u,hp)
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    穿刺
	*/
	private function Gangti takes nothing returns nothing
		local real defenseAdd = 2. + 1. *GetComboMulti()
		call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),defenseAdd)
		call AddDefense(xiaoting,0)
		call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"防御成功增加" + I2S(200 + 100 * GetComboMulti())+"%.")
	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
	    call PolledWait(10)
		call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),-1 * defenseAdd)
		call AddDefense(xiaoting,0)
		call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()),"防御增益效果结束.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    屏障
	*/
	private function PingzhangTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local group l_group = CreateGroup()
		local unit l_unit
		if (IsUnitAliveBJ(u)) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 600, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if (IsAlly(l_unit,xiaoting)) then
			    	call RecoverUnitHP(l_unit,0.3)
			    	call RecoverUnitMP(l_unit,20)
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null
		else
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),-0.3)
			call RemoveUnit(u)
			call FlushChildHashtable(spellTable,id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
		call DestroyGroup(l_group)
		set l_unit = null
		set l_group = null
	endfunction

	private function Pingzhang takes nothing returns nothing
		local integer i = 1
		local unit u = null
		local timer t = CreateTimer()
		local unit temp = CreateUnit(GetOwningPlayer(xiaoting),'h023',GetUnitX(xiaoting),GetUnitY(xiaoting),0)
		call UnitApplyTimedLifeBJ( 10, 'BHwe',temp )
		call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),0.3)
		call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
		loop
			exitwhen i > 24
			set u = CreateUnit(GetOwningPlayer(xiaoting),'h021',YDWECoordinateX(GetUnitX(xiaoting) + 600 * CosBJ(i*15)), YDWECoordinateY(GetUnitY(xiaoting) + 600 * SinBJ(i*15)),0)
	    	call SetUnitUserData(u,i*15+90)
 			call UnitApplyTimedLifeBJ( 10, 'BHwe',u )
			set i = i +1
		endloop
		//不断伤害
		call SaveUnitHandle(spellTable,GetHandleId(t),1,temp)
		call TimerStart(t,1,true,function PingzhangTimer)
        call PlaySoundBJ(gg_snd_xiaoting1)
		//快速升级
		set t = null
		set u = null
		set temp = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭绝天技
	*/
	private function JianjuetianjiTimeout takes nothing returns nothing
        call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),-0.6)
		call PrintSpellContent(GetOwningPlayer(xiaoting),GetAbilityName('A0M3'),"断了.")
		call PauseTimer(TDazhao)
		call DestroyTimer(TDazhao)
		set TDazhao = null
	endfunction

	private function Jianjuetianji takes nothing returns nothing
		call DestroyEffect(AddSpecialEffect("war3mapImported\\xiaoting_pingzhang.mdx", GetUnitX(xiaoting),GetUnitY(xiaoting) ))
		if (TDazhao == null) then
			call PrintSpellName(GetOwningPlayer(xiaoting),GetAbilityName(GetSpellAbilityId()))
	        //call PlaySoundBJ(gg_snd_xiaoting2)
	        call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xiaoting)),0.6)
	        set TDazhao = CreateTimer()
		endif
		call TimerStart(TDazhao,5,false,function JianjuetianjiTimeout)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    根据当前技能套设定相关的技能
	*/
	private function SetSpellSet takes integer i returns nothing

		set ISpellState = i
		if (i == 0) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LO',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LR',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LV',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M0',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LQ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LS',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LX',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M2',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LP',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LU',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LW',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M1',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LN',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LT',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LY',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LZ',true)
		elseif (i == 1) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LO',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LR',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LV',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M0',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LP',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LU',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LW',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M1',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LN',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LT',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LY',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LZ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LQ',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LS',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LX',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M2',true)
		elseif (i == 2) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LO',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LR',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LV',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M0',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LN',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LT',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LY',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LZ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LQ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LS',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LX',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M2',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LP',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LU',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LW',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M1',true)
		elseif (i == 3) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LN',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LT',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LY',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LZ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LQ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LS',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LX',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M2',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LP',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LU',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LW',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M1',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LO',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LR',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LV',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M0',true)
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    COMBO相关
	*/
	//加属性
	private function FlashComboShuxing takes nothing returns nothing
		local real delta = R3(GetComboMulti()== 1,0.,0.25 + 0.25 * GetComboMulti())
		if (RAddtion != delta) then
			call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)), delta - RAddtion  )
			call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)), delta - RAddtion  )
			call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(xiaoting)), delta - RAddtion  )
			set RAddtion = delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(xiaoting), GetUnitY(xiaoting) ))
    		call CreateSpellTextTag(I2S(R2I(delta*100))+"%全属性提高",xiaoting,0,100,0,3)
		endif 

	endfunction

	//判断16个都是否一致
	private function ComboDuan takes nothing returns nothing
		set ICombo = 0
    	call CreateSpellTextTag("Combo断了",xiaoting,0,100,0,3)
    	call FlashComboShuxing()
	endfunction

	private function AddCombo takes nothing returns nothing
		if not(IsSecondSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'A0LT') == 1) then
			return
		endif

		set ICombo = ICombo + 1
		call TimerStart(TComboAdd,RMaxBJ(0.1,I2R(5 + IJ1(xiaoting,1,0)+IJ3(xiaoting,1,0) - (ICombo / 20))),false,function ComboDuan)
    	call CreateSpellTextTag("Combo:"+I2S(ICombo),xiaoting,100,0,0,3)

		if (GetComboMulti() == 4 and IMaxCombo != 16) then
			set IMaxCombo = 16
		elseif (GetComboMulti() == 3 and IMaxCombo != 12) then
			set IMaxCombo = 12
			call ClearRestArrow(13)
		elseif (GetComboMulti() == 2 and IMaxCombo != 8) then
			set IMaxCombo = 8
			call ClearRestArrow(9)
		elseif (GetComboMulti() == 1 and IMaxCombo != 4) then
			set IMaxCombo = 4
			call ClearRestArrow(5)
		endif
    	call FlashComboShuxing()

	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellXiaotingAct takes nothing returns nothing
		//切换技能套
		if (GetSpellAbilityId() == 'A0LJ') then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LJ',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LK',true)
			call SetUnitAbilityLevel(xiaoting,'A0LK',1+IJ1(xiaoting,1,0)+IJ2(xiaoting,1,0)+IJ3(xiaoting,1,0))
			call SetSpellSet(1)
			set ICombo = ICombo + IJ1(xiaoting,1,0) * IJ3(xiaoting,2,1)
		elseif (GetSpellAbilityId() == 'A0LK') then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LK',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LL',true)
			call SetUnitAbilityLevel(xiaoting,'A0LL',1+IJ1(xiaoting,1,0)+IJ2(xiaoting,1,0)+IJ3(xiaoting,1,0))
			call SetSpellSet(2)
			set ICombo = ICombo + IJ1(xiaoting,1,0) * IJ3(xiaoting,2,1)
		elseif (GetSpellAbilityId() == 'A0LL') then 
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LL',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LM',true)
			call SetUnitAbilityLevel(xiaoting,'A0LM',1+IJ1(xiaoting,1,0)+IJ2(xiaoting,1,0)+IJ3(xiaoting,1,0))
			call SetSpellSet(3)
			set ICombo = ICombo + IJ1(xiaoting,1,0) * IJ3(xiaoting,2,1)
		elseif (GetSpellAbilityId() == 'A0LM') then 
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LM',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LJ',true)
			call SetUnitAbilityLevel(xiaoting,'A0LJ',1+IJ1(xiaoting,1,0)+IJ2(xiaoting,1,0)+IJ3(xiaoting,1,0))
			call SetSpellSet(0)
			set ICombo = ICombo + IJ1(xiaoting,1,0) * IJ3(xiaoting,2,1)
		//大招-箭绝天技
		elseif (GetSpellAbilityId() == 'A0M3') then 
			call AddCombo()
			call Jianjuetianji()
		//贯虹箭
		elseif (GetSpellAbilityId() == 'A0LN') then 
			call AddCombo()
			call Guanhongjian(GetSpellTargetX(),GetSpellTargetY(),GetFacingBetweenXY(GetUnitX(xiaoting),GetUnitY(xiaoting),GetSpellTargetX(),GetSpellTargetY()),true)
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-折返
		elseif (GetSpellAbilityId() == 'A0LO') then 
			call AddCombo()
			call Zhefan()
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-炎止
		elseif (GetSpellAbilityId() == 'A0LP') then 
			call AddCombo()
			call Yanzhi()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-沉默
		elseif (GetSpellAbilityId() == 'A0LQ') then 
			call AddCombo()
			call Chenmo()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-瞬体
		elseif (GetSpellAbilityId() == 'A0LT') then 
			call AddCombo()
			call Shunti()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//绝技-冰墙
		elseif (GetSpellAbilityId() == 'A0LR') then 
			call AddCombo()
			call Bingqiang()
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//绝技-静体
		elseif (GetSpellAbilityId() == 'A0LU') then 
			call AddCombo()
			call Jingti()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-分裂
		elseif (GetSpellAbilityId() == 'A0LS') then 
			call AddCombo()
			call Fenlie()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-渡越
		elseif (GetSpellAbilityId() == 'A0LV') then 
			call AddCombo()
			call Duyue()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-追心
		elseif (GetSpellAbilityId() == 'A0LY') then 
			call AddCombo()
			call Zhuixin()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-御箭
		elseif (GetSpellAbilityId() == 'A0LW') then 
			call AddCombo()
			call Yujian()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-绝焱
		elseif (GetSpellAbilityId() == 'A0LX') then 
			call AddCombo()
			call Jueyan()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-静滞
		elseif (GetSpellAbilityId() == 'A0LZ') then 
			call AddCombo()
			call Jingzhi()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-箭灵
		elseif (GetSpellAbilityId() == 'A0M0') then 
			call AddCombo()
			call Jianling()
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//箭技-穿刺
		elseif (GetSpellAbilityId() == 'A0M1') then 
			call AddCombo()
			call Gangti()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		//绝技-屏障
		elseif (GetSpellAbilityId() == 'A0M2') then 
			call AddCombo()
			call Pingzhang()
			call UnitRemoveAbility(xiaoting,'A0LO')
			call UnitAddAbility(xiaoting,'A0LO')
			if (IsFifthSpellOK(xiaoting)and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
				call UnitRemoveAbility(xiaoting,'A0M3')
				call UnitAddAbility(xiaoting,'A0M3')
			endif
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害
	*/
	private function FlashXiaotingDamage takes nothing returns nothing
		set RDamageXiaoting = GetDamageAgi(xiaoting)

		call AttackTimeReduce()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillXiaotingI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == xiaoting) then
			if (whichSpell == 1) then
			    call UnitAddAbility(xiaoting,'A0LO')
			    call UnitAddAbility(xiaoting,'A0LP')
			    call UnitAddAbility(xiaoting,'A0LQ')
			elseif (whichSpell == 2 and IsSecondSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'A0LT') == 1) then
				//技能2初始化
			    call UnitAddAbility(xiaoting,'A0LR')
			    call UnitAddAbility(xiaoting,'A0LU')
			    call UnitAddAbility(xiaoting,'A0LS')	
			elseif (whichSpell == 3 and IsThirdSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'A0LY') == 1) then
				call InitXiaotingAura()
				call AddSpecialEffectTargetUnitBJ("origin",xiaoting,"war3mapImported\\oakaura.mdx")
			    call UnitAddAbility(xiaoting,'A0LV')
			    call UnitAddAbility(xiaoting,'A0LW')
			    call UnitAddAbility(xiaoting,'A0LX')
			elseif (whichSpell == 4 and IsFourthSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'A0LZ') == 1) then
			    call UnitAddAbility(xiaoting,'A0M0')
			    call UnitAddAbility(xiaoting,'A0M1')
			    call UnitAddAbility(xiaoting,'A0M2')
			elseif (whichSpell == 5 and IsFifthSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'A0M3') == 1) then
			endif
		endif
	endfunction

	function LearnSkillXiaoting takes unit learner,integer learnSpellID returns nothing
		if (learner == xiaoting) then
			if (learnSpellID == 'A0LN') then
				call LearnSkillXiaotingI(learner,1)
			elseif (learnSpellID == 'A0LT') then
				call LearnSkillXiaotingI(learner,2)
			elseif (learnSpellID == 'A0LY') then
				call LearnSkillXiaotingI(learner,3)
			elseif (learnSpellID == 'A0LZ') then
				call LearnSkillXiaotingI(learner,4)
			elseif (learnSpellID == 'A0M3') then
				call LearnSkillXiaotingI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitXiaoting takes unit u returns nothing
		set xiaoting = u
		//主英雄技能
		set TSpellXiaoting = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellXiaoting,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellXiaoting, function TSpellXiaotingAct)

	    //刷新伤害
	    call TimerStart(CreateTimer(),1,true,function FlashXiaotingDamage)

	    set TAttackXT = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TAttackXT,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TAttackXT, Condition(function TAttackXTCon))
	    call TriggerAddAction(TAttackXT, function TAttackXTAct)

	    set TComboAdd = CreateTimer()
	    set TFenlie = CreateTimer()

	    //初始化技能状态
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LO',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LP',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LQ',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LR',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LU',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LS',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LV',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LW',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LX',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M0',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M1',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0M2',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LK',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LL',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'A0LM',false)

		//箭分裂的上限
		set IMaxCombo = 4

		//科技
		call SetShe1Tech()

	endfunction

endlibrary