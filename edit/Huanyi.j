
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄幻逸的技能
*/
library_once Huanyi requires SpellBase,Printer,Attr
	
	globals
		/*
		    英雄幻逸
		*/
		unit Huanyi = null

		/*
		    技能触发
		*/
		private trigger  TSpellHuanyi = null 

		/*
		    元素状态
		*/
		private boolean IsFire = false
		private boolean IsWater = false
		private boolean IsLumber = false
		private boolean IsWind = false
		private integer ICurrentSpell = 'AHH5'
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
		key kUGuCan
		key kIGuCan
		/*
		    寰宇
		*/
		key kHuanyuTimes

		/*
		    魔能
		*/
		private texttag TTMoneng
		private effect ELowMoneng = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageHuanyi takes unit u returns boolean

		//风
		if (GetUnitTypeId(u) == 'hhh3') then
			call UnitDamageTarget( Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		//冰火
		if (GetUnitTypeId(u) == 'h01B') then
			call UnitDamageTarget( Huanyi, GetTriggerUnit(), GetDamageInt(Huanyi) * 0.6, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
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
			call DamageArea(Huanyi,GetUnitX(u),GetUnitY(u),300,GetDamageInt(Huanyi)*1.5)
	    	call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u), GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取多重施法的重数:1-5
	*/
	private function GetMultiSpell takes nothing returns integer
		if not(IsFourthSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH3') == 1) then
			return 1
		endif

		return IMaxBJ(IMinBJ(IMoneng/2,5),1)
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
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),"成功增加"+I2S(times*20)+"%的智力，持续"+I2S(times * 10)+"秒。")
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		七炎焚狱
	*/	
	private function Fire takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real x = GetSpellTargetX()
		local real y = GetSpellTargetY()
		local real damage = GetDamageInt(Huanyi)
		local integer i = 1
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),damage)
		loop
			set times = times - 1
	        call CreateUnitEffect(GetOwningPlayer(Huanyi),'hhh1',x,y,0)
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
		local integer attack = GetHeroInt(Huanyi,true) + 0
		local integer defense = GetHeroAgi(Huanyi,true)/100 + 0
		local integer hp = GetHeroStr(Huanyi,true) * 10 + 0
		local unit u
		local integer i = 1
		loop
			exitwhen i > times * 2
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh2',GetSpellTargetX(),GetSpellTargetY(),0)
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
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()))
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
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh3',YDWECoordinateX(GetSpellTargetX() + GetRandomInt(-100,100)),YDWECoordinateY(GetSpellTargetY() + GetRandomInt(-100,100)),0)
			call UnitApplyTimedLifeBJ( 15.00, 'BHwe',u )
			set i = i +1
		endloop
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()))
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冰火双绝，h01B
	*/
	private function FireWater takes nothing returns nothing

		local integer times = GetMultiSpell()
		local real damage = GetDamageInt(Huanyi) * 0.6
		local integer i = 3 * times
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),damage)
		loop
			set i = i - 1
	 		call SimulateSpell4(Huanyi,YDWECoordinateX(GetUnitX(Huanyi)+GetRandomReal(-600,600)),YDWECoordinateY(GetUnitY(Huanyi)+GetRandomReal(-600,600)),'AhhL',1,6,"rainoffire")
	 		call SimulateSpell4(Huanyi,YDWECoordinateX(GetUnitX(Huanyi)+GetRandomReal(-600,600)),YDWECoordinateY(GetUnitY(Huanyi)+GetRandomReal(-600,600)),'AhhM',1,6,"blizzard")
			exitwhen i <= 0
			call PolledWait(1.0/times)
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万象归影
	*/
	private function FireLumber takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real damage = GetDamageInt(Huanyi) * 0.8
		local integer i = 1
		local integer ii = 1
		local real x = GetSpellTargetX()
		local real y = GetSpellTargetY()
		local real range = 150 * times
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),damage)
		call SetUnitX(GetSpellAbilityUnit(),x)
		call SetUnitY(GetSpellAbilityUnit(),y)
		call IssueImmediateOrder(GetSpellAbilityUnit(),"stop")
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y ))
		loop
			exitwhen i > times - 1
			set ii = 1
			loop
				exitwhen ii > i * 2 + 4
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", YDWECoordinateX(x+ 150 * CosBJ(360 * ii/(i * 2 + 4))), YDWECoordinateY(y + 150 * SinBJ(360 * ii/(i * 2 + 4))) ))
				set ii = ii +1
			endloop
			set i = i +1
		endloop
		call DamageArea(Huanyi,x,y,range,damage)
	endfunction	
