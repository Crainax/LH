globals
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
//endglobals from LHBase
//globals from YDWESetGuard:
constant boolean LIBRARY_YDWESetGuard=true
//endglobals from YDWESetGuard
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger array YDWETriggerEvent___DamageEventQueue
integer YDWETriggerEvent___DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent___MoveItemEventTrigger= null
trigger array YDWETriggerEvent___MoveItemEventQueue
integer YDWETriggerEvent___MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from Test:
constant boolean LIBRARY_Test=true
		
		//主基地的区域
rect gg_rct________1
		//难度等级，最高7
integer udg_Nandu_JJJ
		//冥王
unit gg_unit_Nkjx_0241
        //左
unit gg_unit_Uear_0242
        //右
unit gg_unit_Npld_0253
        //英雄
unit array udg_H
//endglobals from Test
//globals from Beast:
constant boolean LIBRARY_Beast=true

hashtable beastTable
		
constant integer Beast___kU=10
constant integer Beast___kr=12
constant integer Beast___kg=14
constant integer Beast___kb=16
constant integer Beast___ksr=18
constant integer Beast___ksg=20
constant integer Beast___ksb=22
constant integer Beast___kBeastItem=24

		
unit array Unit_Beast

constant integer DAMAGE_BEAST_00= 1
constant integer DAMAGE_BEAST_01= 1
constant integer DAMAGE_BEAST_02= 1
constant integer DAMAGE_BEAST_03= 1
constant integer DAMAGE_BEAST_04= 1
constant integer DAMAGE_BEAST_05= 1
constant integer DAMAGE_BEAST_06= 1
constant integer DAMAGE_BEAST_07= 1
constant integer DAMAGE_BEAST_08= 1
constant integer DAMAGE_BEAST_09= 1
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
//library YDWESetGuard:
function YDWESetGuard__IsUnitIdle takes unit u returns boolean
    return true
endfunction

function YDWERemoveGuard takes unit pet returns nothing
endfunction

function SetGuardTimer takes nothing returns nothing
endfunction

function YDWESetGuard takes unit pet,unit captain,real timeout,real guardRanger,real returnRanger,real outRanger,integer percent returns nothing
endfunction

//library YDWESetGuard ends
//library YDWETriggerEvent:

 function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    return false
endfunction

function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
endfunction
    
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing

endfunction
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
endfunction

function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
        return
endfunction

function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction

//library YDWETriggerEvent ends
//library Test:


 function Test__InitTest takes nothing returns nothing
		// body...
	endfunction


//library Test ends
//library Beast:
	

//---------------------------------------------------------------------------------------------------
	

 function Beast___isOutOfRange takes integer i returns boolean
		return ( ( i > 255 ) or ( i < 0 ) )
	endfunction

 function Beast___GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i), 255)
	endfunction

 function Beast___DiscolorTimer takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer id= GetHandleId(t)
  local unit u= LoadUnitHandle(beastTable, id, Beast___kU)
  local integer r= LoadInteger(beastTable, id, Beast___kr)
  local integer g= LoadInteger(beastTable, id, Beast___kg)
  local integer b= LoadInteger(beastTable, id, Beast___kb)
  local integer sr= LoadInteger(beastTable, id, Beast___ksr)
  local integer sg= LoadInteger(beastTable, id, Beast___ksg)
  local integer sb= LoadInteger(beastTable, id, Beast___ksb)
		if ( IsUnitAliveBJ(u) == true ) then


//textmacro instance: ChangeColor("r")
				
			if ( sr > 0 ) then
				set r=r + GetRandomInt(0, sr)
			else
				set r=r + GetRandomInt(sr, 0)
			endif
			if ( Beast___isOutOfRange(r) ) then
				set r=(IMinBJ(IAbsBJ((r)), 255)) // INLINED!!
				if ( sr > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksr, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksr, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast___kr, r)
