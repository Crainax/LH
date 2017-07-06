
//! import "LHBase.j"
//! import "Diffculty.j"
library_once ItemBase initializer InitItemBase requires LHBase,Diffculty

globals
	timerdialog TiDiaNecklace
	unit UCrainax

	boolean array BRing
	integer array IZhanhun
endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    英雄或者镜像获得翅膀才有火焰技能
	*/
	private function TGetWingSpellCon takes nothing returns boolean
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))] or GetManipulatingUnit() == udg_U_Zhuansheng_Dantiao[2])
	endfunction
	
	private function TGetWingSpellPickAct takes nothing returns nothing
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitAddAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitAddAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitAddAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitAddAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitAddAbility(GetManipulatingUnit(),'A0CL')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05C') then
			call UnitAddAbility(GetManipulatingUnit(),'A0CU')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05F') then
			call UnitAddAbility(GetManipulatingUnit(),'A0D0')
		endif
	endfunction
	
	private function TGetWingSpellDropAct takes nothing returns nothing
		if (GetItemTypeId(GetManipulatedItem()) == 'I043') then
			call UnitRemoveAbility(GetManipulatingUnit(),'Apxf')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I045') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A06O')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I041') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A09J')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04R') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0AO')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05B') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0CL')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05C') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0CU')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05F') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0D0')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    删除书本小点BUG
	*/
	private function TBookBUGCon takes nothing returns boolean
		return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
	endfunction

	private function TBookBUGAct takes nothing returns nothing
		call PolledWait(1.0)
		call RemoveItem(GetManipulatedItem())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    Crainax属性与技能的设定
	*/

	function ReflashCrainaxAttr takes nothing returns nothing
		call ModifyHeroStat( bj_HEROSTAT_STR, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[udg_Bo]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) ))))
	    call ModifyHeroStat( bj_HEROSTAT_AGI, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[( udg_Bo + 29 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) )) ))
	    call ModifyHeroStat( bj_HEROSTAT_INT, UCrainax, bj_MODIFYMETHOD_SET, IMinBJ(2100000000,R2I(( I2R(udg_Laser[( udg_Bo + 58 )]) * ( 1.00 + ( 0.30 * I2R(udg_Nandu_JJJ) ) ) )) ))
	    call SetUnitAbilityLevelSwapped( 'A0EM', UCrainax, udg_Bo )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    项链的重生
	*/
	private function ReviveNecklace takes nothing returns nothing
	        call PingMinimap( -1658.00, -14973.00, 2.00 )
	        call RemoveUnit(UCrainax)
	        set UCrainax = CreateUnit(Player(10),'Ekgg',-1658.00, -14973.00 , 180)
	        call AddTianyanmokang(UCrainax)
	        call ReflashCrainaxAttr()
	        call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【消息】|r|cffff9900圣主Crainax的分身|r复活." )
	        call TimerDialogDisplay(TiDiaNecklace,false)
	        call DestroyTimerDialog(TiDiaNecklace)
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	        set TiDiaNecklace = null
	endfunction

	private function ReviveRing takes nothing returns nothing
			local unit u = null
	        call PingMinimap( -10630.00, -8642.00, 2.00 )
	        set u = CreateUnit(Player(10),'Naka',-10630.00, -8642.00 , 180)
	        call SetHeroLevel( u, ( GetHeroLevel(u) + 1 ), true )
	        call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【消息】|r" + "|cFFFF6699千年孤魂|r|cffffcc00弑魂|r复活了。" ) )
	        set u = null
	        call PauseTimer(GetExpiredTimer())
	        call DestroyTimer(GetExpiredTimer())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    死亡掉落
	*/
	function BossDeathDropItem takes nothing returns nothing
		local timer t
	    if ((GetUnitTypeId(GetDyingUnit()) == 'Naka')) then
	        call CreateItem( 'rat9', GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()) )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit())) )
	        call TimerStart(CreateTimer(),30,false,function ReviveRing)
	        call PolledWait(0.5)
	        call RemoveUnit(GetDyingUnit())
	    endif
	    if (GetDyingUnit() == UCrainax) then
	        call CreateItem( 'rde3', GetUnitX(UCrainax),GetUnitY(UCrainax) )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(UCrainax),GetUnitY(UCrainax)) )
	        set t = CreateTimer()
	        set TiDiaNecklace = CreateTimerDialogBJ(t,"圣主分身复活")
	        call TimerStart(t,900,false,function ReviveNecklace)
	        call TimerDialogDisplay(TiDiaNecklace,true)
	        set t = null
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitItemBase takes nothing returns nothing


		//删除书本的小点BUG
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t,Condition(function TBookBUGCon))
		call TriggerAddAction(t,function TBookBUGAct)

		//获得翅膀的技能
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
		call TriggerAddCondition(t, Condition(function TGetWingSpellCon))
		call TriggerAddAction(t, function TGetWingSpellPickAct)

		//删掉翅膀的技能
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DROP_ITEM)
		call TriggerAddCondition(t, Condition(function TGetWingSpellCon))
		call TriggerAddAction(t, function TGetWingSpellDropAct)

		//死亡掉落戒指和项链
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddAction(t, function BossDeathDropItem)
		set UCrainax=CreateUnit(Player(10), 'Ekgg', - 1661.7, - 14985.1, 180.000)



		set t = null

	endfunction

endlibrary