//---------------------------------------------------------------------------------------------------
	/*
	    火轮烁日
	*/
	private function FireWind takes nothing returns nothing


		local integer times = GetMultiSpell()
		local real damage = GetDamageInt(Huanyi)
		local integer i = 1

	    local real x1 
	    local real y1 
	    local real x2 
	    local real y2 
	    local real facing 
		local unit u

		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),damage)
		loop
			set times = times - 1

		    set x1 = GetUnitX(Huanyi)
		    set y1 = GetUnitY(Huanyi)
		    set x2 = GetSpellTargetX()
		    set y2 = GetSpellTargetY()
		    set facing = Atan2BJ(y2-y1,x2-x1)
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh4',x1,y1,facing)
	    	call UnitApplyTimedLifeBJ( 2, 'BHwe', u)
		    call YDWETimerPatternRushSlide( u, facing , 1400, 2, 0.05, damage, 300., false, true, false, "origin", "", "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl" )
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

	private function WaterWind takes nothing returns nothing
		local integer times = GetMultiSpell()
		local timer t = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(Huanyi),'hhh5',GetSpellTargetX(),GetSpellTargetY(),0)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
    	call UnitApplyTimedLifeBJ( 15*times, 'BHwe', u)
    	call SetUnitScalePercent( u,  100.00 +  times * 50.00  , 100.00 +  times * 50.00, 100.00 +  times * 50.00 )
		call SaveUnitHandle(spellTable,GetHandleId(t),kUHuanyiQuan,u)
		call TimerStart(t,1,true,function WaterWindTimer)
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),"持续"+I2S(15*times)+"秒。")
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
		local unit u = LoadUnitHandle(spellTable,id,kUGuCan)
		local integer times = LoadInteger(spellTable,id,kIGuCan)
		local integer i = 1
		local integer ii = 1
		if (IsUnitAliveBJ(Huanyi)) then
			loop
				exitwhen i > times - 1
				set ii = 1
				loop
					exitwhen ii > i * 2 + 4
					call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", YDWECoordinateX(GetUnitX(u)+ 150 * CosBJ(360 * ii/(i * 2 + 4))), YDWECoordinateY(GetUnitY(u) + 150 * SinBJ(360 * ii/(i * 2 + 4))) ))
					set ii = ii +1
				endloop
				set i = i +1
			endloop
			call DamageArea(Huanyi,GetUnitX(Huanyi),GetUnitY(Huanyi),times * 150,GetDamageInt(Huanyi)*0.4)
		else
			call RemoveUnit(u)
			call FlushChildHashtable(spellTable,id)
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction

	private function WaterLumberWind takes nothing returns nothing
		
		local integer times = GetMultiSpell()
		local timer t = CreateTimer()
		local unit u = CreateUnit(GetOwningPlayer(Huanyi),'hhh6',GetSpellTargetX(),GetSpellTargetY(),0)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
    	call SetUnitScalePercent( u,  100.00 +  times * 50.00  , 100.00 +  times * 50.00, 100.00 +  times * 50.00 )
		call SaveUnitHandle(spellTable,GetHandleId(t),kUGuCan,u)
		call SaveInteger(spellTable,GetHandleId(t),kIGuCan,times)
		call TimerStart(t,1,true,function WaterLumberWindTimer)
	    call PrintSpellName(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()))
		set t = null
		set u = null
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
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),",眩晕"+I2S(times*2)+"秒。")
 		call SimulateSpell(Huanyi,Huanyi,'AHHM',times,6,"stomp",false,true,false)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    残月流星
	*/
	private function FireWaterWind takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real x = GetSpellTargetX()
		local real y = GetSpellTargetY()
		local real damage = GetDamageInt(Huanyi) * 1.5
		local unit u
		local integer i = 1
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpell(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),damage)
		loop
			set times = times - 1
			set u = CreateUnit(GetOwningPlayer(Huanyi),'hhh7',x,y,0)
    		call UnitApplyTimedLifeBJ( 3, 'BHwe', u)
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
	private function FireWaterLumber takes nothing returns nothing
		local integer times = GetMultiSpell()
		local real x = GetSpellTargetX()
		local real y = GetSpellTargetY()
		local real range = 900 * times
		local integer i = 1
		local unit u = CreateUnit(GetOwningPlayer(Huanyi),'hhh8',GetSpellTargetX(),GetSpellTargetY(),0)
	    local Attract attract = Attract.create(u,range,0.05,range/20)
		if (times > 1) then
	    	call CreateSpellTextTag(I2S(times)+"重施法",Huanyi,0,100,0,4)
		endif
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),"吸引范围"+I2S(R2I(range)))
		call UnitApplyTimedLifeBJ( 5, 'BHwe', u)
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
	    call PrintSpellContent(GetOwningPlayer(Huanyi),GetAbilityName(GetSpellAbilityId()),"成功增加"+I2S(times*20)+"%的三围属性，持续"+I2S(times * 10)+"秒。")
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    复苏
	*/
	private function Fusu takes nothing returns nothing
		// body...
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
		return IsThirdSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH2') == 1 and IMoneng <= 5 and GetRandomInt(1,2) == 1
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

		if (GetUnitState(Huanyi,UNIT_STATE_MANA) == GetUnitState(Huanyi,UNIT_STATE_MAX_MANA) and IMoneng < 10) then
			call SetUnitManaPercentBJ(Huanyi,50)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi) ))
			set IMoneng = IMoneng + 1
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),0.1)
			if (ELowMoneng != null and IMoneng > 5) then
				call DestroyEffect(ELowMoneng)
				set ELowMoneng = null
			endif
		elseif((GetUnitState(Huanyi,UNIT_STATE_MANA) < GetUnitState(Huanyi,UNIT_STATE_MAX_MANA)/2)and IMoneng > 0) then
			call SetUnitManaPercentBJ(Huanyi,100)
			set IMoneng = IMoneng - 1
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi) ))
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)),- 0.1)
			if (ELowMoneng == null and IMoneng <= 5) then
				set ELowMoneng = AddSpecialEffectTargetUnitBJ("chest",Huanyi,"Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
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

		set ELowMoneng = AddSpecialEffectTargetUnitBJ("chest",Huanyi,"Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl")
		set ti = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    根据元素激活与否去设置相应的技能
	*/
	private function SetHuanyiSpell takes nothing returns nothing
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,false)
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
		call SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi),ICurrentSpell,true)
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
			call Fire()
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
			call FireLumber()
		//火轮烁日
		elseif (GetSpellAbilityId() == 'AHHC') then 
			call FireWind()
		//幻冥天泉
		elseif (GetSpellAbilityId() == 'AHHE') then 
			call WaterWind()
		//沧怒古参
		elseif (GetSpellAbilityId() == 'AHHG') then 
			call WaterLumberWind()
		//雨玥千里
		elseif (GetSpellAbilityId() == 'AHHH') then 
			call FireLumberWind()
		//残月流星
		elseif (GetSpellAbilityId() == 'AHHI') then 
			call FireWaterWind()
		//引力界场
		elseif (GetSpellAbilityId() == 'AHHJ') then 
			call FireWaterLumber()
		//寰宇归一
		elseif (GetSpellAbilityId() == 'AHHK') then 
			call FireWaterLumberWind()
		endif
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
			elseif (whichSpell == 3 and IsThirdSpellOK(Huanyi) == true and GetUnitAbilityLevel(Huanyi,'AHH2') == 1) then
				//技能3初始化
				set i = 1
				//增加技能伤害
				loop
					exitwhen i > 6
					call AddSpellPercent(i,0.6)
					set i = i +1
				endloop

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
	    初始化新英雄,选取时调用
	*/
	function InitHuanyi takes unit u returns nothing
		local trigger t = CreateTrigger()
		set Huanyi = u
		//主英雄技能
		set TSpellHuanyi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHuanyi,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellHuanyi, function TSpellHuanyiAct)

	    //魔能等级低于5则减少受到的50%伤害
	    call TriggerRegisterUnitEvent(t,Huanyi,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(t,Condition(function TSpellHuanyi3Con))
	    call TriggerAddAction(t,function TSpellHuanyi3Act)

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
	    call UnitAddAbility(Huanyi,'AHHF')
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
	endfunction

endlibrary