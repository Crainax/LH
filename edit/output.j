globals
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
//endglobals from LHBase
//globals from Beast:
constant boolean LIBRARY_Beast=true
		
hashtable beastTable
//endglobals from Beast

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library LHBase:

	
 function IsXianSpell takes integer spell returns boolean
		return ( spell == 'Acht' ) or ( spell == 'A03A' ) or ( spell == 'A0BM' ) or ( spell == 'A07Z' ) or ( spell == 'A07T' ) or ( spell == 'A05Z' ) or ( spell == 'ACro' ) or ( spell == 'Acht' ) or ( spell == 'A07X' ) or ( spell == 'A05Y' ) or ( spell == 'AChv' ) or ( spell == 'A07V' ) or ( spell == 'Awrg' ) or ( spell == 'A05X' ) or ( spell == 'A07C' ) or ( spell == 'A07D' ) or ( spell == 'Awrh' ) or ( spell == 'A075' ) or ( spell == 'A06W' ) or ( spell == 'A06Y' ) or ( spell == 'A06Q' ) or ( spell == 'A07R' ) or ( spell == 'ACcl' ) or ( spell == 'AOhw' ) or ( spell == 'AIin' ) or ( spell == 'AIil' ) or ( spell == 'A07S' ) or ( spell == 'AChx' )
	endfunction

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitAliveBJ(u) == true and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster)) and GetUnitAbilityLevel(u, 'Avul') < 1 and GetUnitPointValue(u) != 123
    endfunction

    
    function CreateSpellTextTag takes string name,unit u,real red,real green,real blue,real time returns nothing

     local texttag t= CreateTextTagUnitBJ(name, u, 0, 20.00, red, green, blue, 0)
	    call SetTextTagVelocityBJ(t, 64, 90.00)
	    if time <= 0 then
	        set time=0.01
	    endif
	    call SetTextTagPermanent(t, false)
	    call SetTextTagLifespan(t, time)
	    call SetTextTagFadepoint(t, time)
    endfunction

    	
    function SimulateSpell takes unit caster,unit target,integer spellId,integer spellLevel,real lifeTime,string orderId,boolean isPoint,boolean isImmediate,boolean isTarget returns nothing
  local location point= GetUnitLoc(target)
     local unit u= CreateUnit(GetOwningPlayer(caster), 'h000', GetUnitX(target), GetUnitY(target), 0)
	    call UnitApplyTimedLifeBJ(5.00, 'BHwe', u)
        call UnitAddAbilityBJ(spellId, u)
        call SetUnitAbilityLevel(u, spellId, spellLevel)
        if ( isPoint ) then
	    	call IssuePointOrderLoc(u, orderId, point)
        elseif ( isImmediate ) then
	    	call IssueImmediateOrder(u, orderId)
	    elseif ( isTarget ) then
	    	call IssueTargetOrder(u, orderId, target)
        endif
	    call RemoveLocation(point)
	    set u=null
	    set point=null

    endfunction

    
 function BuyerFilter takes unit buyer returns boolean
		return ( GetUnitTypeId(buyer) != 'N018' )
	endfunction

//library LHBase ends
//library Beast:
	

//---------------------------------------------------------------------------------------------------
	

 function Beast__isOutOfRange takes integer i returns boolean
		return ( ( i > 255 ) or ( i < 0 ) )
	endfunction

 function Beast__GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i), 255)
	endfunction

 function Beast__DiscolorTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(beastTable, id, 1)
  local integer r= LoadInteger(beastTable, id, 2)
  local integer g= LoadInteger(beastTable, id, 3)
  local integer b= LoadInteger(beastTable, id, 4)
  local boolean dr= LoadBoolean(beastTable, id, 5)
  local boolean dg= LoadBoolean(beastTable, id, 6)
  local boolean db= LoadBoolean(beastTable, id, 7)
		if ( IsUnitAliveBJ(u) == true ) then


//textmacro instance: ChangeColor("r","2")
				
			if ( dr == true ) then
				set r=r + GetRandomInt(0, 40)
			else
				set r=r - GetRandomInt(0, 40)
			endif
			if ( Beast__isOutOfRange(r) ) then
				set r=(IMinBJ(IAbsBJ((r)), 255)) // INLINED!!
				call SaveBoolean(beastTable, GetHandleId(t), 2 + 3, not ( dr ))
			endif
			call SaveInteger(beastTable, GetHandleId(t), 2, r)
//end of: ChangeColor("r","2")
//textmacro instance: ChangeColor("g","3")
				
			if ( dg == true ) then
				set g=g + GetRandomInt(0, 40)
			else
				set g=g - GetRandomInt(0, 40)
			endif
			if ( Beast__isOutOfRange(g) ) then
				set g=(IMinBJ(IAbsBJ((g)), 255)) // INLINED!!
				call SaveBoolean(beastTable, GetHandleId(t), 3 + 3, not ( dg ))
			endif
			call SaveInteger(beastTable, GetHandleId(t), 3, g)
//end of: ChangeColor("g","3")
//textmacro instance: ChangeColor("b","4")
				
			if ( db == true ) then
				set b=b + GetRandomInt(0, 40)
			else
				set b=b - GetRandomInt(0, 40)
			endif
			if ( Beast__isOutOfRange(b) ) then
				set b=(IMinBJ(IAbsBJ((b)), 255)) // INLINED!!
				call SaveBoolean(beastTable, GetHandleId(t), 4 + 3, not ( db ))
			endif
			call SaveInteger(beastTable, GetHandleId(t), 4, b)
//end of: ChangeColor("b","4")
    		call SetUnitVertexColor(u, r, g, b, 255)

		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(beastTable, id)
		endif
		set t=null
		set u=null
	endfunction

 function Discolor takes unit u returns nothing
  local timer t= CreateTimer()
		call SaveUnitHandle(beastTable, GetHandleId(t), 1, u)
		call SaveInteger(beastTable, GetHandleId(t), 2, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), 3, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), 4, GetRandomInt(0, 254))
		call SaveBoolean(beastTable, GetHandleId(t), 5, true)
		call SaveBoolean(beastTable, GetHandleId(t), 6, true)
		call SaveBoolean(beastTable, GetHandleId(t), 7, true)

		call TimerStart(t, 0.1, true, function Beast__DiscolorTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------


 function Beast__InitBeast takes nothing returns nothing
		set beastTable=InitHashtable()
		call Discolor(CreateUnit(Player(0), 'hphx', 0, 0, 0))
		call Discolor(CreateUnit(Player(0), 'ufro', 0, 0, 0))
	endfunction

//library Beast ends


// BEGIN IMPORT OF Beast.j


// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j
// END IMPORT OF Beast.j
function main takes nothing returns nothing

call ExecuteFunc("Beast__InitBeast")

endfunction



//Struct method generated initializers/callers:

