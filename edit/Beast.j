#include  "LHBase.j"
#include  "item.j"

library_once Beast initializer InitBeast requires LHBase,ItemBase,YDWESetGuard

	globals

		/*
		    物品对应魔兽单位主索引
		*/
		private key kU
		private key kr
		private key kg
		private key kb
		private key ksr
		private key ksg
		private key ksb
		private key kBeastItem

		/*
		    魔兽数组
		*/
		unit array Unit_Beast

		constant integer DAMAGE_BEAST_00 = 30000
		constant integer DAMAGE_BEAST_01 = 160000
		constant integer DAMAGE_BEAST_02 = 1000000
		constant integer DAMAGE_BEAST_03 = 2600000
		constant integer DAMAGE_BEAST_04 = 7000000
		constant integer DAMAGE_BEAST_05 = 16000000
		constant integer DAMAGE_BEAST_06 = 40000000
		constant integer DAMAGE_BEAST_07 = 80000000
		constant integer DAMAGE_BEAST_08 = 120000000
		constant integer DAMAGE_BEAST_09 = 200000000
		constant integer DAMAGE_BEAST_10 = 400000000
		constant integer DAMAGE_BEAST_11 = 200000000
		constant integer DAMAGE_BEAST_12 = 600000000
		constant integer DAMAGE_BEAST_13 = 400000000
		/*
		    充能次数
		*/
		constant integer CHARGES_BEAST = 100
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    开启定时器去给一个单位不断变色,直到他死去
	*/

	private function isOutOfRange takes integer i returns boolean
		return ((i > 255) or (i < 0) )
	endfunction

	private function GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i),255)
	endfunction

	private function DiscolorTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(itemTable,id,kU)
		local integer r = LoadInteger(itemTable,id,kr)
		local integer g = LoadInteger(itemTable,id,kg)
		local integer b = LoadInteger(itemTable,id,kb)
		local integer sr = LoadInteger(itemTable,id,ksr)
		local integer sg = LoadInteger(itemTable,id,ksg)
		local integer sb = LoadInteger(itemTable,id,ksb)
		if((IsUnitAliveBJ(u) == true) or (IsUnitType(u,UNIT_TYPE_HERO))) then

			//! textmacro ChangeColor takes Color

			if (s$Color$ > 0) then
				set $Color$ = $Color$ + GetRandomInt(0,s$Color$)
			else
				set $Color$ = $Color$ + GetRandomInt(s$Color$,0)
			endif
			if(isOutOfRange($Color$)) then
				set $Color$ = GetModifiedColor($Color$)
				if (s$Color$ > 0) then
					call SaveInteger(itemTable,GetHandleId(t),ks$Color$ , GetRandomInt(-60,-20))
				else
					call SaveInteger(itemTable,GetHandleId(t),ks$Color$ , GetRandomInt(20,60))
				endif
			endif
			call SaveInteger(itemTable,GetHandleId(t),k$Color$, $Color$)
			//! endtextmacro

			//! runtextmacro ChangeColor("r")
			//! runtextmacro ChangeColor("g")
			//! runtextmacro ChangeColor("b")
    		call SetUnitVertexColor( u, r, g, b, 255 )
		else
			call SetUnitVertexColor( u, 255, 255, 255, 255 )
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(itemTable,id)
		endif
		set t = null
		set u = null
	endfunction

	function Discolor takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(itemTable,GetHandleId(t),kU,u)
		call SaveInteger(itemTable,GetHandleId(t),kr,GetRandomInt(0,254))
		call SaveInteger(itemTable,GetHandleId(t),kg,GetRandomInt(0,254))
		call SaveInteger(itemTable,GetHandleId(t),kb,GetRandomInt(0,254))
		call SaveInteger(itemTable,GetHandleId(t),ksr,GetRandomInt(20,60))
		call SaveInteger(itemTable,GetHandleId(t),ksg,GetRandomInt(20,60))
		call SaveInteger(itemTable,GetHandleId(t),ksb,GetRandomInt(20,60))

		call TimerStart(t,0.1,true,function DiscolorTimer)
		if (IsUnitType(u,UNIT_TYPE_HERO)) then
			set TBianse[GetConvertedPlayerId(GetOwningPlayer(u))] = t
		endif
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    给单位产生并绑定相对应的魔兽
	*/
	private function CreateBeast takes unit captain,integer itemId returns nothing
		local integer unitID = LoadInteger(itemTable,kBeastItem,itemId)
		local unit u = CreateUnit(GetOwningPlayer(captain),unitID,GetUnitX(captain),GetUnitY(captain),0)
		//变色
		if ((unitID == 'ub08') or (unitID == 'ub09') or (unitID == 'ub10') or (unitID == 'ub11') or (unitID == 'ub12') or (unitID == 'ub13')) then
			call Discolor(u)
		endif

		if (Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))] != null) then
			call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))])
		endif
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))] = u
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(captain), GetUnitY(captain) ))
		if (BMoshou[GetConvertedPlayerId(GetOwningPlayer(captain))]) then
			call UnitAddAbility(u,'Aloc')
		endif
		call YDWESetGuard(u,captain,1,600,600,600,100)
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------

	private function IsBeast takes item i returns boolean
		return GetItemTypeId(i) == 'IB00' /*
			*/ or GetItemTypeId(i) == 'IB01' /*
			*/ or GetItemTypeId(i) == 'IB02' /*
			*/ or GetItemTypeId(i) == 'IB03' /*
			*/ or GetItemTypeId(i) == 'IB04' /*
			*/ or GetItemTypeId(i) == 'IB05' /*
			*/ or GetItemTypeId(i) == 'IB06' /*
			*/ or GetItemTypeId(i) == 'IB07' /*
			*/ or GetItemTypeId(i) == 'IB08' /*
			*/ or GetItemTypeId(i) == 'IB09' /*
			*/ or GetItemTypeId(i) == 'I04X' /*
			*/ or GetItemTypeId(i) == 'IB0A' /*
			*/ or GetItemTypeId(i) == 'I07O' /*
			*/ or GetItemTypeId(i) == 'I07N'
	endfunction
	/*
	    不能带两个魔兽，先检测魔兽数量，再产生相对应的魔兽
	*/
	private function UnitHasBeastInSlot takes unit u,integer slot returns boolean
		return IsBeast(UnitItemInSlotBJ(u,slot))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取单位身上的魔兽
	*/
	private function GetBeastInUnit takes unit u returns item

		local integer i = 1
		loop
			exitwhen i > 6
			if(UnitHasBeastInSlot(u,i)) then
				return UnitItemInSlotBJ(u,i)
			endif
			set i = i +1
		endloop
		return null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    只能装备一个魔兽
	*/
	private function TBeastEquitAct takes nothing returns nothing
		local integer i = 1
		local integer beastCount = 0
		loop
			exitwhen i > 6
			if(UnitHasBeastInSlot(GetTriggerUnit(),i)) then
				set beastCount = beastCount + 1
			endif
			set i = i +1
		endloop

		//如果计数君大于1则丢掉
		if (beastCount > 1) then
			call PolledWait(0.1)
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时装备上一个魔兽！")
			return
		elseif (beastCount == 1) then
		//产生相对应的魔兽操作
			call CreateBeast(GetTriggerUnit(),GetItemTypeId(GetManipulatedItem()))

			if (IsMo(GetTriggerUnit())) then
				if (IsMo3(GetManipulatedItem())) then
					call UnitAddAbility(GetTriggerUnit(),'A0MT')
				endif
				if (IsChaomo(GetManipulatedItem())) then
					call SetUnitAbilityLevel(GetTriggerUnit(),'A0MT',2)
				endif
			endif

		endif

	endfunction

	private function TBeastEquitCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))])/*
			*/  and (IsUnitIllusionBJ(GetManipulatingUnit()) != true) and (IsBeast(GetManipulatedItem()) == true)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄死后，魔兽也暂时消失
	*/
	function RemoveBeast takes unit u returns nothing
		call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))])
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))] = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄复活后，魔兽出来
	*/
	function ReviveBeast takes unit u returns nothing
		if (GetBeastInUnit(u) != null) then
			call CreateBeast(u,GetItemTypeId(GetBeastInUnit(u)))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    丢弃魔兽事件
	*/
	private function TBeastDropAct takes nothing returns nothing

		local integer i = 1
		local integer beastCount = 0
		loop
			exitwhen i > 6
			if(UnitHasBeastInSlot(GetTriggerUnit(),i)) then
				set beastCount = beastCount + 1
			endif
			set i = i +1
		endloop
		if (beastCount != 2) then
			call RemoveBeast(GetManipulatingUnit())

			if (IsMo(GetTriggerUnit())) then
				if (IsMo3(GetManipulatedItem())) then
					call UnitRemoveAbility(GetTriggerUnit(),'A0MT')
				endif
			endif
		endif
	endfunction

	private function TBeastDropCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))])/*
			*/  and (IsUnitIllusionBJ(GetManipulatingUnit()) != true) and (IsBeast(GetManipulatedItem()) == true)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    魔兽伤害事件
	*/
	private function TBeastDamageAct takes nothing returns nothing
		local integer unitID = GetUnitTypeId(GetEventDamageSource())
		local integer playerID = GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
		local item beast = GetBeastInUnit(udg_H[playerID])

		//魔兽怒吼
		if (GetUnitAbilityLevel(Unit_Beast[playerID],'ABe9') >= 1) then

			call SetItemCharges(beast,GetItemCharges(beast)+1)
			if (GetItemCharges(beast) > CHARGES_BEAST) then
					call CreateSpellTextTag("魔兽怒吼!",Unit_Beast[playerID],0,100,0,2)
 					call SimulateSpell(Unit_Beast[playerID],Unit_Beast[playerID],'A0CR',1,5,"stomp",false,true,false)
					call SetItemCharges(beast,0)
			endif
		endif

		//余数为4则施放
		if (ModuloInteger(GetItemCharges(beast),4) == 0 and (GetUnitTypeId(GetEventDamageSource()) == 'ub11' or GetUnitTypeId(GetEventDamageSource()) == 'ub13')) then
			call UnitApplyTimedLifeBJ( 2.00, 'BHwe',CreateUnit(ConvertedPlayer(playerID),I3(GetUnitTypeId(GetEventDamageSource()) == 'ub11','h01P','h02J'),YDWECoordinateX(GetUnitX(GetEventDamageSource()) + GetRandomReal(-100,100)),YDWECoordinateY(GetUnitY(GetEventDamageSource()) + GetRandomReal(-100,100)),GetRandomReal(0,360)) )
		endif

		/*
		    自动
		*/
		if (GetUnitAbilityLevel(Unit_Beast[playerID],'ABea') >= 1 and BMoshou[playerID] and GetUnitState(Unit_Beast[playerID],UNIT_STATE_MANA) > 999) then
			call IssueImmediateOrder(Unit_Beast[playerID],"berserk")
		endif

		/*
		    文本宏1，伤害
		*/
		//! textmacro DamageBeast1 takes ID
		if (unitID == 'ub$ID$') then
			call DisableTrigger(GetTriggeringTrigger())
			call UnitDamageTarget( udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_$ID$, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			call EnableTrigger(GetTriggeringTrigger())
			set beast = null
			return
		endif
		//! endtextmacro

		//! runtextmacro DamageBeast1("00")
		//! runtextmacro DamageBeast1("01")
		//! runtextmacro DamageBeast1("02")
		//! runtextmacro DamageBeast1("03")
		//! runtextmacro DamageBeast1("04")
		//! runtextmacro DamageBeast1("05")
		//! runtextmacro DamageBeast1("06")
		//! runtextmacro DamageBeast1("07")
		//! runtextmacro DamageBeast1("08")
		//! runtextmacro DamageBeast1("09")
		//! runtextmacro DamageBeast1("10")
		//! runtextmacro DamageBeast1("11")
		//! runtextmacro DamageBeast1("12")
		//! runtextmacro DamageBeast1("13")

	endfunction

	private function TBeastDamageCon takes nothing returns boolean
		return ((GetEventDamage() > 0) and (IsUnitIllusion(GetEventDamageSource()) == false) and (GetEventDamageSource() == Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))]))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    合成装备
	*/
	function CombineBeast takes unit u returns nothing

		//! textmacro SummonBeast takes IType1,IType2,IType3
		if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(u, '$IType1$')) == '$IType1$') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, '$IType2$')) == '$IType2$') and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, '$IType1$')) == true) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, '$IType2$')) == true)) then
            call PolledWait(0.01)
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, '$IType2$') )
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, '$IType1$') )
            call UnitAddItemById(u, '$IType3$')
			call DisplayTextToPlayer(GetOwningPlayer(u),0.,0.,"|cFFFF66CC【消息】|r你成功召唤新的魔兽,如果想让魔兽进入不可点击状态,请输入\"-ms\"!")
			call DisplayTextToPlayer(GetOwningPlayer(u),0.,0.,"|cFFFF66CC【消息】|r你成功召唤新的魔兽,如果想让魔兽进入不可点击状态,请输入\"-ms\"!")
			call DisplayTextToPlayer(GetOwningPlayer(u),0.,0.,"|cFFFF66CC【消息】|r你成功召唤新的魔兽,如果想让魔兽进入不可点击状态,请输入\"-ms\"!")
			return
		endif
		//! endtextmacro

		//! runtextmacro SummonBeast("IB00","IMJ1","IB01")
		//! runtextmacro SummonBeast("IB01","IMJ2","IB02")
		//! runtextmacro SummonBeast("IB02","IMJ3","IB03")
		//! runtextmacro SummonBeast("IB03","IMJ4","IB04")
		//! runtextmacro SummonBeast("IB04","IMJ5","IB05")
		//! runtextmacro SummonBeast("IB05","IMJ6","IB06")
		//! runtextmacro SummonBeast("IB06","IMJ7","IB07")
		//! runtextmacro SummonBeast("IB07","IMJ8","IB08")
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    初始化数据，单位与物品的对应关系
	*/
	private function initBeastItem takes nothing returns nothing
		call SaveInteger(itemTable,kBeastItem,'IB00','ub00')
		call SaveInteger(itemTable,kBeastItem,'IB01','ub01')
		call SaveInteger(itemTable,kBeastItem,'IB02','ub02')
		call SaveInteger(itemTable,kBeastItem,'IB03','ub03')
		call SaveInteger(itemTable,kBeastItem,'IB04','ub04')
		call SaveInteger(itemTable,kBeastItem,'IB05','ub05')
		call SaveInteger(itemTable,kBeastItem,'IB06','ub06')
		call SaveInteger(itemTable,kBeastItem,'IB07','ub07')
		call SaveInteger(itemTable,kBeastItem,'IB08','ub08')
		call SaveInteger(itemTable,kBeastItem,'IB09','ub09')
		call SaveInteger(itemTable,kBeastItem,'IB0A','ub10')
		call SaveInteger(itemTable,kBeastItem,'I04X','ub11')
		call SaveInteger(itemTable,kBeastItem,'I07N','ub12')
		call SaveInteger(itemTable,kBeastItem,'I07O','ub13')
	endfunction

//---------------------------------------------------------------------------------------------------

	private function InitBeast takes nothing returns nothing
		//初始化
		local trigger t = CreateTrigger()
		call initBeastItem()

		//只能同时装备一个魔兽
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TBeastEquitCon))
		call TriggerAddAction(t,function TBeastEquitAct)

		//魔兽伤害事件
		set t =CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddCondition(t,Condition(function TBeastDamageCon))
		call TriggerAddAction(t,function TBeastDamageAct)

		//丢弃魔兽事件
		set t =CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t,Condition(function TBeastDropCon))
		call TriggerAddAction(t,function TBeastDropAct)
		set t = null
	endfunction
endlibrary