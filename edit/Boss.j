

//! import "LHBase.j"
//! import "SpellBase.j"
//! import "Diffculty.j"
//! import "Attr.j"
//! import "Juexing.j"
//! import "Battle.j"
/////! import "NetVersion.j"
library_once Boss initializer InitBoss requires LHBase,SpellBase,Attr,Diffculty,Juexing,Battle,Version
	globals
		/*
		    哈希表
		*/
		hashtable bossTable = null
		private trigger TSpellZuo = null
		private trigger TSpellYou = null
		/*
		    导弹计时器
		*/
		private timer TiMissile = null

		//生命联结
		timer TLifeConnect = null
		private lightning array LLifeConnect

		unit UChuanzhang = null
		unit UXiaoY = null
		MultiLife MLChuanzhang = 0
		MultiLife MLXiaoY = 0
		//落时提醒:
		private integer ILuoshi = 0
		//计时器
		timer TiRenYao
		timerdialog TiDiaRenYao
		//大肉棒的数量
		integer IRoubang = 0

		//天赋禁用器
		TianfuForbidder TFChuan = 0
		//肉棒指示器
		timer TRBChuan = null

		//触发器-判断人妖死亡状态
		private trigger TDeathRenyao = null

		//生命联结解药
		boolean BGongxiang = false

		//BOSS伤害统计
		DamageTJ DTJ1 = 0
		DamageTJ DTJ2 = 0
		DamageTJ DTJ3 = 0

		//鬼与仙
		SuperShield TShieldGhost = 0
		SuperShield TShieldAngle = 0
		unit UGhost = null
		unit UAngle = null
		MultiLife MLGhost = 0
		MultiLife MLAngle = 0
		timer TiGhostAngle = null
		timerdialog TiDiaGhostAngle = null
		trigger TSpellGhost = null
		timer TGhostShiye = null
		timer TAngleQuestion = null
		private integer IGuangmang = 0
		trigger TDeathGhostAngle = null
		timer TGhostShiye2 = null

		integer IKongshen = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    给BOSS加上只打基地的指令:挑战
	*/
	function BossAddOnlyAttack takes unit u returns boolean
		if (CT7()) then
			call OnlyAttackBase.create(u)
			return true
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    伤害统计系统
	*/
	struct DamageTJ
		
		private real array RTongji [7]
		private trigger t
		private unit monitor

		private static method DamageCon takes nothing returns boolean
			return GetEventDamage() > 10000000
		endmethod		

		private static method DamageAct takes nothing returns nothing
			local thistype this = thistype[GetTriggeringTrigger()]
			local integer index = GetConvertedPlayerId(GetOwningPlayer(GetEventDamageSource()))
			set .RTongji[index] = .RTongji[index] + (GetEventDamage()/10000000.)
		endmethod

		//输出伤害显示
		method show takes nothing returns nothing
			local integer i = 1
			call BJDebugMsg("※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※")
			call BJDebugMsg("|cffff6800【总伤害统计】|r"+GetUnitName(.monitor))
			loop
				exitwhen i > 6
				if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
					call BJDebugMsg(GetPlayerName(ConvertedPlayer(i)) +":" + R2S(.RTongji[i] / 10) +"亿伤害。")
				endif
				set i = i +1
			endloop
			call .destroy()
		endmethod

        static method operator [] takes handle h returns thistype
            return YDWEGetIntegerByString("damageTJ", I2S(YDWEH2I(h)))
        endmethod

        static method operator []= takes handle h, thistype value returns nothing
            call YDWESaveIntegerByString("damageTJ", I2S(YDWEH2I(h)), value)
        endmethod

        static method flush takes handle h returns nothing
            call YDWEFlushStoredIntegerByString("damageTJ", I2S(YDWEH2I(h)))
        endmethod

		static method create takes unit monitor returns thistype
		   	local thistype this = thistype.allocate()
			local integer i = 1
			set .t = CreateTrigger()
			set .monitor = monitor
			loop
				exitwhen i > 6
				set .RTongji[i] = 0.
				set i = i +1
			endloop
			call TriggerRegisterUnitEvent(.t,monitor,EVENT_UNIT_DAMAGED)
		    call TriggerAddCondition(.t,Condition(function thistype.DamageCon))
		    call TriggerAddAction(.t,function thistype.DamageAct)
			set thistype[.t] = integer(this)
			return this
		endmethod

		method onDestroy takes nothing returns nothing
			local integer i = 1
			call thistype.flush(.t)
			set .monitor = null
			loop
				exitwhen i > 6
				set .RTongji[i] = 0
				set i = i +1
			endloop
			call DestroyTrigger(.t)
			set .t = null
		endmethod
	endstruct
//---------------------------------------------------------------------------------------------------
	/*
	    航海领域
	*/
	private function HaiHangTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local real x 
		local real y 
		local unit temp
		local integer times = IMaxBJ(1,MLChuanzhang.getTimes())
		if (IsUnitAliveBJ(UChuanzhang) or GetUnitAbilityLevel(UChuanzhang,'A0KH') > 0) then
			set x = YDWECoordinateX(GetUnitX(UChuanzhang) + GetRandomReal(-900,900))
			set y = YDWECoordinateY(GetUnitY(UChuanzhang) + GetRandomReal(-900,900))
			set temp = CreateUnit(Player(10),'h01S',x,y,GetRandomReal(0,360))
			call SetUnitAbilityLevel(temp,'A0KI',udg_Nandu_JJJ)
			call UnitApplyTimedLifeBJ( 2.50 * times, 'BHwe', temp)
			call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", x, y ))
		else
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null 
		set temp = null
	endfunction
		

	function InitHanghai takes nothing returns nothing
		local timer t = CreateTimer()
		call TimerStart(t,3,true,function HaiHangTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    计时秒杀
	*/
	private function TimerStoneKaipaoTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group l_group = CreateGroup()
		local unit l_unit
		call GroupEnumUnitsInRange(l_group, LoadReal(LHTable,GetHandleId(t),1), LoadReal(LHTable,GetHandleId(t),2), 300, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if(IsEnemyM(l_unit,UXiaoY)) then
		    	call UnitDamageTarget( UXiaoY, l_unit, GetUnitState(l_unit,UNIT_STATE_MAX_LIFE)*2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set t = null 
	endfunction

	private function TimerStoneKaipao takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveReal(LHTable,GetHandleId(t),1,GetUnitX(u))
		call SaveReal(LHTable,GetHandleId(t),2,GetUnitY(u))
		call DestroyEffect(AddSpecialEffect("Units\\Demon\\Infernal\\InfernalBirth.mdl", GetUnitX(u),GetUnitY(u) ))
		call TimerStart(t,1,false,function TimerStoneKaipaoTimer)
		set t = null
	endfunction

	private function TimerStoneKill takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer i = 1
		if (IsUnitAliveBJ(UXiaoY) or GetUnitAbilityLevel(UXiaoY,'A0KH') > 0) then
			set ILuoshi = ILuoshi - 1
			if (ILuoshi > 3) then
				set t = null
				return
			endif
			loop
				exitwhen i > 6
	            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
	            	if (ILuoshi <= 0) then
	            		call TimerStoneKaipao(udg_H[i])
	            	else
	    				call CreateSpellTextTag("落石:"+I2S(ILuoshi)+"s",udg_H[i],100,0,0,2)
        				call PlaySoundBJ(gg_snd_Clock)
	            	endif
            	endif
				set i = i +1
			endloop
        	if (ILuoshi <= 0) then
				set ILuoshi = 15 - NanDiff * 2
			endif
		else
			set ILuoshi = 0
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null
	endfunction

	function InitTimerStoneKill takes nothing returns nothing
		local timer t = CreateTimer()
		set ILuoshi = 15 - NanDiff * 2
		call TimerStart(t,1,true,function TimerStoneKill)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    法伤变负
	*/
	private function StartFashangTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local integer playerID = LoadInteger(LHTable,id,1)
		local real value = LoadReal(LHTable,id,2)
		call AddSpellPercent(playerID,value)
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤恢复了,可以正常使用技能了!|r")
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤恢复了,可以正常使用技能了!|r")
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤恢复了,可以正常使用技能了!|r")
		call PauseTimer(t)
		call FlushChildHashtable(LHTable,id)
		call DestroyTimer(t)
		set t = null 
	endfunction

	private function StartFashang takes integer playerID returns nothing
		local timer t = null
		if (udg_I_Jinengjiacheng[playerID] <= 0) then
			return
		endif
		set t = CreateTimer()
		call SaveInteger(LHTable,GetHandleId(t),1,playerID)
		call SaveReal(LHTable,GetHandleId(t),2,2 * udg_I_Jinengjiacheng[playerID])
		call AddSpellPercent(playerID,-2 * udg_I_Jinengjiacheng[playerID])
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤变成了负数状态,请谨慎使用技能!|r")
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤变成了负数状态,请谨慎使用技能!|r")
		call DisplayTextToPlayer(ConvertedPlayer(playerID), 0., 0., "|cffff0000【注意】你的法伤变成了负数状态,请谨慎使用技能!|r")
		call TimerStart(t,2*udg_Nandu_JJJ,true,function StartFashangTimer)
		set t = null
	endfunction

	private function FashangfuTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group l_group = null
		local unit l_unit = null
    	call CreateUnitEffect(Player(11),'h01M',GetUnitX(UXiaoY),GetUnitY(UXiaoY),0)
		call CreateSpellTextTag("1800范围法伤皆负!",UXiaoY,100,0,0,4)
		if (IsUnitAliveBJ(UXiaoY) or GetUnitAbilityLevel(UXiaoY,'A0KH') > 0) then
			set l_group = CreateGroup()
			call GroupEnumUnitsInRange(l_group, GetUnitX(UXiaoY),GetUnitY(UXiaoY), 1800, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if (udg_H[GetConvertedPlayerId(GetOwningPlayer(l_unit))] == l_unit) then
			    	call StartFashang(GetConvertedPlayerId(GetOwningPlayer(l_unit)))
			    endif
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set t = null 
	endfunction

	function InitFashangfuTimer takes nothing returns nothing
		local timer t = CreateTimer()
		call TimerStart(t,20,true,function FashangfuTimer)
		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    生命联结
	*/

	function InitConnectLine takes nothing returns nothing
		local integer i = 1
		local unit temp = null
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
				if (temp != null) then
					set LLifeConnect[i-1] = AddLightning( "HWPB", true , GetUnitX(temp),GetUnitY(temp),GetUnitX(udg_H[i]),GetUnitY(udg_H[i]))
				endif
				set temp = udg_H[i]
			endif
			set i = i +1
		endloop
		set temp = null
	endfunction

	//删除生命连结
	function DestroyConnection takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if (LLifeConnect[i] != null) then
				call DestroyLightningBJ(LLifeConnect[i])
			endif
			set i = i +1
		endloop
		call PauseTimer(TLifeConnect)
		call DestroyTimer(TLifeConnect)
		set TLifeConnect = null
		set BGongxiang = false

	endfunction

	private function LifeConnectTimer takes nothing returns nothing
		local integer i = 1
		local unit temp = null
		if (IsUnitAliveBJ(UXiaoY) or GetUnitAbilityLevel(UXiaoY,'A0KH') > 0) then
			loop
				exitwhen i > 6
				if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
					if (temp != null) then
	    				call MoveLightning( LLifeConnect[i-1],true, GetUnitX(temp),GetUnitY(temp),GetUnitX(udg_H[i]),GetUnitY(udg_H[i]) )
					endif
					set temp = udg_H[i]
				endif
				set i = i +1
			endloop
			set temp = null
		else
			call DestroyConnection()
		endif

	endfunction

	//一起死吧~
	function DieTogether takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null and IsUnitAliveBJ(udg_H[i])) then
				call UnitDamageTarget( GetKillingUnitBJ(), udg_H[i], GetUnitState(udg_H[i],UNIT_STATE_MAX_LIFE) * 2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			endif
			set i = i +1
		endloop
		call BJDebugMsg("|cFFFF66CC【消息】|r由于受到生命共享的影响,你们所有英雄受到了致死伤害.")
		debug set BShengming = true
	endfunction

	//开始联结之路
	function StartLifeConnect takes nothing returns nothing
		if (udg_RENSHU < 2) then
			return
		endif
		set TLifeConnect = CreateTimer()
		call InitConnectLine()
		call TimerStart(TLifeConnect,0.05,true,function LifeConnectTimer)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瞬闪攻击
	*/
	private function GetFocusTarget takes nothing returns unit
		local integer i = 1
		loop
			exitwhen i > 6
			if (udg_H[i] != null and IsEnemyMP(udg_H[i],Player(10))) then
				return udg_H[i]
			endif
			set i = i +1
		endloop

		return null
	endfunction

    private function FlashHeroLocation takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local unit target = null
        if (UGhost != null) then
            set target = U3(GetFocusTarget() != null,GetFocusTarget(),gg_unit_haro_0030)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", GetUnitX(UGhost),GetUnitY(UGhost) ))
            call SetUnitX(UGhost,GetUnitX(target))
            call SetUnitY(UGhost,GetUnitY(target))
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", GetUnitX(UGhost),GetUnitY(UGhost) ))
            if (target != gg_unit_haro_0030) then
            	call IssueTargetOrder(UGhost,"attack",target)
            else
            	call IssuePointOrderLocBJ(UGhost,"attack",udg_Point_Fuhuo)
            endif
        else
            call PauseTimer(t)
            call DestroyTimer(t)
        endif
        set t = null 
    endfunction    

	function InitShunshan takes nothing returns nothing
		local timer t = CreateTimer()
		call TimerStart(t,5,true,function FlashHeroLocation)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    视野无效化
	*/
	private function GetShiyanCon takes nothing returns boolean
		local integer i = 1
		local integer count = 0
		loop
			exitwhen i > 6
			if (UnitHasItemOfTypeBJ(udg_H[i],'I05U')) then
				set count = count + 1
			endif
			set i = i +1
		endloop
		set count = count - I3(IsTianyan,3,0)
		return GetRandomInt(1,udg_RENSHU) <= count
	endfunction

	private function ShiyeLiangTimer takes nothing returns nothing
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEIN, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0 )
		call PauseTimer(TGhostShiye2)
		call DestroyTimer(TGhostShiye2)
		set TGhostShiye2 = null
	endfunction

	private function ShiyeAnTimer takes nothing returns nothing
		if not(GetShiyanCon()) then
			call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUT, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0 )
			set TGhostShiye2 = CreateTimer()
			call TimerStart(TGhostShiye2,7,false,function ShiyeLiangTimer)
			call BJDebugMsg("|cFFFF66CC【消息】|r天渐渐的暗了下来...")
		else
			call BJDebugMsg("|cFFFF66CC【消息】|r受到战法双魂-夕的照耀,天空保持着常亮.")
		endif
	endfunction

	function InitShiyeTimer takes nothing returns nothing
		set TGhostShiye = CreateTimer()
		call TimerStart(TGhostShiye,27-2*udg_Nandu_JJJ,true,function ShiyeAnTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    免疫外圈伤害
	*/
	function TSpellGhostCon takes nothing returns boolean
	    return (GetUnitDistance(GetEventDamageSource(),UGhost) > 1800. and (GetEventDamage() > 100))
	endfunction

	function TSpellGhostAct takes nothing returns nothing
		call SetUnitLifeBJ(UGhost,GetUnitState(UGhost,UNIT_STATE_LIFE)+GetEventDamage())
		if (GetRandomInt(1,5) == 1) then
    		call CreateSpellTextTag("1800范围外免疫！",UGhost,0,0,100,2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    提问间隔
	*/
	private function AfterQuestionSucceed takes nothing returns nothing
		if (IsUnitAliveBJ(UGhost)) then
	    	call RecoverUnitHP(UGhost,-0.1)
		endif		
		if (IsUnitAliveBJ(UAngle)) then
	    	call RecoverUnitHP(UAngle,-0.1)
		endif
		debug set IKongshen = IKongshen + 1
		if (IKongshen >= 30) then
			debug call SaveAllPlayerAchievement(415)
		elseif (ModuloInteger(IKongshen,5) == 0) then
			call BJDebugMsg("|cFFFF66CC【消息】|r你们总共答对了"+I2S(IKongshen)+"道题.")
		endif
	endfunction

	private function QuestionTimer takes nothing returns nothing
		call Questions.create(ConvertedPlayer(GetNextPlayerID()),udg_Nandu_JJJ+4,5,AfterSucceed.AfterQuestionSucceed)
	endfunction

	function InitQuestionTimer takes nothing returns nothing
		set TAngleQuestion = CreateTimer()
		call TimerStart(TAngleQuestion,23-2*udg_Nandu_JJJ,true,function QuestionTimer)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    光芒万丈
	*/
	private function GuangmangBoom2 takes nothing returns nothing
		local integer i = 1
        call KillAreaPlayerEnemy(UAngle,GetUnitX(UAngle),GetUnitY(UAngle),1000,Player(10))
        loop
        	exitwhen i > 12
                call UnitApplyTimedLifeBJ( 5, 'BHwe', CreateUnit(GetOwningPlayer(UAngle),'h00J',GetUnitX(UAngle),GetUnitY(UAngle),i* (360 / 12) ))
        	set i = i +1
        endloop
	endfunction

	private function GuangmangBoom takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer i = 1
		if (IsUnitAliveBJ(UAngle) or GetUnitAbilityLevel(UAngle,'A0KH') > 0) then
			set IGuangmang = IGuangmang - 1
			if (IGuangmang > 3) then
				set t = null
				return
			elseif (IGuangmang == 3) then
				call UnitApplyTimedLifeBJ( 3.00, 'BHwe',CreateUnit(Player(10),'h02K',GetUnitX(UAngle),GetUnitY(UAngle),0) )
			else
				call CreateSpellTextTag("光芒:"+I2S(IGuangmang)+"s",UAngle,100,0,100,2)
			endif
			if (IGuangmang <= 0) then
				set IGuangmang = 15 - NanDiff * 2
				call GuangmangBoom2()
			endif
		else
			set IGuangmang = 0
			call PauseTimer(t)
			call DestroyTimer(t)
		endif
		set t = null
	endfunction

	function InitGuangmang takes nothing returns nothing
		local timer t = CreateTimer()
		set IGuangmang = 15 - NanDiff * 2
		call TimerStart(t,1,true,function GuangmangBoom)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄敌队化
	*/
	private function DestroyDiduihua takes nothing returns nothing
		local integer i = 1
		local integer j = 1

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				set j = 1
				loop
					exitwhen j > 6
					if (i != j) then
    					call SetPlayerAllianceStateBJ( ConvertedPlayer(i), ConvertedPlayer(j), bj_ALLIANCE_ALLIED )
					endif
					set j = j +1
				endloop
			endif

			set i = i +1
		endloop
	endfunction

	function InitDiduihua takes nothing returns nothing
		local integer i = 1
		local integer j = 1

		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
				set j = 1
				loop
					exitwhen j > 6
					if (i != j) then
    					call SetPlayerAllianceStateBJ( ConvertedPlayer(i), ConvertedPlayer(j), bj_ALLIANCE_UNALLIED )
					endif
					set j = j +1
				endloop
			endif

			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    复活后伤害
	*/
	function ReviveDamage takes unit u returns nothing
		if (UAngle != null) then
			if (not(UnitHasItemOfTypeBJ(u,'I07K') or UnitHasItemOfTypeBJ(u,'I07J') or UnitHasItemOfTypeBJ(u,'I07I')) and GetRandomInt(1,2) == 1 and GetDiffculty() >= 6) then
	    		call RecoverUnitHP(u,-1.2)
	    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", GetUnitX(u),GetUnitY(u) ))
				call CreateSpellTextTag("复活之火",u,0,100,0,2)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	function CycleFangKa takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(bossTable,id,1)
		local real x2 = GetUnitX(u)
		local real y2 = GetUnitY(u)
		local real x1
		local real y1
		local real distance
		local real facing
		local integer count = 0
		local group l_group = CreateGroup()
		local unit l_unit
		if (IsUnitAliveBJ(u)) then
			call GroupEnumUnitsInRange(l_group, x2, y2, 900, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if((IsUnitAliveBJ(l_unit) == true) and (GetUnitAbilityLevel(l_unit,'Avul') < 1) and (GetUnitPointValue(l_unit) != 123) and (IsUnitEnemy(l_unit, Player(11)) == true) and (not(IsTerrainPathable(GetUnitX(l_unit), GetUnitY(l_unit), PATHING_TYPE_WALKABILITY)))) then
			    	set count = count +1
			    endif
			endloop
			if(count == 0) then
		    	set x1 = GetRectCenterX(gg_rct________1)
		    	set y1 = GetRectCenterY(gg_rct________1)
		    	set distance = SquareRoot((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
		    	if( distance > 600)then
			    	set facing = Atan2BJ(y1-y2,x1-x2)
			    	call SetUnitX(u,YDWECoordinateX(x2+CosBJ(facing)*40))
			    	call SetUnitY(u,YDWECoordinateY(y2+SinBJ(facing)*40))
		    	endif
			endif
		else
			call PauseTimer(t)
			call DestroyTimer(t)
	    	call FlushChildHashtable( bossTable, id )
		endif
		set t = null
		set u = null
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
	endfunction
	/*
	    防卡BOSS
	*/
	function StartFangKa takes unit fangka returns nothing
		local timer t =CreateTimer()
	    call SaveUnitHandle( bossTable, GetHandleId(t), 1, fangka )
		call TimerStart(t,0.1,true,function CycleFangKa)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    左护法的一个技能,锁链
	*/
	function TSpellZuoCon takes nothing returns boolean
	    return ((IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	function TSpellZuoAct takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttackedUnitBJ(),GetAttacker(),'AB00',udg_Nandu_JJJ,5,"magicleash",false,false,true)
	    call CreateSpellTextTag("死亡枷锁！",gg_unit_Uear_0242,100,75,0,2)
	    call PolledWait(4.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    右护法的一个技能,导弹
	*/
	function TSpellYouCon takes nothing returns boolean
	    return ((IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1))
	endfunction

	function TSpellYouAct takes nothing returns nothing
	    call DisableTrigger( GetTriggeringTrigger() )
 		call SimulateSpell(GetAttackedUnitBJ(),GetAttacker(),'ANc2',udg_Nandu_JJJ,5,"clusterrockets",true,false,false)
	    call CreateSpellTextTag("异界冰封！",gg_unit_Npld_0253,25,100,25,2)
	    call PolledWait(4.00)
	    call EnableTrigger( GetTriggeringTrigger() )
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    导弹
	*/
	function startMissile takes nothing returns nothing
		call Missile.create(gg_unit_Nkjx_0241,'hs01',"Units\\Demon\\Infernal\\InfernalBirth.mdl",300,1800,3,1,1000000000)
	endfunction

	function refreshMissile takes nothing returns nothing
		local real interval
		local timer t = GetExpiredTimer()
		if(IsUnitAliveBJ(gg_unit_Nkjx_0241) == true) then
			set interval = (GetUnitState(gg_unit_Nkjx_0241,UNIT_STATE_LIFE) / GetUnitState(gg_unit_Nkjx_0241,UNIT_STATE_MAX_LIFE) * 0.2) + 0.2
			call TimerStart(TiMissile,interval,true,function startMissile)
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call PauseTimer(TiMissile)
			call DestroyTimer(TiMissile)
		endif
		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    冥王三巨头的技能初始化
	*/
	function InitMingwang takes nothing returns nothing
		local timer refresh = CreateTimer()
		/*
		    冥王的吸
		*/
        local Attract attract = Attract.create(gg_unit_Nkjx_0241,1800,0.05,10)
        call attract.start()

        set DTJ1 = DamageTJ.create(gg_unit_Nkjx_0241)
        set DTJ2 = DamageTJ.create(gg_unit_Uear_0242)
        set DTJ3 = DamageTJ.create(gg_unit_Npld_0253)

        //左右护法的技能
	    set TSpellZuo = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellZuo, gg_unit_Uear_0242, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellZuo, Condition(function TSpellZuoCon))
	    call TriggerAddAction(TSpellZuo, function TSpellZuoAct)

	    set TSpellYou = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellYou, gg_unit_Npld_0253, EVENT_UNIT_ATTACKED)
	    call TriggerAddCondition(TSpellYou, Condition(function TSpellYouCon))
	    call TriggerAddAction(TSpellYou, function TSpellYouAct)

	    //冥刹的死亡导弹
		set TiMissile = CreateTimer()
		//开始疯狂导弹
		call TimerStart(TiMissile,0.4,true,function startMissile)
		call TimerStart(refresh,3,true,function refreshMissile)
		set refresh = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冥王三巨头的技能善后
	*/
	function DestroyMingwang takes nothing returns nothing
		call DestroyTrigger(TSpellZuo)
		call DestroyTrigger(TSpellYou)
	endfunction
//---------------------------------------------------------------------------------------------------

	function InitSaisilier takes unit u returns nothing
        local Attract attract = Attract.create(u,1800,0.05,14)
        call attract.start()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    不断攻击基地或者周围
	*/
	private function EnemyFilter takes nothing returns boolean
		return IsEnemyMP(GetFilterUnit(),Player(11))
	endfunction

    private function JudgeBossAttackTimer takes nothing returns nothing
    	local timer t = GetExpiredTimer()
    	local integer id = GetHandleId(t)
    	local unit u = LoadUnitHandle(LHTable,id,1)
    	local group l_group = CreateGroup()
    	call GroupEnumUnitsInRange(l_group, GetUnitX(u),GetUnitY(u), 900, Condition(function EnemyFilter))
    	if (IsUnitInGroup(gg_unit_haro_0030,l_group)) then
    		call GroupRemoveUnit(l_group,gg_unit_haro_0030)
    	endif
    	if (IsUnitAliveBJ(u) or GetUnitAbilityLevel(u,'A0KH') > 0) then
    		if (CountUnitsInGroup(l_group) >= 1) then
    			call IssueTargetOrder(u,"attack",GroupPickRandomUnit(l_group))
    		else
    			call IssuePointOrderLoc(u,"attack",udg_Point_Fuhuo)
    		endif
    	else
    		call PauseTimer(t)
    		call FlushChildHashtable(LHTable,id)
    		call DestroyTimer(t)
    	endif
    	call DestroyGroup(l_group)
    	set l_group = null
    	set u = null
    	set t = null 
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    大肉棒判断
	*/
	private function DaroubangJudge takes nothing returns nothing
		if (MLChuanzhang.getTimes()>IRoubang) then
			set IRoubang = MLChuanzhang.getTimes()
	    	call Roubang.create(UChuanzhang,10,100,1.33*IRoubang,GetRandomReal(0,360),'h01T')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
		鬼仙死亡
	*/

	private function TDeathGhostAngleAct takes nothing returns nothing
		if (GetDyingUnit() == UGhost) then
			call MLGhost.destroy()
			call TShieldGhost.destroy()
			call PauseTimer(TGhostShiye)
			call DestroyTimer(TGhostShiye)
			set TGhostShiye = null
			call DestroyTrigger(TSpellGhost)
			set UGhost = null
		endif		
		if (GetDyingUnit() == UAngle) then
			call MLAngle.destroy()
			call TShieldAngle.destroy()
			call PauseTimer(TAngleQuestion)
			call DestroyTimer(TAngleQuestion)
			set TAngleQuestion = null
			set IGuangmang = 0
			call DestroyDiduihua()
			set UAngle = null
		endif
		if (not(IsUnitAliveBJ(UGhost)) and GetUnitAbilityLevel(UGhost,'A0KH') < 1 and not(IsUnitAliveBJ(UAngle)) and GetUnitAbilityLevel(UAngle,'A0KH') < 1) then
		    call PauseTimer( udg_Time_BOSS )
		    call DestroyTimer(udg_Time_BOSS)
	    	call DestroyTimerDialog( udg_Timer_BOSS )
			call CinematicModeBJ( true, GetPlayersAll() )
		    call TransmissionFromUnitWithNameBJ( GetPlayersAll(), udg_H[GetConvertedPlayerId(GetFirstPlayer())], GetUnitName(udg_H[GetConvertedPlayerId(GetFirstPlayer())]), null, "看似这场战争暂时性的结束了...不过看似这背后并不简单?", bj_TIMETYPE_ADD, 2.00, true )
		    call PolledWait(2.00)
		    call TransmissionFromUnitWithNameBJ( GetPlayersAll(), udg_H[GetConvertedPlayerId(GetFirstPlayer())], GetUnitName(udg_H[GetConvertedPlayerId(GetFirstPlayer())]), null, "游戏将在60秒后结束...", bj_TIMETYPE_ADD, 2.00, true )
		    call PolledWait(2.00)
	        call DTJ1.show()
	        call DTJ2.show()
	        set DTJ1 = 0
	        set DTJ2 = 0
		    call PrintMengjiPassword()
		    call PrintMengjiPassword()
		    call PrintMengjiPassword()
		    call PrintMengjiPassword()
		    call PrintCanglingPassword()
		    call PrintCanglingPassword()
		    call PrintCanglingPassword()
		    call PrintCanglingPassword()
		    call PrintXinglongPassword()
		    call PrintXinglongPassword()
		    call PrintXinglongPassword()
		    call PrintXinglongPassword()
		    call PrintXiaotingPassword()
		    call PrintXiaotingPassword()
		    call PrintXiaotingPassword()
		    call PrintXiaotingPassword()
		    debug call SaveAchievementKuilei2()
		    ////debug call CreateAllYuebing()
		    call CinematicModeBJ( false, GetPlayersAll() )
		    call PolledWait(60.00)
		    call ForForce( GetPlayersAll(), function ShengliAll )

		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    生命变化的重新设置1段无敌
	*/
	private function AfterBossLessLife takes unit u returns nothing
		if (u == UGhost) then
			call TShieldGhost.destroy()
	        set TShieldGhost = SuperShield.create(UGhost,1)
	        call TShieldGhost.SetDeathContinue()
		elseif (u == UAngle) then
			call TShieldAngle.destroy()
	        set TShieldAngle = SuperShield.create(UAngle,1)
	        call TShieldAngle.SetDeathContinue()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化鬼与仙
	*/
	private function InitGhostAngle takes nothing returns nothing
		local timer t = null
		call ShowGameHintAll("
		    |cffffff00上路BOSS(鬼王傀儡) 技能:|r
	        4次生命,1段无敌
	        瞬闪攻击
	        视野无效化
	        圈外免疫
	        百分比攻击

	        |cff00ccff下路BOSS(仙王傀儡) 技能:|r
	        4次生命,1段无敌
	        数学提问(回答错误会扣防护罩)
	        光芒万丈(读秒预判)
	        英雄敌队化(各自为战)
	        复活之火(复活后的伤害)

	        |cffff0000BOSS正式进攻!|r")
		//call PolledWait(10)
		set UGhost = CreateUnit(Player(11),'N02B',GetRectCenterX(gg_rct________3),GetRectCenterY(gg_rct________3),90)
		set UAngle = CreateUnit(Player(11),'N02C',GetRectCenterX(gg_rct________6),GetRectCenterY(gg_rct________6),270)
		//多条命
		set MLGhost = MultiLife.create(UGhost,I3(IsWanjie(),4,I3(renshu == 1 or GetDiffculty() < 5,2,3)))
		set MLAngle = MultiLife.create(UAngle,I3(IsWanjie(),4,I3(renshu == 1 or GetDiffculty() < 5,2,3)))


		call MLGhost.setAL(AfterLessLife.AfterBossLessLife)
		call MLAngle.setAL(AfterLessLife.AfterBossLessLife)
        set TShieldGhost = SuperShield.create(UGhost,1)
        call TShieldGhost.SetDeathContinue()
        set TShieldAngle = SuperShield.create(UAngle,1)
        call TShieldAngle.SetDeathContinue()

		call SetUnitAbilityLevel(UAngle,'A0AG',udg_Nandu_JJJ)
		call SetUnitAbilityLevel(UGhost,'A0AG',udg_Nandu_JJJ)
		call StartFangKa( UGhost )
		call StartFangKa( UAngle )

	    call PauseTimer( TiGhostAngle )
	    call DestroyTimer(TiGhostAngle)
    	call DestroyTimerDialog( TiDiaGhostAngle )

        set DTJ1 = DamageTJ.create(UAngle)
        set DTJ2 = DamageTJ.create(UGhost)

        set udg_Time_BOSS = CreateTimer()
	    call StartTimerBJ( udg_Time_BOSS, false, 1200.00 )
	    call CreateTimerDialogBJ( udg_Time_BOSS, "限时击杀时间" )
	    set udg_Timer_BOSS = GetLastCreatedTimerDialogBJ()
	    call TimerDialogDisplayBJ( true, udg_Timer_BOSS )
	    if (not(CT7())) then
		    set t = CreateTimer()
		    call SaveUnitHandle(LHTable,GetHandleId(t),1,UAngle)
		    call TimerStart(t,1,true,function JudgeBossAttackTimer)
		    set t = CreateTimer()
		    call SaveUnitHandle(LHTable,GetHandleId(t),1,UGhost)
		    call TimerStart(t,1,true,function JudgeBossAttackTimer)
		    set t = null
		else
			call BossAddOnlyAttack(UAngle)
			call BossAddOnlyAttack(UGhost)
	    endif



	    //鬼王技能
		call InitShiyeTimer()
		set TSpellGhost = CreateTrigger()
		call TriggerRegisterUnitEvent(TSpellGhost,UGhost,EVENT_UNIT_DAMAGED)
		call TriggerAddCondition(TSpellGhost, Condition(function TSpellGhostCon))
		call TriggerAddAction(TSpellGhost, function TSpellGhostAct)
		if (GetDiffculty() >= 6) then
			call InitShunshan()
		endif

	    //仙帝技能
		call InitQuestionTimer()
		call InitGuangmang()
	    if (GetDiffculty() >= 6) then
	    	call InitDiduihua()
	    endif

    	set TDeathGhostAngle = CreateTrigger()
    	call TriggerAddAction(TDeathGhostAngle, function TDeathGhostAngleAct)
    	call TriggerRegisterUnitEvent( TDeathGhostAngle, UGhost, EVENT_UNIT_DEATH )
    	call TriggerRegisterUnitEvent( TDeathGhostAngle, UAngle, EVENT_UNIT_DEATH )

	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    开始鬼王与仙王的计时器
	*/
	function StartGhostAngleTimer takes nothing returns nothing
        set TiGhostAngle = CreateTimer()
        set TiDiaGhostAngle = CreateTimerDialogBJ(TiGhostAngle,"六界傀儡2")
	    call PauseTimer( udg_Double_M[1] )
	    call DestroyTimer(udg_Double_M[1])
    	call DestroyTimerDialog( udg_Double_Me )
        call TimerStart(TiGhostAngle,GetWangSpeed(),false,function InitGhostAngle)
        call TimerDialogDisplay(TiDiaGhostAngle,true)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    人妖死亡后的判断
	*/
	
	private function TDeathRenyaoAct takes nothing returns nothing
		if (GetDyingUnit() == UXiaoY) then
			call DestroyConnection()
		endif		
		if (GetDyingUnit() == UChuanzhang) then
		    call TFChuan.destroy()
		    call PauseTimer(TRBChuan)
		    call DestroyTimer(TRBChuan)
		endif
		if (not(IsUnitAliveBJ(UXiaoY)) and GetUnitAbilityLevel(UXiaoY,'A0KH') < 1 and not(IsUnitAliveBJ(UChuanzhang)) and GetUnitAbilityLevel(UChuanzhang,'A0KH') < 1) then
		    call PauseTimer( udg_Time_BOSS )
		    call DestroyTimer(udg_Time_BOSS)
	    	call DestroyTimerDialog( udg_Timer_BOSS )
			//call CinematicModeBJ( true, GetPlayersAll() )
		    //call TransmissionFromUnitWithNameBJ( GetPlayersAll(), udg_H[GetConvertedPlayerId(GetFirstPlayer())], GetUnitName(udg_H[GetConvertedPlayerId(GetFirstPlayer())]), null, "看似这场战争暂时性的结束了...不过看似这背后并不简单?", bj_TIMETYPE_ADD, 2.00, true )
		   // call PolledWait(2.00)
		   // call TransmissionFromUnitWithNameBJ( GetPlayersAll(), udg_H[GetConvertedPlayerId(GetFirstPlayer())], GetUnitName(udg_H[GetConvertedPlayerId(GetFirstPlayer())]), null, "游戏将在60秒后结束...", bj_TIMETYPE_ADD, 2.00, true )
		    debug call SaveAchievement()
		    //call PolledWait(2.00)
	        call DTJ1.show()
	        call DTJ2.show()
	        set DTJ1 = 0
	        set DTJ2 = 0
		    debug call SaveAchievementKuilei1()
		    //call CinematicModeBJ( false, GetPlayersAll() )
		    //debug call CreateAllYuebing()
		    call StartGhostAngleTimer()
		    call BJDebugMsg("|cffff0000【注意】第二波傀儡将于7分钟后进攻!|r")
		    call BJDebugMsg("|cffff0000【注意】第二波傀儡将于7分钟后进攻!|r")
		    call BJDebugMsg("|cffff0000【注意】第二波傀儡将于7分钟后进攻!|r")
		    call BJDebugMsg("|cffff0000【注意】第二波傀儡将于7分钟后进攻!|r")
		    call BJDebugMsg("|cffff0000【注意】第二波傀儡将于7分钟后进攻!|r")
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    初始化人与妖
	*/
	private function InitRenYao takes nothing returns nothing
		local timer t = null
		call ShowGameHintAll("
		    |cffffff00上路BOSS(人王傀儡) 技能:|r
	        3次生命
	        火焰之棒(每死一次多一条棒,速度更快,注意躲开)
	        航海领域(眩晕攻击)
	        天赋禁用(周期性技能)

	        |cff00ccff下路BOSS(妖王傀儡) 技能:|r
	        3次生命
	        生命共享(任一队友死亡则全队死亡)
	        法伤变负(周期性技能,范围有效)
	        陨石坠落(注意倒计时!)

	        |cffff0000BOSS正式进攻!|r")
		//call PolledWait(10)
		set UXiaoY = CreateUnit(Player(11),'N01O',GetRectCenterX(gg_rct________6),GetRectCenterY(gg_rct________6),90)
		set UChuanzhang = CreateUnit(Player(11),'N01P',GetRectCenterX(gg_rct________3),GetRectCenterY(gg_rct________3),270)
		//多条命
		set MLChuanzhang = MultiLife.create(UChuanzhang,I3(IsWanjie(),3,I3(renshu == 1 or GetDiffculty() < 5,1,2)))
		set MLXiaoY = MultiLife.create(UXiaoY,I3(IsWanjie(),3,I3(renshu == 1 or GetDiffculty() < 5,1,2)))
		call SetUnitAbilityLevel(UXiaoY,'A0AG',udg_Nandu_JJJ)
		call SetUnitAbilityLevel(UChuanzhang,'A0AG',udg_Nandu_JJJ)
		call StartFangKa( UXiaoY )
		call StartFangKa( UChuanzhang )

	    call PauseTimer( TiRenYao )
	    call DestroyTimer(TiRenYao)
    	call DestroyTimerDialog( TiDiaRenYao )

        set DTJ1 = DamageTJ.create(UXiaoY)
        set DTJ2 = DamageTJ.create(UChuanzhang)

	    call StartTimerBJ( udg_Time_BOSS, false, 1200.00 )
	    call CreateTimerDialogBJ( udg_Time_BOSS, "限时击杀时间" )
	    set udg_Timer_BOSS = GetLastCreatedTimerDialogBJ()
	    call TimerDialogDisplayBJ( true, udg_Timer_BOSS )
	    if (not(CT7())) then
		    set t = CreateTimer()
		    call SaveUnitHandle(LHTable,GetHandleId(t),1,UXiaoY)
		    call TimerStart(t,1,true,function JudgeBossAttackTimer)
		    set t = CreateTimer()
		    call SaveUnitHandle(LHTable,GetHandleId(t),1,UChuanzhang)
		    call TimerStart(t,1,true,function JudgeBossAttackTimer)
		    set t = null
		else
			call BossAddOnlyAttack(UXiaoY)
			call BossAddOnlyAttack(UChuanzhang)
	    endif
	    //小Y技能
	    call InitFashangfuTimer()
	    if (GetDiffculty() >= 6) then
	   		call InitTimerStoneKill()
	    endif
	    call StartLifeConnect()
	    //船长技能
	    call InitHanghai()
	    set TFChuan = TianfuForbidder.create(UChuanzhang,GetForbidTianfuTime(),10.-GetForbidTianfuTime())
	    set TRBChuan = CreateTimer()
	    call TimerStart(TRBChuan,1,true,function DaroubangJudge)

    	set TDeathRenyao = CreateTrigger()
    	call TriggerAddAction(TDeathRenyao, function TDeathRenyaoAct)
    	call TriggerRegisterUnitEvent( TDeathRenyao, UXiaoY, EVENT_UNIT_DEATH )
    	call TriggerRegisterUnitEvent( TDeathRenyao, UChuanzhang, EVENT_UNIT_DEATH )

	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    开始人王与妖王的计时器
	*/
	function StartRenYaoTimer takes nothing returns nothing
        set TiRenYao = CreateTimer()
        set TiDiaRenYao = CreateTimerDialogBJ(TiRenYao,"六界傀儡1")
	    call PauseTimer( udg_Double_M[1] )
	    call DestroyTimer(udg_Double_M[1])
    	call DestroyTimerDialog( udg_Double_Me )
        call TimerStart(TiRenYao,GetWangSpeed(),false,function InitRenYao)
        call TimerDialogDisplay(TiDiaRenYao,true)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    伤害判定
	*/
	function SimulateDamageBoss takes unit u returns boolean
		if (GetUnitTypeId(u) == 'h01S') then
			call DisableTrigger(GetTriggeringTrigger())
			if (IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE) and playerName[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] != "信哲大人") then
				call UnitDamageTarget( u, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			endif
			call EnableTrigger(GetTriggeringTrigger())
			return true 
		endif
		if (GetUnitTypeId(u) == 'h01T' and IsUnitAliveBJ(UChuanzhang) and IsUnitDeadBJ(GetTriggerUnit())) then
			call RecoverUnitHP(UChuanzhang,0.005)
			return true 
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitBoss takes nothing returns nothing
		set bossTable = InitHashtable()


	endfunction
endlibrary