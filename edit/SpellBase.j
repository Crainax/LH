
//! import "LHBase.j"
library_once SpellBase requires LHBase

	globals
		hashtable spellTable = InitHashtable()
		key kUImmuteDamage
	endglobals

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
				    if(IsEnemy(l_unit,.caster) and not(.forbitHero and IsUnitType(l_unit,UNIT_TYPE_HERO)))then
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
			    	call UnitDamageTarget( .caster, l_unit, .damage, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
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
	    使单位免疫某次伤害。
	*/
	private function ImmuteDamageTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,kUImmuteDamage)
		call PauseTimer(t)
		call DestroyTimer(t)
		call FlushChildHashtable(spellTable,id)
		call SetUnitInvulnerable(u,false)
		set u = null
		set t = null 
	endfunction

	function ImmuteDamageInterval takes unit u,real time returns nothing
		local timer t = CreateTimer()
		call SetUnitInvulnerable(u,true)
		call SaveUnitHandle(spellTable,GetHandleId(t),kUImmuteDamage,u)
		call TimerStart(t,time,false,function ImmuteDamageTimer)
		set t = null
	endfunction

	function ImmuteDamage takes unit u returns nothing
		call ImmuteDamageInterval(u,0)
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

 