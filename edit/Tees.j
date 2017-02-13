library_once Tees initializer InitTees  
	
	private function functionA takes nothing returns nothing
		call BJDebugMsg("A")
	endfunction

	private function functionB takes nothing returns nothing
		call BJDebugMsg("B")
	endfunction

	private function InitTees takes nothing returns nothing
		local trigger t = CreateTrigger()

    	call TriggerRegisterPlayerEventEndCinematic( t, Player(0) )
    	call TriggerAddAction(t,function functionA)
    	call TriggerAddAction(t,function functionB)
		set t = null
	endfunction


endlibrary