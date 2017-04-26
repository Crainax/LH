
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄瑟雨的技能
*/
library_once Seyu requires SpellBase,Printer,Attr 
	
	globals
		unit seyu = null
		unit array chongdongs

		private integer chongCount = 0
		/*
		    异界能量
		*/
		private texttag TTPower = null
		private integer IPower
		/*
			增益值 
		*/	
		private real RAddtion

		/*
		    空间封冻技能
		*/
		private trigger TSpellSeyu = null
		private trigger TSpellSeyu2	= null
		private trigger TSpellSeyu3	= null
		key kAnShaCount

	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    获取虫洞单位组
	*/
	private function EnemyFilterSeyu takes nothing returns boolean
		return IsEnemy(GetFilterUnit(),seyu) == true
	endfunction

	function GetChongdongGroup takes real radius,integer count returns group
		local group result = CreateGroup()
		local group temp = null
		local group l_group = null
		local unit l_unit = null
		local integer i = 1
		loop
			exitwhen i > 8
			if (chongdongs[i] != null) then
				set l_group = CreateGroup()
				call GroupEnumUnitsInRange(l_group, GetUnitX(chongdongs[i]), GetUnitY(chongdongs[i]), radius, Condition(function EnemyFilterSeyu))
				set temp = GetRandomSubGroup( count, l_group)
				call GroupAddGroup(temp,result)
				call DestroyGroup(l_group)
				call DestroyGroup(temp)
				set i = i +1
			endif	
		endloop

		set l_group = null
		set l_unit =null
		set temp =null
		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    把虫洞单位组加到指定单位组中
	*/
	function AddChongdongGroup takes group p,real radius,integer count returns nothing
		local group g = GetChongdongGroup(radius,count)
		call GroupAddGroup(g,p)
		set g = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    曼陀罗之刺
	*/
	function Mantuoluo takes unit speller,real damageRate,integer abilityID returns nothing
		local unit u = speller
		local real damage = GetDamageAgi(u) * damageRate
	    local group l_group = CreateGroup()
	    local unit l_unit = null
	    call GroupEnumUnitsInRange(l_group, GetUnitX(speller), GetUnitY(speller), 600, Condition(function EnemyFilterSeyu))
	    call AddChongdongGroup(l_group,600,R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
	    
	    loop
	        set l_unit = FirstOfGroup(l_group)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(l_group, l_unit)
    		call UnitDamageTarget( u, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleHitTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
	    endloop
	    //输出伤害
	    call PrintSpell(GetOwningPlayer(u),GetAbilityName(abilityID),damage)
	    call DestroyGroup(l_group)
	    set l_group = null
	    set l_unit =null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    异界能量
	*/
	function TSpellSeyu2Con takes nothing returns boolean
	    return (((GetAttacker() == seyu) or (GetUnitTypeId(GetAttacker()) == 'espv')) and (IsUnitIllusionBJ(GetAttacker()) != true) and ( IsSecondSpellOK(seyu) == true) and (GetRandomInt(1, 20) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, seyu) > 200.00))
	endfunction

	function TSpellSeyu2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call Mantuoluo(seyu,1,'AUav')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    异界能量1:文字位置
	*/
	//位置刷新，0.05s
	private function FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTPower,seyu,25)
	endfunction

	
	//数值刷新,1秒1次
	private function FlashPowerData takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(seyu))
		local real delta
		//限制能量在0-105之间
		set IPower = IMinBJ(IMaxBJ(IPower - 1,0),105)
		call SetTextTagTextBJ(TTPower,I2S(IPower) + "%能量",20)
		set delta = I2R((IPower/10)*10)/100
		if (RAddtion != delta) then

			call AddStrPercent(index, delta - RAddtion  )
			call AddIntPercent(index, delta - RAddtion  )
			call AddAgiPercent(index, delta - RAddtion  )
			set RAddtion = delta
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(seyu), GetUnitY(seyu) ))
		endif 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
    	异界能量的获取
	*/
	private function TDeathAddPowerCon takes nothing returns boolean
		return (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu)
	endfunction
	
	private function TDeathAddPowerAct takes nothing returns nothing
		set IPower = IPower + 1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化异界能量
	*/
	private function InitPower takes nothing returns nothing
		local timer ti = CreateTimer()
		local trigger t = CreateTrigger()

		//异界能量触发
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(t, Condition(function TDeathAddPowerCon))
		call TriggerAddAction(t, function TDeathAddPowerAct)

		set IPower = 0
		set RAddtion = 0
		set TTPower = CreateTextTagUnitBJ( I2S(IPower) + "%能量", seyu, 0, 20, 100, 0, 100, 0 )
		call TimerStart(ti,0.05,true,function FlashPowerLocation)

		set ti = CreateTimer()
		call TimerStart(ti,1,true,function FlashPowerData)

		set ti = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    空间封冻
	*/
	private function TSpellSeyu3Con takes nothing returns boolean
    	return GetAttackedUnitBJ() == seyu and GetRandomInt(1,20) == 1 and GetUnitState(seyu,UNIT_STATE_MANA) >= 400
	endfunction
		
	private function TSpellSeyu3Act takes nothing returns nothing
		local real damage = GetDamageAgi(seyu) * 2.5
		local group g = CreateGroup()
	    local unit l_unit
		call DisableTrigger(GetTriggeringTrigger())
		//初始化虫洞单位组
		call GroupAddUnit(g,GetAttacker())
		call AddChongdongGroup(g,600,1)
	    call PrintSpell(GetOwningPlayer(seyu),GetAbilityName('AEar'),damage)
	    //局部单位组伤害
	    loop
	        set l_unit = FirstOfGroup(g)
	        exitwhen l_unit == null
	        call GroupRemoveUnit(g, l_unit)
	        call CreateUnitEffect(GetOwningPlayer(seyu),'hh00',GetUnitX(l_unit),GetUnitY(l_unit),0)
	    	call CreateSpellTextTag("冻",l_unit,0,100,0,2)
	        call UnitDamageTarget( seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    endloop
	    call DestroyGroup(g)
		set g = null
	    set l_unit =null
		call PolledWait(8)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    暗杀之舞
	*/
	private function AnShaZhiWuTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local group g = null
		local real damage = GetDamageAgi(seyu) * 0.5
		local integer value = LoadInteger(spellTable,id,kAnShaCount)
		local group l_group = null
		local unit l_unit = null
		local integer i
		if (value < 30) then
			//++1
			call SaveInteger(spellTable,id,kAnShaCount,value + 1)
	    	set l_group = CreateGroup()
			call GroupEnumUnitsInRange(l_group, GetUnitX(seyu), GetUnitY(seyu), 600, Condition(function EnemyFilterSeyu))
	    	call AddChongdongGroup(l_group,600,R2I(SquareRoot(I2R(GetHeroLevel(seyu)))))
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
    			call UnitDamageTarget( seyu, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			endloop
			call DestroyGroup(l_group)
			set l_group = null
			set l_unit =null

			//特效
	        call CreateUnitEffect(GetOwningPlayer(seyu),'h00E',GetUnitX(seyu),GetUnitY(seyu),0)
			set i = 1
			loop
				exitwhen i > 8
				if (chongdongs[i] != null) then
	       			call CreateUnitEffect(GetOwningPlayer(chongdongs[i]),'h00E',GetUnitX(chongdongs[i]),GetUnitY(chongdongs[i]),0)
				endif
				set i = i +1
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable,id)
		endif
		set t = null 
	endfunction

	private function AnShaZhiWu takes nothing returns nothing
		local timer t = CreateTimer()
	    call PrintSpell(GetOwningPlayer(seyu),GetAbilityName(GetSpellAbilityId()),GetDamageAgi(seyu))
		call SaveInteger(spellTable,GetHandleId(t),kAnShaCount,0)
		call TimerStart(t,0.5,true,function AnShaZhiWuTimer)
		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄使用技能
	*/
	private function TSpellSeyuCon takes nothing returns boolean
	    return (GetSpellAbilityUnit() == seyu)
	endfunction

	private function TSpellSeyuAct takes nothing returns nothing
		if ((GetSpellAbilityId() == 'AEfk')) then
			call Mantuoluo(seyu,1,GetSpellAbilityId())
		elseif ((GetSpellAbilityId() == 'AEst')) then
			call AnShaZhiWu()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == seyu) then
			if(whichSpell == 1) then
				set chongCount = chongCount + 1
			elseif (whichSpell == 2 and IsSecondSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AUav') == 1) then
				//技能2初始化
				call InitPower()
				set chongCount = chongCount + 1
			elseif (whichSpell == 3 and IsThirdSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEar') == 1) then
				//技能3初始化
				call SetPlayerTechResearchedSwap( 'R00D', 1, GetOwningPlayer(seyu) )
				set chongCount = chongCount + 1
				set i = 1
       			loop
       				exitwhen i > 6
       				
		            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
		                call AddAgiPercent(i,0.4)
		            endif

       				set i = i +1
       			endloop

			    //注册空间封冻技能
			    set TSpellSeyu3 = CreateTrigger()
			    call TriggerRegisterAnyUnitEventBJ(TSpellSeyu3,EVENT_PLAYER_UNIT_ATTACKED)
			    call TriggerAddCondition(TSpellSeyu3, Condition(function TSpellSeyu3Con))
			    call TriggerAddAction(TSpellSeyu3, function TSpellSeyu3Act)
			elseif (whichSpell == 4 and IsFourthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEsv') == 1) then
				//技能4初始化
				set chongCount = chongCount + 1
			elseif (whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEst') == 1) then
				//技能5初始化
				set chongCount = chongCount + 2
			endif
		endif
	endfunction

	function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if (learner == seyu) then
			if (learnSpellID == 'AEfk') then
				call LearnSkillSeyuI(learner,1)
			elseif (learnSpellID == 'AUav') then
				call LearnSkillSeyuI(learner,2)
			elseif (learnSpellID == 'AEar') then
				call LearnSkillSeyuI(learner,3)
			elseif (learnSpellID == 'AEsv') then
				call LearnSkillSeyuI(learner,4)
			elseif (learnSpellID == 'AEst') then
				call LearnSkillSeyuI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化瑟雨
	*/
	function InitSeyu takes unit u returns nothing
		local integer i = 1
		set seyu = u
		set chongCount = 2
		//1
	    set TSpellSeyu = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellSeyu, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	    call TriggerAddCondition(TSpellSeyu, Condition(function TSpellSeyuCon))
	    call TriggerAddAction(TSpellSeyu, function TSpellSeyuAct)

	    //2
	    set TSpellSeyu2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellSeyu2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellSeyu2, Condition(function TSpellSeyu2Con))
	    call TriggerAddAction(TSpellSeyu2, function TSpellSeyu2Act)

	    loop
	    	exitwhen i > 8
	    	set chongdongs[i] = null
	    	set i = i +1
	    endloop

	endfunction
endlibrary

function Trig_____________63Conditions takes nothing returns boolean
    return ((GetSpellAbilityId() == 'ACst') and (GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER))
endfunction

function Trig_____________63Func003002003 takes nothing returns boolean
    return ((GetUnitTypeId(GetFilterUnit()) == 'ndgt'))
endfunction

function Trig_____________63Actions takes nothing returns nothing
    if ((GetUnitUserData(gg_unit_haro_0030) != 1)) then
        call SetUnitUserData( gg_unit_haro_0030, 1 )
        set udg_Point = GetSpellTargetLoc()
        call SetUnitPositionLoc( gg_unit_ndgt_0236, udg_Point )
        call SetUnitOwner( gg_unit_ndgt_0236, GetOwningPlayer(gg_unit_Ewrd_0250), true )
        call CreateTextTagLocBJ( "TRIGSTR_4032", udg_Point, 0, 40.00, 0.00, 100, 0.00, 0 )
        call SelectUnitForPlayerSingle( gg_unit_ndgt_0236, GetOwningPlayer(gg_unit_Ewrd_0250) )
        set udg_Chongdong_Piaofu[1] = GetLastCreatedTextTag()
        call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(gg_unit_Ewrd_0250)), udg_Point, 2.00 )
        call RemoveLocation( udg_Point )
        call ShowUnitShow( gg_unit_ndgt_0236 )
        return
    else
    endif
    set udg_Point = GetSpellTargetLoc()
    set udg_Group = GetUnitsInRangeOfLocMatching(900.00, udg_Point, Condition(function Trig_____________63Func003002003))
    if ((CountUnitsInGroup(udg_Group) != 0)) then
        call DisplayTextToPlayer( GetOwningPlayer(gg_unit_Ewrd_0250), 0, 0, "TRIGSTR_4033" )
        return
    else
    endif
    call DestroyGroup( udg_Group )
    call RemoveLocation( udg_Point )
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 8
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ((GetUnitUserData(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA()))) == 3)) then
            set udg_Point = GetSpellTargetLoc()
            call ShowUnitShow( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())) )
            call SetUnitPositionLoc( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), udg_Point )
            call SetUnitOwner( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), GetOwningPlayer(gg_unit_Ewrd_0250), true )
            call CreateTextTagLocBJ( ( "虫洞" + ( I2S(GetForLoopIndexA()) + "号" ) ), udg_Point, 0, 40.00, 0.00, 100, 0.00, 0 )
            call SelectUnitForPlayerSingle( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), GetOwningPlayer(gg_unit_Ewrd_0250) )
            set udg_Chongdong_Piaofu[GetForLoopIndexA()] = GetLastCreatedTextTag()
            call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(gg_unit_Ewrd_0250)), udg_Point, 2.00 )
            call RemoveLocation( udg_Point )
            call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), 0 )
            return
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 8
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ((GetUnitUserData(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA()))) == 1)) then
            set udg_Point = GetSpellTargetLoc()
            call SetUnitPositionLoc( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), udg_Point )
            call SetTextTagPosBJ( udg_Chongdong_Piaofu[GetForLoopIndexA()], udg_Point, 0 )
            call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(gg_unit_Ewrd_0250)), udg_Point, 2.00 )
            call SelectUnitForPlayerSingle( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), GetOwningPlayer(gg_unit_Ewrd_0250) )
            call RemoveLocation( udg_Point )
            call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), 0 )
            if ((GetForLoopIndexA() < 8)) then
                if ((GetUnitUserData(YDWEGetUnitByString("空间虫洞", I2S(( GetForLoopIndexA() + 1 )))) == 0)) then
                    call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(( GetForLoopIndexA() + 1 ))), 1 )
                else
                    call SetUnitUserData( YDWEGetUnitByString("空间虫洞", "1"), 1 )
                endif
            else
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", "1"), 1 )
            endif
            call DoNothing() YDNL exitwhen true//(  )
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_____________63 takes nothing returns nothing
    set gg_trg_____________63 = CreateTrigger()
    call DisableTrigger(gg_trg_____________63)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________63, "空间虫洞63")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_____________63, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg_____________63, Condition(function Trig_____________63Conditions))
    call TriggerAddAction(gg_trg_____________63, function Trig_____________63Actions)
