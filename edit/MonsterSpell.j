
library_once MonsterSpell initializer InitMonsterSpell  requires YDWETimerSystem
	
	globals
		trigger TSpellQianfa
		trigger TSpellDart
		/*
		    手里剑技能伤害
		*/
		constant real DRAT_JUNENG = 20000000
		constant real DRAT_XIANLIAN = 10000000
		integer level_juneng = 1
	endglobals


/*
    杀死老牛回5%血.
*/
	function FocusCow takes unit selected returns nothing
		if(GetUnitAbilityLevel(selected,'A09W') >= 1)then
			call SetUnitState(selected,UNIT_STATE_LIFE,GetUnitState(selected,UNIT_STATE_LIFE)+GetUnitState(selected,UNIT_STATE_MAX_LIFE)*0.05)
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	
	/*
	    宝石区怪物技能:千罚之光
	*/
	private function TSpellQianFaEnemyFilter takes nothing returns boolean
	    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) == true)))
	endfunction

	private function TSpellQianFaAct takes nothing returns nothing
	    local integer i
	    local group ydl_group
	    local unit ydl_unit
	    local real x
	    local real y

	    set x = GetUnitX(GetAttackedUnitBJ())
	    set y = GetUnitY(GetAttackedUnitBJ())
	    call DisableTrigger( GetTriggeringTrigger() )
	    call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 333.00 ) )
	    //特效
	    set i = 1
	    loop
	        exitwhen i > 8
	        call UnitApplyTimedLifeBJ( 5.00, 'BHwe', CreateUnit(GetOwningPlayer(GetAttacker()),'h00J',x,y,45 * I2R(i)))
	        set i = i + 1
	    endloop

	    //巨能
	    if ((GetUnitTypeId(GetAttacker()) == 'N00Q')) then
	    		set ydl_group = CreateGroup()
			    call GroupEnumUnitsInRange(ydl_group, x, y, 900, function TSpellQianFaEnemyFilter)
			    loop
			        set ydl_unit = FirstOfGroup(ydl_group)
			        exitwhen ydl_unit == null
			        call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成75%生命的伤害
		            call UnitDamageTarget( GetAttacker(), ydl_unit, ( 0.5 * GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			    endloop
		 	elseif ((GetUnitTypeId(GetAttacker()) == 'Nngs') or (GetUnitTypeId(GetAttacker()) == 'Nbrn')) then
		//仙炼或生克
	    		set ydl_group = CreateGroup()
				call GroupEnumUnitsInRange(ydl_group, x, y, 900, function TSpellQianFaEnemyFilter)
				loop
				    set ydl_unit = FirstOfGroup(ydl_group)
				    exitwhen ydl_unit == null
				    call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成50%生命的伤害
			        call UnitDamageTarget( GetAttacker(), ydl_unit, ( 0.3 * GetUnitStateSwap(UNIT_STATE_LIFE, ydl_unit) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
				endloop

	    endif

	    //文字
	    call CreateTextTagUnitBJ( "虚--千罚之光", GetAttacker(), 0, 20.00, 100.00, 100.00, 0.00, 0 )
	    call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
	    call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
	    call PolledWait(5.00)
	    call EnableTrigger( GetTriggeringTrigger() )

	    call DestroyGroup(ydl_group)
	    set ydl_group = null
	    set ydl_unit = null
	endfunction

	private function TSpellQianFaCon takes nothing returns boolean
	    return (((GetUnitTypeId(GetAttacker()) == 'Nngs') or (GetUnitTypeId(GetAttacker()) == 'Nbrn') or (GetUnitTypeId(GetAttacker()) == 'N00Q')) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 333.00) and (GetRandomInt(1, 10) == 1))
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------

	/*
	    宝石区技能,弹射飞镖
	*/
	private function TSpellDratAct takes nothing returns nothing
		local integer i = -1
	    local real x1
	    local real y1
	    local real x2
	    local real y2
	    local unit drat
	    local real facing

	    set x1 = GetUnitX(GetAttackedUnitBJ())
	    set y1 = GetUnitY(GetAttackedUnitBJ())
	    set x2 = GetUnitX(GetAttacker())
	    set y2 = GetUnitY(GetAttacker())
	    set facing = Atan2BJ(y2-y1,x2-x1)

	    call DisableTrigger( GetTriggeringTrigger() )
	    call SetUnitManaBJ( GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 333.00 ) )

	    //巨能
	    if ((GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q')) then
	    	loop
	    		exitwhen i > 1
	    		set drat = CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()),'hs00',x1,y1,facing)
	        	call UnitApplyTimedLifeBJ( 10.00, 'BHwe', drat)
	        	    call DIYRushSlide( drat, facing + i * 30 , 20000.00, 10.00, 0.05, DRAT_JUNENG * (1+0.2*I2R(level_juneng)), 60., false, true, false, "origin", "", "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl" )
	    		set i = i +1
	    	endloop
		 	elseif ((GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs') or (GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn')) then
		//仙炼或生克
	    		set drat = CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()),'hs00',x1,y1,facing)
	        	call UnitApplyTimedLifeBJ( 10.00, 'BHwe', drat)
	        	    call DIYRushSlide( drat, facing  , 20000.00, 10.00, 0.05, DRAT_XIANLIAN, 60., false, true, false, "origin", "", "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl" )
	    endif

	    //文字
	    call CreateTextTagUnitBJ( "虚--弹射飞镖", GetAttackedUnitBJ(), 0, 20.00, 0, 100.00, 100.00, 0 )
	    call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
	    call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
	    call PolledWait(10.00)
	    call EnableTrigger( GetTriggeringTrigger() )

	    set drat = null
	endfunction

	private function TSpellDratCon takes nothing returns boolean
	    return (((GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs') or (GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn') or (GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q')) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 333.00) and (GetRandomInt(1, 10) == 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitMonsterSpell takes nothing returns nothing
		//巨能,仙炼还有生克的千罚之光
	    set TSpellQianfa = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellQianfa, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellQianfa, Condition(function TSpellQianFaCon))
	    call TriggerAddAction(TSpellQianfa, function TSpellQianFaAct)
	    call DisableTrigger(TSpellQianfa)

	    //巨能,仙炼还有生克的手里剑
	    set TSpellDart = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellDart, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellDart, Condition(function TSpellDratCon))
	    call TriggerAddAction(TSpellDart, function TSpellDratAct)
	    call DisableTrigger(TSpellDart)
	endfunction
endlibrary

