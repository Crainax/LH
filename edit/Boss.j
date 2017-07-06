

//! import "LHBase.j"
//! import "SpellBase.j"
library_once Boss initializer InitBoss requires LHBase,SpellBase
	globals
		/*
		    哈希表
		*/
		hashtable bossTable
		private trigger TSpellZuo
		private trigger TSpellYou
		/*
		    导弹计时器
		*/
		private timer TiMissile

		//
		
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    生命联结
	*/

	private function LifeConnectTimer takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then

			endif
			set i = i +1
		endloop
	endfunction

	function StartLifeConnect takes nothing returns nothing
		if (udg_RENSHU < 2) then
			return
		endif
		set TLifeConnect = CreateTimer()
		call TimerStart(t,0.05,true,function LifeConnectTimer)
	endfunction
//---------------------------------------------------------------------------------------------------

	function CycleFangKa takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(bossTable,id,1)
		local real x2 = GetUnitX(u)
		local real y2 = GetUnitY(u)
		local real x1
		local real y1
		local real distance
		local real facing
		local integer count = 0
		local group l_group = CreateGroup()
		local unit l_unit
		if (IsUnitAliveBJ(u)) then
			call GroupEnumUnitsInRange(l_group, x2, y2, 900, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if((IsUnitAliveBJ(l_unit) == true) and (GetUnitAbilityLevel(l_unit,'Avul') < 1) and (GetUnitPointValue(l_unit) != 123) and (IsUnitEnemy(l_unit, Player(11)) == true) and (not(IsTerrainPathable(GetUnitX(l_unit), GetUnitY(l_unit), PATHING_TYPE_WALKABILITY)))) then
			    	set count = count +1
			    endif
			endloop
			if(count == 0) then
		    	set x1 = GetRectCenterX(gg_rct________1)
		    	set y1 = GetRectCenterY(gg_rct________1)
		    	set distance = SquareRoot((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
		    	if( distance > 600)then
			    	set facing = Atan2BJ(y1-y2,x1-x2)
			    	call SetUnitX(u,YDWECoordinateX(x2+CosBJ(facing)*40))
			    	call SetUnitY(u,YDWECoordinateY(y2+SinBJ(facing)*40))
		    	endif
			endif
		else
			call PauseTimer(t)
			call DestroyTimer(t)
	    	call FlushChildHashtable( bossTable, id )
		endif
		set t = null
		set u = null
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	endfunction
	/*
	    防卡BOSS
	*/
	function StartFangKa takes unit fangka returns nothing
		local timer t =CreateTimer()
	    call SaveUnitHandle( bossTable, GetHandleId(t), 1, fangka )
		call TimerStart(t,0.1,true,function CycleFangKa)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    左护法的一个技能,锁链
	*/
	function TSpellZuoCon takes nothing returns boolean
	    return ((IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	function TSpellZuoAct takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttackedUnitBJ(),GetAttacker(),'AB00',udg_Nandu_JJJ,5,"magicleash",false,false,true)
	    call CreateSpellTextTag("死亡枷锁！",gg_unit_Uear_0242,100,75,0,2)
	    call PolledWait(4.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    右护法的一个技能,导弹
	*/
	function TSpellYouCon takes nothing returns boolean
	    return ((IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	function TSpellYouAct takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttackedUnitBJ(),GetAttacker(),'ANc2',udg_Nandu_JJJ,5,"clusterrockets",true,false,false)
	    call CreateSpellTextTag("异界冰封！",gg_unit_Npld_0253,25,100,25,2)
	    call PolledWait(4.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    导弹
	*/
	function startMissile takes nothing returns nothing
		call Missile.create(gg_unit_Nkjx_0241,'hs01',"Units\\Demon\\Infernal\\InfernalBirth.mdl",300,1800,3,1,1000000000)
	endfunction

	function refreshMissile takes nothing returns nothing
		local real interval
		local timer t = GetExpiredTimer()
		if(IsUnitAliveBJ(gg_unit_Nkjx_0241) == true) then
			set interval = (GetUnitState(gg_unit_Nkjx_0241,UNIT_STATE_LIFE) / GetUnitState(gg_unit_Nkjx_0241,UNIT_STATE_MAX_LIFE) * 0.2) + 0.2
			call TimerStart(TiMissile,interval,true,function startMissile)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call PauseTimer(TiMissile)
			call DestroyTimer(TiMissile)
		endif
		set t = null
	endfunction

	function starthaha takes nothing returns nothing
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    冥王三巨头的技能初始化
	*/
	function InitMingwang takes nothing returns nothing
		local timer refresh = CreateTimer()
		/*
		    冥王的吸
		*/
        local Attract attract = Attract.create(gg_unit_Nkjx_0241,1800,0.05,10)
        call attract.start()

        //左右护法的技能
	    set TSpellZuo = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellZuo, gg_unit_Uear_0242, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellZuo, Condition(function TSpellZuoCon))
	    call TriggerAddAction(TSpellZuo, function TSpellZuoAct)

	    set TSpellYou = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellYou, gg_unit_Npld_0253, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellYou, Condition(function TSpellYouCon))
	    call TriggerAddAction(TSpellYou, function TSpellYouAct)

	    //冥刹的死亡导弹
		set TiMissile = CreateTimer()
		//开始疯狂导弹
		call TimerStart(TiMissile,0.4,true,function startMissile)
		call TimerStart(refresh,3,true,function refreshMissile)
		set refresh = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冥王三巨头的技能善后
	*/
	function DestroyMingwang takes nothing returns nothing
		// body...
	endfunction
//---------------------------------------------------------------------------------------------------

	function InitSaisilier takes unit u returns nothing
        local Attract attract = Attract.create(u,1800,0.05,14)
        call attract.start()
	endfunction

	
//---------------------------------------------------------------------------------------------------

	private function InitBoss takes nothing returns nothing
		// body...
		set bossTable = InitHashtable()
	endfunction
endlibrary