endfunction



function Trig_____________64Actions takes nothing returns nothing
    local integer ydul_p
    if ((GetHeroLevel(gg_unit_Ewrd_0250) < 200)) then
        set ydul_p = 1
        loop
            exitwhen ydul_p > 8
            call SetUnitAbilityLevelSwapped( 'ACfu', YDWEGetUnitByString("空间虫洞", I2S(ydul_p)), ( GetHeroLevel(gg_unit_Ewrd_0250) / 2 ) )
            set ydul_p = ydul_p + 1
        endloop
    else
        set ydul_p = 1
        loop
            exitwhen ydul_p > 8
            call SetUnitAbilityLevelSwapped( 'ACfu', YDWEGetUnitByString("空间虫洞", I2S(ydul_p)), 100 )
            set ydul_p = ydul_p + 1
        endloop
    endif
endfunction

//===========================================================================
function InitTrig_____________64 takes nothing returns nothing
    set gg_trg_____________64 = CreateTrigger()
    call DisableTrigger(gg_trg_____________64)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________64, "空间虫洞64")
#endif
    call TriggerRegisterUnitEvent( gg_trg_____________64, gg_unit_Ewrd_0250, EVENT_UNIT_HERO_LEVEL )
    call TriggerAddAction(gg_trg_____________64, function Trig_____________64Actions)
endfunction

function Trig_____________119Conditions takes nothing returns boolean
    return ((GetSpellAbilityId() == 'A0E6'))
endfunction

function Trig_____________119Actions takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 8
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ((GetSpellAbilityUnit() == YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())))) then
            call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), 3 )
            set udg_Point = GetRectCenter(gg_rct______________095)
            call SetUnitOwner( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), Player(0), true )
            call ShowUnitHide( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())) )
            call SetUnitPositionLoc( YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), udg_Point )
            call DestroyTextTag( udg_Chongdong_Piaofu[GetForLoopIndexA()] )
            call RemoveLocation( udg_Point )
            return
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_____________119 takes nothing returns nothing
    set gg_trg_____________119 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________119, "取消虫洞119")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_____________119, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg_____________119, Condition(function Trig_____________119Conditions))
    call TriggerAddAction(gg_trg_____________119, function Trig_____________119Actions)
endfunction

function Trig_____________79Conditions takes nothing returns boolean
    return ((GetSpellAbilityId() == 'AEsv'))
endfunction

function Trig_____________79Func002A takes nothing returns nothing
    call YDTriggerClearTable(YDTriggerAny2I(unit, GetEnumUnit()))
    call RemoveUnit( GetEnumUnit() )
endfunction

function Trig_____________79Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set udg_Group = GetUnitsOfTypeIdAll('espv')
    call ForGroupBJ( udg_Group, function Trig_____________79Func002A )
    call DestroyGroup( udg_Group )
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, R2I(( I2R(GetHeroStatBJ(bj_HEROSTAT_AGI, gg_unit_Ewrd_0250, false)) * SquareRoot(I2R(GetHeroLevel(gg_unit_Ewrd_0250))) )))
    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) + ( "|cFFFF66CC】|r" + ( "" + ( "攻击力" + ( I2S(YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)) + "。" ) ) ) ) ) ) )
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 8
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ((GetUnitUserData(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA()))) != 2) and (GetUnitUserData(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA()))) != 3)) then
            set udg_Point = GetUnitLoc(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())))
            call CreateNUnitsAtLoc( 1, 'espv', GetOwningPlayer(gg_unit_Ewrd_0250), udg_Point, bj_UNIT_FACING )
            call UnitApplyTimedLifeBJ( ( SquareRoot(I2R(GetHeroLevel(gg_unit_Ewrd_0250))) * 10.00 ), 'BTLF', GetLastCreatedUnit() )
            set udg_Chong_Killer[GetForLoopIndexA()] = GetLastCreatedUnit()
            set udg_Unit = GetLastCreatedUnit()
            call YDTriggerSetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x5039AFFB, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820))
            call TriggerExecute( gg_trg_____________800W )
            call RemoveLocation( udg_Point )
            set udg_Unit = null
        else
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    call EnableTrigger( gg_trg_____________80 )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig_____________79 takes nothing returns nothing
    set gg_trg_____________79 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________79, "空间杀手79")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_____________79, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg_____________79, Condition(function Trig_____________79Conditions))
    call TriggerAddAction(gg_trg_____________79, function Trig_____________79Actions)
endfunction

function Trig_____________80Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 0)
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 8
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ((IsUnitAliveBJ(udg_Chong_Killer[GetForLoopIndexA()]) == true)) then
            if ((IsUnitInRange(udg_Chong_Killer[GetForLoopIndexA()], YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA())), 1800.00) == true)) then
            else
                call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(udg_Chong_Killer[GetForLoopIndexA()]))
                call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F)) )
                call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
                call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(YDWEGetUnitByString("空间虫洞", I2S(GetForLoopIndexA()))))
                call SetUnitPositionLoc( udg_Chong_Killer[GetForLoopIndexA()], YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
                call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F)) )
                call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
            endif
        else
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) + 1 ))
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 8)) then
        call DisableTrigger( GetTriggeringTrigger() )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig_____________80 takes nothing returns nothing
    set gg_trg_____________80 = CreateTrigger()
    call DisableTrigger(gg_trg_____________80)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________80, "空间杀手80")
#endif
    call TriggerRegisterTimerEventPeriodic( gg_trg_____________80, 1.00 )
    call TriggerAddAction(gg_trg_____________80, function Trig_____________80Actions)
endfunction

