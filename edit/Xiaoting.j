
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
/*
    英雄霄霆的技能
*/
library_once Xiaoting requires SpellBase,Printer,Attr,Aura
	
	globals
		/*
		    技能触发
		*/
		private trigger TSpellXiaoting = null
		/*
		    伤害
		*/
		private real RDamageXiaoting = 0.

		/*
		    元素状态
		*/
		//private integer ISpellState = 0
		/*
		    魔能数
		*/
		private integer ICombo = 0

		/*
		    魔能
		*/
		private texttag TTCombo = null

		private unit UGucan = null
	endglobals
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
	    获取多重施法的重数:1-5(万劫3)
	*/
	private function GetMultiSpell takes nothing returns integer
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Huanyi))]) then
			return 6
		endif

		if not(IsThirdSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH2') == 1) then
			return 1 + IJ2(Huanyi,1,0)
		endif

		return IMaxBJ(IMinBJ(IMoneng/2,5),1) + IJ2(Huanyi,1,0)
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
			    if (IsAlly(l_unit,Huanyi)) then
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
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
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
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	private function WaterLumberWind takes real x,real y returns nothing
		
		local integer times = GetMultiSpell()
		local timer t = CreateTimer()
		if (UGucan != null) then
			call RemoveUnit(UGucan)
		endif
		set UGucan = CreateUnit(GetOwningPlayer(Huanyi),'hhh6',x,y,270)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
    	call SetUnitScalePercent( UGucan,  100.00 +  times * 20.00  , 100.00 +  times * 20.00, 100.00 +  times * 20.00 )
    	call SetUnitAnimation( UGucan, "stand birth alternate work upgrade" )
		call SaveInteger(spellTable,GetHandleId(t),kIGuCan,times)
		call TimerStart(t,1,true,function WaterLumberWindTimer)
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName('AHHG'))
		set t = null
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
	private function TSpellXiaoting2Act takes nothing returns nothing
		call SetUnitAbilityLevel(Huanyi,'AHH7',IMinBJ(100,GetHeroLevel(Huanyi)/2))
	endfunction 
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸魔能等级减少受到的伤害
	*/
	private function TSpellXiaoting3Con takes nothing returns boolean
		return IsFourthSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH3') == 1 and IMoneng <= 5 and GetRandomInt(1,2) == 1
	endfunction
	
	private function TSpellXiaoting3Act takes nothing returns nothing
		call SetUnitLifeBJ(Huanyi,GetUnitState(Huanyi,UNIT_STATE_LIFE)+GetEventDamage())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新Combo
	*/
	private function FlashComboPos takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTCombo,xiaoting,20)
	endfunction

	private function FlashComboData takes nothing returns nothing
		set ICombo = IMaxBJ(R2I(0.98*(ICombo-1)),0)
		call SetTextTagTextBJ(TTCombo,I2S(ICombo) + "Combo:"+I2S(ICombo),20)
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    初始化Combo
	*/
	private function InitCombo takes nothing returns nothing

		set ICombo = 0
		set TTCombo = CreateTextTagUnitBJ( "Combo:0", xiaoting, 0, 20, 100, 0, 50, 0 )
		call TimerStart(CreateTimer(),0.05,true,function FlashComboPos)
		call TimerStart(CreateTimer(),1,true,function FlashComboData)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    根据当前技能套设定相关的技能
	*/
	private function SetSpellSet takes integer i returns nothing

		//set ISpellState = i
		if (i == 0) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX13',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX23',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX33',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX43',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX10',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX20',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX30',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX40',true)
		elseif (i == 1) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX10',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX20',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX30',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX40',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX11',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX21',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX31',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX41',true)
		elseif (i == 2) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX11',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX21',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX31',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX41',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX12',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX22',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX32',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX42',true)
		elseif (i == 3) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX12',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX22',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX32',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX42',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX13',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX23',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX33',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX43',true)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellXiaotingAct takes nothing returns nothing
		//切换技能套
		if (GetSpellAbilityId() == 'AHH0') then
			call UnitRemoveAbility(xiaoting,'AHH0')
			call UnitAddAbility(xiaoting,'AHH1')
			call SetSpellSet(1)
		elseif (GetSpellAbilityId() == 'AHH1') then
			call UnitRemoveAbility(xiaoting,'AHH1')
			call UnitAddAbility(xiaoting,'AHH2')
			call SetSpellSet(2)
		elseif (GetSpellAbilityId() == 'AHH2') then 
			call UnitRemoveAbility(xiaoting,'AHH2')
			call UnitAddAbility(xiaoting,'AHH3')
			call SetSpellSet(3)
		elseif (GetSpellAbilityId() == 'AHH3') then 
			call UnitRemoveAbility(xiaoting,'AHH3')
			call UnitAddAbility(xiaoting,'AHH0')
			call SetSpellSet(0)
		//大招-箭绝天技
		elseif (GetSpellAbilityId() == 'AHH4') then 
			call Jianjuetianji()
		//贯虹箭
		elseif (GetSpellAbilityId() == 'AX10') then 
			call Guanhongjian()
		//箭技-折返
		elseif (GetSpellAbilityId() == 'AX11') then 
			call Zhefan()
		//箭技-炎止
		elseif (GetSpellAbilityId() == 'AX12') then 
			call Yanzhi()
		//箭技-沉默
		elseif (GetSpellAbilityId() == 'AX13') then 
			call Chenmo()
		//箭技-追心
		elseif (GetSpellAbilityId() == 'AX20') then 
			call Zhuixin()
		//绝技-冰墙
		elseif (GetSpellAbilityId() == 'AX21') then 
			call Bingqiang()
		//绝技-静体
		elseif (GetSpellAbilityId() == 'AX22') then 
			call Jingti()
		//箭技-分裂
		elseif (GetSpellAbilityId() == 'AX23') then 
			call Fenlie()
		//箭技-瞬体
		elseif (GetSpellAbilityId() == 'AX30') then 
			call Shunti()
		//箭技-渡越
		elseif (GetSpellAbilityId() == 'AX31') then 
			call Duyue()
		//箭技-御箭
		elseif (GetSpellAbilityId() == 'AX32') then 
			call Yujian()
		//箭技-绝焱
		elseif (GetSpellAbilityId() == 'AX33') then 
			call Jueyan()
		//箭技-静滞
		elseif (GetSpellAbilityId() == 'AX40') then 
			call Jingzhi()
		//箭技-箭灵
		elseif (GetSpellAbilityId() == 'AX41') then 
			call Jianling()
		//箭技-穿刺
		elseif (GetSpellAbilityId() == 'AX42') then 
			call Chuanci()
		//绝技-屏障
		elseif (GetSpellAbilityId() == 'AX43') then 
			call Pingzhang()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害
	*/
	private function FlashXiaotingDamage takes nothing returns nothing
		set RDamageXiaoting = GetDamageAgi(xiaoting)
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
		    	call UnitAddAbility(xiaoting,'AX11')
		    	call UnitAddAbility(xiaoting,'AX12')
		    	call UnitAddAbility(xiaoting,'AX13')
			elseif (whichSpell == 2) then
		    	call UnitAddAbility(xiaoting,'AX21')
		    	call UnitAddAbility(xiaoting,'AX22')
		    	call UnitAddAbility(xiaoting,'AX23')
			elseif (whichSpell == 3) then
		    	call UnitAddAbility(xiaoting,'AX31')
		    	call UnitAddAbility(xiaoting,'AX32')
		    	call UnitAddAbility(xiaoting,'AX33')
			elseif (whichSpell == 4) then
		    	call UnitAddAbility(xiaoting,'AX41')
		    	call UnitAddAbility(xiaoting,'AX42')
		    	call UnitAddAbility(xiaoting,'AX43')
		    endif

			if (whichSpell == 2 and IsSecondSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'AX20') == 1) then
				//技能2初始化
				call InitCombo()
			elseif (whichSpell == 3 and IsThridSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'AX30') == 1) then
				call InitXiaotingAura()
				//todo：加上光环
				call AddSpecialEffectTargetUnitBJ("origin",xiaoting,"war3mapImported\\sichongjiejie_b.mdx")
			endif
		endif
	endfunction

	function LearnSkillXiaoting takes unit learner,integer learnSpellID returns nothing
		if (learner == xiaoting) then
			if (learnSpellID == 'AX10') then
				call LearnSkillXiaotingI(learner,1)
			elseif (learnSpellID == 'AX20') then
				call LearnSkillXiaotingI(learner,2)
			elseif (learnSpellID == 'AX30') then
				call LearnSkillXiaotingI(learner,3)
			elseif (learnSpellID == 'AX40') then
				call LearnSkillXiaotingI(learner,4)
			elseif (learnSpellID == 'AHH4') then
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

	    //初始化技能状态
	    call UnitAddAbility(xiaoting,'AHH6')
	    call UnitAddAbility(xiaoting,'AHH7')
	    call UnitAddAbility(xiaoting,'AHH8')
	    call UnitAddAbility(xiaoting,'AHH9')
	    call UnitAddAbility(xiaoting,'AHHA')
	    call UnitAddAbility(xiaoting,'AHHB')
	    call UnitAddAbility(xiaoting,'AHHC')
	    call UnitAddAbility(xiaoting,'AHHD')
	    call UnitAddAbility(xiaoting,'AHHE')
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH6',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH7',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH8',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH9',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHA',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHB',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHC',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHD',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHE',false)

	endfunction

endlibrary