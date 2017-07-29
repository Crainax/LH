
//! import "LHBase.j"
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
	    然后这是连结2个人
	*/
	struct Connect 
		
		private unit unit1
		private unit unit2
		private lightning l
		private timer t

		static method connect takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			call MoveLightning( .l ,true, GetUnitX(.unit1),GetUnitY(.unit1),GetUnitX(.unit2),GetUnitY(.unit2) )
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
			set .l = AddLightning( lightningType, true , GetUnitX(unit1),GetUnitY(unit1),GetUnitX(unit2),GetUnitY(unit2))
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.05,true,function thistype.connect)
			return this
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
				    if(IsEnemyM(l_unit,.caster) and (GetUnitMoveSpeed(l_unit) > 0) and (not(.forbitHero and IsUnitType(l_unit,UNIT_TYPE_HERO))) and GetUnitAbilityLevel(l_unit,'A0IH') < 1)then
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
				call .destroy()
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
			return this
		endmethod

		method SetForbitHero takes nothing returns nothing
			set .forbitHero = true
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
			    if(IsEnemyM(l_unit,.caster) == true) then
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

		static method create takes unit caster,integer preview,string effx,real radius,real range,real interval1,real interval2,real damage returns thistype
		   	local thistype this = thistype.allocate()
		   	local real Rangel = GetRandomReal(-180,180)
		   	local real Rradius= GetRandomReal(0,range)
		   	set .x = GetUnitX(caster) + Rradius * CosBJ(Rangel)
		   	set .y = GetUnitY(caster) + Rradius * SinBJ(Rangel)
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
	struct MultiLife
		
		private unit caster
		private integer times
		private integer current
		private timer t
		private texttag ttHint
		
		static method flashLoc takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
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
			endif
		endmethod

		method getTimes takes nothing returns integer
			return .current
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
				call .destroy()
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

			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.5,true,function thistype.flashLife)
			return this
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
	    获取基础智力英雄技能伤害
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

 