//end of: ChangeColor("r")
//textmacro instance: ChangeColor("g")
				
			if ( sg > 0 ) then
				set g=g + GetRandomInt(0, sg)
			else
				set g=g + GetRandomInt(sg, 0)
			endif
			if ( Beast___isOutOfRange(g) ) then
				set g=(IMinBJ(IAbsBJ((g)), 255)) // INLINED!!
				if ( sg > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksg, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksg, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast___kg, g)
//end of: ChangeColor("g")
//textmacro instance: ChangeColor("b")
				
			if ( sb > 0 ) then
				set b=b + GetRandomInt(0, sb)
			else
				set b=b + GetRandomInt(sb, 0)
			endif
			if ( Beast___isOutOfRange(b) ) then
				set b=(IMinBJ(IAbsBJ((b)), 255)) // INLINED!!
				if ( sb > 0 ) then
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksb, GetRandomInt(- 60, - 20))
				else
					call SaveInteger(beastTable, GetHandleId(t), Beast___ksb, GetRandomInt(20, 60))
				endif
			endif
			call SaveInteger(beastTable, GetHandleId(t), Beast___kb, b)
//end of: ChangeColor("b")
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
		call SaveUnitHandle(beastTable, GetHandleId(t), Beast___kU, u)
		call SaveInteger(beastTable, GetHandleId(t), Beast___kr, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast___kg, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast___kb, GetRandomInt(0, 254))
		call SaveInteger(beastTable, GetHandleId(t), Beast___ksr, GetRandomInt(20, 60))
		call SaveInteger(beastTable, GetHandleId(t), Beast___ksg, GetRandomInt(20, 60))
		call SaveInteger(beastTable, GetHandleId(t), Beast___ksb, GetRandomInt(20, 60))

		call TimerStart(t, 0.1, true, function Beast___DiscolorTimer)
		set t=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Beast___CreateBeast takes unit captain,integer itemId returns nothing
  local integer unitID= LoadInteger(beastTable, Beast___kBeastItem, itemId)
  local unit u= CreateUnit(GetOwningPlayer(captain), unitID, GetUnitX(captain), GetUnitY(captain), 0)
		if ( unitID == 0 ) then
			call BJDebugMsg("出错啦～")
		endif
		//变色
		if ( ( unitID == 'AB08' ) or ( unitID == 'AB09' ) ) then
			call Discolor(u)
		endif
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))]=u
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(captain), GetUnitY(captain)))
		call YDWESetGuard(u , captain , 1 , 900 , 1200 , 1800 , 25)
		set u=null
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Beast___UnitHasBeastInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB00' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB01' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB02' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB03' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB04' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB05' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB06' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB07' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB08' or GetItemTypeId(UnitItemInSlotBJ(u, slot)) == 'IB09'
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___GetBeast takes unit u returns item

  local integer i= 1
		loop
			exitwhen i > 6
			if ( Beast___UnitHasBeastInSlot(u , i) ) then
				return UnitItemInSlotBJ(u, i)
			endif
			set i=i + 1
		endloop
		return null
	endfunction
//---------------------------------------------------------------------------------------------------


	
 function Beast___TBeastEquitAct takes nothing returns nothing
  local integer i= 1
  local integer beastCount= 0
		loop
			exitwhen i > 6
			if ( Beast___UnitHasBeastInSlot(GetTriggerUnit() , i) ) then
				set beastCount=beastCount + 1
			endif
			set i=i + 1
		endloop

		//如果计数君大于1则丢掉
		if ( beastCount > 1 ) then
			call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时配上一个魔兽！")
			return
		endif

		//产生相对应的魔兽操作
		if ( beastCount == 1 ) then
			call Beast___CreateBeast(GetTriggerUnit() , GetItemTypeId(GetManipulatedItem()))
		endif
	endfunction

 function Beast___TBeastEquitCon takes nothing returns boolean
		return ( GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] ) and ( GetItemType(GetManipulatedItem()) == ITEM_TYPE_MISCELLANEOUS ) and ( IsUnitIllusionBJ(GetManipulatingUnit()) != true )
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AfterCaptainDie takes unit u returns nothing
		call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))])
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))]=null
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function AfterCaptainRevive takes unit u returns nothing
		call Beast___CreateBeast(u , GetItemTypeId(Beast___GetBeast(u)))
	endfunction
