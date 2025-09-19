#ifndef SpellBaseIncluded
#define SpellBaseIncluded


#include  "edit/LHBase.j"
library_once SpellBase requires LHBase

	globals
		key kUImmuteDamage
	endglobals

//---------------------------------------------------------------------------------------------------

	/*
	    使单位免疫某次伤害。
	*/
	private function ImmuteDamageTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,kUImmuteDamage)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(spellTable,id)
		call UnitRemoveAbility(u,'Avul')
		set u = null
		set t = null
	endfunction

	function ImmuteDamageInterval takes unit u,real time returns nothing
		local timer t = CreateTimer()
		call UnitAddAbility(u,'Avul')
		call SaveUnitHandle(spellTable,GetHandleId(t),kUImmuteDamage,u)
		call TimerStart(t,time,false,function ImmuteDamageTimer)
		set t = null
	endfunction

	function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u,0)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    只打基地
	*/
	struct OnlyAttackBase

		private unit u
		private timer t

		static method flashAttack takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			if (IsUnitAliveBJ(.u) or GetUnitAbilityLevel(.u,'A0KH') > 0) then
				call IssueTargetOrder(.u,"attack",gg_unit_haro_0030)
			else
				call .destroy()
			endif
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SpellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SpellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SpellBase", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit u returns thistype
		   	local thistype this = thistype.allocate()
		   	set .u = u
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,3,true,function thistype.flashAttack)
			call IssueTargetOrder(u,"attack",gg_unit_haro_0030)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .u = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod
	endstruct

