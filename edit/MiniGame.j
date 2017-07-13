//! import "LHBase.j"
//! import "Diffculty.j"

library_once MiniGame initializer InitMiniGame requires LHBase,Diffculty,Version
	
	globals
		private timer TGame1 = null
		private texttag TTGame1 = null
		private integer array IGoldGame1
		private integer TTimeGame1 = 0
		private group GGame1 = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    小巨能会不断施放
	*/
	private function XiaojunengTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(LHTable,id,1)
		if (IsUnitAliveBJ(u)) then
     		call IssuePointOrder( u, "stampede",GetRectCenterX(gg_rct_Game1),GetRectCenterY(gg_rct_Game1)  )
		else
			call PauseTimer(t)
			call FlushChildHashtable(LHTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction

	private function StartTimerXiaojuneng takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(LHTable,GetHandleId(t),1,u)
		call TimerStart(t,5,true,function XiaojunengTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    召唤施放者并不断施放
	*/
	function CreateGame1Majia takes real angle returns nothing
		local real x = GetRectCenterX(gg_rct_Game1) + 200. * CosBJ(angle)
		local real y = GetRectCenterY(gg_rct_Game1) + 200. * SinBJ(angle)
		local unit u = CreateUnit(Player(10),'h01U',x,y,angle+180)
	    call UnitAddAbility( u,'A0DY' )
	    call SetUnitAbilityLevel( u,'A0DY', I3(IsWanjie(),7,3) )
     	call IssuePointOrder( u, "stampede",GetRectCenterX(gg_rct_Game1),GetRectCenterY(gg_rct_Game1)  )
     	call GroupAddUnit(GGame1,u)
     	call StartTimerXiaojuneng(u)
     	set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开启迷你挑战1
	*/
	//奖励值
	private function GetSpecifyTimeGold takes nothing returns integer
		return R2I(((I2R(TTimeGame1)/50.) + 1.) * (2.5* (I2R(udg_Bo)/2. +1)))
	endfunction

	private function FlashGame1Reward takes nothing returns nothing
		local integer i = 1
		local string s = ""
		set TTimeGame1 = TTimeGame1 + 1
		loop
			exitwhen i > 6
			if (IGoldGame1[i] != 0) then
				set IGoldGame1[i] = IGoldGame1[i] + GetSpecifyTimeGold() * CModeH(1,2)
				set s = s + GetUnitName(udg_H[i]) + ":" + I2S(IGoldGame1[i]) + "
				"
			endif
			set i = i +1
		endloop
		set s = s + "时间:" + I2S(TTimeGame1/10) + "s"
		call SetTextTagTextBJ(TTGame1,s,10)
		set s = null
		if (TTimeGame1 == 50) then
			call CreateGame1Majia(45.)
		elseif (TTimeGame1 == 100) then
			call CreateGame1Majia(135.)
		elseif (TTimeGame1 == 150) then
			call CreateGame1Majia(225.)
		elseif (TTimeGame1 == 200) then
			call CreateGame1Majia(0.)
		elseif (TTimeGame1 == 250) then
			call CreateGame1Majia(90.)
		elseif (TTimeGame1 == 300) then
			call CreateGame1Majia(180.)
		elseif (TTimeGame1 == 350) then
			call CreateGame1Majia(270.)
		elseif (ModuloInteger(TTimeGame1,50) == 0) then
			call CreateGame1Majia(GetRandomReal(0.,360.))
		endif
	endfunction

	private function StartGame1 takes nothing returns nothing
		if (TGame1 == null) then
			set TGame1 = CreateTimer()
			set GGame1 = CreateGroup()
			call TimerStart(TGame1,0.1,true,function FlashGame1Reward)
			set TTGame1 = CreateTextTagUnitBJ( "奖励", gg_unit_n01Q_0273, 0, 10, 0, 100, 0, 0 )
			set TTimeGame1 = 0
			call CreateGame1Majia(315.)
		endif
	endfunction

	private function RemoveAllMini takes nothing returns nothing
		call RemoveUnit(GetEnumUnit())
	endfunction

	private function DestroyGame1 takes nothing returns nothing
		if (TGame1 != null) then
			call PauseTimer(TGame1)
			call DestroyTimer(TGame1)
			call DestroyTextTag(TTGame1)
			set TGame1 = null
			call ForGroup(GGame1,function RemoveAllMini)
			call DestroyGroup(GGame1)
			set GGame1 = null
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    前往迷你挑战
	*/
	function EnterMiniGame takes nothing returns nothing
		local real x
		local real y
		if ((GetItemTypeId(GetSoldItem()) == 'I06K')) then
			set x = GetRectCenterX(gg_rct_Game1)
			set y = GetRectCenterY(gg_rct_Game1)

	        call SetUnitX(GetBuyingUnit(),x)
	        call SetUnitY(GetBuyingUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	        return
	    elseif ((GetItemTypeId(GetSoldItem()) == 'I06M') and GetBuyingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))]) then
	    	if (not(IsWudi(GetBuyingUnit()))) then
				call ImmuteDamageInterval(GetBuyingUnit(),3)
	    	endif
	    	call StartGame1()
	    	call BJDebugMsg("|cFFFF66CC【消息】|r迷你挑战-骷髅海开始啦!")
            call PingMinimapForForce( GetPlayersAll(), GetRectCenterX(gg_rct_Game1) , GetRectCenterY(gg_rct_Game1), 5.00 )
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    区域玩家数量
	*/
	private function MiniGamePlayerFilter takes nothing returns boolean
		return GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))]
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    进入离开区域
	*/
	private function TMiniGameCon takes nothing returns boolean
		return GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	endfunction

	//离开事件
	private function TLeaveMiniGameAct takes nothing returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))
        local group group1 = GetUnitsInRectMatching(gg_rct_Game1, Condition(function MiniGamePlayerFilter))
		if (IGoldGame1[id] != 1) then
		 	call AddHeroXP( udg_H[id], R2I(IGoldGame1[id] * 0.5 * udg_I_Jingyan[id]), true )
		    call AdjustPlayerStateBJ( R2I(IGoldGame1[id] * udg_I_Jinqianhuodelv[id]), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD )
		    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你通过迷你挑战获得了"+I2S(R2I(IGoldGame1[id] * udg_I_Jinqianhuodelv[id]))+"的金钱奖励和"+I2S(R2I(IGoldGame1[id] * 0.5 * udg_I_Jingyan[id]))+"的经验奖励,成功坚持了"+I2S(TTimeGame1/10)+"秒.")
		    debug if (TTimeGame1/10 > 35) then
				debug call GetAchievementAndSave(ConvertedPlayer(id),43)
			debug endif
			debug if (TTimeGame1/10 > 80) then
				debug call GetAchievementAndSave(ConvertedPlayer(id),44)
		    debug endif
		endif
		set IGoldGame1[id] = 0
        if (CountUnitsInGroup(group1) == 0) then
        	call DestroyGame1()
        endif
        call DestroyGroup( group1 )
        set group1 = null
	endfunction
	
	//进入事件
	private function TEnterMiniGameAct takes nothing returns nothing
		set IGoldGame1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    伤害事件
	*/
	function SimulateDamageMiniGame takes unit u returns boolean
		if (GetUnitTypeId(u) == 'h01U' and GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call HG(GetTriggerUnit())
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化迷你游戏
	*/
	private function InitMiniGame takes nothing returns nothing
        local trigger t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Game1 )
        call TriggerAddCondition(t, Condition(function TMiniGameCon))
        call TriggerAddAction(t, function TLeaveMiniGameAct)

        set t = CreateTrigger()
        call TriggerRegisterEnterRectSimple( t, gg_rct_Game1 )
        call TriggerAddCondition(t, Condition(function TMiniGameCon))
        call TriggerAddAction(t, function TEnterMiniGameAct)
        set t = null
	endfunction

endlibrary