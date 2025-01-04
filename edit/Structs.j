#ifndef StructsIncluded
#define StructsIncluded

#include  "edit/LHBase.j"


library_once Structs requires LHBase

//---------------------------------------------------------------------------------------------------
	/*
	    文字绑定
	*/
	struct TextTagBind
		private unit caster
		private texttag tt
		private real xOff
		private real yOff
		private real size
		private string content
		private timer t

		static method flash takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
			call SetTextTagPos(.tt,YDWECoordinateX( GetUnitX(.caster) - .xOff) , YDWECoordinateY( GetUnitY(.caster) - .yOff ),20)
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("TextTagBind", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("TextTagBind", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("TextTagBind", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit caster,real xOff,real yOff returns thistype
		   	local thistype this = thistype.allocate()
		   	local location point = Location( YDWECoordinateX( GetUnitX(caster) - xOff) , YDWECoordinateY( GetUnitY(caster) - yOff ))
			set .xOff = xOff
			set .yOff = yOff
			set .caster = caster
			set .size = 20.
			set .tt = CreateTextTagLocBJ( "", point , 0, 20.00, 0, 100, 100, 0 )
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,0.05,true,function thistype.flash)
			call RemoveLocation(point)
			set point = null
			return this
		endmethod

		method setSize takes real size returns nothing
			set .size = size
			call SetTextTagTextBJ(.tt,.content,size)
		endmethod

		method setContent takes string s returns nothing
			set .content = s
			call SetTextTagTextBJ(.tt,s,.size)
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .caster = null
			call DestroyTextTag(.tt)
			set .tt = null
			set .xOff = 0.
			set .yOff = 0.
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    时限BUFF(玩家)加接口
	*/
    function interface AfterBuffTime takes player p returns nothing

	struct Buff

		private player p
		private AfterBuffTime ab
		private timer t

		static method timeout takes nothing returns nothing
			local thistype this = thistype[GetExpiredTimer()]
            call .ab.execute(.p)
            call .destroy()
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("TextTagBind", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("TextTagBind", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("TextTagBind", I2S(YDWEH2I(h)))
        endmethod

		static method create takes player p,real time,AfterBuffTime ab returns thistype
		   	local thistype this = thistype.allocate()
			set .p = p
			set .ab = ab
			set .t = CreateTimer()
			set thistype[.t] = integer(this)
			call TimerStart(.t,time,false,function thistype.timeout)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call thistype.flush(.t)
			set .p = null
			set .ab = 0
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod
	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    检测有人与否进入无敌
	*/
	struct JudgeInvu
		private unit u
		private timer t

		static method timeout takes nothing returns nothing
			local thistype this = LoadInteger(LHTable,GetHandleId(GetExpiredTimer()),1)
			local group g = null
			if (IsUnitAliveBJ(.u)) then
				set g = GetEnemyGroup(.u,GetUnitX(.u),GetUnitY(.u),900)
				if (GetUnitAbilityLevel(.u,'Avul') < 1 and CountUnitsInGroup(g) == 0) then
					call UnitAddAbility(.u,'Avul')
					call PauseUnit(.u,true)
					call SetUnitLifePercentBJ(.u,100)
				elseif (GetUnitAbilityLevel(.u,'Avul') >= 1 and CountUnitsInGroup(g) != 0) then
					call UnitRemoveAbility(.u,'Avul')
					call PauseUnit(.u,false)
				endif
				call DestroyGroup(g)
				set g = null
			else
            	call .destroy()
			endif
		endmethod

		static method create takes unit u,real time returns thistype
		   	local thistype this = thistype.allocate()
			set .u = u
			set .t = CreateTimer()
			call SaveInteger(LHTable,GetHandleId(.t),1,this)
			call TimerStart(.t,time,true,function thistype.timeout)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call FlushChildHashtable(LHTable,GetHandleId(.t))
			set .u = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod
	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    扔炸弹
	*/
	struct Boom

		private unit caster
		private timer t
		private real x
		private real y
		private real facing
		private real damage
		private real speed
		private real radius
		private string effx

		static method move takes nothing returns nothing
			local thistype this = LoadInteger(LHTable,GetHandleId(GetExpiredTimer()),1)

			if (GetDistance(GetUnitX(.caster),GetUnitY(.caster),.x,.y) > .speed) then
				call SetUnitX(.caster,GetUnitX(.caster)+ CosBJ(.facing) * .speed)
				call SetUnitY(.caster,GetUnitY(.caster)+ SinBJ(.facing) * .speed)
			else
				call DamageAreaMirror(udg_H[GetConvertedPlayerId(GetOwningPlayer(.caster))],.x,.y,.radius,.damage)
				call DestroyEffect(AddSpecialEffect(.effx, .x, .y ))
				call .destroy()
			endif
		endmethod

		static method create takes unit u,real x,real y,real facing,real damage,real speed,real radius,real inteval, string effx returns thistype
		   	local thistype this = thistype.allocate()
			set .caster = u
			set .x = x
			set .y = y
			set .facing = facing
			set .damage = damage
			set .speed = speed
			set .radius = radius
			set .effx = effx
			call SetUnitFacing(u,facing)
			set .t = CreateTimer()
			call SaveInteger(LHTable,GetHandleId(.t),1,this)
			call TimerStart(.t,inteval,true,function thistype.move)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			call FlushChildHashtable(LHTable,GetHandleId(.t))
			call RemoveUnit(.caster)
			set .caster = null
			set .x = 0.0
			set .y = 0.0
			set .facing = 0.0
			set .damage = 0.0
			set .speed = 0.0
			set .radius = 0.0
			set .effx = null
			call PauseTimer(.t)
			call DestroyTimer(.t)
			set .t = null
		endmethod

	endstruct
endlibrary
#endif