//---------------------------------------------------------------------------------------------------
	/*
	    然后这是连结2个人
	*/
	struct Connect

		private boolean BDie
		private unit unit1
		private unit unit2
		private lightning l
		private timer t

		static method connect takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			if (.BDie) then
				if (not(IsUnitAliveBJ(unit1)) or not(IsUnitAliveBJ(unit2)) ) then
					call DestroyLightningBJ(.l)
					set .l = null
				else
					if (l != null) then
						call MoveLightning( .l ,true, GetUnitX(.unit1),GetUnitY(.unit1),GetUnitX(.unit2),GetUnitY(.unit2) )
					endif
				endif
			else
				call MoveLightning( .l ,true, GetUnitX(.unit1),GetUnitY(.unit1),GetUnitX(.unit2),GetUnitY(.unit2) )
			endif
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SpellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SpellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SpellBase", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit unit1,unit unit2,string lightningType returns thistype
		   	local thistype this = thistype.allocate()
		   	set .unit1 = unit1
		   	set .unit2 = unit2
		   	set .BDie = false
			set .l = AddLightning( lightningType, true , GetUnitX(unit1),GetUnitY(unit1),GetUnitX(unit2),GetUnitY(unit2))
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.05,true,function thistype.connect)
			return this
		endmethod

		method setDieVanish takes nothing returns nothing
			set .BDie = true
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .unit1 = null
			set .unit2 = null
			call DestroyLightningBJ(.l)
			set .l = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------

	struct Attract
		private unit caster
		private real radius
		private real interval
		private real speed
		private timer t
		private boolean forbitHero
		private boolean deathContinue

		static method attract takes nothing returns nothing
			local real x1
			local real y1
			local real x2
			local real y2
			local real facing
			local real distance
			local thistype this = thistype[GetExpiredTimer()]
			local group l_group = CreateGroup()
			local unit l_unit
			if(IsUnitAliveBJ(.caster))then
				call GroupEnumUnitsInRange(l_group, GetUnitX(.caster), GetUnitY(.caster), .radius, null)
				loop
				    set l_unit = FirstOfGroup(l_group)
				    exitwhen l_unit == null
				    call GroupRemoveUnit(l_group, l_unit)
				    if(IsEnemyUnit(l_unit,.caster) and (GetUnitMoveSpeed(l_unit) > 0) and (not(.forbitHero and IsUnitType(l_unit,UNIT_TYPE_HERO))) and GetUnitAbilityLevel(l_unit,'A0IH') < 1)then
				    	set x2 = GetUnitX(l_unit)
				    	set y2 = GetUnitY(l_unit)
				    	set x1 = GetUnitX(.caster)
				    	set y1 = GetUnitY(.caster)
				    	set distance = SquareRoot((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
				    	if( distance > 80)then
				    	set facing = Atan2BJ(y1-y2,x1-x2)
				    	call SetUnitX(l_unit,YDWECoordinateX(x2+CosBJ(facing)*.speed))
				    	call SetUnitY(l_unit,YDWECoordinateY(y2+SinBJ(facing)*.speed))
				    	endif
				    endif
				endloop
				call DestroyGroup(l_group)
			else
				if not(.deathContinue) then
					call .destroy()
				endif
			endif
			set l_group = null
			set l_unit =null
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit caster,real radius,real interval,real speed returns thistype
		   	local thistype this = thistype.allocate()
		   	local timer t
			set .caster = caster
			set .radius = radius
			set .interval = interval
			set .speed = speed
			set .forbitHero = false
			set .deathContinue = false
			return this
		endmethod

		method SetForbitHero takes nothing returns nothing
			set .forbitHero = true
		endmethod

		method SetDeathContinue takes nothing returns nothing
			set .deathContinue = true
		endmethod

		method setSpeed takes real speed returns nothing
			set .speed = speed
		endmethod

		method start takes nothing returns nothing
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,.interval,true,function thistype.attract)
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .caster = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------

	struct Missile
		private unit caster
		private string effx
		private real radius
		private real interval1
		private real interval2
		private real damage
		private real x
		private real y
		private timer t


		static method explode takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			local group l_group = CreateGroup()
			local unit l_unit
			call GroupEnumUnitsInRange(l_group, .x, .y, .radius, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if(IsEnemyUnit(l_unit,.caster) == true) then
			    	call UnitDamageTarget( .caster, l_unit, .damage, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null
			call .destroy()
		endmethod

		static method launch takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			call DestroyEffect(AddSpecialEffect(.effx, .x, .y ))
			call PauseTimer(.t)
			call TimerStart(.t,.interval2,false,function thistype.explode)
		endmethod


        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod


		static method createXY takes unit caster,integer preview,string effx,real radius,real x,real y,real interval1,real interval2,real damage returns thistype
		   	local thistype this = thistype.allocate()
		   	set .x = x
		   	set .y = y
			set .caster = caster
			set .effx = effx
			set .radius = radius
			set .interval1 = interval1
			set .interval2 = interval2
			set .damage = damage

			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call UnitApplyTimedLifeBJ( interval1+interval2, 'BHwe',CreateUnit(GetOwningPlayer(.caster),preview,.x,.y,0) )
			call TimerStart(.t,.interval1,false,function thistype.launch)
			return this
		endmethod

		static method create takes unit caster,integer preview,string effx,real radius,real range,real interval1,real interval2,real damage returns thistype
		   	local real Rangel = GetRandomReal(-180,180)
		   	local real Rradius= GetRandomReal(0,range)
			return createXY(caster,preview,effx,radius,GetUnitX(caster) + Rradius * CosBJ(Rangel),GetUnitY(caster) + Rradius * SinBJ(Rangel),interval1,interval2,damage)
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .caster = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    回答问题
	*/
    function interface AfterSucceed takes nothing returns nothing

	struct Questions

		private player p
		private integer time
		private trigger click
		private dialog d
		private timer t
		private integer rightPos
		private string question
		private AfterSucceed as

		//失败
		method fail takes nothing returns nothing
	    	call PlaySoundBJ( gg_snd_kill_boss )
			set udg_I_Er_diansi[1] = IMaxBJ(0,udg_I_Er_diansi[1] - (IMaxBJ(1,R2I(0.2 * udg_I_Er_diansi[1]))))
        	call BJDebugMsg("|cFFFF66CC【消息】|r问题回答错误,你们失去了五分之一的防护罩,还剩"+I2S(udg_I_Er_diansi[1])+"个...")
			call .destroy()
		endmethod

		//成功
		method succeed takes nothing returns nothing
        	call PlaySoundBJ(gg_snd_GoodJob)
        	call BJDebugMsg("|cFFFF66CC【消息】|r问题回答正确,BOSS失去10%的生命.")
        	if (.as != 0) then
                call .as.execute()
        	endif
			call .destroy()
		endmethod

		static method flashTimeout takes nothing returns nothing
			local thistype this = LoadInteger(LHTable,GetHandleId(GetExpiredTimer()),1)
			set .time = .time - 1
			if (.time <= 0) then
				call .fail()
			else
				call DialogSetMessage( .d, .question+"(剩余时间:"+I2S(.time)+"s)" )
			endif
		endmethod

		static method chooseAnswer takes nothing returns nothing
			local thistype this = LoadInteger(LHTable,GetHandleId(LoadTimerHandle(LHTable,GetHandleId(GetTriggeringTrigger()),1)),1)
			local integer i = 1
			loop
				exitwhen i > 10
		        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(.d),i)) then
		        	if (i == .rightPos) then
		        		call .succeed()
		        		return
		        	else
		        		call .fail()
		        		return
		        	endif
		        endif
				set i = i +1
			endloop
		endmethod

        static method GetRightAnswer takes integer shu1,integer shu2,boolean jia returns integer
        	if (jia) then
        		return shu1+shu2
        	else
        		return shu1*shu2
        	endif
        endmethod

        static method GetWrongAnswer takes integer shu,integer diff returns integer
        	local integer result = 0
        	local integer result2 = 0
        	if (GetRandomInt(1,2) == 1) then
        		set result = shu + GetRandomInt(1,R2I(Pow(2,diff)))
        		if (diff >= 10) then
        			set result2 = S2I(SubStringBJ(I2S(result),1,StringLength(I2S(result))-2) + SubStringBJ(I2S(shu),StringLength(I2S(shu))-1,StringLength(I2S(shu))))
        			if (result2 != shu) then
        				return result2
        			endif
        		endif
        		return result
        	else
        		set result = shu - GetRandomInt(1,R2I(Pow(2,diff)))
        		if (diff >= 10) then
        			set result2 = S2I(SubStringBJ(I2S(result),1,StringLength(I2S(result))-2) + SubStringBJ(I2S(shu),StringLength(I2S(shu))-1,StringLength(I2S(shu))))
        			if (result2 != shu) then
        				return result2
        			endif
        		endif
        		return result
        	endif
        endmethod

        static method create takes player p,integer diff,integer count,AfterSucceed as returns thistype
		   	local thistype this = thistype.allocate()
		   	local string s = ""
		   	local boolean jia = (GetRandomInt(1,2) == 1)
		   	local integer shu1 = GetRandomInt(R2I(Pow(2,diff-1)),R2I(Pow(2,diff)))
		   	local integer shu2 = GetRandomInt(R2I(Pow(2,diff-1)),R2I(Pow(2,diff)))
		   	local integer right = GetRightAnswer(shu1,shu2,jia)
		   	local integer i = 1

		   	if (as != 0) then
		   		set .as = as
		   	endif
		   	set .rightPos = GetRandomInt(1,count)
		   	set .time = 5
		   	set .click = CreateTrigger()
			set .p = p
			set .t = CreateTimer()
			set .d = DialogCreate()
			set .question = I2S(shu1)+S3(jia,"+","x")+I2S(shu2)+"=?"
			call DialogSetMessage( .d, .question+"(剩余时间:5s)" )
			loop
				exitwhen i > count
				if (i == .rightPos) then
					call SaveButtonHandle(LHTable,GetHandleId(.d),i,DialogAddButtonBJ( .d, I2S(right)))
				else
					call SaveButtonHandle(LHTable,GetHandleId(.d),i,DialogAddButtonBJ( .d, I2S(GetWrongAnswer(right,diff))))
				endif
				set i = i +1
			endloop
			call SaveTimerHandle(LHTable,GetHandleId(.click),1,.t)
			call SaveInteger(LHTable,GetHandleId(.t),1,this)
			call DialogDisplay( .p, .d, true )
			call TriggerRegisterDialogEvent( .click, .d )
			call TriggerAddAction(.click, function thistype.chooseAnswer)
			call TimerStart(.t,1,true,function thistype.flashTimeout)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call PauseTimer(.t)
			call DestroyTimer(.t)
			call FlushChildHashtable(LHTable,GetHandleId(.t))
			set .t = null
			set .time = 0
			set .rightPos = 0
			call FlushChildHashtable(LHTable,GetHandleId(.click))
			call FlushChildHashtable(LHTable,GetHandleId(.d))
			call DestroyTrigger(.click)
	    	call DialogDisplay( .p, .d, false )
	        call DialogClear(.d)
	        call DialogDestroy(.d)
			set .click = null
			set .p = null
			set .question = null
			set .d = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    大肉棒
	*/
	struct Roubang

		private unit array URou [20]
		private real aSpeed
		private real cAngle
		private real radius
		private timer t
		private integer number
		private unit caster

		static method roubangrotate takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			local integer i = 1
			if (not(IsUnitAliveBJ(.caster)) and GetUnitAbilityLevel(.caster,'A0KH') < 1) then
				call .destroy()
			endif
			set .cAngle = ModuloReal(.cAngle + .aSpeed,360.)
			loop
				exitwhen i > .number
				if (.URou[i] != null) then
					call SetUnitX(.URou[i],YDWECoordinateX(GetUnitX(.caster) + .radius * (2 * i - 1 ) * CosBJ(.cAngle)))
					call SetUnitY(.URou[i],YDWECoordinateY(GetUnitY(.caster) + .radius * (2 * i - 1 ) * SinBJ(.cAngle)))
					call SetUnitFacing(.URou[i],.cAngle + 90)
				endif
				set i = i +1
			endloop
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit caster,integer number,real radius,real aSpeed,real angle,integer utype returns thistype
			local integer i = 2
		   	local thistype this = thistype.allocate()
			set .caster = caster
			set .number = IMinBJ(29,number)
			set .radius = radius
			set .aSpeed = aSpeed
			set .cAngle = angle
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			set URou[1] = null
		   	loop
		   		exitwhen i > IMinBJ(29,number)
	   			set URou[i] = CreateUnit(GetOwningPlayer(caster), utype , YDWECoordinateX(GetUnitX(caster) + radius * (2 * i - 1 ) * CosBJ(angle)) , YDWECoordinateY(GetUnitY(caster) + radius * (2 * i - 1 ) * SinBJ(angle)) , angle + 90)
		   		set i = i +1
		   	endloop
			call TimerStart(.t,0.05,true,function thistype.roubangrotate)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			local integer i = 1
			call thistype.flush(.t)
			set .caster = null
			loop
				exitwhen i > .number
				if (.URou[i] != null) then
					call RemoveUnit(.URou[i])
					set .URou[i] = null
				endif
				set i = i +1
			endloop
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .aSpeed = 0.
			set .cAngle = 0.
			set .radius = 0.
			set .number = 0
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    多条命
	*/
    function interface AfterLessLife takes unit u returns nothing

	struct MultiLife

		private unit caster
		private integer times
		private integer current
		private timer t
		private texttag ttHint
		private AfterLessLife al

		static method flashLoc takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			if (times < 2) then
				call UnitRemoveAbility(.caster,'A0KH')
			endif
			if (.current >= .times) then
				return
			endif
			call SetTextTagPosUnitBJ(.ttHint,.caster,20)
			if not (IsUnitAliveBJ(.caster)) then
				set .current = .current + 1
				call SetUnitLifePercentBJ(.caster,100)
				call SetTextTagTextBJ(.ttHint,I2S(.current) + "/" + I2S(.times) +"次生命",20)
				if (.current >= .times) then
					call UnitRemoveAbility(.caster,'A0KH')
				endif
				if (.al != 0) then
					call .al.execute(.caster)
				endif
			endif
		endmethod

		method getTimes takes nothing returns integer
			return .current
		endmethod

		method setAL takes AfterLessLife al returns nothing
			set .al = al
		endmethod

		static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method create takes unit caster,integer times returns thistype

		   	local thistype this
		   	set this = thistype.allocate()
			set .caster = caster
			set .times = times
			set .al = 0
			set .ttHint = CreateTextTagUnitBJ( "1/" + I2S(times) +"次生命", caster, 0, 20, 0, 100, 100, 0 )
			set .current = 1
			//加上复活技能
			call UnitAddAbility(caster,'A0KH')
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.05,true,function thistype.flashLoc)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			call UnitRemoveAbility(.caster,'A0KH')
			call DestroyTextTag(.ttHint)
			set .ttHint = null
			set .caster = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    几段无敌
	*/
	struct SuperShield

		private unit caster
		private integer times
		private integer current
		private timer t
		private boolean deathContinue

		static method flashLife takes nothing returns nothing

			local thistype this = thistype[GetExpiredTimer()]
			if (IsUnitAliveBJ(.caster)) then
				if (.current <= .times and GetUnitState(.caster,UNIT_STATE_LIFE) < (GetUnitState(.caster,UNIT_STATE_MAX_LIFE) * (1.0-((I2R(.current))/(I2R(.times + 1)))))) then
					call ImmuteDamageInterval(.caster,5)
					call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(.caster), GetUnitY(.caster) ))
		    		call CreateSpellTextTag(I2S(.current)+"/"+I2S(times)+"段无敌",.caster,100,0,0,4)
		    		call SetUnitLifePercentBJ(.caster,100.0*(1.0-((I2R(.current))/(I2R(.times + 1)))))
					call UnitRemoveBuffsBJ( bj_REMOVEBUFFS_ALL, .caster )
					set .current = .current + 1
				endif
			else
				if not(.deathContinue) then
					call .destroy()
				endif
			endif

		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit caster,integer times returns thistype

		   	local thistype this = thistype.allocate()
			set .caster = caster
			set .times = times
			set .current = 1
			set .deathContinue = false
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.5,true,function thistype.flashLife)
			return this
		endmethod


		method SetDeathContinue takes nothing returns nothing
			set .deathContinue = true
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .caster = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是一段觉醒,前面是觉醒能力值
	*/
	function IJ1 takes unit u,integer i1,integer i2 returns integer
		if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return i1
		else
			return i2
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是一段觉醒,前面是觉醒能力值
	*/
	function RJ1 takes unit u,real r1,real r2 returns real
		if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return r1
		else
			return r2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是二段觉醒,前面是觉醒能力值
	*/
	function IJ2 takes unit u,integer i1,integer i2 returns integer
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是二段觉醒,前面是觉醒能力值
	*/
	function RJ2 takes unit u,real r1,real r2 returns real
		if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return r1
		else
			return r2
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是三段觉醒,前面是觉醒能力值
	*/
	function IJ3 takes unit u,integer i1,integer i2 returns integer
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return i1
		else
			return i2
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否是三段觉醒,前面是觉醒能力值
	*/
	function RJ3 takes unit u,real r1,real r2 returns real
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			return r1
		else
			return r2
		endif
	endfunction


