
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
	    判断是否是超神器
	*/
	function IsChaoshen takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return id == 'I07F' or id == 'I07E' or id == 'ICS1' or id == 'I04W' or id == 'tlum'
	endfunction

	//判断是否大于3级的神器
	function IsShen3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return IsChaoshen(i) or id == 'sksh' or id == 'oslo' or id == 'grsl' or id == 'flag' or id == 'ocor' or id == 'blba' or id == 'cosl' or id == 'shhn' or id == 'rat3' or id == 'pams' or id == 'jdrn' or id == 'shcw' or id == 'stre' or id == 'shrs' or id == 'kgal' or id == 'shtm' or id == 'lure' or id == 'thdm' or id == 'arsh' or id == 'srtl' or id == 'rots' or id == 'tmmt' or id == 'brag' or id == 'olig' or id == 'tbar' or id == 'ccmd' or id == 'iwbr'
	endfunction
	/*
	    判断是否是神器(全部)
	*/
	function IsShenAll takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		return IsShen3(i) or id == 'I04Z' or id == 'I056' or id == 'I057' or id == 'I050' or id == 'I055' or id == 'I03Y' or id == 'nflg' or id == 'spre' or id == 'fwss' or id == 'uflg' or id == 'tgxp' or id == 'dust' or id == 'esaz' or id == 'asbl' or id == 'ram4' or id == 'ram3' or id == 'ram2' or id == 'ram1'
	endfunction

	//判断身上神器的数量
	function Shen3Count takes unit u returns integer
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if (IsShen3(UnitItemInSlotBJ(u,i))) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count 

	endfunction

	//神器破防技能
	function GetShenPofangSpell takes unit u returns integer

		if (UnitHasItemOfTypeBJ(u,'I07F')) then
			return 'A0DA'
		elseif (UnitHasItemOfTypeBJ(u,'I07E')) then
			return 'A0CI'
		elseif (UnitHasItemOfTypeBJ(u,'ICS1')) then
			return 'A0CH'
		elseif (UnitHasItemOfTypeBJ(u,'I04W')) then
			return 'A0K5'
		elseif (UnitHasItemOfTypeBJ(u,'tlum')) then
			return 'A0D9'
		elseif (UnitHasItemOfTypeBJ(u,'tbar') or UnitHasItemOfTypeBJ(u,'ccmd')) then
			return 'A0CQ'
		elseif (UnitHasItemOfTypeBJ(u,'shtm') or UnitHasItemOfTypeBJ(u,'srtl') or UnitHasItemOfTypeBJ(u,'olig')) then
			return 'A0BK'
		elseif (UnitHasItemOfTypeBJ(u,'kgal') or UnitHasItemOfTypeBJ(u,'arsh') or UnitHasItemOfTypeBJ(u,'brag')) then
			return 'A0BC'
		elseif (UnitHasItemOfTypeBJ(u,'shrs') or UnitHasItemOfTypeBJ(u,'thdm') or UnitHasItemOfTypeBJ(u,'tmmt')) then
			return 'A0AX'
		elseif (UnitHasItemOfTypeBJ(u,'stre') or UnitHasItemOfTypeBJ(u,'lure') or UnitHasItemOfTypeBJ(u,'rots')) then
			return 'A0A9'
		elseif (UnitHasItemOfTypeBJ(u,'ram3') or UnitHasItemOfTypeBJ(u,'ram2') or UnitHasItemOfTypeBJ(u,'ram1')) then
			return 'A088'
		elseif (UnitHasItemOfTypeBJ(u,'uflg') or UnitHasItemOfTypeBJ(u,'tgxp') or UnitHasItemOfTypeBJ(u,'dust')) then
			return 'A087'
		elseif (UnitHasItemOfTypeBJ(u,'I050') or UnitHasItemOfTypeBJ(u,'I055') or UnitHasItemOfTypeBJ(u,'I03Y')) then
			return 'A041'
		endif

		return 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    戒指
	*/
	function IsGui3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return IsMaxRing(i) or id == 'lgdh' or id == 'clfm' or id == 'bgst' or id == 'belv' or id == 'hcun' or id == 'rag1' or id == 'penr' or id == 'brac'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    翅膀
	*/
	function IsChaoyao takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return id == 'ICY1' or id == 'I05X' or id == 'I05F' or id == 'I07P' or id == 'ICY1'
	endfunction

	function IsYao3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return IsChaoyao(i) or id == 'I041' or id == 'I04R' or id == 'I05C' or id == 'I05B'
	endfunction
		
	function Yao3Count takes unit u returns integer
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if (IsYao3(UnitItemInSlotBJ(u,i))) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count 
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    衣服
	*/
	function IsChaoren takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return id == 'tbsm' or id == 'tfar' or id == 'tbak' or id == 'I05Y' or id == 'I05Z' or id == 'I060' or id == 'I07K' or id == 'I07J' or id == 'I07I'
	endfunction
	
	function IsRen3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return IsChaoren(i) or id == 'frhg' or id == 'mlst' or id == 'nspi' or id == 'oli2' or id == 'rump' or id == 'shen' or id == 'stpg' or id == 'ofir' or id == 'soul' or id == 'sbok' or id == 'arsc' or id == 'rde0' or id == 'oflg' or id == 'frgd' or id == 'gldo' or id == 'gsou' or id == 'envl' or id == 'rugt' or id == 'shdt' or id == 'crdt' or id == 'pspd'
	endfunction

	function GetRenTime takes unit u returns real
		if (UnitHasItemOfTypeBJ(u,'tbak') or UnitHasItemOfTypeBJ(u,'I060') or UnitHasItemOfTypeBJ(u,'I07I')) then
			return 9.0
		elseif (UnitHasItemOfTypeBJ(u,'pspd')) then
			return 8.5
		elseif (UnitHasItemOfTypeBJ(u,'crdt') or UnitHasItemOfTypeBJ(u,'tfar') or UnitHasItemOfTypeBJ(u,'tbsm') or UnitHasItemOfTypeBJ(u,'I05Y') or UnitHasItemOfTypeBJ(u,'I05Z') or UnitHasItemOfTypeBJ(u,'I07K') or UnitHasItemOfTypeBJ(u,'I07J')) then
			return 8.0
		elseif (UnitHasItemOfTypeBJ(u,'shdt') or UnitHasItemOfTypeBJ(u,'frgd') or UnitHasItemOfTypeBJ(u,'stpg')) then
			return 7.5
		elseif (UnitHasItemOfTypeBJ(u,'rugt') or UnitHasItemOfTypeBJ(u,'oflg') or UnitHasItemOfTypeBJ(u,'shen')) then
			return 7.0
		elseif (UnitHasItemOfTypeBJ(u,'envl') or UnitHasItemOfTypeBJ(u,'rde0') or UnitHasItemOfTypeBJ(u,'rump')) then
			return 6.5
		elseif (UnitHasItemOfTypeBJ(u,'gsou') or UnitHasItemOfTypeBJ(u,'arsc') or UnitHasItemOfTypeBJ(u,'oli2')) then
			return 6.0
		elseif (UnitHasItemOfTypeBJ(u,'gldo') or UnitHasItemOfTypeBJ(u,'sbok') or UnitHasItemOfTypeBJ(u,'nspi')) then
			return 5.5
		elseif (UnitHasItemOfTypeBJ(u,'gvsm') or UnitHasItemOfTypeBJ(u,'soul') or UnitHasItemOfTypeBJ(u,'mlst')) then
			return 5.0
		elseif (UnitHasItemOfTypeBJ(u,'gobm') or UnitHasItemOfTypeBJ(u,'ofir') or UnitHasItemOfTypeBJ(u,'frhg')) then
			return 4.5
		elseif (UnitHasItemOfTypeBJ(u,'pgin') or UnitHasItemOfTypeBJ(u,'tels') or UnitHasItemOfTypeBJ(u,'oven')) then
			return 4.0
		elseif (UnitHasItemOfTypeBJ(u,'dtsb') or UnitHasItemOfTypeBJ(u,'drph')) then
			return 3.5
		elseif (UnitHasItemOfTypeBJ(u,'rej4') or UnitHasItemOfTypeBJ(u,'rej6')) then
			return 3.0
		endif
		return 0.
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    
	*/
//---------------------------------------------------------------------------------------------------
	/*
	    双魂
	*/

	//判断身上双魂的数量
	function Xian3Count takes unit u returns integer
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if (IsZhanfa3(UnitItemInSlotBJ(u,i))) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count 
	endfunction

	function ChaoxianCount takes unit u returns integer
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if (IsZhanfaChao(UnitItemInSlotBJ(u,i))) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count 
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    获取随机一种药水
	*/
	function GetRandomPotion takes nothing returns integer
		local integer i = GetRandomInt(1,6)
		if (i == 1) then
			return 'sres'
		elseif (i == 2) then
			return 'I06A'
		elseif (i == 3) then
			return 'I06B'
		elseif (i == 4) then
			return 'I06C'
		elseif (i == 5) then
			return 'I06J'
		elseif (i == 6) then
			return 'I06O'
		endif

		return 0
	endfunction
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
	todo
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
	        set u = CreateUnit(Player(10),'Naka',-10425.00, -10429.00 , 180)
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

