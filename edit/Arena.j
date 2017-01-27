

//! import "LHBase.j"
library_once Arena initializer InitArena requires LHBase

	globals

		constant integer ARENA_MAX_LEVEL = 50

		/*
		    需要注释
		*/
		rect gg_rct_Arena_1
		rect gg_rct_Arena_2
		rect gg_rct_Arena_all
		rect gg_rct_Arena_forbit

		/*
		    功能
		*/
		private trigger TRefreshLevel
		private trigger TDieEvent

		/*
		    技能
		*/
		private trigger TSpellLinger
		private trigger TSpellZhousi
		private trigger TSpellXuemo1
		private trigger TSpellXuemo2
		private trigger TSpellFuwang1
		private trigger TSpellFuwang2
		private trigger TSpellMeidusha1
		private trigger TSpellMeidusha2
		private trigger TSpellKiller1
		private trigger TSpellKiller2
		private trigger TSpellKiller3
		private trigger TSpellJinxuan1
		private trigger TSpellJinxuan2
		private trigger TSpellJinxuan3
		private trigger TSpellJinxuan4

		/*
		    当前挑战的人的位置
		*/
		private integer currentArena = 0
		/*
		    当前擂台的能力等级
		*/
		private integer currentLevel = 1
		/*
		    擂主
		*/
		private unit challenager = null
		/*
		    挑战者
		*/
		private unit defier = null
		/*
		    漂浮文字
		*/
		private texttag textTag_Level 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    刷新擂台等级并提高能力.
	*/
	private function updateLevel takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer int = GetHeroInt(challenager,true)
		local integer agi = GetHeroAgi(challenager,true)
		local integer str = GetHeroStr(challenager,true)

		if( IsUnitAliveBJ(challenager) and ( currentLevel < ARENA_MAX_LEVEL)) then
			call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(challenager), GetUnitY(challenager)) )
			call SetHeroInt(challenager,int + int / currentLevel ,true)
			call SetHeroAgi(challenager,agi + agi / currentLevel , true)
			call SetHeroStr(challenager,str + str / currentLevel , true)
			set currentLevel  = currentLevel + 1
			//设置技能等级
		else
			set currentLevel = 1
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif

		set t = null
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	/*
	    灵儿技能
	    强制把敌人射到墙角,每两秒也会强制把所有人拉到那里
	*/

	function TSpellLingerCon takes nothing returns boolean
	    return ((GetAttacker() == challenager) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true))
	endfunction

	function TSpellLingerAct takes nothing returns nothing
		call SetUnitX(GetAttackedUnitBJ(),GetRectCenterX(gg_rct_Arena_1))
		call SetUnitY(GetAttackedUnitBJ(),GetRectCenterY(gg_rct_Arena_1))
	endfunction

	/*
	    每2秒就群射一次
	*/
	private function LingerAssemble takes nothing returns nothing
		local real x = GetRectCenterX(gg_rct_Arena_1)
		local real y = GetRectCenterY(gg_rct_Arena_1)
		local group l_group = CreateGroup()
		local unit l_unit
		local timer t = GetExpiredTimer()
		if (IsUnitAliveBJ(challenager)) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(challenager), GetUnitY(challenager), 900, null)
			loop
			    set l_unit = FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if (IsEnemy(GetEnumUnit(),challenager)) then
					call SetUnitX(GetAttackedUnitBJ(),GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(GetAttackedUnitBJ(),GetRectCenterY(gg_rct_Arena_1))
			    endif
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif
		call DestroyGroup(l_group)
		set t = null
		set l_group = null
		set l_unit =null
	endfunction

//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
	/*
	    挑战搭台开始Trigger
	*/
	function TArenaStartAct takes nothing returns nothing
		local location point
		local timer t
		local timer t2

		//符合条件再开始
	    if ((IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true)) then
	        if ((challenager == null)) then
	            if ((currentArena != 9)) then
	            	//开始啦
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。" )
	                 set t2 = CreateTimer()
	                set point = GetRectCenter(gg_rct_Arena_2)
	                if ((currentArena == 0)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Huth', point, 180.00)
	                elseif ((currentArena == 1)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hpb1', point, 180.00)
	                elseif ((currentArena == 2)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hgam', point, 180.00)
	                    call EnableTrigger( TSpellLinger )
	                    call TimerStart(t,2,TRUE,function LingerAssemble)
	                elseif ((currentArena == 3)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hmbr', point, 180.00)
	                    call EnableTrigger( TSpellZhousi )
	                elseif ((currentArena == 4)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Odrt', point, 180.00)
	                    call EnableTrigger( TSpellXuemo1 )
	                    call EnableTrigger( TSpellXuemo2 )
	                elseif ((currentArena == 5)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Ogrh', point, 180.00)
	                    call EnableTrigger( TSpellFuwang1 )
	                    call EnableTrigger( TSpellFuwang2 )
	                elseif ((currentArena == 6)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hvsh', point, 180.00)
	                    call EnableTrigger( TSpellMeidusha1 )
	                    call EnableTrigger( TSpellMeidusha2 )
	                elseif ((currentArena == 7)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hpb2', point, 180.00)
	                    call EnableTrigger( TSpellKiller1 )
	                    call EnableTrigger( TSpellKiller2 )
	                    call EnableTrigger( TSpellKiller3 )
	                elseif ((currentArena == 8)) then
	                    set challenager = CreateUnitAtLoc(Player(10), 'Hlgr', point, 180.00)
	                    call EnableTrigger( TSpellJinxuan1 )
	                    call EnableTrigger( TSpellJinxuan2 )
	                    call EnableTrigger( TSpellJinxuan3 )
	                    call EnableTrigger( TSpellJinxuan4 )
	                endif

	                //初始化单位
	                call SetUnitInvulnerable( challenager, true )
	                call PauseUnitBJ( true, challenager )
	                call UnitAddAbilityBJ( 'A0ES', challenager )

	                call CreateTextTagLocBJ( I2S(currentLevel) + "级", point, 0, 20.00, 100, 0.00, 0.00, 0 )
	                set textTag_Level = GetLastCreatedTextTag()
	                call RemoveLocation( point )

	                call PolledWait(3.00)
	                if ((challenager != null)) then
	                    call SetUnitInvulnerable( challenager, false )
	                    call PauseUnitBJ( false, challenager )
	                    call DisplayTextToPlayer( GetOwningPlayer(defier), 0, 0, "|cFFFF66CC【消息】|r挑战开始！" )
	                    call EnableTrigger( TRefreshLevel )
	                    set t = CreateTimer()
	                    call TimerStart(t,5,TRUE,function updateLevel)
   						call TriggerRegisterUnitEvent(TDieEvent, challenager, EVENT_UNIT_DEATH)
	                else
	                endif
	            else
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台已经全部挑战完毕！" )
	            endif
	        else
	            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请打完这场擂台再挑战新的！（认输方法：输入HG回城）" )
	        endif
	    else
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！" )
	    endif
	    
	    set point = null
	    set t = null
	endfunction

	private function TArenaStartCon takes nothing returns boolean
	    return ((GetItemTypeId(GetSoldItem()) == 'I04D') and BuyerFilter(GetBuyingUnit()))
	endfunction

//---------------------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------------------
	/*
	    离开擂台后判负
	*/
	function TArenaLeaveCon takes nothing returns boolean
	    return ((defier == GetLeavingUnit()) and (IsUnitIllusionBJ(GetLeavingUnit()) != true))
	endfunction

	function TArenaLeaveAct takes nothing returns nothing
	    set defier = null
	    if ((challenager != null)) then
	        call RemoveUnit( challenager )
	        set challenager = null
	        call DestroyTextTag( textTag_Level )
	        call updateLevel()

	        call DisableTrigger( TSpellLinger )
			call DisableTrigger( TSpellZhousi )
			call DisableTrigger( TSpellXuemo1 )
			call DisableTrigger( TSpellXuemo2 )
			call DisableTrigger( TSpellFuwang1 )
			call DisableTrigger( TSpellFuwang2 )
			call DisableTrigger( TSpellMeidusha1 )
			call DisableTrigger( TSpellMeidusha2 )
			call DisableTrigger( TSpellKiller1 )
			call DisableTrigger( TSpellKiller2 )
			call DisableTrigger( TSpellKiller3 )
			call DisableTrigger( TSpellJinxuan1 )
			call DisableTrigger( TSpellJinxuan2 )
			call DisableTrigger( TSpellJinxuan3 )
			call DisableTrigger( TSpellJinxuan4 )
			call DisableTrigger( TRefreshLevel )
	    else
	    endif
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	/*
	    进入挑战场
	*/
	private function TArenaEnterAct takes nothing returns nothing
		local location point
	    if ((GetItemTypeId(GetSoldItem()) == 'fgrd')) then
	        if ((IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true)) then
	            if ((defier == null)) then
	                set defier = GetBuyingUnit()
	                set point = GetRandomLocInRect(gg_rct_Arena_all)
	                call SetUnitPositionLoc( GetBuyingUnit(), point )
	                call PanCameraToTimedLocForPlayer( GetOwningPlayer(GetBuyingUnit()), point, 0.20 )
	                call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(GetBuyingUnit()), GetUnitY(GetBuyingUnit())) )
	                call RemoveLocation( point )
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	            else
	                call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台只支持单挑,里面有人了哦~" )
	            endif
	        else
	            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！" )
	        endif
	    else
	    endif
	    set point = null
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------


	/*
	    掉落装备
	*/
	function TDieEventConditions takes nothing returns boolean
	    return ((IsUnitIllusionBJ(GetDyingUnit()) != true))
	endfunction

	function TDieEventActions takes nothing returns nothing
	   
	    local location point = GetUnitLoc(GetDyingUnit())

	    if ((GetUnitTypeId(GetDyingUnit()) == 'Huth')) then
	        call CreateItemLoc( 'prvt', point )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hpb1')) then
	        call CreateItemLoc( 'cnob', point )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hgam')) then
	        call CreateItemLoc( 'rhth', point )
	        call DestroyTrigger( TSpellLinger )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hmbr')) then
	        call CreateItemLoc( 'hval', point )
	        call DestroyTrigger( TSpellZhousi )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Odrt')) then
	        call CreateItemLoc( 'afac', point )
	        call DestroyTrigger( TSpellXuemo1 )
	        call DestroyTrigger( TSpellXuemo2 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Ogrh')) then
	        call CreateItemLoc( 'pmna', point )
	        call DestroyTrigger( TSpellFuwang1 )
	        call DestroyTrigger( TSpellFuwang2 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hvsh')) then
	        call CreateItemLoc( 'evtl', point )
	        call DestroyTrigger( TSpellMeidusha1 )
	        call DestroyTrigger( TSpellMeidusha2 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hpb2')) then
	        call CreateItemLoc( 'bspd', point )
	        call DestroyTrigger( TSpellKiller3 )
	        call DestroyTrigger( TSpellKiller2 )
	        call DestroyTrigger( TSpellKiller1 )
	    elseif ((GetUnitTypeId(GetDyingUnit()) == 'Hlgr')) then
	        call CreateItemLoc( 'mcou', point )
	        call DestroyTrigger( TSpellJinxuan1 )
	        call DestroyTrigger( TSpellJinxuan2 )
	        call DestroyTrigger( TSpellJinxuan3 )
	        call DestroyTrigger( TSpellJinxuan4 )
	    endif

	    call updateLevel()
	    call RemoveLocation( point )
	    set point = null
	    call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!" )
	    set currentLevel = 1
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitArena takes nothing returns nothing
		//挑战开始--买了"挑战开始"
		local trigger t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddCondition(t, Condition(function TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //离开擂台后判负
	    set t = CreateTrigger()
	    call TriggerRegisterLeaveRectSimple( t, gg_rct_Arena_forbit )
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //进入挑战场--买了"进入擂台"
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SELL_ITEM )
	    call TriggerAddAction(t, function TArenaEnterAct)

	    //擂主死亡事件
	    set TDieEvent = CreateTrigger()
	    call TriggerAddCondition(TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(TDieEvent, function TDieEventActions)

	    //灵儿技能
	    set TSpellLinger = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellLinger, Condition(function TSpellLingerCon))
	    call TriggerAddAction(TSpellLinger, function TSpellLingerAct)


	    set t = null
	endfunction
endlibrary


function Trig______________002Conditions takes nothing returns boolean
    return ((GetAttackedUnitBJ() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
endfunction

function Trig______________002Actions takes nothing returns nothing
    call DisableTrigger( GetTriggeringTrigger() )
    call IssueImmediateOrder( GetAttackedUnitBJ(), "creepthunderclap" )
    call PolledWait(8.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________002 takes nothing returns nothing
    set gg_trg______________002 = CreateTrigger()
    call DisableTrigger(gg_trg______________002)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________002, "宙斯技能_002")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________002, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________002, Condition(function Trig______________002Conditions))
    call TriggerAddAction(gg_trg______________002, function Trig______________002Actions)
endfunction

zhou

function Trig______________003Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 7) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________003Actions takes nothing returns nothing
    call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 200.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = udg_Nandu_JJJ
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
        call UnitApplyTimedLifeBJ( 5.00, 'BHwe', GetLastCreatedUnit() )
        call UnitAddAbilityBJ( 'A0EV', GetLastCreatedUnit() )
        call IssueTargetOrderById( GetLastCreatedUnit(), 852274, GetAttackedUnitBJ() )
        call RemoveLocation( udg_Point )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
    call PolledWait(10.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________003 takes nothing returns nothing
    set gg_trg______________003 = CreateTrigger()
    call DisableTrigger(gg_trg______________003)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________003, "血魔技能_003")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________003, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________003, Condition(function Trig______________003Conditions))
    call TriggerAddAction(gg_trg______________003, function Trig______________003Actions)
endfunction

xue1

function Trig______________004Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 7) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________004Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttackedUnitBJ()))
    call IssuePointOrderLoc( GetAttacker(), "deathanddecay", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call PolledWait(10.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________004 takes nothing returns nothing
    set gg_trg______________004 = CreateTrigger()
    call DisableTrigger(gg_trg______________004)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________004, "血魔技能_004")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________004, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________004, Condition(function Trig______________004Conditions))
    call TriggerAddAction(gg_trg______________004, function Trig______________004Actions)
endfunction

xue2

function Trig______________005Conditions takes nothing returns boolean
    return ((GetAttackedUnitBJ() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
endfunction

function Trig______________005Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SetUnitManaBJ( GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 200.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetRectCenter(gg_rct_Arena_all))
    call SetUnitPositionLoc( GetAttacker(), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call SetUnitPositionLoc( GetAttackedUnitBJ(), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call IssueTargetOrder( GetAttackedUnitBJ(), "attack", GetAttacker() )
    call SetUnitFacing( GetAttacker(), YDWEAngleBetweenUnits(GetAttackedUnitBJ(), GetAttacker()) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call PolledWait(4.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________005 takes nothing returns nothing
    set gg_trg______________005 = CreateTrigger()
    call DisableTrigger(gg_trg______________005)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________005, "斧王技能_005")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________005, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________005, Condition(function Trig______________005Conditions))
    call TriggerAddAction(gg_trg______________005, function Trig______________005Actions)
endfunction

fu1

function Trig______________006Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 7) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 25.00))
endfunction

function Trig______________006Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 25.00 ) )
    call SetUnitFacing( GetAttackedUnitBJ(), YDWEAngleBetweenUnits(GetAttacker(), GetAttackedUnitBJ()) )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttackedUnitBJ()))
    call DestroyEffect( AddSpecialEffectLoc("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F)) )
    call UnitDamageTargetBJ( GetAttacker(), GetAttackedUnitBJ(), ( 100000.00 * ( 1.00 + ( 0.20 * I2R(udg_Nandu) ) ) ), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________006 takes nothing returns nothing
    set gg_trg______________006 = CreateTrigger()
    call DisableTrigger(gg_trg______________006)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________006, "斧王技能_006")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________006, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________006, Condition(function Trig______________006Conditions))
    call TriggerAddAction(gg_trg______________006, function Trig______________006Actions)
endfunction

fu2

function Trig_________________007Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 3) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 150.00))
endfunction

function Trig_________________007Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttackedUnitBJ()))
    call IssuePointOrderLoc( GetAttacker(), "ward", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call PolledWait(5.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig_________________007 takes nothing returns nothing
    set gg_trg_________________007 = CreateTrigger()
    call DisableTrigger(gg_trg_________________007)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_________________007, "美杜莎技能_007")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg_________________007, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg_________________007, Condition(function Trig_________________007Conditions))
    call TriggerAddAction(gg_trg_________________007, function Trig_________________007Actions)
endfunction

mei1

function Trig_________________008Conditions takes nothing returns boolean
    return ((GetTriggerUnit() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetTriggerUnit()) == true) and (IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) > 50.00))
endfunction

function Trig_________________008Func002003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetUnitTypeId(GetFilterUnit()) == 'osp1')))
endfunction

function Trig_________________008Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfPlayerMatching(Player(10), Condition(function Trig_________________008Func002003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) != 0)) then
        call SetUnitManaBJ( GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) - 50.00 ) )
        call SetUnitInvulnerable( GetTriggerUnit(), true )
        call DisableTrigger( GetTriggeringTrigger() )
        call PolledWait(1.00)
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
        call EnableTrigger( GetTriggeringTrigger() )
        call SetUnitInvulnerable( GetTriggerUnit(), false )
    else
        call DisableTrigger( GetTriggeringTrigger() )
        call PolledWait(0.50)
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
        call EnableTrigger( GetTriggeringTrigger() )
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig_________________008 takes nothing returns nothing
    set gg_trg_________________008 = CreateTrigger()
    call DisableTrigger(gg_trg_________________008)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_________________008, "美杜莎技能_008")
#endif
    call YDWESyStemAnyUnitDamagedRegistTrigger( gg_trg_________________008 )
    call TriggerAddCondition(gg_trg_________________008, Condition(function Trig_________________008Conditions))
    call TriggerAddAction(gg_trg_________________008, function Trig_________________008Actions)
endfunction

mei2

function Trig______________009Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________009Func002003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and ((GetUnitTypeId(GetFilterUnit()) == 'Hpb2') and (IsUnitIllusionBJ(GetFilterUnit()) == true))))
endfunction

function Trig______________009Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfPlayerMatching(Player(10), Condition(function Trig______________009Func002003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) < 4)) then
        call SetUnitManaBJ( GetAttacker(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) - 200.00 ) )
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = ( 4 - CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) )
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            set udg_Point = GetUnitLoc(GetAttacker())
            call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttacker()), udg_Point, bj_UNIT_FACING )
            call UnitApplyTimedLifeBJ( 5.00, 'BHwe', GetLastCreatedUnit() )
            call UnitAddAbilityBJ( 'A0EZ', GetLastCreatedUnit() )
            call IssueTargetOrderById( GetLastCreatedUnit(), 852274, GetAttacker() )
            call RemoveLocation( udg_Point )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
    else
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    call PolledWait(1.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________009 takes nothing returns nothing
    set gg_trg______________009 = CreateTrigger()
    call DisableTrigger(gg_trg______________009)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________009, "杀手技能_009")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________009, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________009, Condition(function Trig______________009Conditions))
    call TriggerAddAction(gg_trg______________009, function Trig______________009Actions)
endfunction

killer1

function Trig______________010Conditions takes nothing returns boolean
    return ((GetTriggerUnit() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetTriggerUnit()) == true) and (IsUnitIllusionBJ(GetTriggerUnit()) != true))
endfunction

function Trig______________010Func003003002 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and ((GetUnitTypeId(GetFilterUnit()) == 'Hpb2') and (IsUnitIllusionBJ(GetFilterUnit()) == true))))
endfunction

function Trig______________010Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F, GetUnitsOfPlayerMatching(Player(10), Condition(function Trig______________010Func003003002)))
    if ((CountUnitsInGroup(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)) > 0)) then
        set udg_Point = GetUnitLoc(GetTriggerUnit())
        call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D, GroupPickRandomUnit(YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F)))
        call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D)))
        call SetUnitPositionLoc( GetTriggerUnit(), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
        call SetUnitPositionLoc( YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D), udg_Point )
        call RemoveLocation( udg_Point )
        call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    else
    endif
    call DestroyGroup( YDTriggerGetEx(group, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9E80183F) )
    call PolledWait(5.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________010 takes nothing returns nothing
    set gg_trg______________010 = CreateTrigger()
    call DisableTrigger(gg_trg______________010)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________010, "杀手技能_010")
#endif
    call YDWESyStemAnyUnitDamagedRegistTrigger( gg_trg______________010 )
    call TriggerAddCondition(gg_trg______________010, Condition(function Trig______________010Conditions))
    call TriggerAddAction(gg_trg______________010, function Trig______________010Actions)
endfunction

killer2

function Trig______________011Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttacker()) == true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetRandomInt(1, 3) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________011Actions takes nothing returns nothing
    call DisableTrigger( GetTriggeringTrigger() )
    call IssueImmediateOrder( udg_Unit_Leitai[2], "windwalk" )
    call PolledWait(1.00)
    call IssueTargetOrder( udg_Unit_Leitai[2], "attack", udg_Unit_Leitai[1] )
    call PolledWait(7.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________011 takes nothing returns nothing
    set gg_trg______________011 = CreateTrigger()
    call DisableTrigger(gg_trg______________011)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________011, "杀手技能_011")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________011, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________011, Condition(function Trig______________011Conditions))
    call TriggerAddAction(gg_trg______________011, function Trig______________011Actions)
endfunction

killer3

function Trig______________012Conditions takes nothing returns boolean
    return ((GetAttacker() == udg_Unit_Leitai[2]) and (IsUnitIllusionBJ(GetAttacker()) != true) and (IsUnitAliveBJ(GetAttacker()) == true) and (GetRandomInt(1, 7) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttacker()) > 200.00))
endfunction

function Trig______________012Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttackedUnitBJ()))
    call IssuePointOrderLoc( GetAttacker(), "rainoffire", YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call PolledWait(7.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________012 takes nothing returns nothing
    set gg_trg______________012 = CreateTrigger()
    call DisableTrigger(gg_trg______________012)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________012, "瑾轩技能_012")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________012, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________012, Condition(function Trig______________012Conditions))
    call TriggerAddAction(gg_trg______________012, function Trig______________012Actions)
endfunction

jinxuan1

function Trig______________013Conditions takes nothing returns boolean
    return ((GetAttackedUnitBJ() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetAttackedUnitBJ()) == true) and (IsUnitIllusionBJ(GetAttackedUnitBJ()) != true) and (GetRandomInt(1, 20) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) > 200.00))
endfunction

function Trig______________013Actions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call SetUnitManaBJ( GetAttackedUnitBJ(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetAttackedUnitBJ()) - 200.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
    call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(GetAttackedUnitBJ()), udg_Point, bj_UNIT_FACING )
    call UnitApplyTimedLifeBJ( 9.00, 'BHwe', GetLastCreatedUnit() )
    call UnitAddAbilityBJ( 'ANst', GetLastCreatedUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F, GetUnitLoc(GetAttacker()))
    call IssuePointOrderByIdLoc( GetLastCreatedUnit(), 852593, YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x5E83114F) )
    call RemoveLocation( udg_Point )
    call PolledWait(8.00)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig______________013 takes nothing returns nothing
    set gg_trg______________013 = CreateTrigger()
    call DisableTrigger(gg_trg______________013)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________013, "瑾轩技能_013")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________013, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________013, Condition(function Trig______________013Conditions))
    call TriggerAddAction(gg_trg______________013, function Trig______________013Actions)
endfunction

jinxuan2

function Trig______________014Conditions takes nothing returns boolean
    return ((IsUnitEnemy(GetTriggerUnit(), Player(10)) == true) and (IsUnitInRange(GetTriggerUnit(), udg_Unit_Leitai[2], 600) == true) and (GetUnitStateSwap(UNIT_STATE_MANA, udg_Unit_Leitai[2]) > 100.00))
endfunction

function Trig______________014Actions takes nothing returns nothing
    call SetUnitManaBJ( udg_Unit_Leitai[2], ( GetUnitStateSwap(UNIT_STATE_MANA, udg_Unit_Leitai[2]) - 100.00 ) )
    call DisableTrigger( GetTriggeringTrigger() )
    set udg_Point = GetUnitLoc(udg_Unit_Leitai[2])
    call CreateNUnitsAtLoc( 1, 'h000', GetOwningPlayer(udg_Unit_Leitai[2]), udg_Point, bj_UNIT_FACING )
    call UnitApplyTimedLifeBJ( 3.00, 'BHwe', GetLastCreatedUnit() )
    call UnitAddAbilityBJ( 'AHtb', GetLastCreatedUnit() )
    call IssueTargetOrder( GetLastCreatedUnit(), "thunderbolt", GetTriggerUnit() )
    call RemoveLocation( udg_Point )
    call PolledWait(0.10)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________014 takes nothing returns nothing
    set gg_trg______________014 = CreateTrigger()
    call DisableTrigger(gg_trg______________014)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________014, "瑾轩技能_014")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________014, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg______________014, Condition(function Trig______________014Conditions))
    call TriggerAddAction(gg_trg______________014, function Trig______________014Actions)
endfunction

jinxuan3

function Trig______________015Conditions takes nothing returns boolean
    return ((GetTriggerUnit() == udg_Unit_Leitai[2]) and (IsUnitAliveBJ(GetTriggerUnit()) == true) and (IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetEventDamageSource() == gg_unit_Eevi_0020) and (GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) > 200.00))
endfunction

function Trig______________015Actions takes nothing returns nothing
    call DisableTrigger( GetTriggeringTrigger() )
    call SetUnitManaBJ( GetEventDamageSource(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetEventDamageSource()) - 300.00 ) )
    call PolledWait(2.00)
    call EnableTrigger( GetTriggeringTrigger() )
endfunction

//===========================================================================
function InitTrig______________015 takes nothing returns nothing
    set gg_trg______________015 = CreateTrigger()
    call DisableTrigger(gg_trg______________015)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________015, "瑾轩技能_015")
#endif
    call YDWESyStemAnyUnitDamagedRegistTrigger( gg_trg______________015 )
    call TriggerAddCondition(gg_trg______________015, Condition(function Trig______________015Conditions))
    call TriggerAddAction(gg_trg______________015, function Trig______________015Actions)
endfunction

jinxuan4