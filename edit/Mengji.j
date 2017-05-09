
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄梦霁的技能
*/
library_once Mengji requires SpellBase,Printer,Attr

	globals
		unit mengji = null

		private integer ITianhong = 0
		private real HuanmengX = 0.
		private real HuanmengY = 0.
		/*
		    技能触发
		*/
		private trigger TSpellMengji = null

		private trigger TSpellMengji01 = null
		private trigger TSpellMengji02 = null
		private trigger TSpellMengji03 = null
		private trigger TSpellMengji2 = null
		private trigger TSpellMengji3 = null
		private trigger TSpellMengji41 = null
		private trigger TSpellMengji42 = null

		/*
		    六涛天虹
		*/
		private item Liutao = null
		private item Nihe = null
		/*
		    瞬移提示
		*/
		private boolean array shunHints
		/*
		    玲珑舞两个单位及闪电特效
		*/
		private unit ULinglong1 = null 
		private unit ULinglong2 = null
		private lightning array LLinglong
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageMengji takes unit u returns boolean

		if (GetUnitTypeId(u) == 'hhm1') then
			call UnitDamageTarget( mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.2, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'hhm2') then
			call UnitDamageTarget( mengji, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE) * 0.02, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		if (GetUnitTypeId(u) == 'hhm3') then
			call RecoverUnitHP(GetTriggerUnit(),0.1)
			return true
		endif
		//瞬伐心
		if (GetUnitTypeId(u) == 'h01B' and udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] == mengji) then
			call UnitDamageTarget( mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.35, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true
		endif
		if (GetUnitTypeId(u) == 'hhm4') then
			call UnitDamageTarget( mengji, GetTriggerUnit(), GetDamageAgi(mengji) * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断英雄是否拿着圣弓
	*/
	private function HasShenggong takes nothing returns boolean
		return UnitHasItem(mengji, Liutao)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    圣弓与超圣弓的转换
	*/
	private function ExchangeChao takes boolean higher returns nothing
		local integer charges = GetItemCharges(Liutao)
		call FlushChildHashtable(YDHT,GetHandleId(Liutao))
		call RemoveItem(Liutao)
		if (higher) then
			set Liutao = CreateItem('I04A',GetUnitX(mengji),GetUnitY(mengji))
		else
			set Liutao = CreateItem('I049',GetUnitX(mengji),GetUnitY(mengji))
		endif
	    call SaveInteger(YDHT,GetHandleId(Liutao),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(mengji)))
		call SetItemCharges(Liutao,charges)
		if (Nihe != null) then
			call SetItemVisible(Liutao,false)
		else
			if (IsUnitHasSlot(mengji)) then
				//有空位则给英雄
				call UnitAddItem( mengji,Liutao)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    六涛天虹-拟态
	*/
	private function NitaiTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		call RemoveItem(Nihe)
		call SetItemVisible(Liutao,true)
		if (IsUnitHasSlot(mengji) and IsUnitAliveBJ(mengji)) then
			//有空位则给英雄
			call UnitAddItem( mengji,Liutao)
	    	call PrintSpellContent(GetOwningPlayer(mengji),GetAbilityName('A0GX'),"，拟态结束，圣弓回归至英雄身上.")
		else
			//没有位置则移到英雄脚下
			call SetItemPosition(Liutao,GetUnitX(mengji),GetUnitY(mengji))
			call PingMinimapForForce(GetForceOfPlayer(GetOwningPlayer(mengji)), GetUnitX(mengji),GetUnitY(mengji), 2.00)
	    	call PrintSpellContent(GetOwningPlayer(mengji),GetAbilityName('A0GX'),"，拟态结束，由于背包已满，圣弓回归至英雄脚下.")
		endif
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		set t = null 
		set Nihe = null
	endfunction

	private function Nitai takes nothing returns nothing
		local timer t = CreateTimer()
		local item temp = GetSpellTargetItem()
		local integer spellID = GetSpellAbilityId()
		//call SetItemPosition(Liutao,0,0)
		call UnitRemoveItemSwapped(Liutao,mengji)
		call SetItemVisible(Liutao,false)
		call UnitAddItemByIdSwapped(GetItemTypeId(temp), mengji)
		set Nihe = GetLastCreatedItem()
		call SetItemPawnable(Nihe,false)
		call TimerStart(t,60,false,function NitaiTimer)
	    call PrintSpellContent(GetOwningPlayer(mengji),GetAbilityName(spellID),"拟合出"+GetItemName(temp))
		set t = null
		set temp = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    若幻梦的装备回归
	*/
	function RuohuanmengChatBack takes nothing returns nothing
		if (Nihe != null) then
			call RemoveItem(Nihe)
			set Nihe = null
		endif
		if (IsUnitInRange(mengji,ULinglong1,900)) then
			call ExchangeChao(true)
		else
			call ExchangeChao(false)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    若幻梦的攻击充能
	*/
	private function RuohuanmengAttackCon takes nothing returns boolean
		return GetAttacker() == mengji and HasShenggong()
	endfunction

	private function RuohuanmengAttack takes nothing returns nothing
		local integer times = GetItemCharges(Liutao)
		if (GetItemTypeId(Liutao) == 'I049') then
			if (times < 100) then
				call SetItemCharges(Liutao,times + 1)
			endif
		else
			call SetItemCharges(Liutao,IMinBJ(1000,times + 1))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    若幻梦的死亡复活触发
	*/
	function RuohuanmengDeathCon takes nothing returns boolean
	    return ((GetEventDamage() >= GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit())) and GetItemCharges(Liutao) >= 100 and IsUnitAliveBJ(mengji))
	endfunction

	function RuohuanmengDeathAct takes nothing returns nothing
		call SetItemCharges(Liutao,IMaxBJ(0,GetItemCharges(Liutao) - 100))
	    call UnitAddAbilityBJ( 'A0GV', GetTriggerUnit() )
	    call PolledWait(0.01)
	    call UnitRemoveAbilityBJ( 'A0GV', GetTriggerUnit() )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    若幻梦的静止移动
	*/
    private function RuohuanmengTimer takes nothing returns nothing
    	if (HuanmengX != GetUnitX(mengji) or HuanmengY != GetUnitY(mengji)) then
    		set HuanmengX = GetUnitX(mengji)
    		set HuanmengY = GetUnitY(mengji)
    		//移动
    		if (GetUnitAbilityLevel(mengji,'A0GX') == 1) then
    			call UnitRemoveAbility(mengji,'A0GX')
    			call UnitAddAbility(mengji,'A0GY')
    		endif
    	else
    		//静止
    		if (GetUnitAbilityLevel(mengji,'A0GY') == 1) then
    			call UnitRemoveAbility(mengji,'A0GY')
    			call UnitAddAbility(mengji,'A0GX')
    		endif
    	endif
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍龙探幽箭
	*/
	private function Tanyoujian takes real damageRate,integer abilityID,real x2,real y2,integer count returns nothing

		local real damage = GetDamageAgi(mengji) * damageRate
	    local real x1 = GetUnitX(mengji)
	    local real y1 = GetUnitY(mengji)
	    local real facing = Atan2BJ(y2-y1,x2-x1)
		local unit u = null
		local boolean next = true
		local integer i = -1 * count / 2
		loop
			exitwhen i > count / 2
			set u = CreateUnit(GetOwningPlayer(mengji),'hhm5',x1,y1,facing + i * 20)
	    	call UnitApplyTimedLifeBJ( 2, 'BHwe', u)
		    call YDWETimerPatternRushSlide( u, facing + i * 20 , 2000, 2, 0.05, damage, 300., false, true, true, "origin", "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl" )
			set i = i + 1
		endloop 
	    call PrintSpell(GetOwningPlayer(mengji),GetAbilityName(abilityID),damage)
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    玄音镇魂锁
	*/
	private function Zhenhunsuo takes nothing returns nothing
 		local unit  u = CreateUnit(GetOwningPlayer(mengji),'h000',GetUnitX(mengji),GetUnitY(mengji),0)
	    call UnitApplyTimedLifeBJ( 12.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'A0H0',u )
    	call IssueTargetOrder( u, "magicleash", GetSpellTargetUnit() )
 		set u = CreateUnit(GetOwningPlayer(mengji),'h000',GetUnitX(mengji),GetUnitY(mengji),0)
	    call UnitApplyTimedLifeBJ( 12.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'A0H0',u )
    	call IssueTargetOrder( u, "magicleash", GetSpellTargetUnit() )
	    set u = null
	    call PrintSpellName(GetOwningPlayer(mengji),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    镇魂锁被动
	*/
    private function TSpellMengji2Con takes nothing returns boolean
    	return GetAttacker() == mengji and IsSecondSpellOK(mengji) == true and GetUnitState(mengji,UNIT_STATE_MANA) >= 250 and HasShenggong() and GetUnitAbilityLevel(mengji,'AHM2') == 1
    endfunction
    
    private function TSpellMengji2Act takes nothing returns nothing
    	call DisableTrigger(GetTriggeringTrigger())
		call Tanyoujian(0.4,'AHM2',GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()),1)
		call PolledWait(5)
    	call EnableTrigger(GetTriggeringTrigger())
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    阴阳三川箭
	*/
	private function Sanchuanjian takes nothing returns nothing
		local real damage = GetDamageAgi(mengji) * 0.2
		local real x = YDWECoordinateX(GetSpellTargetX() + GetRandomInt(-100,100))
		local real y = YDWECoordinateY(GetSpellTargetY() + GetRandomInt(-100,100))

        local unit u = CreateUnit(GetOwningPlayer(mengji),'hhm1',x,y,0)
        call UnitApplyTimedLifeBJ( 22.00, 'BHwe',u )
        call IssuePointOrder(u,"stampede",GetSpellTargetX(),GetSpellTargetY())

		set x = YDWECoordinateX(GetSpellTargetX() + GetRandomInt(-100,100))
		set y = YDWECoordinateY(GetSpellTargetY() + GetRandomInt(-100,100))
 		set u = CreateUnit(GetOwningPlayer(mengji),'hhm2',x,y,0)
        call UnitApplyTimedLifeBJ( 22.00, 'BHwe',u )
        call IssuePointOrder(u,"stampede",GetSpellTargetX(),GetSpellTargetY())

		set x = YDWECoordinateX(GetSpellTargetX() + GetRandomInt(-100,100))
		set y = YDWECoordinateY(GetSpellTargetY() + GetRandomInt(-100,100))
 		set u = CreateUnit(Player(10),'hhm3',x,y,0)
        call UnitApplyTimedLifeBJ( 22.00, 'BHwe',u )
        call IssuePointOrder(u,"stampede",GetSpellTargetX(),GetSpellTargetY())

	    call PrintSpell(GetOwningPlayer(mengji),GetAbilityName(GetSpellAbilityId()),damage)
        set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    共享瞬移的提示与初始化
	*/
	private function SanchuanShunTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer playerID = LoadInteger(spellTable,GetHandleId(t),1)
		if not (shunHints[playerID]) then
			call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff66cc【消息】|r你已获得来自|cffffff00阴阳三川箭|r光环的效果,|cffffcc00使用M键可以瞬移至任意地点|r,冷却5s.")
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	private function InitShunyi takes nothing returns nothing
		local timer t = null
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_H[i] != null) then
				set t = CreateTimer()
				call SaveInteger(spellTable,GetHandleId(t),1,i)
				call TimerStart(t,4,true,function SanchuanShunTimer)
				set shunHints[i] = false
    			call TriggerRegisterUnitEvent( TSpellMengji3, udg_H[i], EVENT_UNIT_ISSUED_POINT_ORDER )
			endif
			set i = i +1
		endloop
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    共享瞬移
	*/
	private function TSpellMengji3Con takes nothing returns boolean
	    return ((GetIssuedOrderIdBJ() == String2OrderIdBJ("move")) and (not (shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])))
	endfunction

	private function TSpellMengji3Act takes nothing returns nothing
		if (IsInForbitRegion(GetOrderPointX(),GetOrderPointY(),GetTriggerUnit())) then
			call IssueImmediateOrder( GetTriggerUnit(), "stop" )
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达." )
	        return
		endif
		set shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = true
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
		call SetUnitX(GetTriggerUnit(),GetOrderPointX())
		call SetUnitY(GetTriggerUnit(),GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", GetOrderPointX(), GetOrderPointY() ))
		call PolledWait(5)
		set shunHints[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = false

	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    万界瞬伐心
	*/
	private function Shunfaxin takes nothing returns nothing
		local real damage = GetDamageAgi(mengji) * 0.1

	    call EnableTrigger(TSpellMengji41)
	    call EnableTrigger(TSpellMengji42)
	    call PrintSpell(GetOwningPlayer(mengji),GetAbilityName('AHM4'),damage)
	    call PolledWait(30)
	    call DisableTrigger(TSpellMengji41)
	    call DisableTrigger(TSpellMengji42)
	    call PrintSpellContent(GetOwningPlayer(mengji),GetAbilityName('AHM4'),",施法结束.")
	endfunction

	/*
	    射箭
	*/
	private function ShunfaxinArrow takes real x2,real y2 returns nothing
	    local real x1 = GetUnitX(mengji)
	    local real y1 = GetUnitY(mengji)
	    local real facing = Atan2BJ(y2-y1,x2-x1)
	    local real x = x2 - CosBJ(facing) * 100
	    local real y = y2 - SinBJ(facing) * 100
 		local unit u = CreateUnit(GetOwningPlayer(mengji),'h01B',x,y,0)
        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbility(u,'A0H4')
        call IssuePointOrder(u,"carrionswarm",x2,y2)
        set u = null
        call PolledWait(0.01)
        call SetUnitX(mengji,x1)
        call SetUnitY(mengji,y1)
        call IssueImmediateOrder(mengji,"stop")
	endfunction

	private function TSpellMengji4Con takes nothing returns boolean
	    return ((GetIssuedOrderIdBJ() == String2OrderIdBJ("smart")))
	endfunction

	private function TSpellMengji41Act takes nothing returns nothing
	    call ShunfaxinArrow(GetUnitX(GetOrderTargetUnit()),GetUnitY(GetOrderTargetUnit()))
	endfunction

	private function TSpellMengji42Act takes nothing returns nothing
	    call ShunfaxinArrow(GetOrderPointX(),GetOrderPointY())
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    浣海玲珑舞
	*/
	private function LinglongwuTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local unit u = null
		local integer id = GetHandleId(t)
		local integer count = LoadInteger(spellTable,id,1)
		local real angel = GetRandomReal(0,360)
		if (IsUnitInRange(mengji,ULinglong1,900)) then
 			set u = CreateUnit(GetOwningPlayer(mengji),'hhm4',GetUnitX(mengji),GetUnitY(mengji),0)
	        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
	        call IssuePointOrder(u,"carrionswarm",YDWECoordinateX(GetUnitX(mengji)+100*CosBJ(angel)),YDWECoordinateY(GetUnitY(mengji)+100*SinBJ(angel)))
	        call MoveLightningEx(LLinglong[1],true,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count)),0,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count)),750)
	        call MoveLightningEx(LLinglong[2],true,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count + 120)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count + 120)),0,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count + 120)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count + 120)),750)
	        call MoveLightningEx(LLinglong[3],true,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count+240)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count+240)),0,YDWECoordinateX(GetUnitX(ULinglong1)+900*CosBJ(count+240)),YDWECoordinateY(GetUnitY(ULinglong1)+900*SinBJ(count+240)),750)
			call SaveInteger(spellTable,GetHandleId(t),1,ModuloInteger(count+6,360))
			set u = null
		else
			call RemoveUnit(ULinglong1)
			call RemoveUnit(ULinglong2)
			call DestroyLightningBJ(LLinglong[1])
			call DestroyLightningBJ(LLinglong[2])
			call DestroyLightningBJ(LLinglong[3])
			set ULinglong1 = null
			set ULinglong2 = null
			set LLinglong[1] = null
			set LLinglong[2] = null
			set LLinglong[3] = null
			call ExchangeChao(false)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	private function Linglongwu takes nothing returns nothing

		local timer t = CreateTimer()
		set ULinglong1 = CreateUnit(GetOwningPlayer(mengji),'h00S',GetUnitX(mengji),GetUnitY(mengji),0)
		set ULinglong2 = CreateUnit(GetOwningPlayer(mengji),'h00T',GetUnitX(mengji),GetUnitY(mengji),0)
		set LLinglong[1] = AddLightningEx("DRAM",true,YDWECoordinateX(GetUnitX(ULinglong1)+900),YDWECoordinateY(GetUnitY(ULinglong1)),0,YDWECoordinateX(GetUnitX(ULinglong1)+900),YDWECoordinateY(GetUnitY(ULinglong1)),750)
		set LLinglong[2] = AddLightningEx("DRAM",true,YDWECoordinateX(GetUnitX(ULinglong1)-450),YDWECoordinateY(GetUnitY(ULinglong1)),0,YDWECoordinateX(GetUnitX(ULinglong1)+779),YDWECoordinateY(GetUnitY(ULinglong1)),750)
		set LLinglong[3] = AddLightningEx("DRAM",true,YDWECoordinateX(GetUnitX(ULinglong1)-450),YDWECoordinateY(GetUnitY(ULinglong1)),0,YDWECoordinateX(GetUnitX(ULinglong1)-779),YDWECoordinateY(GetUnitY(ULinglong1)),750)
		call ExchangeChao(true)
		call SaveInteger(spellTable,GetHandleId(t),1,0)
		call TimerStart(t,0.1,true,function LinglongwuTimer)
	    call PrintSpell(GetOwningPlayer(mengji),GetAbilityName('AHM5'),GetDamageAgi(mengji)*0.2)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    主英雄技能判断
	*/

	private function TSpellMengjiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AHM1') then
			call Tanyoujian(0.75,GetSpellAbilityId(),GetSpellTargetX(),GetSpellTargetY(),5)
		elseif (GetSpellAbilityId() == 'AHM2') then
			call Zhenhunsuo()
		elseif (GetSpellAbilityId() == 'AHM3') then 
			call Sanchuanjian()
		elseif (GetSpellAbilityId() == 'AHM4') then 
			call Shunfaxin()
		elseif (GetSpellAbilityId() == 'AHM5') then 
			call Linglongwu()
		//拟态
		elseif (GetSpellAbilityId() == 'A0GW' and IsCanCopy(GetSpellTargetItem())) then 
			if (IsInRect(GetUnitX(mengji),GetUnitY(mengji),gg_rct_______a3) and IsInRect(GetUnitX(mengji),GetUnitY(mengji),gg_rct_______a3)) then
				call DisplayTextToPlayer(GetOwningPlayer(mengji), 0., 0., "|cFFFF66CC【消息】|r此处禁止拟态.")
			else
				call Nitai()
			endif
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillMengjiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == mengji) then
			if(whichSpell == 1) then
			elseif (whichSpell == 2 and IsSecondSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM2') == 1) then
				//技能2初始化
			elseif (whichSpell == 3 and IsThirdSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM3') == 1) then
				//技能3初始化
				call InitShunyi()
				call AddSpecialEffectTargetUnitBJ("origin",mengji,"war3mapImported\\BlightwalkerAura.mdx")
				call UnitAddAbility(gg_unit_haro_0030,'A0EL')
			elseif (whichSpell == 4 and IsFourthSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM4') == 1) then
				//技能4初始化
			elseif (whichSpell == 5 and IsFifthSpellOK(mengji) == true and GetUnitAbilityLevel(mengji,'AHM5') == 1) then
				//技能5初始化
			endif
		endif
	endfunction

	function LearnSkillMengji takes unit learner,integer learnSpellID returns nothing
		if (learner == mengji) then
			if (learnSpellID == 'AHM1') then
				call LearnSkillMengjiI(learner,1)
			elseif (learnSpellID == 'AHM2') then
				call LearnSkillMengjiI(learner,2)
			elseif (learnSpellID == 'AHM3') then
				call LearnSkillMengjiI(learner,3)
			elseif (learnSpellID == 'AHM4') then
				call LearnSkillMengjiI(learner,4)
			elseif (learnSpellID == 'AHM5') then
				call LearnSkillMengjiI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	function InitMengji takes unit u returns nothing

	    local timer t = CreateTimer()
		set mengji = u

		set Liutao = GetItemOfTypeFromUnitBJ(mengji, 'I049')
	    call SaveInteger(YDHT,GetHandleId(Liutao),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(mengji)))

	    /*
	        六涛的属性值
	    */
	    call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.2)
	    call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.2)
	    call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.2)
	    call AddAttackPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.5)
	    call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.4)
	    call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(mengji)),0.2)
		call SetPlayerAbilityAvailable(GetOwningPlayer(mengji),'A0GV',false)
		//若幻梦
	    set TSpellMengji01 = CreateTrigger()
	    call TriggerRegisterPlayerChatEvent( TSpellMengji01, GetOwningPlayer(mengji), "-th", true )
	    call TriggerAddAction(TSpellMengji01, function RuohuanmengChatBack)
	    set TSpellMengji02 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellMengji02, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellMengji02, Condition(function RuohuanmengAttackCon))
	    call TriggerAddAction(TSpellMengji02, function RuohuanmengAttack)
	    set TSpellMengji03 = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellMengji03, mengji, EVENT_UNIT_DAMAGED )
	    call TriggerAddCondition(TSpellMengji03, Condition(function RuohuanmengDeathCon))
	    call TriggerAddAction(TSpellMengji03, function RuohuanmengDeathAct)

		//主英雄技能
		set TSpellMengji = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellMengji,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellMengji, function TSpellMengjiAct)

	    //若幻梦静止与动
	    call TimerStart(t,0.5,true,function RuohuanmengTimer)

	    //英雄第二个技能攻击事件
	    set TSpellMengji2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellMengji2,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellMengji2, Condition(function TSpellMengji2Con))
	    call TriggerAddAction(TSpellMengji2, function TSpellMengji2Act)

	    //英雄第三个技能瞬移事件
	    set TSpellMengji3 = CreateTrigger()
	    call TriggerAddCondition(TSpellMengji3, Condition(function TSpellMengji3Con))
	    call TriggerAddAction(TSpellMengji3, function TSpellMengji3Act)

	    //瞬伐心
	    set TSpellMengji41 = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellMengji41, mengji, EVENT_UNIT_ISSUED_TARGET_ORDER )
	    call TriggerAddCondition(TSpellMengji41, Condition(function TSpellMengji4Con))
	    call TriggerAddAction(TSpellMengji41, function TSpellMengji41Act)
	    call DisableTrigger(TSpellMengji41)
	    set TSpellMengji42 = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellMengji42, mengji, EVENT_UNIT_ISSUED_POINT_ORDER )
	    call TriggerAddCondition(TSpellMengji42, Condition(function TSpellMengji4Con))
	    call TriggerAddAction(TSpellMengji42, function TSpellMengji42Act)
	    call DisableTrigger(TSpellMengji42)
	    set t = null
	endfunction

endlibrary


