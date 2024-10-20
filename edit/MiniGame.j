#include  "edit/LHBase.j"
#include  "edit/Diffculty.j"
///#include  "edit/NetVersion.j"
#include  "edit/SpellBase.j"

library_once MiniGame initializer InitMiniGame requires LHBase,Diffculty,SpellBase,Version

	globals
		private timer TGame1 = null
		private texttag TTGame1 = null
		private integer array IGoldGame1
		private integer TTimeGame1 = 0
		private group GGame1 = null

		//中级挑战
		private timer TGame2 = null
		private texttag TTGame2 = null
		private integer array IGoldGame2
		private integer TTimeGame2 = 0
		private group GGame2 = null
		private unit UGame2 = null
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
	    召唤施放者并不断施放
	*/
	private function MiniMissileBoom takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(LHTable,id,1)
		if (IsUnitAliveBJ(u)) then
			call Missile.create(u,'hs01',"Units\\Demon\\Infernal\\InfernalBirth.mdl",300,1800,3,1,1000000000)
		else
			call PauseTimer(t)
			call FlushChildHashtable(LHTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null
	endfunction

	private function RefreshMiniMingcha takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(LHTable,GetHandleId(t),1,u)
		call TimerStart(t,0.4,true,function MiniMissileBoom)
		set t = null
	endfunction

	function CreateGame2Majia takes nothing returns nothing
		local real x = GetRandomReal(GetRectMinX(gg_rct_Game2),GetRectMaxX(gg_rct_Game2))
		local real y = GetRandomReal(GetRectMinY(gg_rct_Game2),GetRectMaxY(gg_rct_Game2))
		local unit u = CreateUnit(Player(10),'h02D',x,y,GetRandomReal(0,360))
		call RefreshMiniMingcha(u)
     	call GroupAddUnit(GGame2,u)
     	set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开启迷你挑战1
	*/
	//奖励值
	private function GetSpecifyTimeGold takes integer time returns integer
		return R2I(((I2R(TTimeGame1)/50.) + 1.) * (2.5* (I2R(udg_Bo)/2. +1)))
	endfunction

	private function FlashGame1Reward takes nothing returns nothing
		local integer i = 1
		local string s = ""
		set TTimeGame1 = TTimeGame1 + 1
		loop
			exitwhen i > 6
			if (IGoldGame1[i] != 0) then
				set IGoldGame1[i] = IGoldGame1[i] + GetSpecifyTimeGold(TTimeGame1) * CModeH(1,2)
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
	    奖励值
	*/
	private function FlashGame2Reward takes nothing returns nothing
		local integer i = 1
		local string s = ""
		set TTimeGame2 = TTimeGame2 + 1
		loop
			exitwhen i > 6
			if (IGoldGame2[i] != 0) then
				set IGoldGame2[i] = IGoldGame2[i] + GetSpecifyTimeGold(TTimeGame2) * CModeH(1,2) * 4
				set s = s + GetUnitName(udg_H[i]) + ":" + I2S(IGoldGame2[i]) + "
				"
			endif
			set i = i +1
		endloop
		set s = s + "时间:" + I2S(TTimeGame2/10) + "s"
		call SetTextTagTextBJ(TTGame2,s,10)
		set s = null
		if (ModuloInteger(TTimeGame2,30) == 0) then
			call CreateGame2Majia()
		endif
	endfunction

	private function DestroyGame2 takes nothing returns nothing
		if (TGame2 != null) then
			call PauseTimer(TGame2)
			call DestroyTimer(TGame2)
			call DestroyTextTag(TTGame2)
			set TGame2 = null
			call ForGroup(GGame2,function RemoveAllMini)
			call DestroyGroup(GGame2)
			set GGame2 = null
			set TTGame2 = null
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开始挑战2
	*/
	private function StartGame2 takes nothing returns nothing
		if (TGame2 == null) then
			set TGame2 = CreateTimer()
			call TimerStart(TGame2,0.1,true,function FlashGame2Reward)
			set GGame2 = CreateGroup()
			set TTGame2 = CreateTextTagUnitBJ( "奖励", UGame2, 0, 10, 0, 100, 0, 0 )
			set TTimeGame2 = 0
			call CreateGame2Majia()
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
	    elseif ((GetItemTypeId(GetSoldItem()) == 'I06M') and GetBuyingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))] and RectContainsUnit(gg_rct_Game1,GetBuyingUnit())) then
	    	call StartGame1()
	    	call BJDebugMsg("|cFFFF66CC【消息】|r迷你挑战-骷髅海开始啦!")
            call PingMinimapForForce( GetPlayersAll(), GetRectCenterX(gg_rct_Game1) , GetRectCenterY(gg_rct_Game1), 5.00 )
		elseif ((GetItemTypeId(GetSoldItem()) == 'I07B')) then
			set x = GetRectCenterX(gg_rct_Game2)
			set y = GetRectCenterY(gg_rct_Game2)

	        call SetUnitX(GetBuyingUnit(),x)
	        call SetUnitY(GetBuyingUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	        return
	    elseif ((GetItemTypeId(GetSoldItem()) == 'I07C') and GetBuyingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))] and RectContainsUnit(gg_rct_Game2,GetBuyingUnit())) then
	    	call StartGame2()
	    	call BJDebugMsg("|cFFFF66CC【消息】|r迷你挑战-陨石雨开始啦!")
            call PingMinimapForForce( GetPlayersAll(), GetRectCenterX(gg_rct_Game2) , GetRectCenterY(gg_rct_Game2), 5.00 )
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

	//离开1事件
	private function TLeaveMiniGameAct takes nothing returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))
        local group group1 = GetUnitsInRectMatching(gg_rct_Game1, Condition(function MiniGamePlayerFilter))
		if (IGoldGame1[id] != 1) then
		 	call AddHeroXP( udg_H[id], R2I(IGoldGame1[id] * 0.4 * udg_I_Jingyan[id]), true )
		    call AdjustPlayerStateBJ( R2I(IGoldGame1[id] * udg_I_Jinqianhuodelv[id]), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD )
		    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你通过迷你挑战获得了"+I2S(R2I(IGoldGame1[id] * udg_I_Jinqianhuodelv[id]))+"的金钱奖励和"+I2S(R2I(IGoldGame1[id] * 0.4 * udg_I_Jingyan[id]))+"的经验奖励,成功坚持了"+I2S(TTimeGame1/10)+"秒.")
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

	//离开2事件
	private function TLeaveMiniGame2Act takes nothing returns nothing
		local integer id = GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))
        local group group1 = GetUnitsInRectMatching(gg_rct_Game2, Condition(function MiniGamePlayerFilter))
		if (IGoldGame2[id] != 1) then
		 	call AddHeroXP( udg_H[id], R2I(IGoldGame2[id] * 0.4 * udg_I_Jingyan[id]), true )
		    call AdjustPlayerStateBJ( R2I(IGoldGame2[id] * udg_I_Jinqianhuodelv[id]), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD )
		    call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你通过迷你挑战获得了"+I2S(R2I(IGoldGame2[id] * udg_I_Jinqianhuodelv[id]))+"的金钱奖励和"+I2S(R2I(IGoldGame2[id] * 0.4 * udg_I_Jingyan[id]))+"的经验奖励,成功坚持了"+I2S(TTimeGame2/10)+"秒.")
		endif
		set IGoldGame2[id] = 0
        if (CountUnitsInGroup(group1) == 0) then
        	call DestroyGame2()
        endif
        call DestroyGroup( group1 )
        set group1 = null
	endfunction

	//进入事件
	private function TEnterMiniGameAct takes nothing returns nothing
		if (RectContainsUnit(gg_rct_Game1,GetTriggerUnit())) then
			set IGoldGame1[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 1
		elseif (RectContainsUnit(gg_rct_Game2,GetTriggerUnit())) then
			set IGoldGame2[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = 1
			if not(udg_Zhandouli[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] > 5000) then
		        call SetUnitX(GetTriggerUnit(),GetRectCenterX(gg_rct_Game1))
		        call SetUnitY(GetTriggerUnit(),GetRectCenterY(gg_rct_Game1))
		        call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r需要战斗力大于5000才能上去,你目前战斗力为"+I2S(udg_Zhandouli[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])+".")
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    伤害事件
	*/
	function SimulateDamageMiniGame takes unit u returns boolean
		if ((GetUnitTypeId(u) == 'h01U' or GetUnitTypeId(u) == 'h02D') and GetTriggerUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
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
		//离开1的事件
        local trigger t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Game1 )
        call TriggerAddCondition(t, Condition(function TMiniGameCon))
        call TriggerAddAction(t, function TLeaveMiniGameAct)

        //进入12的事件
        set t = CreateTrigger()
        call TriggerRegisterEnterRectSimple( t, gg_rct_Game1 )
        call TriggerRegisterEnterRectSimple( t, gg_rct_Game2 )
        call TriggerAddCondition(t, Condition(function TMiniGameCon))
        call TriggerAddAction(t, function TEnterMiniGameAct)

        //离开2的事件
        set t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Game2 )
        call TriggerAddCondition(t, Condition(function TMiniGameCon))
        call TriggerAddAction(t, function TLeaveMiniGame2Act)

        set UGame2 =  CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE),'n022',GetRectCenterX(gg_rct_Game2),GetRectCenterY(gg_rct_Game2),270)

        set t = null

	endfunction

endlibrary