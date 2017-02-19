
//! import "LHBase.j"
//! import "PIV.j"
//! import "Multiboard.j"
/////! import "Exercise.j"
/*
    守家基分商店
*/
library_once CenterCredit initializer InitCenterCredit requires LHBase,Exercise,PIV,Multiboard
	
	globals
		private constant integer CREDIT_SOLIDER_1 = 2500
		private constant integer CREDIT_SOLIDER_2 = 5000
		private constant integer CREDIT_SOLIDER_3 = 8000
		private constant integer CREDIT_SOLIDER_4 = 15000
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    积分购买雇佣兵
	*/
	
	private function TBuySoliderAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
		local real x
		local real y
		call BJDebugMsg("TBuySoliderActOut")
		//! textmacro BuySoldier takes UnitType,Index	
		if (GetUnitTypeId(GetSoldUnit()) == '$UnitType$') then
			call BJDebugMsg("TBuySoliderActIn")
			if (centerCredit[index] < CREDIT_SOLIDER_$Index$) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你的守家积分只有"+I2S(centerCredit[index])+",不足"+I2S(CREDIT_SOLIDER_$Index$))
				call RemoveUnit(GetSoldUnit())

				return
			endif
			set centerCredit[index] = centerCredit[index] - CREDIT_SOLIDER_$Index$
			set x = GetRectCenterX(regionM$Index$[index])
			set y = GetRectCenterX(regionM$Index$[index])

			call MultiboardSetItemValueBJ( udg_D, 9,  index + 1 , I2S(centerCredit[index]) )
			call SetUnitX(GetSoldUnit(),x)
			call SetUnitY(GetSoldUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
	        return 
		endif
		//! endtextmacro

		//! runtextmacro BuySoldier("uG01","1")
		//! runtextmacro BuySoldier("uG02","2")
		//! runtextmacro BuySoldier("uG03","3")
		//! runtextmacro BuySoldier("uG04","4")	

		if (GetUnitTypeId(GetSoldUnit()) == 'uG05') then
			if (IsPIV(GetOwningPlayer(GetBuyingUnit())) == true) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if (udg_Bo < 18) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到18波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x = GetRectCenterX(regionM5[index])
			set y = GetRectCenterX(regionM5[index])
			call SetUnitX(GetSoldUnit(),x)
			call SetUnitY(GetSoldUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif

		if (GetUnitTypeId(GetSoldUnit()) == 'uG06') then
			if (IsPIV(GetOwningPlayer(GetBuyingUnit())) == true) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r你不是永久赞助.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			if (udg_Bo < 22) then
				call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r当前波数未到22波,尚未可以购买.")
				call RemoveUnit(GetSoldUnit())
				return
			endif

			set x = GetRectCenterX(regionM6[index])
			set y = GetRectCenterX(regionM6[index])
			call SetUnitX(GetSoldUnit(),x)
			call SetUnitY(GetSoldUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r雇佣成功!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	
	private function InitCenterCredit takes nothing returns nothing
		local integer i = 1
		local trigger t = CreateTrigger()
		call BJDebugMsg("初始化~")
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) then
				call TriggerRegisterUnitEvent(t,CreateUnit(Player(15),'uS02',GetRectCenterX(regionM1[i])+300,GetRectCenterY(regionM1[i])-300,270),EVENT_UNIT_SELL)
			set i = i + 1
			endif
		endloop
		call TriggerAddAction(t, function TBuySoliderAct)
		set t = null
	endfunction

endlibrary