//---------------------------------------------------------------------------------------------------

	/*
	    获取基础力量英雄技能伤害
	*/
	function GetDamageStr takes unit u returns real
		local unit uH = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		local real damage = (( GetHeroStr(uH, true) * 1.80 ) + ( GetHeroAgi(uH, true) ) +  ( GetHeroInt(uH, true) * 1.20 )) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH = null
		return damage
	endfunction

	/*
	    获取辰寂技能伤害
	*/
	function GetDamageChenji takes unit u returns real
		local unit uH = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		local real damage =  (GetHeroStr(uH, true)) * 2 * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH = null
		return damage
	endfunction

	/*
	    获取基础敏捷英雄技能伤害
	*/
	function GetDamageAgi takes unit u returns real
		local unit uH = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		local real damage = (( GetHeroStr(uH, true) ) + ( GetHeroAgi(uH, true) *1.80 ) +  ( GetHeroInt(uH, true) * 1.20 )) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH = null
		return damage
	endfunction

	/*
	    获取基础智力英雄技能伤害
	*/
	function GetDamageInt takes unit u returns real
		local unit uH = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		local real damage = (( GetHeroStr(uH, true) ) + ( GetHeroAgi(uH, true) ) +  ( GetHeroInt(uH, true) * 2.0 )) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH = null
		return damage
	endfunction

	/*
	    获取基础英雄技能伤害
	*/
	function GetDamageBase takes unit u returns real
		local unit uH = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		local real damage = (( GetHeroStr(uH, true) *1.30) + ( GetHeroAgi(uH, true) * 1.30) +  ( GetHeroInt(uH, true) * 1.3 )) * SquareRoot(GetHeroLevel(uH)) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(uH))]
		set uH = null
		return damage
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    判断是否可以使用第2个技能了
	*/
	function IsSecondSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R006',GetOwningPlayer(hero)) == 1
	endfunction

	/*
	    判断是否可以使用第3个技能了
	*/
	function IsThirdSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R007',GetOwningPlayer(hero)) == 1
	endfunction

	/*
	    判断是否可以使用第4个技能了
	*/
	function IsFourthSpellOK takes unit hero returns boolean
		return GetPlayerTechCountSimple('R008',GetOwningPlayer(hero)) == 1
	endfunction

	/*
	    判断是否可以使用第5个技能了
	*/
	function IsFifthSpellOK takes unit hero returns boolean
		return (GetPlayerTechCountSimple('R009',GetOwningPlayer(hero)) == 1) and (GetPlayerTechCountSimple('R00A',GetOwningPlayer(hero)) == 1) and (GetPlayerTechCountSimple('R00B',GetOwningPlayer(hero)) == 1)
	endfunction
//---------------------------------------------------------------------------------------------------


endlibrary


#endif