//---------------------------------------------------------------------------------------------------
	
 function Beast___TBeastDamageAct takes nothing returns nothing
  local integer unitID= GetUnitTypeId(GetEventDamageSource())
  local integer playerID= GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
  local item beast= Beast___GetBeast(udg_H[playerID])
		


//textmacro instance: DamageBeast1("00")
		if ( unitID == 'AB00' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_00, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
		endif
//end of: DamageBeast1("00")
//textmacro instance: DamageBeast1("01")
		if ( unitID == 'AB01' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_01, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
		endif
//end of: DamageBeast1("01")
//textmacro instance: DamageBeast1("02")
		if ( unitID == 'AB02' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_02, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
		endif
//end of: DamageBeast1("02")
//textmacro instance: DamageBeast1("03")
		if ( unitID == 'AB03' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_03, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
		endif
//end of: DamageBeast1("03")
//textmacro instance: DamageBeast2("04")
		if ( unitID == 'AB04' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_04, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("04")
//textmacro instance: DamageBeast2("05")
		if ( unitID == 'AB05' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_05, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("05")
//textmacro instance: DamageBeast2("06")
		if ( unitID == 'AB06' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_06, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("06")
//textmacro instance: DamageBeast2("07")
		if ( unitID == 'AB07' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_07, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("07")
//textmacro instance: DamageBeast2("08")
		if ( unitID == 'AB08' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_08, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("08")
//textmacro instance: DamageBeast2("09")
		if ( unitID == 'AB09' ) then
			call UnitDamageTarget(udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_09, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS)
			call SetItemCharges(beast, GetItemCharges(beast) + 1)
		endif
//end of: DamageBeast2("09")

		set beast=null
	endfunction

 function Beast___TBeastDamageCon takes nothing returns boolean
		return ( ( GetEventDamage() > 0 ) and ( IsUnitIllusion(GetEventDamageSource()) == false ) and ( GetEventDamageSource() == Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))] ) )
	endfunction
//---------------------------------------------------------------------------------------------------

	
 function Beast___initBeastItem takes nothing returns nothing
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB00', 'AB00')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB01', 'AB01')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB02', 'AB02')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB03', 'AB03')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB04', 'AB04')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB05', 'AB05')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB06', 'AB06')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB07', 'AB07')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB08', 'AB08')
		call SaveInteger(beastTable, Beast___kBeastItem, 'IB09', 'AB09')
	endfunction
//---------------------------------------------------------------------------------------------------

 function Beast___InitBeast takes nothing returns nothing
		//初始化
  local trigger t= CreateTrigger()
		set beastTable=InitHashtable()
		call Beast___initBeastItem()

		//只能同时装备一个魔兽
		call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function Beast___TBeastEquitCon))
		call TriggerAddAction(t, function Beast___TBeastEquitAct)

		//魔兽伤害事件
		set t=CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddCondition(t, Condition(function Beast___TBeastDamageCon))
		call TriggerAddAction(t, function Beast___TBeastDamageAct)



		set t=null
	endfunction

//library Beast ends


// BEGIN IMPORT OF Beast.j


// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j
// BEGIN IMPORT OF Test.j

// BEGIN IMPORT OF YDWESetGuard.j

//===========================================================================
//Ӷ��ϵͳ 
//===========================================================================


// END IMPORT OF YDWESetGuard.j
// BEGIN IMPORT OF YDWETriggerEvent.j

//===========================================================================  
//===========================================================================  
//�Զ����¼� 
//===========================================================================
//===========================================================================   


// END IMPORT OF YDWETriggerEvent.j
// END IMPORT OF Test.j
// END IMPORT OF Beast.j
function main takes nothing returns nothing

call ExecuteFunc("Test__InitTest")
call ExecuteFunc("Beast___InitBeast")

endfunction



//Struct method generated initializers/callers:

