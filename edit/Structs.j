//! import "LHBase.j"


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


endlibrary