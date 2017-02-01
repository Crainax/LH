	

	globals
		timer TiMissile
	endglobals


	function startMissile takes nothing returns nothing
		call Missile.create(udg_Unit,'hpea',"Units\\Demon\\Infernal\\InfernalBirth.mdl",300,1800,3,1,100)
	endfunction

	function refreshMissile takes nothing returns nothing
		local real interval
		local timer t = GetExpiredTimer()
		if(IsUnitAliveBJ(udg_Unit) == true) then
			set interval = (GetUnitState(udg_Unit,UNIT_STATE_LIFE) / GetUnitState(udg_Unit,UNIT_STATE_MAX_LIFE) * 0.3) + 0.3
			call BJDebugMsg(R2S(interval))
			call TimerStart(TiMissile,interval,true,function startMissile)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null
	endfunction

	function starthaha takes nothing returns nothing
		local timer refresh = CreateTimer()
		set TiMissile = CreateTimer()
		//开始疯狂导弹
		call TimerStart(TiMissile,0.6,true,function startMissile)
		
		call TimerStart(refresh,3,true,function refreshMissile)
		set refresh = null
	endfunction