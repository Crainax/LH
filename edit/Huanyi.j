
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
//! import "Diffculty.j"
//! import "Spin.j"
/////! import "Diamond.j"
/*
    英雄幻逸的技能
*/
library_once Huanyi requires SpellBase,Printer,Attr,Diffculty,Aura,Diamond,Spin
	
	globals
		/*
		    技能触发
		*/
		private trigger TSpellHuanyi = null 

		/*
		    伤害
		*/
		private real RDamageHuanyi = 0.
		/*
		    元素状态
		*/
		private boolean IsFire = false
		private boolean IsWater = false
		private boolean IsLumber = false
		private boolean IsWind = false
		integer ICurrentSpell = 0
		/*
		    魔能数
		*/
		private integer IMoneng = 0

		/*
		    提升智力倍数
		*/
		key kNoneIntTimes
		/*
		    泉水
		*/
		key kUHuanyiQuan
		/*
		    古参
		*/
		key kIGuCan
		timer TGuCan = null
		/*
		    寰宇
		*/
		key kHuanyuTimes

		/*
		    魔能
		*/
		private texttag TTMoneng
		private effect ELowMoneng = null

		private unit UGucan = null

		//开始挑战的计时器
        timer TiHuanyiTiaozhan = null
        timerdialog TiDiaHuanyiTiaozhan = null
        integer HuanyiTiaozhanCount = 0
        integer HuanyiTiaozhanCurrent = 0
        integer HuanyiWrongTimes = 0
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    开始挑战
	*/
	private function RandomSetHuanyiTiaozhan takes nothing returns nothing
		local integer i = GetRandomInt(1,16)
		if ( i == 1 ) then
			set HuanyiTiaozhanCurrent = 'AHH5'
		elseif ( i == 2 ) then
			set HuanyiTiaozhanCurrent = 'AHH6'
		elseif ( i == 3 ) then
			set HuanyiTiaozhanCurrent = 'AHH7'
		elseif ( i == 4 ) then
			set HuanyiTiaozhanCurrent = 'AHH8'
		elseif ( i == 5 ) then
			set HuanyiTiaozhanCurrent = 'AHH9'
		elseif ( i == 6 ) then
			set HuanyiTiaozhanCurrent = 'AHHA'
		elseif ( i == 7 ) then
			set HuanyiTiaozhanCurrent = 'AHHB'
		elseif ( i == 8 ) then
			set HuanyiTiaozhanCurrent = 'AHHC'
		elseif ( i == 9 ) then
			set HuanyiTiaozhanCurrent = 'AHHD'
		elseif ( i == 10 ) then
			set HuanyiTiaozhanCurrent = 'AHHE'
		elseif ( i == 11 ) then
			set HuanyiTiaozhanCurrent = 'AHHF'
		elseif ( i == 12 ) then
			set HuanyiTiaozhanCurrent = 'AHHG'
		elseif ( i == 13 ) then
			set HuanyiTiaozhanCurrent = 'AHHH'
		elseif ( i == 14 ) then
			set HuanyiTiaozhanCurrent = 'AHHI'
		elseif ( i == 15 ) then
			set HuanyiTiaozhanCurrent = 'AHHJ'
		else
			set HuanyiTiaozhanCurrent = 'AHHK'
		endif
		call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r你的"+I2S(HuanyiTiaozhanCount)+"次技能挑战为"+GetAbilityName(HuanyiTiaozhanCurrent)+".")
	endfunction

    private function HuanyiTiaozhanTimeout takes nothing returns nothing
    	call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r你成功在30秒内完成了"+I2S(HuanyiTiaozhanCount)+"个技能.")
    	if (HuanyiTiaozhanCount >= 25) then
    		debug call SetHuanyiSpinOK(GetOwningPlayer(Huanyi))
    	endif
        call TimerDialogDisplay(TiDiaHuanyiTiaozhan,false)
        call DestroyTimerDialog(TiDiaHuanyiTiaozhan)
        call PauseTimer(TiHuanyiTiaozhan)
        call DestroyTimer(TiHuanyiTiaozhan)
        set TiHuanyiTiaozhan = null
        set TiDiaHuanyiTiaozhan = null
		set HuanyiWrongTimes = 0
        set HuanyiTiaozhanCount = 0
    endfunction

	private function HuanyiTiaozhanPanding takes nothing returns nothing
		if (ICurrentSpell == HuanyiTiaozhanCurrent) then
			set HuanyiTiaozhanCount = HuanyiTiaozhanCount +1
			call RandomSetHuanyiTiaozhan()
			set HuanyiWrongTimes = 0
		else
			set HuanyiWrongTimes = HuanyiWrongTimes + 1
			if (HuanyiWrongTimes >= 7) then
				set HuanyiTiaozhanCount = 0
				set HuanyiWrongTimes = 0
				call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r7次按键不能正确切换,清空挑战值.")
			endif
		endif
	endfunction

	function InitHuanyiTiaozhan takes nothing returns nothing
		if (TiHuanyiTiaozhan != null) then
			call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r请完成目前挑战再重新输入!")
			return
		endif
        set TiHuanyiTiaozhan = CreateTimer()
        set TiDiaHuanyiTiaozhan = CreateTimerDialogBJ(TiHuanyiTiaozhan,"幻逸挑战")
        call TimerStart(TiHuanyiTiaozhan,30,false,function HuanyiTiaozhanTimeout)
        call TimerDialogDisplay(TiDiaHuanyiTiaozhan,true)
        set HuanyiTiaozhanCount = 1
        call RandomSetHuanyiTiaozhan()
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageHuanyi takes unit u returns boolean

		//风
		if (GetUnitTypeId(u) == 'hhh3') then
			call UnitDamageTarget( Huanyi, GetTriggerUnit(), RDamageHuanyi * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		//冰火
		if (GetUnitTypeId(u) == 'h01B' and udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] == Huanyi) then
			call UnitDamageTarget( Huanyi, GetTriggerUnit(), RDamageHuanyi * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathHuanyi takes unit u returns nothing
		
		if (GetUnitTypeId(u) == 'hhh7') then
			call DamageArea(Huanyi,GetUnitX(u),GetUnitY(u),300,RDamageHuanyi*1.5)
	    	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u), GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取多重施法的重数:1-5
	*/
	private function GetMultiSpell takes nothing returns integer
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Huanyi))]) then
			return I3(IsWanjie(),6,5)
		endif

		if not(IsThirdSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH2') == 1) then
			return 1 + IJ2(Huanyi,1,0)
		endif

		return IMaxBJ(IMinBJ(IMoneng/2,I3(IsWanjie(),4,5)),1) + IJ2(Huanyi,1,0)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻元伏心，加20%的智力。
	*/
	private function NoneTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local real intTimes = LoadReal(spellTable,GetHandleId(t),kNoneIntTimes)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),-1 * intTimes)
		call FlushChildHashtable(spellTable,GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t = null
	endfunction

	private function None takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real intTimes = times * 0.2
		local real time = times * 10
		local timer t = CreateTimer()
		call SaveReal(spellTable,GetHandleId(t),kNoneIntTimes,intTimes)
		call TimerStart(t,time,false,function NoneTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),intTimes)
		call YDWETimerDestroyEffect(time,AddSpecialEffectTargetUnitBJ("overhead",Huanyi,"war3mapImported\\music.mdx"))
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH5'),"成功增加"+I2S(times*20)+"%的智力，持续"+I2S(times * 10)+"秒。")
	    set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
		七炎焚狱
	*/	
	private function Fire takes real x,real y returns nothing
		local integer times = GetMultiSpell()
		local real damage = RDamageHuanyi
		local integer i = 1
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName('AHH6'),damage)
		loop
			set times = times - 1
	        call CreateUnitEffect(GetOwningPlayer(Huanyi),'hhh1',x,y,0)
	        set i = 1
			loop
				exitwhen i > 6
	        	call CreateUnitEffect(GetOwningPlayer(Huanyi),'hhh1',x + 400 * CosBJ(i*60),y+ 400 * SinBJ(i*60),0)
				set i = i +1
			endloop
			call DamageArea(Huanyi,x,y,600,damage)
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天古木精
	*/
	private function Lumber takes nothing returns nothing
		local integer times = GetMultiSpell()
		local integer attack = GetHeroInt(Huanyi,true) + GetAttack(Huanyi)
		local integer defense = GetHeroAgi(Huanyi,true)/100 + GetDefense(Huanyi)
		local integer hp = GetHeroStr(Huanyi,true) * 10 + GetHP(Huanyi)
		local unit u
		local integer i = 1
		loop
			exitwhen i > times
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh2',GetUnitX(Huanyi),GetUnitY(Huanyi),0)
			call SetUnitAnimation( u, "birth" )
			call UnitApplyTimedLifeBJ( 180.00, 'BHwe',u )
			call SetAttack(u,attack)
			call SetDefense(u,defense)
			call SetHP(u,hp)
			set i = i +1
		endloop
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName('AHH8'))
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻化残卷
	*/
	private function Wind takes nothing returns nothing
		local integer times = GetMultiSpell()
		local unit u
		local integer i = 1
		loop
			exitwhen i > times
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh3',YDWECoordinateX(GetUnitX(Huanyi) + GetRandomInt(-100,100)),YDWECoordinateY(GetUnitY(Huanyi) + GetRandomInt(-100,100)),0)
			call UnitApplyTimedLifeBJ( 15.00, 'BHwe',u )
			set i = i +1
		endloop
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName('AHH9'))
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冰火双绝，h01B
	*/
	private function FireWater takes nothing returns nothing

		local integer times = GetMultiSpell()
		local real damage = RDamageHuanyi * 0.6
		local integer i = 6 * times
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName('AHHA'),damage)
		loop
			set i = i - 1
	 		call SimulateSpell4(Huanyi,YDWECoordinateX(GetUnitX(Huanyi)+GetRandomReal(-600,600)),YDWECoordinateY(GetUnitY(Huanyi)+GetRandomReal(-600,600)),'A05S',1,6,"blizzard")
	 		call SimulateSpell4(Huanyi,YDWECoordinateX(GetUnitX(Huanyi)+GetRandomReal(-600,600)),YDWECoordinateY(GetUnitY(Huanyi)+GetRandomReal(-600,600)),'A00U',1,6,"blizzard")
			exitwhen i <= 0
			call PolledWait(0.5/times)
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万象归影
	*/
	private function FireLumber takes real x,real y returns nothing
		local integer times = GetMultiSpell()
		local real damage = RDamageHuanyi * 0.15
		local integer i = 1
		local integer ii = 1
		local real range = 150 * times
		if (IsInForbitRegion(x,y,Huanyi)) then
	        call DisplayTextToPlayer( GetOwningPlayer(Huanyi), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达." )
	        return
		endif
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
		call SetUnitManaBJ(Huanyi,GetUnitState(Huanyi,UNIT_STATE_MANA) - 75)
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName('AHHB'),damage)
		call SetUnitX(Huanyi,x)
		call SetUnitY(Huanyi,y)
		call IssueImmediateOrder(Huanyi,"stop")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y ))
		loop
			exitwhen i > times - 1
			set ii = 1
			loop
				exitwhen ii > i * 1 + 4
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", YDWECoordinateX(x+ 150 * i *CosBJ(360 * ii/(i * 1 + 4))), YDWECoordinateY(y + 150 * i * SinBJ(360 * ii/(i * 1 + 4))) ))
				set ii = ii + 1
			endloop
			set i = i +1
		endloop
		call DamageArea(Huanyi,x,y,range,damage)
	endfunction	
