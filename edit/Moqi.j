#ifndef MoqiIncluded
#define MoqiIncluded

#include  "edit/LHBase.j"
#include  "edit/Printer.j"
#include  "edit/SpellBase.j"
#include  "edit/Skin.j"

library_once Moqi  requires LHBase,Spin,Printer,SpellBase

	globals
		private group GMoqiXingxuan = null

		boolean BFanzhuanMQ = false

		private trigger TSpellMoqi = null
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	     这个是星璇伤害
	*/
	function SimulateDamageMoqi takes unit u returns boolean
		//星璇的伤害
		if (GetUnitTypeId(u) == 'h02Q') then
			if not(IsUnitInGroup(GetTriggerUnit(),GMoqiXingxuan)) then
				call UnitDamageTarget( moqi, GetTriggerUnit(), GetDamageAgi(moqi) * 0.04 * GetUnitUserData(u), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
				call GroupAddUnit(GMoqiXingxuan,GetTriggerUnit())
			endif
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡事件
	*/
	function SimulateDeathMoqi takes unit u returns nothing
		if (GetUnitTypeId(u) == 'h02P') then
			//星落
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(u),GetUnitY(u) ))
		elseif (GetUnitTypeId(u) == 'h001') then
			//星雨
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetUnitX(u),GetUnitY(u) ))
			call DamageAreaMagic(moqi,GetUnitX(u),GetUnitY(u),450,GetDamageAgi(moqi)*0.35,null)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星辰(旧)
	*/
	private function XingchenOldTimer takes nothing returns nothing
	    local timer t = GetExpiredTimer()
	    local integer id = GetHandleId(t)
		local effect e = LoadEffectHandle(spellTable,GetHandleId(t),1)
		local integer n = LoadInteger(spellTable,GetHandleId(t),2)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),-0.3 * n)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),-0.3 * n)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),-0.3 * n)
		call DestroyEffect(e)
	    call PauseTimer(t)
	    call FlushChildHashtable(spellTable,id)
	    call DestroyTimer(t)
	    set t = null
	endfunction

	function XingchenOld takes nothing returns nothing
		local integer i = 1
		local integer n = 0
		local effect e = null
		local timer t = CreateTimer()
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Unit_Qixing[i])) then
				call KillUnit(udg_Unit_Qixing[i])
				set n = n + 1
			endif
			set i = i +1
		endloop
		call PrintSpellContent(GetOwningPlayer(moqi),GetAbilityName(GetSpellAbilityId()),"成功增加"+I2S(n*30)+"%的三围.")
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),0.3 * n)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),0.3 * n)
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(moqi)),0.3 * n)
		set e = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallCaster.mdl", moqi, "chest")
		call SaveEffectHandle(spellTable,GetHandleId(t),1,e)
		call SaveInteger(spellTable,GetHandleId(t),2,n)
		call TimerStart(t,60,false,function XingchenOldTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星璇
	*/
	function XingxuanTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local integer times = LoadInteger(spellTable,GetHandleId(t),2)
		//是第几颗星星
		local integer i = LoadInteger(spellTable,GetHandleId(t),3)
		local real degree = ModuloReal((((-80.0)*times/200.0)+90.0)*times,360.)+i*51.42
		local real x = 20 * times * CosBJ(degree) + GetUnitX(moqi)
		local real y = 20 * times * SinBJ(degree) + GetUnitY(moqi)
		//call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r"+I2S(times)+":"+R2S(degree))
		if (times < 100) then
			set times = times + 1
			//call CreateUnit(Player(0),'hpea', x,y ,0)
			call SetUnitUserData(u,times * 2 + 50)
			call SaveInteger(spellTable,GetHandleId(t),2,times)
			//call DisplayTextToPlayer(Player(0), 0., 0., "|cFFFF66CC【消息】|r"+I2S(times))
			call SetUnitX(u,x)
			call SetUnitY(u,y)
			call SetUnitFacing(u,degree+90)
		else
			call DestroyGroup(GMoqiXingxuan)
			set GMoqiXingxuan = null
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", x, y ))
			call RemoveUnit(u)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null
	endfunction

	function XingxuanStart takes unit u,integer i returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(spellTable,GetHandleId(t),1, CreateUnit(Player(0),'h02Q', GetUnitX(u),GetUnitY(u) ,0))
		call TimerStart(t,0.05,true,function XingxuanTimer)
		call SaveInteger(spellTable,GetHandleId(t),2,0)
		call SaveInteger(spellTable,GetHandleId(t),3,i)
		set t = null
	endfunction

	function Xingxuan takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Unit_Qixing[i])) then
				call XingxuanStart(udg_Unit_Qixing[i],i)
			endif
			set i = i +1
		endloop
		set GMoqiXingxuan = CreateGroup()
		call PrintSpellName(GetOwningPlayer(moqi),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星尘
	*/
	private function XingchenTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		local real x = LoadReal(spellTable,GetHandleId(t),2)
		local real y = LoadReal(spellTable,GetHandleId(t),3)
		local real facing = LoadReal(spellTable,GetHandleId(t),4)
		if (GetDistance(GetUnitX(u),GetUnitY(u),x,y) > 50. and IsUnitAliveBJ(u) and GetUnitUserData(u) == 1) then
			call SetUnitX(u,YDWECoordinateX(GetUnitX(u)+ CosBJ(facing) * 75.))
			call SetUnitY(u,YDWECoordinateY(GetUnitY(u)+ SinBJ(facing) * 75.))
		else
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u),GetUnitY(u) ))
	    	call DamageAreaMagic(moqi,GetUnitX(u),GetUnitY(u),450,GetDamageAgi(moqi)* 0.7,null)
			call KillUnit(u)
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null
	endfunction

	function XingchenStart takes unit u,real x,real y returns nothing
		local timer t = CreateTimer()
		local real facing = GetFacingBetweenXY(GetUnitX(u),GetUnitY(u),x,y)
		call SetUnitUserData(u,1)
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call SaveReal(spellTable,GetHandleId(t),2,x)
		call SaveReal(spellTable,GetHandleId(t),3,y)
		call SaveReal(spellTable,GetHandleId(t),4,facing)
		call SetUnitFacing(u,facing)
		call TimerStart(t,0.05,true,function XingchenTimer)
		set t = null
	endfunction

	function Xingchen takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			if (IsUnitAliveBJ(udg_Unit_Qixing[i])) then
				call XingchenStart(udg_Unit_Qixing[i],GetSpellTargetX(),GetSpellTargetY())
			endif
			set i = i +1
		endloop
	    call PrintSpellName(GetOwningPlayer(moqi),GetAbilityName(GetSpellAbilityId()))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星落
	*/
	private function CreateEffect1 takes real x,real y returns nothing
	    local integer i = 1
	    local integer j = 1
	    local unit u = null
        set u = CreateUnit(GetOwningPlayer(moqi),'h02P',x,y,0)
        call SetUnitFlyHeight( u, 0.00, 2000.00 )
	    loop
	        exitwhen j > 3
	        set i = 1
	        loop
	            exitwhen i > 8
	            set u = CreateUnit(GetOwningPlayer(moqi),'h02P',YDWECoordinateX(x + 300 * j * CosBJ(i*360.0/I2R(8))), YDWECoordinateY(y + 300 * j * SinBJ(i*360.0/I2R(8))),0)
	            call SetUnitFlyHeight( u, 0.00, 2000.00 )
	            set i = i +1
	        endloop
	        set j = j +1
	    endloop
	    set u = null
	endfunction

	private function XingluoDamageTimer takes nothing returns nothing
	    local timer t = GetExpiredTimer()
	    local integer id = GetHandleId(t)
	    local real x = LoadReal(spellTable,GetHandleId(t),1)
	    local real y = LoadReal(spellTable,GetHandleId(t),2)
	    local real rate = LoadReal(spellTable,GetHandleId(t),3)
	    call DamageAreaMagic(moqi,x,y,900,GetDamageAgi(moqi)*rate,null)
	    call PauseTimer(t)
	    call FlushChildHashtable(spellTable,id)
	    call DestroyTimer(t)
	    set t = null
	endfunction

	function CreateXingluo takes real rate returns nothing
	    local timer t = CreateTimer()
	    call CreateEffect1(GetUnitX(moqi),GetUnitY(moqi))
	    call SaveReal(spellTable,GetHandleId(t),1,GetUnitX(moqi))
	    call SaveReal(spellTable,GetHandleId(t),2,GetUnitY(moqi))
	    call SaveReal(spellTable,GetHandleId(t),3,rate)
	    call TimerStart(t,1,false,function XingluoDamageTimer)
	    set t = null
	endfunction

	private function XingluoStartCreate takes nothing returns nothing
	    local timer t = GetExpiredTimer()
	    local integer id = GetHandleId(t)
	    local integer i = LoadInteger(spellTable,id,1)
		local real rate = LoadReal(spellTable,GetHandleId(t),2)
	    if (i <= 1 + IJ1(moqi,1,0) + IJ2(moqi,1,0)) then
	        set i = i + 1
	        call SaveInteger(spellTable,GetHandleId(t),1,i)
	        call CreateXingluo(rate)
	    else
	        call PauseTimer(t)
	        call FlushChildHashtable(spellTable,id)
	        call DestroyTimer(t)
	    endif
	    set t = null
	endfunction

	function Xingluo takes real damageRate,integer abilityID,real x2,real y2 returns nothing
		local real x = GetUnitX(moqi)
		local real y = GetUnitY(moqi)
		local real damage = GetDamageAgi(moqi)
		local timer t = CreateTimer()
		call SaveInteger(spellTable,GetHandleId(t),1,1)
		call SaveReal(spellTable,GetHandleId(t),2,damageRate)
		call TimerStart(t,0.5,true,function XingluoStartCreate)
		set t = null
	    call PrintSpell(GetOwningPlayer(moqi),GetAbilityName(abilityID),damage)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/
	private function TSpellMoqiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0NH') then
			//箭落
			call Xingluo(1.0,GetSpellAbilityId(),GetUnitX(moqi),GetUnitY(moqi))
		elseif (GetSpellAbilityId() == 'A0NI') then
			//星尘
			call Xingchen()
		elseif (GetSpellAbilityId() == 'A04L') then
			//星辰
			call XingchenOld()
		elseif (GetSpellAbilityId() == 'A0NJ') then
			//星辰
			call Xingxuan()
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	//按照12345来判断
	function LearnSkillMoqiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == moqi) then

			if (whichSpell == 1) then
				//技能1初始化
        		call EnableTrigger( gg_trg_______18 )
			elseif (whichSpell == 2 and IsSecondSpellOK(moqi) and (GetUnitAbilityLevel(moqi,'A0G0') == 1 or GetUnitAbilityLevel(moqi,'A0NI') == 1)  ) then
				//技能2初始化
        		call EnableTrigger( gg_trg_______19 )
			endif
		endif
	endfunction

	function LearnSkillMoqi takes unit learner,integer learnSpellID returns nothing
		if (learner == moqi) then
			if (learnSpellID == 'A0FZ') then
				call LearnSkillMoqiI(learner,1)
			elseif (learnSpellID == 'A0G0' or learnSpellID == 'A0NI') then
				call LearnSkillMoqiI(learner,2)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    碎星来刷新技能
	*/
	function FlashJianluo takes nothing returns nothing
	    if (BFanzhuanMQ) then
	        call UnitRemoveAbility(moqi,'A0NH')
	        call UnitAddAbility(moqi,'A0NH')
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    大招角度得皮肤
	*/
	function JudgeMoqiSpin takes nothing returns nothing
		local location point1 = null
		local location point2 = null
		local real angle = 0.
		if (GetDistance(GetUnitX(moqi),GetUnitY(moqi),GetSpellTargetX(),GetSpellTargetY())<10) then
			return
		endif
		set point1 = GetUnitLoc(moqi)
		set point2 = GetSpellTargetLoc()
		set angle = AngleBetweenPoints(point1, point2)
		call DisplayTextToPlayer(GetOwningPlayer(moqi), 0., 0., "|cFFFF66CC【消息】|r技能施放角度为"+R2S(angle)+"度.")
		if (angle < 90.1 and angle > 89.9) then
			debug call SetMoqiSpinOK(GetOwningPlayer(moqi))
		endif

		call RemoveLocation(point1)
		call RemoveLocation(point2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给星加陨落技能
	*/
	function XingJuxing2 takes unit u returns nothing
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(moqi))]) then
			call UnitAddAbility(u,'A0HW')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒初始化
	*/
	function JuexingMoqi2 takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			call UnitAddAbility(udg_Unit_Qixing[i],'A0HW')
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    2阶觉醒取消
	*/
	function QJuexingMoqi takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 7
			call UnitRemoveAbility(udg_Unit_Qixing[i],'A0HW')
			set i = i + 1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是皮肤
	*/
	function IsMoqiSpin takes nothing returns boolean
		return GetUnitTypeId(xiaoyue) == 'H01X'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化反转形态
	*/
	function InitFanzhuanMoqi takes nothing returns nothing
		call UnitAddAbility(moqi,'A0NL')
		call SetPlayerAbilityAvailable(GetOwningPlayer(moqi),'A0NL',false)
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		set BFanzhuanMQ = true
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 0, 0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤
	*/
	private function InitMoqiSpin takes unit u returns unit
		if (IsMoqiSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'H01X',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Hvwd_0016 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
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
	    初始化莫琪
	*/
	function InitMoqi takes unit u returns nothing
		set moqi = InitMoqiSpin(u)

		call TriggerRegisterUnitEvent( gg_trg_______17, moqi, EVENT_UNIT_DAMAGED )
		call TriggerRegisterUnitEvent( gg_trg_______19, moqi, EVENT_UNIT_ATTACKED )


		set TSpellMoqi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellMoqi,moqi,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellMoqi, function TSpellMoqiAct)

	    debug if (DzAPI_Map_GetMapLevel(GetOwningPlayer(moqi)) >= 3 or IsVIP(GetOwningPlayer(moqi))) then
	    	call CreateFanzhuanItem(moqi)
	    debug endif

	endfunction
endlibrary
#endif
