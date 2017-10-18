//! import "LHBase.j"
//! import "SpellBase.j"
//! import "Shilian.j"
/////! import "NetVersion.j"

library_once Kuanghuan initializer InitKuanghuan requires LHBase,SpellBase,Shilian,Version

	globals
		private trigger TRedAttack = null
		private boolean array BKuanghuanRed
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    红BUFF
	*/
	private function TRedAttackCon takes nothing returns boolean
		return (IKuanghuanType[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))] == 1 and GetAttackedUnitBJ() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]) or (IKuanghuanType[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))] == 1 and GetAttacker() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))])
	endfunction
	
	private function TRedAttackAct takes nothing returns nothing
		local unit u = null
		if (IKuanghuanType[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))] == 1) then
			if not(BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))]) then
				set u = GetAttacker()
				call DestroyEffect(AddSpecialEffect("war3mapImported\\FireNova2.mdl", GetUnitX(GetAttackedUnitBJ()),GetUnitY(GetAttackedUnitBJ()) ))
				call DamageArea(u,GetUnitX(GetAttackedUnitBJ()), GetUnitY(GetAttackedUnitBJ()),600,GetDamageBase(u) * 2	)
	    		call CreateSpellTextTag("红色泪殇——炎",u,100,0,0,4)
				set BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(u))] = true
				call PolledWait(3.0)
				set BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(u))] = false
				set u = null
			endif
		else
			if not(BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]) then
				set u = GetAttackedUnitBJ()
				call RecoverUnitHP(u,0.6)
		    	call RecoverUnitMP(u,200)
 				call SimulateSpell(u,u,'A0NE',1,6,"stomp",false,true,false)
				call DestroyEffect(AddSpecialEffect("war3mapImported\\FrostNova2.mdl", GetUnitX(u),GetUnitY(u) ))
	    		call CreateSpellTextTag("红色泪殇——霜",u,0,0,80,4)
				set BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(u))] = true
				call PolledWait(3.0)
				set BKuanghuanRed[GetConvertedPlayerId(GetOwningPlayer(u))] = false
				set u = null
			endif
		endif
	endfunction

	private function InitRedColor takes player p returns nothing
		set IKuanghuanType[GetConvertedPlayerId(p)] = 1
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 0, 0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(p)+"获得了狂欢模式的|cffff0000【狂欢BUFF】红色泪殇|r.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    蓝色BUFF
	*/
	private function InitBlueColor takes player p returns nothing
		set IKuanghuanType[GetConvertedPlayerId(p)] = 2
		call UnitAddAbilityP(udg_H[GetConvertedPlayerId(p)],'A0NF')
		call SetPlayerAbilityAvailable(p,'A0NF',false)
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 100.0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(p)+"获得了狂欢模式的|cff00ccff【狂欢BUFF】蓝焰轰影|r.")
		call AddXingUnit(udg_H[GetConvertedPlayerId(p)])
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    绿色
	*/

	function GiveGreenEggs takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (IKuanghuanType[i] == 3) then
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】你获得了来自狂欢模式中每一波赠送的绿踪彩蛋.|r")
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】你获得了来自狂欢模式中每一波赠送的绿踪彩蛋.|r")
				call DisplayTextToPlayer(ConvertedPlayer(i), 0., 0., "|cFFFF66CC【消息】你获得了来自狂欢模式中每一波赠送的绿踪彩蛋.|r")
				call UnitAddItemByIdSwapped('I02U', udg_H[i])
		        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,i)
		        call PingMinimapForForce( GetForceOfPlayer(ConvertedPlayer(i)), GetUnitX(udg_H[i]),GetUnitY(udg_H[i]), 5.00 )
			endif
			set i = i +1
		endloop
	endfunction

	private function InitGreenColor takes player p returns nothing
		set IKuanghuanType[GetConvertedPlayerId(p)] = 3
		//call UnitAddItemByIdSwapped('I02U', udg_H[GetConvertedPlayerId(p)])
        //call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(p))
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 100.0, 0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(p)+"获得了狂欢模式的|cff99cc00【狂欢BUFF】绿踪彩蛋|r.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开局随机赠送并计时
	*/	
	function GiveRandomEggs takes unit u returns nothing
		local integer pos = 0
		local integer i = 1
		loop
			exitwhen i > ModuloInteger(DzAPI_Map_GetGameStartTime(),23) + GetConvertedPlayerId(GetOwningPlayer(u)) + udg_Second[1] + udg_Nandu_JJJ
			set pos = GetRandomInt(1,3)
			set i = i +1
		endloop
		if (pos == 1) then
			call UnitAddItemByIdSwapped('I031', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call ShowGameHint(GetOwningPlayer(u),"
			该模式是狂欢活动模式:

			你获得了随机的|cffff0000【狂欢BUFF】红色泪殇|r,
			注意查看你的背包,

			使用后将让你获得很强大的能力哦,
			快去试试吧!")		
		elseif (pos == 2) then
			call UnitAddItemByIdSwapped('I02X', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call ShowGameHint(GetOwningPlayer(u),"
			该模式是狂欢活动模式:

			你获得了随机的|cff00ccff【狂欢BUFF】蓝焰轰影|r,
			注意查看你的背包,

			使用后将让你获得很强大的能力哦,
			快去试试吧!")
		elseif (pos == 3) then
			call UnitAddItemByIdSwapped('I02V', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call ShowGameHint(GetOwningPlayer(u),"
			该模式是狂欢活动模式:

			你获得了随机的|cff99cc00【狂欢BUFF】绿踪彩蛋|r,
			注意查看你的背包,

			使用后将让你获得很强大的能力哦,
			快去试试吧!")
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    决定你命运的颜色
	*/
	function ChooseBuffColor takes player p,integer t returns boolean
		if (t == 'I031') then
			call InitRedColor(p)		
			return true
		elseif (t == 'I02X') then
			call InitBlueColor(p)	
			return true
		elseif (t == 'I02V') then
			call InitGreenColor(p)
			return true
		endif
		return false
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    红BUFF
	*/
	private function InitKuanghuan takes nothing returns nothing

		set TRedAttack = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(TRedAttack,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(TRedAttack, Condition(function TRedAttackCon))
		call TriggerAddAction(TRedAttack, function TRedAttackAct)
	endfunction

endlibrary