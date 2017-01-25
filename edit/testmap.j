//! import "item.j"

struct testmain
	static method onInit takes nothing returns nothing
		local trigger t = CreateTrigger()
		call TriggerRegisterPlayerEventEndCinematic(t,Player(0))
		call TriggerAddAction(t,function test)
		set t = null
	endmethod		
endstruct
