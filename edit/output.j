globals
//globals from ItemBase:
constant boolean LIBRARY_ItemBase=true
unit array udg_H
//endglobals from ItemBase
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
//endglobals from LHBase

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library ItemBase:



	
 function ItemBase___UnitHasHumanInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'frhg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'mlst' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'nspi' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oli2' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'ofir' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'soul' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'sbok' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'arsc' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gldo' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gsou' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'envl' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rugt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'shdt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'crdt' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'pspd' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rump' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rump' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'shen' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'stpg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rde0' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oflg' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'frgd' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tbsm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tfar' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'drph' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'oven' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rej4' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'dtsb' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gobm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'gvsm' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'pgin' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'rej6' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tels' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'tbak'
	endfunction

	
 function ItemBase___TOnlyOneHumanAct takes nothing returns nothing
  local integer i= 1
  local integer xianCount= 0
		loop
			exitwhen i > 6
			if ( ItemBase___UnitHasHumanInSlot(GetTriggerUnit() , i) ) then
				set xianCount=xianCount + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( xianCount > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "【消息】你只能同时装备一个人器！")
		endif
	endfunction

 function ItemBase___TOnlyOneHumanCon takes nothing returns boolean
		return ( GetTriggerUnit() == udg_H[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] ) and ( GetItemType(GetManipulatedItem()) == ITEM_TYPE_MISCELLANEOUS ) and ( IsUnitIllusionBJ(GetTriggerUnit()) == FALSE )
	endfunction

 function ItemBase___InitItemBase takes nothing returns nothing

		//人器只能装备一个
  local trigger t= CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function ItemBase___TOnlyOneHumanCon))
		call TriggerAddAction(t, function ItemBase___TOnlyOneHumanAct)
	endfunction


//library ItemBase ends
//library LHBase:

	
 function IsXianSpell takes integer spell returns boolean
		return ( spell == 'Acht' ) or ( spell == 'A03A' ) or ( spell == 'A0BM' ) or ( spell == 'A07Z' ) or ( spell == 'A07T' ) or ( spell == 'A05Z' ) or ( spell == 'ACro' ) or ( spell == 'Acht' ) or ( spell == 'A07X' ) or ( spell == 'A05Y' ) or ( spell == 'AChv' ) or ( spell == 'A07V' ) or ( spell == 'Awrg' ) or ( spell == 'A05X' ) or ( spell == 'A07C' ) or ( spell == 'A07D' ) or ( spell == 'Awrh' ) or ( spell == 'A075' ) or ( spell == 'A06W' ) or ( spell == 'A06Y' ) or ( spell == 'A06Q' ) or ( spell == 'A07R' ) or ( spell == 'ACcl' ) or ( spell == 'AOhw' ) or ( spell == 'AIin' ) or ( spell == 'AIil' ) or ( spell == 'A07S' ) or ( spell == 'AChx' )
	endfunction

//library LHBase ends


// BEGIN IMPORT OF item.j

// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j
// END IMPORT OF item.j
function main takes nothing returns nothing

call ExecuteFunc("ItemBase___InitItemBase")

endfunction



//Struct method generated initializers/callers:

