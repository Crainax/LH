//! import "LHBase.j"

/*
    戒指
*/
library_once Ring initializer InitRing requires LHBase 
	
	globals
		boolean array BHintRing
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    反转提示
	*/
	private function RingSwitch takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = LoadPlayerHandle(LHTable,id,1)
		set BHintRing[GetConvertedPlayerId(p)] = false
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set p = null
		set t = null 
	endfunction

	private function CreateRingTimer takes player p returns nothing
		local timer t = CreateTimer()
		call SavePlayerHandle(LHTable,GetHandleId(t),1,p)
		call TimerStart(t,5,false,function RingSwitch)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    戒指的升级
	*/
	function TRingUpdateCon takes nothing returns boolean
	    return ((IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true) and (IsUnitAliveBJ(GetKillingUnitBJ()) == true) and (GetBasicRing(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != null or GetBasicRing(UDepot[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != null))
	endfunction

	function TRingUpdateAct takes nothing returns nothing

	    local integer count = 1

	    local integer index = GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
	    local item ring = GetBasicRing(udg_H[index])
	    local unit u = udg_H[index]
	    local integer i = 1
	    if (ring != null) then
	    	set ring = GetBasicRing(UDepot[index])
	    	set u = UDepot[index]
	    endif

	    if (Is10Unit(GetDyingUnit())) then
	    	set count = 10
	    elseif (Is20Unit(GetDyingUnit())) then
	    	set count = 20
	    endif

	    if (ring == null) then
	    	set u = null
	    	return
	    endif
	    call SetItemUserData( ring,  GetItemUserData(ring) + count  )

		//! textmacro ShuaRing takes CType,NType,Count
		    if (GetItemTypeId(ring) == '$CType$') then
		    	if (GetItemUserData(ring) > $Count$) then
		    		//满了
		    		call RemoveItem(ring)
		    		if ( not(IsUnitAliveBJ(u)) and (u == udg_H[index])) then
		    			//死亡不在身上
		    			call UnitAddItemByIdSwapped( '$NType$', UDepot[index] )
		    			loop
		    				exitwhen i > 6
							call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "|cFFFF66CC【鬼器】|r由于你处于死亡状态，你成功升级的鬼器转移到了你的仓库里，输入\"-H\"来召唤仓库。" )
		    				set i = i +1
		    			endloop
					else
		    			call UnitAddItemByIdSwapped( '$NType$', u )
		    		endif
		    	else
		    		if not (BHintRing[index]) then
		    			set BHintRing[index] = true
		                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(ring)) + "/$Count$。" ) ) )
		                call CreateRingTimer(GetOwningPlayer(GetKillingUnitBJ()))
		            endif
		    	endif
		    endif
		//! endtextmacro

		//! runtextmacro ShuaRing("rat9","rlif","600")
		//! runtextmacro ShuaRing("rlif","lgdh","1200")
		//! runtextmacro ShuaRing("lgdh","clfm","1800")
		//! runtextmacro ShuaRing("clfm","bgst","2400")
		//! runtextmacro ShuaRing("bgst","belv","3000")
		//! runtextmacro ShuaRing("belv","hcun","3600")
		//! runtextmacro ShuaRing("hcun","rag1","4200")
		//! runtextmacro ShuaRing("rag1","penr","4800")
		//! runtextmacro ShuaRing("penr","brac","5400")

	    set ring = null
	    set u = null

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化戒指
	*/
	private function InitRing takes nothing returns nothing
		local integer i = 1
	    local trigger t = CreateTrigger()

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				set BHintRing[i] = false
			endif
			set i = i +1
		endloop

	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function TRingUpdateCon))
	    call TriggerAddAction(t, function TRingUpdateAct)
	    set t = null

	endfunction

endlibrary
