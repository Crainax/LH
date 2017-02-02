library_once Boss initializer InitBoss  
	
	globals
		/*
		    需要注释的变量
		*/
		rect gg_rct________1
		/*
		    需要防卡监测的单位
		*/
		unit uFangKa

	endglobals

	function CycleFangKa takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local location point
		if (IsUnitAliveBJ(uFangKa)) then
			set uFangKa = null
		else
		    set point = GetRandomLocInRect(gg_rct________1)
		    call IssuePointOrderLoc( uFangKa, "attack", point )
		    call RemoveLocation( point )
		endif
		set t = null
	endfunction

	function StartFangKa takes unit fangka returns nothing
		local timer t =CreateTimer()
		set uFangKa = fangka
		call TimerStart(t,5,true,function CycleFangKa)
		set t = null
	endfunction

	private function InitBoss takes nothing returns nothing
		// body...
	endfunction
endlibrary