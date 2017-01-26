globals
//globals from YDWETimerPattern:
constant boolean LIBRARY_YDWETimerPattern=true
boolexpr YDWETimerPattern___Bexpr= null
rect YDWETimerPattern___Area= null
integer YDWETimerPattern___tmp_data
location YDWETimerPattern___yd_loc= Location(0.0, 0.0)
//endglobals from YDWETimerPattern
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem___CurrentTime
integer YDWETimerSystem___CurrentIndex
integer YDWETimerSystem___TaskListHead
integer YDWETimerSystem___TaskListIdleHead
integer YDWETimerSystem___TaskListIdleMax
integer array YDWETimerSystem___TaskListIdle
integer array YDWETimerSystem___TaskListNext
integer array YDWETimerSystem___TaskListTime
trigger array YDWETimerSystem___TaskListProc
trigger YDWETimerSystem___fnRemoveUnit
trigger YDWETimerSystem___fnDestroyTimer
trigger YDWETimerSystem___fnRemoveItem
trigger YDWETimerSystem___fnDestroyEffect
trigger YDWETimerSystem___fnDestroyLightning
trigger YDWETimerSystem___fnRunTrigger
timer YDWETimerSystem___Timer
integer YDWETimerSystem___TimerHandle

integer YDWETimerSystem___TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
//globals from MonsterSpell:
constant boolean LIBRARY_MonsterSpell=true
trigger TSpellQianfa
trigger TSpellDart
		
constant real DRAT_JUNENG= 15000000
constant real DRAT_XIANLIAN= 10000000
integer level_juneng= 0
//endglobals from MonsterSpell

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library YDWETimerPattern:
//***************************************************
//* �� - Matrix ����ģ�庯��
//*--------------------
//* ���ߣ�Warft_TigerCN  �����Ż���Fetrix_sai
//***************************************************



    function YDWETimerPatternJumpAttack takes unit u,real face,real dis,real lasttime,real timeout,real high,real damage,string part,string dsfx returns nothing
     
    endfunction

    // Moon Priestess Arrow PUI
    function YDWETimerPatternMoonPriestessArrow takes unit u,real face,real dis,real lasttime,real timeout,integer lv,integer aid,integer uid,string order,string part,string dsfx returns nothing
    
    endfunction

    // Rush Slide PUI
    function YDWETimerPatternRushSlide takes unit u,real face,real dis,real lasttime,real timeout,real damage,real radius,boolean killtrees,boolean cycle,boolean path,string part,string gsfx,string wsfx returns nothing
       
    endfunction


    
    function DIYRushSlide takes unit u,real face,real dis,real lasttime,real timeout,real damage,real radius,boolean killtrees,boolean cycle,boolean path,string part,string gsfx,string wsfx returns nothing
    endfunction



//library YDWETimerPattern ends
//library YDWETimerSystem:


function YDWETimerSystemNewTask takes real time,trigger proc returns integer
    return 1
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
    return YDWETimerSystem___CurrentIndex
endfunction


function YDWETimerRemoveUnit takes real time,unit u returns nothing

endfunction

function YDWETimerDestroyTimer takes real time,timer t returns nothing
endfunction


function YDWETimerRemoveItem takes real time,item it returns nothing
endfunction


function YDWETimerDestroyEffect takes real time,effect e returns nothing
endfunction


function YDWETimerDestroyLightning takes real time,lightning lt returns nothing
endfunction


function YDWETimerRunTrigger takes real time,trigger trg returns nothing
endfunction
function YDWETimerDestroyTextTag takes real time,texttag tt returns nothing
endfunction

function YDWETimerSystemGetRunIndex takes nothing returns integer
    return YDWETimerSystem___TimerSystem_RunIndex
endfunction

function YDWETimerRunPeriodicTrigger takes real timeout,trigger trg,boolean b,integer times,integer data returns nothing
        
endfunction

function YDWETimerRunPeriodicTriggerOver takes trigger trg,integer data returns nothing
endfunction

//library YDWETimerSystem ends
//library MonsterSpell:
	