//---------------------------------------------------------------------------------------------------
	/*
	    火轮烁日
	*/
	private function FireWind takes real x2,real y2 returns nothing


		local integer times = GetMultiSpell()
		local real damage = RDamageHuanyi
		local integer i = 1

	    local real x1 
	    local real y1 
	    local real facing 
		local unit u

		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName('AHHC'),damage)
		loop
			set times = times - 1

		    set x1 = GetUnitX(Huanyi)
		    set y1 = GetUnitY(Huanyi)
		    set facing = Atan2BJ(y2-y1,x2-x1)
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh4',x1,y1,facing)
	    	call UnitApplyTimedLifeBJ( 2, 'BHwe', u)
		    call YDWETimerPatternRushSlide( u, facing , 1400, 2, 0.05, damage, 300., false, true, true, "origin", "", "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl" )
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop

	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻冥天泉
	*/
	private function WaterWindTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,kUHuanyiQuan)
		local group l_group = CreateGroup()
		local unit l_unit
		if (IsUnitAliveBJ(u)) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 600, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if (IsAlly(l_unit,Huanyi) and IsUnitAliveBJ(l_unit)) then
			    	call RecoverUnitHP(l_unit,0.3)
			    	call RecoverUnitMP(l_unit,20)
			    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null
		else
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

	private function WaterWind takes real x,real y returns nothing
		local integer times = GetMultiSpell()
		local timer t = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(Huanyi),'hhh5',x,y,0)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
    	call UnitApplyTimedLifeBJ( 15*times, 'BHwe', u)
		call SaveUnitHandle(spellTable,GetHandleId(t),kUHuanyiQuan,u)
		call TimerStart(t,1,true,function WaterWindTimer)
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHHE'),"持续"+I2S(15*times)+"秒。")
		set t = null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    沧怒古参
	*/

	private function WaterLumberWindTimer takes nothing returns nothing
		local integer id = GetHandleId(TGuCan)
		local integer times = LoadInteger(spellTable,id,kIGuCan)
		local integer i = 1
		local integer ii = 1
		if (IsUnitAliveBJ(Huanyi)) then
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", GetUnitX(UGucan), GetUnitY(UGucan) ))
			loop
				exitwhen i > times - 1
				set ii = 1
				loop
					exitwhen ii > i * 1 + 2
					call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", YDWECoordinateX(GetUnitX(UGucan)+ 150 * i*  CosBJ(360 * ii/(i * 1 + 2))), YDWECoordinateY(GetUnitY(UGucan) + 150 * i * SinBJ(360 * ii/(i * 1 + 2))) ))
					set ii = ii +1
				endloop
				set i = i +1
			endloop
			call DamageAreaMirror(Huanyi,GetUnitX(UGucan),GetUnitY(UGucan),times * 150,RDamageHuanyi*0.15)
		else
			call RemoveUnit(UGucan)
			set UGucan = null
			call FlushChildHashtable(spellTable,id)
			call PauseTimer(TGuCan)
			call DestroyTimer(TGuCan)
			set TGuCan = null 
		endif
	endfunction

	private function WaterLumberWind takes real x,real y returns nothing
		
		local integer times = GetMultiSpell()
		if (UGucan != null) then
			call RemoveUnit(UGucan)
		endif
		if (TGuCan != null) then
			call PauseTimer(TGuCan)
			call DestroyTimer(TGuCan)
		endif
		set TGuCan = CreateTimer()
		set UGucan = CreateUnit(GetOwningPlayer(Huanyi),'hhh6',x,y,270)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
    	call SetUnitScalePercent( UGucan,  100.00 +  times * 20.00  , 100.00 +  times * 20.00, 100.00 +  times * 20.00 )
    	call SetUnitAnimation( UGucan, "stand birth alternate work upgrade" )
		call SaveInteger(spellTable,GetHandleId(TGuCan),kIGuCan,times)
		call TimerStart(TGuCan,1,true,function WaterLumberWindTimer)
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName('AHHG'))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    雨玥千里
	*/
	private function FireLumberWind takes nothing returns nothing
		local integer times = GetMultiSpell()
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHHH'),",眩晕"+I2S(times*2)+"秒。")
 		call SimulateSpell(Huanyi,Huanyi,'A0BI',times,6,"stomp",false,true,false)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    残月流星
	*/
	private function FireWaterWind takes real x,real y returns nothing
		local integer times = GetMultiSpell()
		local real damage = RDamageHuanyi * 1.5
		local unit u
		local integer i = 1
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName('AHHI'),damage)
		loop
			set times = times - 1
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh7',x,y,0)
    		call SetUnitFlyHeight( u, 0.00, 333.00 )
			exitwhen times <= 0
			call PolledWait(0.5)
		endloop
		set u = null 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    引力界场
	*/
	private function FireWaterLumber takes real x,real y returns nothing
		local integer times = GetMultiSpell()
		local integer i = 1
		local unit u
	    local Attract attract
	    if (IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)) then
	    	call DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,技能施法无效！")
	    	return
	    endif
		set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh8',x,y,0)
	    set attract = Attract.create(u,I3(IsInDiamondRegion(x,y),1200,900 * times),0.05,50 * times)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHHJ'),"范围"+I2S(900 * times) +"s.")
		call UnitApplyTimedLifeBJ( 3, 'BHwe', u)
		call attract.SetForbitHero()
	    call attract.start()
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寰宇归一
	*/
	private function FireWaterLumberWindTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local real attrTimes = LoadReal(spellTable,GetHandleId(t),kHuanyuTimes)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),-1 * attrTimes)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),-1 * attrTimes)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),-1 * attrTimes)
		call FlushChildHashtable(spellTable,GetHandleId(t))
		call PauseTimer(t)
		call DestroyTimer(t)
		set t = null
	endfunction

	private function FireWaterLumberWind takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real attrTimes = times * 0.2
		local real time = times * 10
		local timer t = CreateTimer()
		call SaveReal(spellTable,GetHandleId(t),kHuanyuTimes,attrTimes)
		call TimerStart(t,time,false,function FireWaterLumberWindTimer)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),attrTimes)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),attrTimes)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),attrTimes)
		call YDWETimerDestroyEffect(time,AddSpecialEffectTargetUnitBJ("origin",Huanyi,"war3mapImported\\blackbird.mdx"))
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHHK'),"成功增加"+I2S(times*20)+"%的三围属性，持续"+I2S(times * 10)+"秒。")
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    复苏
	*/
	private function Fusu takes nothing returns nothing
		local real x = GetSpellTargetX()
		local real y = GetSpellTargetY()
        call PlaySoundBJ(gg_snd_huanyi_5)
		//幻元伏心
		call None()
		call PolledWait(1)

		//七炎焚狱
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 100) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-100)
		call Fire(x,y)
		call PolledWait(1)
		//冰芯之铠
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 15) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-15)
 		call SimulateSpell(Huanyi,Huanyi,'AHH7',GetHeroLevel(Huanyi)/2,5,"frostarmoron",false,false,true)
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName('AHH7'))
		call PolledWait(1)
 		//天古木精
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 100) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-100)
		call Lumber()
		call PolledWait(1)
		//幻化残卷
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 200) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-200)
		call Wind()
		call PolledWait(1)
		//冰火双绝
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 150) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-150)
		call FireWater()
		call PolledWait(1)
		//万象归影
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 100) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-100)
		call FireLumber(x,y)
		call PolledWait(1)
		//火轮烁日
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 150) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-150)
		call FireWind(x,y)
		call PolledWait(1)
		//幻冥天泉
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 300) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-300)
		call WaterWind(x,y)
		call PolledWait(1)
		//沧怒古参
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 1500) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-1500)
		call WaterLumberWind(x,y)
		call PolledWait(1)
		//雨玥千里
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 200) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-200)
		call FireLumberWind()
		call PolledWait(1)
		//残月流星
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 100) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-100)
		call FireWaterWind(x,y)
		call PolledWait(1)
		//引力界场
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 360) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-360)
		call FireWaterLumber(x,y)
		call PolledWait(1)
		//寰宇归一
		if (GetUnitState(Huanyi,UNIT_STATE_MANA) < 800) then
	    	call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			return
		endif
		call RecoverUnitMP(Huanyi,-800)
		call FireWaterLumberWind()
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName('AHH4'),",施法结束.")
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸升级后刷新冰甲的等级
	*/
	private function TSpellHuanyi2Act takes nothing returns nothing
		call SetUnitAbilityLevel(Huanyi,'AHH7',IMinBJ(100,GetHeroLevel(Huanyi)/2))
	endfunction 
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸魔能等级减少受到的伤害
	*/
	private function TSpellHuanyi3Con takes nothing returns boolean
		return IsFourthSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH3') == 1 and IMoneng <= 5 and GetRandomInt(1,2) == 1
	endfunction
	
	private function TSpellHuanyi3Act takes nothing returns nothing
		call SetUnitLifeBJ(Huanyi,GetUnitState(Huanyi,UNIT_STATE_LIFE)+GetEventDamage())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新魔能
	*/
	private function FlashPowerData takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTMoneng,Huanyi,20)

		if ((GetUnitState(Huanyi,UNIT_STATE_MANA) >= GetUnitState(Huanyi,UNIT_STATE_MAX_MANA) * 0.9) and IMoneng < 10) then
			call SetUnitManaPercentBJ(Huanyi,30)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi) ))
			set IMoneng = IMoneng + 1
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),0.1)
			if (ELowMoneng != null and IMoneng > 5) then
				call DestroyEffect(ELowMoneng)
				set ELowMoneng = null
			endif
		elseif((GetUnitState(Huanyi,UNIT_STATE_MANA) < GetUnitState(Huanyi,UNIT_STATE_MAX_MANA) * 0.2)and IMoneng > 0) then
			call SetUnitManaPercentBJ(Huanyi,80)
			set IMoneng = IMoneng - 1
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi) ))
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),- 0.1)
			if (ELowMoneng == null and IMoneng <= 5) then
				set ELowMoneng = AddSpecialEffectTargetUnitBJ("origin",Huanyi,"Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
			endif
	    else
	    	return
		endif

		call SetTextTagTextBJ(TTMoneng,I2S(IMoneng) + "级魔能",20)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化魔能
	*/
	private function InitPower takes nothing returns nothing
		local timer ti = CreateTimer()

		set IMoneng = 0
		set TTMoneng = CreateTextTagUnitBJ( "0级魔能", Huanyi, 0, 20, 0, 50, 100, 0 )
		call TimerStart(ti,0.05,true,function FlashPowerData)

		set ELowMoneng = AddSpecialEffectTargetUnitBJ("origin",Huanyi,"Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
		set ti = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    根据元素激活与否去设置相应的技能
	*/
	private function SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,false)
		if (ICurrentSpell == 'AHHF') then
			call UnitRemoveAbility(Huanyi,'AHHF')
		endif
		//0排列
		if (not(IsFire) and not(IsWater) and not(IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHH5'
		//1排列
		elseif ((IsFire) and not(IsWater) and not(IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHH6'
		elseif (not(IsFire) and (IsWater) and not(IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHH7'
		elseif (not(IsFire) and not(IsWater) and (IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHH8'
		elseif (not(IsFire) and not(IsWater) and not(IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHH9'
		//2排列
		elseif ((IsFire) and (IsWater) and not(IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHHA'
		elseif ((IsFire) and not(IsWater) and (IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHHB'
		elseif ((IsFire) and not(IsWater) and not(IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHC'
		elseif (not(IsFire) and (IsWater) and (IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHHD'
		elseif (not(IsFire) and (IsWater) and not(IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHE'
		elseif (not(IsFire) and not(IsWater) and (IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHF'
			call UnitAddAbility(Huanyi,'AHHF')
		//1排列
		elseif (not(IsFire) and (IsWater) and (IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHG'
		elseif ((IsFire) and not(IsWater) and (IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHH'
		elseif ((IsFire) and (IsWater) and not(IsLumber) and (IsWind)) then
			set ICurrentSpell = 'AHHI'
		elseif ((IsFire) and (IsWater) and (IsLumber) and not(IsWind)) then
			set ICurrentSpell = 'AHHJ'
		//0排列
		else
			set ICurrentSpell = 'AHHK'
		endif
		if not(BTianfu) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,true)
		endif
		if (TiHuanyiTiaozhan != null) then
			call HuanyiTiaozhanPanding()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellHuanyiAct takes nothing returns nothing
		//四相
		if (GetSpellAbilityId() == 'AHH0') then
			set IsFire = not (IsFire)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH1') then
			set IsWater = not (IsWater)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH2') then 
			set IsLumber = not (IsLumber)
			call SetHuanyiSpell()
		elseif (GetSpellAbilityId() == 'AHH3') then 
			set IsWind = not (IsWind)
			call SetHuanyiSpell()
		//复苏
		elseif (GetSpellAbilityId() == 'AHH4') then 
			call Fusu()
		//幻元伏心
		elseif (GetSpellAbilityId() == 'AHH5') then 
			call None()
		//七炎焚狱
		elseif (GetSpellAbilityId() == 'AHH6') then 
			call Fire(GetSpellTargetX(),GetSpellTargetY())
		//天古木精
		elseif (GetSpellAbilityId() == 'AHH8') then 
			call Lumber()
		//幻化残卷
		elseif (GetSpellAbilityId() == 'AHH9') then 
			call Wind()
		//冰火双绝
		elseif (GetSpellAbilityId() == 'AHHA') then 
			call FireWater()
		//万象归影
		elseif (GetSpellAbilityId() == 'AHHB') then 
			call FireLumber(GetSpellTargetX(),GetSpellTargetY())
		//火轮烁日
		elseif (GetSpellAbilityId() == 'AHHC') then 
			call FireWind(GetSpellTargetX(),GetSpellTargetY())
		//幻冥天泉
		elseif (GetSpellAbilityId() == 'AHHE') then 
			call WaterWind(GetSpellTargetX(),GetSpellTargetY())
		//沧怒古参
		elseif (GetSpellAbilityId() == 'AHHG') then 
			call WaterLumberWind(GetSpellTargetX(),GetSpellTargetY())
		//雨玥千里
		elseif (GetSpellAbilityId() == 'AHHH') then 
			call FireLumberWind()
		//残月流星
		elseif (GetSpellAbilityId() == 'AHHI') then 
			call FireWaterWind(GetSpellTargetX(),GetSpellTargetY())
		//引力界场
		elseif (GetSpellAbilityId() == 'AHHJ') then 
			call FireWaterLumber(GetSpellTargetX(),GetSpellTargetY())
		//寰宇归一
		elseif (GetSpellAbilityId() == 'AHHK') then 
			call FireWaterLumberWind()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害
	*/
	private function FlashHuanyiDamage takes nothing returns nothing
		set RDamageHuanyi = GetDamageInt(Huanyi)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillHuanyiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == Huanyi) then
			if (whichSpell == 2 and IsSecondSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH1') == 1) then
				//技能2初始化
				call InitPower()
			elseif (whichSpell == 4 and IsFourthSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH3') == 1) then

				call InitHuanyiAura()
				call AddSpecialEffectTargetUnitBJ("origin",Huanyi,"war3mapImported\\sichongjiejie_b.mdx")
			endif
		endif
	endfunction

	function LearnSkillHuanyi takes unit learner,integer learnSpellID returns nothing
		if (learner == Huanyi) then
			if (learnSpellID == 'AHH0') then
				call LearnSkillHuanyiI(learner,1)
			elseif (learnSpellID == 'AHH1') then
				call LearnSkillHuanyiI(learner,2)
			elseif (learnSpellID == 'AHH2') then
				call LearnSkillHuanyiI(learner,3)
			elseif (learnSpellID == 'AHH3') then
				call LearnSkillHuanyiI(learner,4)
			elseif (learnSpellID == 'AHH4') then
				call LearnSkillHuanyiI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸皮肤
	*/
	private function InitHuanyiSpin takes unit u returns unit
		if (IsHuanyiSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H026',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Hant_0205 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitHuanyi takes unit u returns nothing
		local trigger t = CreateTrigger()
		set Huanyi = InitHuanyiSpin(u)
		set ICurrentSpell = 'AHH5'
		//主英雄技能
		set TSpellHuanyi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHuanyi,Huanyi,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellHuanyi, function TSpellHuanyiAct)

	    //魔能等级低于5则减少受到的50%伤害
	    call TriggerRegisterUnitEvent(t,Huanyi,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(t,Condition(function TSpellHuanyi3Con))
	    call TriggerAddAction(t,function TSpellHuanyi3Act)

	    //刷新伤害
	    call TimerStart(CreateTimer(),1,true,function FlashHuanyiDamage)

	    //冰甲的等级刷新
	    set t = CreateTrigger()
	    call TriggerRegisterUnitEvent(t,Huanyi,EVENT_UNIT_HERO_LEVEL)
	    call TriggerAddAction(t,function TSpellHuanyi2Act)
	    set t = null
	    //初始化技能状态
	    call UnitAddAbility(Huanyi,'AHH6')
	    call UnitAddAbility(Huanyi,'AHH7')
	    call UnitAddAbility(Huanyi,'AHH8')
	    call UnitAddAbility(Huanyi,'AHH9')
	    call UnitAddAbility(Huanyi,'AHHA')
	    call UnitAddAbility(Huanyi,'AHHB')
	    call UnitAddAbility(Huanyi,'AHHC')
	    call UnitAddAbility(Huanyi,'AHHD')
	    call UnitAddAbility(Huanyi,'AHHE')
	    call UnitAddAbility(Huanyi,'AHHG')
	    call UnitAddAbility(Huanyi,'AHHH')
	    call UnitAddAbility(Huanyi,'AHHI')
	    call UnitAddAbility(Huanyi,'AHHJ')
	    call UnitAddAbility(Huanyi,'AHHK')
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH6',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH7',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH8',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHH9',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHA',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHB',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHC',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHD',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHE',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHF',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHG',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHH',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHI',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHJ',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'AHHK',false)
		//幻逸回魔
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),'A0HX',false)

	endfunction

endlibrary