

//! import "LHBase.j"
//! import "Test.j"
library_once Beast initializer InitBeast requires LHBase,Test
	
	globals

		hashtable beastTable
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

		constant integer DAMAGE_BEAST_00 = 1
		constant integer DAMAGE_BEAST_01 = 1
		constant integer DAMAGE_BEAST_02 = 1
		constant integer DAMAGE_BEAST_03 = 1
		constant integer DAMAGE_BEAST_04 = 1
		constant integer DAMAGE_BEAST_05 = 1
		constant integer DAMAGE_BEAST_06 = 1
		constant integer DAMAGE_BEAST_07 = 1
		constant integer DAMAGE_BEAST_08 = 1
		constant integer DAMAGE_BEAST_09 = 1
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
		local unit u = LoadUnitHandle(beastTable,id,kU)
		local integer r = LoadInteger(beastTable,id,kr)
		local integer g = LoadInteger(beastTable,id,kg)
		local integer b = LoadInteger(beastTable,id,kb)
		local integer sr = LoadInteger(beastTable,id,ksr)
		local integer sg = LoadInteger(beastTable,id,ksg)
		local integer sb = LoadInteger(beastTable,id,ksb)
		if(IsUnitAliveBJ(u) == true) then

			//! textmacro ChangeColor takes Color
				
			if (s$Color$ > 0) then
				set $Color$ = $Color$ + GetRandomInt(0,s$Color$)
			else
				set $Color$ = $Color$ + GetRandomInt(s$Color$,0)
			endif
			if(isOutOfRange($Color$)) then
				set $Color$ = GetModifiedColor($Color$)
				if (s$Color$ > 0) then
					call SaveInteger(beastTable,GetHandleId(t),ks$Color$ , GetRandomInt(-60,-20))
				else
					call SaveInteger(beastTable,GetHandleId(t),ks$Color$ , GetRandomInt(20,60))
				endif
			endif
			call SaveInteger(beastTable,GetHandleId(t),k$Color$, $Color$)
			//! endtextmacro

			//! runtextmacro ChangeColor("r")
			//! runtextmacro ChangeColor("g")
			//! runtextmacro ChangeColor("b")
    		call SetUnitVertexColor( u, r, g, b, 255 )

		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(beastTable,id)
		endif
		set t = null
		set u = null
	endfunction

	function Discolor takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(beastTable,GetHandleId(t),kU,u)
		call SaveInteger(beastTable,GetHandleId(t),kr,GetRandomInt(0,254))
		call SaveInteger(beastTable,GetHandleId(t),kg,GetRandomInt(0,254))
		call SaveInteger(beastTable,GetHandleId(t),kb,GetRandomInt(0,254))
		call SaveInteger(beastTable,GetHandleId(t),ksr,GetRandomInt(20,60))
		call SaveInteger(beastTable,GetHandleId(t),ksg,GetRandomInt(20,60))
		call SaveInteger(beastTable,GetHandleId(t),ksb,GetRandomInt(20,60))

		call TimerStart(t,0.1,true,function DiscolorTimer)
		set t = null 
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    给单位产生并绑定相对应的魔兽
	*/
	private function CreateBeast takes unit captain,integer itemId returns nothing
		local integer unitID = LoadInteger(beastTable,kBeastItem,itemId)
		local unit u = CreateUnit(GetOwningPlayer(captain),unitID,GetUnitX(captain),GetUnitY(captain),0)
		if (unitID == 0) then
			call BJDebugMsg("出错啦～")
		endif
		//变色
		if ((unitID == 'AB08') or (unitID == 'AB09')) then
			call Discolor(u)
		endif
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(captain))] = u 
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", GetUnitX(captain), GetUnitY(captain) ))
		call YDWESetGuard(u,captain,1,900,1200,1800,25)
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    不能带两个魔兽，先检测魔兽数量，再产生相对应的魔兽
	*/
	private function UnitHasBeastInSlot takes unit u,integer slot returns boolean
		return GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB00' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB01' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB02' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB03' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB04' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB05' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB06' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB07' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB08' /*
			*/ or GetItemTypeId(UnitItemInSlotBJ(u,slot)) == 'IB09' 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取单位身上的魔兽
	*/
	private function GetBeast takes unit u returns item

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
	    只能装备一个人器
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
			call UnitRemoveItemSwapped(GetManipulatedItem(),GetTriggerUnit())
			call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()),0.,0.,"|cFFFF66CC【消息】|r你只能同时配上一个魔兽！")
			return
		endif

		//产生相对应的魔兽操作
		if (beastCount == 1) then
			call CreateBeast(GetTriggerUnit(),GetItemTypeId(GetManipulatedItem()))
		endif
	endfunction

	private function TBeastEquitCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))])/*
			*/ and (GetItemType(GetManipulatedItem()) == ITEM_TYPE_MISCELLANEOUS) /*
			*/ and (IsUnitIllusionBJ(GetManipulatingUnit()) != true)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄死后，魔兽也暂时消失
	*/
	function AfterCaptainDie takes unit u returns nothing
		call RemoveUnit(Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))])
		set Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(u))] = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄复活后，魔兽出来
	*/
	function AfterCaptainRevive takes unit u returns nothing
		call CreateBeast(u,GetItemTypeId(GetBeast(u)))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    魔兽伤害事件
	*/
	private function TBeastDamageAct takes nothing returns nothing
		local integer unitID = GetUnitTypeId(GetEventDamageSource())
		local integer playerID = GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
		local item beast = GetBeast(udg_H[playerID])
		/*
		    文本宏1，只伤害，不计数
		*/
		//! textmacro DamageBeast1 takes ID
		if (unitID == 'AB$ID$') then
			call UnitDamageTarget( udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_$ID$, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
		endif
		//! endtextmacro

		//! textmacro DamageBeast2 takes ID
		if (unitID == 'AB$ID$') then
			call UnitDamageTarget( udg_H[playerID], GetTriggerUnit(), DAMAGE_BEAST_$ID$, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
			call SetItemCharges(beast,GetItemCharges(beast)+1)
			if (GetItemCharges(beast) > CHARGES_BEAST) then
				// todo
				call CreateSpellTextTag("魔兽怒吼",Unit_Beast[playerID],0,100,0,2)
				call SetItemCharges(beast,0)
			endif
		endif
		//! endtextmacro

		//! runtextmacro DamageBeast1("00")
		//! runtextmacro DamageBeast1("01")
		//! runtextmacro DamageBeast1("02")
		//! runtextmacro DamageBeast1("03")
		//! runtextmacro DamageBeast2("04")
		//! runtextmacro DamageBeast2("05")
		//! runtextmacro DamageBeast2("06")
		//! runtextmacro DamageBeast2("07")
		//! runtextmacro DamageBeast2("08")
		//! runtextmacro DamageBeast2("09")

		set beast = null
	endfunction

	private function TBeastDamageCon takes nothing returns boolean
		return ((GetEventDamage() > 0) and (IsUnitIllusion(GetEventDamageSource()) == false) and (GetEventDamageSource() == Unit_Beast[GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))]))
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化数据，单位与物品的对应关系
	*/
	private function initBeastItem takes nothing returns nothing
		call SaveInteger(beastTable,kBeastItem,'IB00','AB00')
		call SaveInteger(beastTable,kBeastItem,'IB01','AB01')
		call SaveInteger(beastTable,kBeastItem,'IB02','AB02')
		call SaveInteger(beastTable,kBeastItem,'IB03','AB03')
		call SaveInteger(beastTable,kBeastItem,'IB04','AB04')
		call SaveInteger(beastTable,kBeastItem,'IB05','AB05')
		call SaveInteger(beastTable,kBeastItem,'IB06','AB06')
		call SaveInteger(beastTable,kBeastItem,'IB07','AB07')
		call SaveInteger(beastTable,kBeastItem,'IB08','AB08')
		call SaveInteger(beastTable,kBeastItem,'IB09','AB09')
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitBeast takes nothing returns nothing
		//初始化
		local trigger t = CreateTrigger()
		set beastTable = InitHashtable()
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



		set t = null 
	endfunction
endlibrary