//---------------------------------------------------------------------------------------------------
	
	
 function MonsterSpell___TSpellQianFaEnemyFilter takes nothing returns boolean
	    return ( ( ( IsUnitAliveBJ(GetFilterUnit()) == true ) and ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) == true ) ) )
	endfunction

 function MonsterSpell___TSpellQianFaAct takes nothing returns nothing
     local integer i
     local group ydl_group
     local unit ydl_unit
     local real x
     local real y

	    set x=GetUnitX(GetAttackedUnitBJ())
	    set y=GetUnitY(GetAttackedUnitBJ())
	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 333.00 ))
	    //特效
	    set i=1
	    loop
	        exitwhen i > 8
	        call UnitApplyTimedLifeBJ(5.00, 'BHwe', CreateUnit(GetOwningPlayer(GetAttacker()), 'h00J', x, y, 45 * I2R(i)))
	        set i=i + 1
	    endloop

	    //巨能
	    if ( ( GetUnitTypeId(GetAttacker()) == 'N00Q' ) ) then
			    call GroupEnumUnitsInRange(ydl_group, x, y, 900, Condition(function MonsterSpell___TSpellQianFaEnemyFilter))
			    loop
			        set ydl_unit=FirstOfGroup(ydl_group)
			        exitwhen ydl_unit == null
			        call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成75%生命的伤害
		            call UnitDamageTarget(GetAttacker(), GetEnumUnit(), ( 0.75 * GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
			    endloop
		 	elseif ( ( GetUnitTypeId(GetAttacker()) == 'Nngs' ) or ( GetUnitTypeId(GetAttacker()) == 'Nbrn' ) ) then
		//仙炼或生克
				call GroupEnumUnitsInRange(ydl_group, x, y, 900, Condition(function MonsterSpell___TSpellQianFaEnemyFilter))
				loop
				    set ydl_unit=FirstOfGroup(ydl_group)
				    exitwhen ydl_unit == null
				    call GroupRemoveUnit(ydl_group, ydl_unit)
			        //造成50%生命的伤害
			        call UnitDamageTarget(GetAttacker(), GetEnumUnit(), ( 0.5 * GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) ), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS)
				endloop

	    endif

	    //文字
	    call CreateTextTagUnitBJ("虚--千罚之光", GetAttacker(), 0, 20.00, 100.00, 100.00, 0.00, 0)
	    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90.00)
	    call YDWETimerDestroyTextTag(2 , GetLastCreatedTextTag())
	    call PolledWait(5.00)
	    call EnableTrigger(GetTriggeringTrigger())
	    set ydl_group=null
	    set ydl_unit=null
	endfunction

 function MonsterSpell___TSpellQianFaCon takes nothing returns boolean
	    return ( ( ( GetUnitTypeId(GetAttacker()) == 'Nngs' ) or ( GetUnitTypeId(GetAttacker()) == 'Nbrn' ) or ( GetUnitTypeId(GetAttacker()) == 'N00Q' ) ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 333.00 ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------

	
 function MonsterSpell___TSpellDratAct takes nothing returns nothing
  local integer i= - 1
     local real x1
     local real y1
     local real x2
     local real y2
     local unit drat
     local real facing

	    set x1=GetUnitX(GetAttackedUnitBJ())
	    set y1=GetUnitY(GetAttackedUnitBJ())
	    set x2=GetUnitX(GetAttacker())
	    set y2=GetUnitY(GetAttacker())
	    set facing=Atan2BJ(y2 - y1, x2 - x1)

	    call DisableTrigger(GetTriggeringTrigger())
	    call SetUnitManaBJ(GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 333.00 ))

	    //巨能
	    if ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q' ) ) then
	    	loop
	    		exitwhen i > 1
	    		set drat=CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'hs00', x1, y1, facing)
	        	call UnitApplyTimedLifeBJ(10.00, 'BHwe', drat)
	        	    call DIYRushSlide(drat , facing + i * 30 , 20000.00 , 10.00 , 0.05 , DRAT_JUNENG * ( 1 + 0.2 * I2R(level_juneng) ) , 60. , false , true , false , "origin" , "" , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
	    		set i=i + 1
	    	endloop
		 	elseif ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn' ) ) then
		//仙炼或生克
	    		set drat=CreateUnit(GetOwningPlayer(GetAttackedUnitBJ()), 'hs00', x1, y1, facing)
	        	call UnitApplyTimedLifeBJ(10.00, 'BHwe', drat)
	        	    call DIYRushSlide(drat , facing , 20000.00 , 10.00 , 0.05 , DRAT_XIANLIAN , 60. , false , true , false , "origin" , "" , "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
	    endif

	    //文字
	    call CreateTextTagUnitBJ("虚--弹射飞镖", GetAttackedUnitBJ(), 0, 20.00, 0, 100.00, 100.00, 0)
	    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90.00)
	    call YDWETimerDestroyTextTag(2 , GetLastCreatedTextTag())
	    call PolledWait(10.00)
	    call EnableTrigger(GetTriggeringTrigger())

	    set drat=null
	endfunction

 function MonsterSpell___TSpellDratCon takes nothing returns boolean
	    return ( ( ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nngs' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'Nbrn' ) or ( GetUnitTypeId(GetAttackedUnitBJ()) == 'N00Q' ) ) and ( IsUnitIllusionBJ(GetAttackedUnitBJ()) != true ) and ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 333.00 ) and ( GetRandomInt(1, 10) == 1 ) )
	endfunction
//---------------------------------------------------------------------------------------------------
 function MonsterSpell___InitMonsterSpell takes nothing returns nothing
		//巨能,仙炼还有生克的千罚之光
	    set TSpellQianfa=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellQianfa, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellQianfa, Condition(function MonsterSpell___TSpellQianFaCon))
	    call TriggerAddAction(TSpellQianfa, function MonsterSpell___TSpellQianFaAct)

	    //巨能,仙炼还有生克的手里剑
	    set TSpellDart=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TSpellDart, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellDart, Condition(function MonsterSpell___TSpellDratCon))
	    call TriggerAddAction(TSpellDart, function MonsterSpell___TSpellDratAct)
	endfunction

//library MonsterSpell ends


// BEGIN IMPORT OF MonsterSpell.j

// BEGIN IMPORT OF YDWETimerSystem.j
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================


// END IMPORT OF YDWETimerSystem.j
// BEGIN IMPORT OF YDWETimerPattern.j


// END IMPORT OF YDWETimerPattern.j


// END IMPORT OF MonsterSpell.j
function main takes nothing returns nothing

call ExecuteFunc("MonsterSpell___InitMonsterSpell")

endfunction



//Struct method generated initializers/callers:

