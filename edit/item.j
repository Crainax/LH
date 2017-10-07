//! import "LHBase.j"
//! import "Diffculty.j"
library_once ItemBase initializer InitItemBase requires LHBase,Diffculty

	globals
		timerdialog TiDiaNecklace
		unit UCrainax

		boolean array BRing
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
	    魔
	*/
	function IsChaomo takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		return id == 'IB09' or id == 'IB0A' or id == 'I04X' or id == 'I07O' or id == 'I07N'
	endfunction

	function IsMo3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		return IsChaomo(i) or id == 'IB04' or id == 'IB05' or id == 'IB06' or id == 'IB07' or id == 'IB08'		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    戒指
	*/
	function IsGui3 takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return IsMaxRing(i) or id == 'lgdh' or id == 'clfm' or id == 'bgst' or id == 'belv' or id == 'hcun' or id == 'rag1' or id == 'penr' or id == 'brac'
	endfunction

	function IsGui takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return IsGui3(i) or id == 'rat9' or id == 'rlif'
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    翅膀
	*/
	function IsChaoyao takes item i returns boolean
		local integer id = GetItemTypeId(i) 
		
		return id == 'ICY1' or id == 'I05X' or id == 'I05F' or id == 'I07P' or id == 'I07Q'
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
	    项链
	*/
	function IsXianglian takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return id == 'rde3' or id == 'ssil' or id == 'I04Y' or id == 'I05T' or id == 'I07H' or id == 'I07G'
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

	function IsRen takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return IsRen3(i) or id == 'rugt' or id == 'drph' or id == 'oven' or id == 'rej4' or id == 'dtsb' or id == 'gobm' or id == 'gvsm' or id == 'pgin' or id == 'rej6' or id == 'tels'
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
	    箱子
	*/
	function IsBox takes item i returns boolean
		local integer id = GetItemTypeId(i) 

		return id == 'wild' or id == 'hlst' or id == 'totw' or id == 'sror' or id == 'fgrg' or id == 'wshs' or id == 'I06N' or id == 'I07T'
	endfunction
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

	function Zhan0Count takes unit u returns integer
		local integer i = 1
		local integer count = 0 
		loop
			exitwhen i > 6
			if (IsZhan0(UnitItemInSlotBJ(u,i))) then
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

	//复活时长
	function GetZhanfaReviveTime takes unit u returns real
		local real time = 0
		if (ChaoxianCount(u) >= 1 or playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "信哲大人" or B3SecondRevive[GetConvertedPlayerId(GetOwningPlayer(u))]) then
			set time = 3.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'tgrh')) then
			set time = 4.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'I078') or UnitHasItemOfTypeBJ(u,'plcl')) then
			set time = 8.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'tcas')) then
			set time = 10.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'tsct')) then
			set time = 12.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'skul')) then
			set time = 14.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'vamp')) then
			set time = 16.0 / CModeH(1,2)
		elseif (UnitHasItemOfTypeBJ(u,'I01U') or UnitHasItemOfTypeBJ(u,'rde2')) then
			set time = 18.0 / CModeH(1,2)
		else
			set time = 20.0 / CModeH(1,2)
		endif

		if (GetUnitTypeId(UDepot[GetConvertedPlayerId(GetOwningPlayer(u))]) == 'n02D') then
			set time = RMaxBJ(1.5,time - 1.5)
		endif

		return time
	endfunction

	//复活回复魔法
	function GetZhanfaReviveMana takes unit u returns real
		if (ChaoxianCount(u) >= 1) then
			return 1000.
		elseif (UnitHasItemOfTypeBJ(u,'shas')) then
			return 600.
		elseif (UnitHasItemOfTypeBJ(u,'spro')) then
			return 500.
		elseif (UnitHasItemOfTypeBJ(u,'phea')) then
			return 400.
		elseif (UnitHasItemOfTypeBJ(u,'rin1')) then
			return 300.
		elseif (UnitHasItemOfTypeBJ(u,'ward')) then
			return 200.
		elseif (UnitHasItemOfTypeBJ(u,'rde1') or UnitHasItemOfTypeBJ(u,'I027')) then
			return 100.
		else
			return 0.
		endif
	endfunction

	//战魂加的属性
	function GetZhanhunShuxing takes unit u returns integer
		if (UnitHasItemOfTypeBJ(u,'I05U')) then
			return 10
		elseif (UnitHasItemOfTypeBJ(u,'ICX1')) then
			return 9
		elseif (UnitHasItemOfTypeBJ(u,'rst1')) then
			return 8
		elseif (UnitHasItemOfTypeBJ(u,'tgrh')) then
			return 7
		elseif (UnitHasItemOfTypeBJ(u,'plcl')) then
			return 6
		elseif (UnitHasItemOfTypeBJ(u,'tcas')) then
			return 5
		elseif (UnitHasItemOfTypeBJ(u,'tsct')) then
			return 4
		elseif (UnitHasItemOfTypeBJ(u,'skul')) then
			return 3
		elseif (UnitHasItemOfTypeBJ(u,'vamp')) then
			return 2
		elseif (UnitHasItemOfTypeBJ(u,'I01E') or UnitHasItemOfTypeBJ(u,'rde2')) then
			return 1
		else
			return 0
		endif
	endfunction	

	//减少的伤害
	function GetZhanhunJianshang takes item i returns integer
		local integer id = GetItemTypeId(i)
		if (IsZhanfaChao(i)) then
			return 50000
		elseif (id == 'tgrh') then
			return 25000
		elseif (id == 'plcl') then
			return 10000
		elseif (id == 'tcas') then
			return 6000
		elseif (id == 'tsct') then
			return 3000
		elseif (id == 'skul') then
			return 1000
		elseif (id == 'I02A' or id == 'rde2') then
			return 75
		else
			return 0
		endif
	endfunction

	
	//复活时长
	function GetZhanfaReviveCool takes unit u returns real
		if (ChaoxianCount(u) >= 1) then
			return 29.
		elseif (UnitHasItemOfTypeBJ(u,'tgrh')) then
			return 59.
		elseif (UnitHasItemOfTypeBJ(u,'I078') or UnitHasItemOfTypeBJ(u,'plcl')) then
			return 99.
		elseif (UnitHasItemOfTypeBJ(u,'tcas')) then
			return 149.
		elseif (UnitHasItemOfTypeBJ(u,'tsct')) then
			return 174.
		elseif (UnitHasItemOfTypeBJ(u,'skul')) then
			return 199.
		elseif (UnitHasItemOfTypeBJ(u,'vamp')) then
			return 219.
		elseif (UnitHasItemOfTypeBJ(u,'I01U') or UnitHasItemOfTypeBJ(u,'rde2')) then
			return 249.
		else
			return -1.
		endif
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
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05X') then
			call UnitAddAbility(GetManipulatingUnit(),'A0KE')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'ICY1') then
			call UnitAddAbility(GetManipulatingUnit(),'A0KF')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I07P') then
			call UnitAddAbility(GetManipulatingUnit(),'A0KE')
			call SetUnitAbilityLevel(GetManipulatingUnit(),'A0KE',2)
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I07Q') then
			call UnitAddAbility(GetManipulatingUnit(),'A0KF')
			call SetUnitAbilityLevel(GetManipulatingUnit(),'A0KF',2)
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
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05X') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0KE')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'ICY1') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0KF')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I07P') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0KE')
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I07Q') then
			call UnitRemoveAbility(GetManipulatingUnit(),'A0KF')
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