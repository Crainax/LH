globals
//globals from Purgatory:
constant boolean LIBRARY_Purgatory=true
		// body...
//endglobals from Purgatory

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library Purgatory:
	

//---------------------------------------------------------------------------------------------------
	
 function TPurgatoryItemCon takes nothing returns boolean
	    return ( ( IsUnitIllusionBJ(GetDyingUnit()) != true ) and ( ( GetUnitTypeId(GetDyingUnit()) == 'nfra' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nwld' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nwzd' ) or ( GetUnitTypeId(GetDyingUnit()) == 'ndqp' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsc2' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsqo' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsoc' ) or ( GetUnitTypeId(GetDyingUnit()) == 'npfl' ) or ( GetUnitTypeId(GetDyingUnit()) == 'nsrh' ) ) )
	endfunction

 function TPurgatoryItemAct takes nothing returns nothing
  local integer dyingUnitId= GetUnitTypeId(GetDyingUnit())

//textmacro instance: CreatePurgatoryItem("nfra","IB00")
		if ( dyingUnitId == 'nfra' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB00', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nfra","IB00")
//textmacro instance: CreatePurgatoryItem("nwld","IB01")
		if ( dyingUnitId == 'nwld' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB01', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nwld","IB01")
//textmacro instance: CreatePurgatoryItem("nwzd","IB02")
		if ( dyingUnitId == 'nwzd' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB02', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nwzd","IB02")
//textmacro instance: CreatePurgatoryItem("ndqp","IB03")
		if ( dyingUnitId == 'ndqp' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB03', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("ndqp","IB03")
//textmacro instance: CreatePurgatoryItem("nsc2","IB04")
		if ( dyingUnitId == 'nsc2' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB04', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsc2","IB04")
//textmacro instance: CreatePurgatoryItem("nsqo","IB05")
		if ( dyingUnitId == 'nsqo' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB05', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsqo","IB05")
//textmacro instance: CreatePurgatoryItem("nsoc","IB06")
		if ( dyingUnitId == 'nsoc' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB06', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsoc","IB06")
//textmacro instance: CreatePurgatoryItem("npfl","IB07")
		if ( dyingUnitId == 'npfl' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB07', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("npfl","IB07")
//textmacro instance: CreatePurgatoryItem("nsrh","IB08")
		if ( dyingUnitId == 'nsrh' ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit())))
			call CreateItem('IB08', GetUnitX(GetDyingUnit()), GetUnitY(GetDyingUnit()))
			return
		endif
//end of: CreatePurgatoryItem("nsrh","IB08")
	endfunction
//---------------------------------------------------------------------------------------------------


 function Purgatory__InitPurgatory takes nothing returns nothing
  local trigger t= CreateTrigger()

	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	    call TriggerAddCondition(t, Condition(function TPurgatoryItemCon))
	    call TriggerAddAction(t, function TPurgatoryItemAct)

	endfunction


//library Purgatory ends


// BEGIN IMPORT OF Purgatory.j



// END IMPORT OF Purgatory.j
function main takes nothing returns nothing

call ExecuteFunc("Purgatory__InitPurgatory")

endfunction



//Struct method generated initializers/callers:

