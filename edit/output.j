globals
//globals from LHBase:
constant boolean LIBRARY_LHBase=true
//endglobals from LHBase
//globals from Arena:
constant boolean LIBRARY_Arena=true

constant integer ARENA_MAX_LEVEL= 50

		
rect gg_rct_Arena_1
rect gg_rct_Arena_2
rect gg_rct_Arena_all
rect gg_rct_Arena_forbit

		
trigger Arena__TRefreshLevel
trigger Arena__TDieEvent

		
trigger Arena__TSpellLinger
trigger Arena__TSpellZhousi
trigger Arena__TSpellXuemo1
trigger Arena__TSpellXuemo2
trigger Arena__TSpellFuwang1
trigger Arena__TSpellFuwang2
trigger Arena__TSpellMeidusha1
trigger Arena__TSpellMeidusha2
trigger Arena__TSpellKiller1
trigger Arena__TSpellKiller2
trigger Arena__TSpellKiller3
trigger Arena__TSpellJinxuan1
trigger Arena__TSpellJinxuan2
trigger Arena__TSpellJinxuan3
trigger Arena__TSpellJinxuan4

		
integer Arena__currentArena= 0
		
integer Arena__currentLevel= 1
		
unit Arena__challenager= null
		
unit Arena__defier= null
		
texttag Arena__textTag_Level
//endglobals from Arena

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library LHBase:

	
 function IsXianSpell takes integer spell returns boolean
		return ( spell == 'Acht' ) or ( spell == 'A03A' ) or ( spell == 'A0BM' ) or ( spell == 'A07Z' ) or ( spell == 'A07T' ) or ( spell == 'A05Z' ) or ( spell == 'ACro' ) or ( spell == 'Acht' ) or ( spell == 'A07X' ) or ( spell == 'A05Y' ) or ( spell == 'AChv' ) or ( spell == 'A07V' ) or ( spell == 'Awrg' ) or ( spell == 'A05X' ) or ( spell == 'A07C' ) or ( spell == 'A07D' ) or ( spell == 'Awrh' ) or ( spell == 'A075' ) or ( spell == 'A06W' ) or ( spell == 'A06Y' ) or ( spell == 'A06Q' ) or ( spell == 'A07R' ) or ( spell == 'ACcl' ) or ( spell == 'AOhw' ) or ( spell == 'AIin' ) or ( spell == 'AIil' ) or ( spell == 'A07S' ) or ( spell == 'AChx' )
	endfunction

	
   function IsEnemy takes unit u,unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false and IsUnitType(u, UNIT_TYPE_SLEEPING) == false and GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false and IsUnitIllusion(u) == false and IsUnitHidden(u) == false and IsUnitEnemy(u, GetOwningPlayer(caster)) and IsUnitVisible(u, GetOwningPlayer(caster))
    endfunction

 function BuyerFilter takes unit buyer returns boolean
		return ( GetUnitTypeId(buyer) != 'N018' )
	endfunction

//library LHBase ends
//library Arena:


//---------------------------------------------------------------------------------------------------
	
 function Arena__updateLevel takes nothing returns nothing
  local timer t= GetExpiredTimer()
  local integer int= GetHeroInt(Arena__challenager, true)
  local integer agi= GetHeroAgi(Arena__challenager, true)
  local integer str= GetHeroStr(Arena__challenager, true)

		if ( IsUnitAliveBJ(Arena__challenager) and ( Arena__currentLevel < ARENA_MAX_LEVEL ) ) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Arena__challenager), GetUnitY(Arena__challenager)))
			call SetHeroInt(Arena__challenager, int + int / Arena__currentLevel, true)
			call SetHeroAgi(Arena__challenager, agi + agi / Arena__currentLevel, true)
			call SetHeroStr(Arena__challenager, str + str / Arena__currentLevel, true)
			set Arena__currentLevel=Arena__currentLevel + 1
			//设置技能等级
		else
			set Arena__currentLevel=1
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif

		set t=null
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	

 function TSpellLingerCon takes nothing returns boolean
	    return ( ( GetAttacker() == Arena__challenager ) and ( IsUnitAliveBJ(GetAttacker()) == true ) and ( IsUnitIllusionBJ(GetAttacker()) != true ) )
	endfunction

 function TSpellLingerAct takes nothing returns nothing
		call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
		call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
	endfunction

	
 function Arena__LingerAssemble takes nothing returns nothing
  local real x= GetRectCenterX(gg_rct_Arena_1)
  local real y= GetRectCenterY(gg_rct_Arena_1)
  local group l_group= CreateGroup()
  local unit l_unit
  local timer t= GetExpiredTimer()
		if ( IsUnitAliveBJ(Arena__challenager) ) then
			call GroupEnumUnitsInRange(l_group, GetUnitX(Arena__challenager), GetUnitY(Arena__challenager), 900, null)
			loop
			    set l_unit=FirstOfGroup(l_group)
			    exitwhen l_unit == null
			    call GroupRemoveUnit(l_group, l_unit)
			    if ( IsEnemy(GetEnumUnit() , Arena__challenager) ) then
					call SetUnitX(GetAttackedUnitBJ(), GetRectCenterX(gg_rct_Arena_1))
					call SetUnitY(GetAttackedUnitBJ(), GetRectCenterY(gg_rct_Arena_1))
			    endif
			endloop
		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call BJDebugMsg("删除计时器了~")
		endif
		call DestroyGroup(l_group)
		set t=null
		set l_group=null
		set l_unit=null
	endfunction

//---------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------
	
 function TArenaStartAct takes nothing returns nothing
  local location point
  local timer t
  local timer t2

		//符合条件再开始
	    if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	        if ( ( Arena__challenager == null ) ) then
	            if ( ( Arena__currentArena != 9 ) ) then
	            	//开始啦
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战将在3秒后开始。")
	                 set t2=CreateTimer()
	                set point=GetRectCenter(gg_rct_Arena_2)
	                if ( ( Arena__currentArena == 0 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Huth', point, 180.00)
	                elseif ( ( Arena__currentArena == 1 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hpb1', point, 180.00)
	                elseif ( ( Arena__currentArena == 2 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hgam', point, 180.00)
	                    call EnableTrigger(Arena__TSpellLinger)
	                    call TimerStart(t, 2, TRUE, function Arena__LingerAssemble)
	                elseif ( ( Arena__currentArena == 3 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hmbr', point, 180.00)
	                    call EnableTrigger(Arena__TSpellZhousi)
	                elseif ( ( Arena__currentArena == 4 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Odrt', point, 180.00)
	                    call EnableTrigger(Arena__TSpellXuemo1)
	                    call EnableTrigger(Arena__TSpellXuemo2)
	                elseif ( ( Arena__currentArena == 5 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Ogrh', point, 180.00)
	                    call EnableTrigger(Arena__TSpellFuwang1)
	                    call EnableTrigger(Arena__TSpellFuwang2)
	                elseif ( ( Arena__currentArena == 6 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hvsh', point, 180.00)
	                    call EnableTrigger(Arena__TSpellMeidusha1)
	                    call EnableTrigger(Arena__TSpellMeidusha2)
	                elseif ( ( Arena__currentArena == 7 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hpb2', point, 180.00)
	                    call EnableTrigger(Arena__TSpellKiller1)
	                    call EnableTrigger(Arena__TSpellKiller2)
	                    call EnableTrigger(Arena__TSpellKiller3)
	                elseif ( ( Arena__currentArena == 8 ) ) then
	                    set Arena__challenager=CreateUnitAtLoc(Player(10), 'Hlgr', point, 180.00)
	                    call EnableTrigger(Arena__TSpellJinxuan1)
	                    call EnableTrigger(Arena__TSpellJinxuan2)
	                    call EnableTrigger(Arena__TSpellJinxuan3)
	                    call EnableTrigger(Arena__TSpellJinxuan4)
	                endif

	                //初始化单位
	                call SetUnitInvulnerable(Arena__challenager, true)
	                call PauseUnitBJ(true, Arena__challenager)
	                call UnitAddAbilityBJ('A0ES', Arena__challenager)

	                call CreateTextTagLocBJ(I2S(Arena__currentLevel) + "级", point, 0, 20.00, 100, 0.00, 0.00, 0)
	                set Arena__textTag_Level=GetLastCreatedTextTag()
	                call RemoveLocation(point)

	                call PolledWait(3.00)
	                if ( ( Arena__challenager != null ) ) then
	                    call SetUnitInvulnerable(Arena__challenager, false)
	                    call PauseUnitBJ(false, Arena__challenager)
	                    call DisplayTextToPlayer(GetOwningPlayer(Arena__defier), 0, 0, "|cFFFF66CC【消息】|r挑战开始！")
	                    call EnableTrigger(Arena__TRefreshLevel)
	                    set t=CreateTimer()
	                    call TimerStart(t, 5, TRUE, function Arena__updateLevel)
   						call TriggerRegisterUnitEvent(Arena__TDieEvent, Arena__challenager, EVENT_UNIT_DEATH)
	                else
	                endif
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台已经全部挑战完毕！")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请打完这场擂台再挑战新的！（认输方法：输入HG回城）")
	        endif
	    else
	        call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！")
	    endif
	    
	    set point=null
	    set t=null
	endfunction

 function Arena__TArenaStartCon takes nothing returns boolean
	    return ( ( GetItemTypeId(GetSoldItem()) == 'I04D' ) and (GetUnitTypeId((GetBuyingUnit())) != 'N018') ) // INLINED!!
	endfunction

//---------------------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------------------
	
 function TArenaLeaveCon takes nothing returns boolean
	    return ( ( Arena__defier == GetLeavingUnit() ) and ( IsUnitIllusionBJ(GetLeavingUnit()) != true ) )
	endfunction

 function TArenaLeaveAct takes nothing returns nothing
	    set Arena__defier=null
	    if ( ( Arena__challenager != null ) ) then
	        call RemoveUnit(Arena__challenager)
	        set Arena__challenager=null
	        call DestroyTextTag(Arena__textTag_Level)
	        call Arena__updateLevel()

	        call DisableTrigger(Arena__TSpellLinger)
			call DisableTrigger(Arena__TSpellZhousi)
			call DisableTrigger(Arena__TSpellXuemo1)
			call DisableTrigger(Arena__TSpellXuemo2)
			call DisableTrigger(Arena__TSpellFuwang1)
			call DisableTrigger(Arena__TSpellFuwang2)
			call DisableTrigger(Arena__TSpellMeidusha1)
			call DisableTrigger(Arena__TSpellMeidusha2)
			call DisableTrigger(Arena__TSpellKiller1)
			call DisableTrigger(Arena__TSpellKiller2)
			call DisableTrigger(Arena__TSpellKiller3)
			call DisableTrigger(Arena__TSpellJinxuan1)
			call DisableTrigger(Arena__TSpellJinxuan2)
			call DisableTrigger(Arena__TSpellJinxuan3)
			call DisableTrigger(Arena__TSpellJinxuan4)
			call DisableTrigger(Arena__TRefreshLevel)
	    else
	    endif
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------
	
 function Arena__TArenaEnterAct takes nothing returns nothing
  local location point
	    if ( ( GetItemTypeId(GetSoldItem()) == 'fgrd' ) ) then
	        if ( ( IsUnitType(GetBuyingUnit(), UNIT_TYPE_HERO) == true ) ) then
	            if ( ( Arena__defier == null ) ) then
	                set Arena__defier=GetBuyingUnit()
	                set point=GetRandomLocInRect(gg_rct_Arena_all)
	                call SetUnitPositionLoc(GetBuyingUnit(), point)
	                call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetBuyingUnit()), point, 0.20)
	                call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", GetUnitX(GetBuyingUnit()), GetUnitY(GetBuyingUnit())))
	                call RemoveLocation(point)
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。")
	            else
	                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r擂台只支持单挑,里面有人了哦~")
	            endif
	        else
	            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请让英雄购买！")
	        endif
	    else
	    endif
	    set point=null
	endfunction

//---------------------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------------------


	
 function TDieEventConditions takes nothing returns boolean
	    return ( ( IsUnitIllusionBJ(GetDyingUnit()) != true ) )
	endfunction

 function TDieEventActions takes nothing returns nothing
	   
     local location point= GetUnitLoc(GetDyingUnit())

	    if ( ( GetUnitTypeId(GetDyingUnit()) == 'Huth' ) ) then
	        call CreateItemLoc('prvt', point)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hpb1' ) ) then
	        call CreateItemLoc('cnob', point)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hgam' ) ) then
	        call CreateItemLoc('rhth', point)
	        call DestroyTrigger(Arena__TSpellLinger)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hmbr' ) ) then
	        call CreateItemLoc('hval', point)
	        call DestroyTrigger(Arena__TSpellZhousi)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Odrt' ) ) then
	        call CreateItemLoc('afac', point)
	        call DestroyTrigger(Arena__TSpellXuemo1)
	        call DestroyTrigger(Arena__TSpellXuemo2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Ogrh' ) ) then
	        call CreateItemLoc('pmna', point)
	        call DestroyTrigger(Arena__TSpellFuwang1)
	        call DestroyTrigger(Arena__TSpellFuwang2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hvsh' ) ) then
	        call CreateItemLoc('evtl', point)
	        call DestroyTrigger(Arena__TSpellMeidusha1)
	        call DestroyTrigger(Arena__TSpellMeidusha2)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hpb2' ) ) then
	        call CreateItemLoc('bspd', point)
	        call DestroyTrigger(Arena__TSpellKiller3)
	        call DestroyTrigger(Arena__TSpellKiller2)
	        call DestroyTrigger(Arena__TSpellKiller1)
	    elseif ( ( GetUnitTypeId(GetDyingUnit()) == 'Hlgr' ) ) then
	        call CreateItemLoc('mcou', point)
	        call DestroyTrigger(Arena__TSpellJinxuan1)
	        call DestroyTrigger(Arena__TSpellJinxuan2)
	        call DestroyTrigger(Arena__TSpellJinxuan3)
	        call DestroyTrigger(Arena__TSpellJinxuan4)
	    endif

	    call Arena__updateLevel()
	    call RemoveLocation(point)
	    set point=null
	    call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r挑战成功!")
	    set Arena__currentLevel=1
	endfunction
//---------------------------------------------------------------------------------------------------
 function Arena__InitArena takes nothing returns nothing
		//挑战开始--买了"挑战开始"
  local trigger t= CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddCondition(t, Condition(function Arena__TArenaStartCon))
	    call TriggerAddAction(t, function TArenaStartAct)

	    //离开擂台后判负
	    set t=CreateTrigger()
	    call TriggerRegisterLeaveRectSimple(t, gg_rct_Arena_forbit)
	    call TriggerAddCondition(t, Condition(function TArenaLeaveCon))
	    call TriggerAddAction(t, function TArenaLeaveAct)

	    //进入挑战场--买了"进入擂台"
	    set t=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	    call TriggerAddAction(t, function Arena__TArenaEnterAct)

	    //擂主死亡事件
	    set Arena__TDieEvent=CreateTrigger()
	    call TriggerAddCondition(Arena__TDieEvent, Condition(function TDieEventConditions))
	    call TriggerAddAction(Arena__TDieEvent, function TDieEventActions)

	    //灵儿技能
	    set Arena__TSpellLinger=CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(Arena__TSpellLinger, EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(Arena__TSpellLinger, Condition(function TSpellLingerCon))
	    call TriggerAddAction(Arena__TSpellLinger, function TSpellLingerAct)


	    set t=null
	endfunction

//library Arena ends


// BEGIN IMPORT OF Arena.j


// BEGIN IMPORT OF LHBase.j

// END IMPORT OF LHBase.j

// END IMPORT OF Arena.j
function main takes nothing returns nothing

call ExecuteFunc("Arena__InitArena")

endfunction



//Struct method generated initializers/callers:

