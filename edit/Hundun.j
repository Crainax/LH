//! import "LHBase.j"
//! import "SpellBase.j"
//! import "Diffculty.j"
library_once Hundun initializer InitHundunInner requires LHBase,SpellBase,Diffculty

	globals
		unit UHundun1 = null
		MultiLife MLHundun1 = 0
		group GHundunDian1 = null
		group GHundunAttack1 = null
		timer THundunDian1 = null
		trigger THundunSpellDamage = null
		integer hundun1_level = 1
		integer hundun1_playerID = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    混沌的对话框
	*/

	private function KuileiConfirmDialogClick takes nothing returns nothing
        local dialog d = GetClickedDialogBJ()

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	//set BSkipKuilei = true
        	call BJDebugMsg("|cFFFF66CC【消息】|r已经开启不可跳过六界傀儡!")
        endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())

	endfunction

	function ChooseKuileiDialog takes player p returns nothing
        local trigger t  = null
        local dialog  d = null

        //if (BSkipKuilei) then
        //	return
        //endif

 		set t  = CreateTrigger()
 		set d = DialogCreate()

        call DialogSetMessage( d, "

        		六界傀儡确认

        	如果你挑战了混沌世界的怪物,
        	或者进入了炼狱92层,
        	则无法跳过六界傀儡!
        	" )
        call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "来吧!"))
        call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "我打不过."))
        call DialogDisplay( p, d, true )
        call TriggerRegisterDialogEvent( t, d )
        call TriggerAddAction(t, function KuileiConfirmDialogClick)
        set d = null
        set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    排泄混沌石技能
	*/
	private function ClearGroup takes nothing returns nothing
		call RemoveUnit(GetEnumUnit())
	endfunction


	function DestroyHundun1 takes nothing returns nothing
		if (MLHundun1 != 0) then
			call MLHundun1.destroy()
		endif
		call PauseTimer(THundunDian1)
		call DestroyTimer(THundunDian1)
		call ForGroup(GHundunDian1,function ClearGroup)
		call ForGroup(GHundunAttack1,function ClearGroup)
		call DestroyGroup(GHundunDian1)
		set MLHundun1 = 0
		set GHundunDian1 = null
		set THundunDian1 = null
		call DestroyGroup(GHundunAttack1)
		set GHundunAttack1 = null
		call DisableTrigger(THundunSpellDamage)
	endfunction
//---------------------------------------------------------------------------------------------------
    /*
        离开混沌区域
    */

    function HundunMonsterFilter takes nothing returns boolean
        return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (GetOwningPlayer(GetFilterUnit()) == Player(10))))
    endfunction

    function HundunPlayerFilter takes nothing returns boolean
        return ((IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true) and (GetPlayerController(GetOwningPlayer(GetFilterUnit())) == MAP_CONTROL_USER) and (IsUnitAliveBJ(GetFilterUnit()) or (GetFilterUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetFilterUnit()))] and not(IsWanjie()) )))
    endfunction

    function ClearHundunRegion takes rect r returns nothing
        local unit l_unit = null
        local group group2 = GetUnitsInRectMatching(r, Condition(function HundunMonsterFilter))
        set group2 = GetUnitsInRectMatching(r, Condition(function HundunMonsterFilter))
        loop
            set l_unit = FirstOfGroup(group2)
            exitwhen l_unit == null
            call GroupRemoveUnit(group2, l_unit)
            call FlushChildHashtable(YDHT,GetHandleId(l_unit))
            call RemoveUnit( l_unit )
        endloop
        call DestroyGroup( group2 )
        set group2 = null
        set l_unit = null
    endfunction

    function TLeaveHundunRegionCon takes nothing returns boolean
        return ((GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER))
    endfunction

    function TLeaveHundunRegionAct takes nothing returns nothing
        local group group1 = GetUnitsInRectMatching(gg_rct_Hundun, Condition(function HundunPlayerFilter))
        if ((CountUnitsInGroup(group1) == 0)) then
            call ClearHundunRegion(gg_rct_Hundun)
            call DestroyHundun1()
        endif
        call DestroyGroup( group1 )
        set group1 = null
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    施放电技能
	*/
	function SpellDian takes unit temp returns nothing
		local integer i = 1
		local integer end = IMaxBJ(1,MLHundun1.getTimes()) * 18
		local real random = GetRandomReal(0,360.)
		local unit u = null
		loop
			exitwhen i > (end * 3 / 4)
			set u = CreateUnit(Player(10),'h01O',GetUnitX(temp) + 10 * CosBJ(ModuloReal( i * (360/end) + random,360)),GetUnitY(temp)+ 10 * SinBJ(ModuloReal( i * (360/end) + random,360)),ModuloReal( i * (360/end) + random,360))
        	call YDWEAroundSystem( u, temp, 0.00, 20., 0, 5, 0.05 )
        	call UnitApplyTimedLife( u, 'BHwe', 5 )
			set i = i +1
		endloop
		set u = null
	endfunction

	private function flashDian takes nothing returns nothing
		call SpellDian(GroupPickRandomUnit(GHundunDian1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    混沌的传送
	*/
	private function HundunTransimit takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		if (IsUnitAliveBJ(u)) then
			call TLeaveHundunRegionAct()
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction
	
	function StartJudgeTransmitHundun takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call TimerStart(t,2,true,function HundunTransimit)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化混沌石技能
	*/
	function InitHundun1 takes unit u returns nothing
		local integer i = 1
		local unit temp = null
		set UHundun1 = u
		set MLHundun1 = MultiLife.create(u,2)
		//召唤电子盟
		set GHundunDian1 = CreateGroup()
		set GHundunAttack1 = CreateGroup()
    	call SetPlayerTechResearchedSwap(  GetHundunTech(), hundun1_level , Player(10))

		loop
			exitwhen i > (GetDiffculty()/2 + 1)
			set temp = CreateUnit(Player(10),'h01Q',GetRandomReal(GetRectMinX(gg_rct_Hundun),GetRectMaxX(gg_rct_Hundun)),GetRandomReal(GetRectMinY(gg_rct_Hundun),GetRectMaxY(gg_rct_Hundun)),GetRandomReal(0,360))
			call GroupAddUnit(GHundunDian1,temp)
			call IssuePointOrder(temp,"patrol",GetRandomReal(GetRectMinX(gg_rct_Hundun),GetRectMaxX(gg_rct_Hundun)),GetRandomReal(GetRectMinY(gg_rct_Hundun),GetRectMaxY(gg_rct_Hundun)))
			set i = i +1
		endloop
		set THundunDian1 = CreateTimer()
		call TimerStart(THundunDian1,(10/(GetDiffculty()/2 + 1)),true,function flashDian)
		//召唤攻击盟
		set i = 1
		loop
			exitwhen i > (GetDiffculty()/2 + 1)
			call GroupAddUnit(GHundunAttack1,CreateUnit(Player(10),'h01R',GetRandomReal(GetRectMinX(gg_rct_Hundun),GetRectMaxX(gg_rct_Hundun)),GetRandomReal(GetRectMinY(gg_rct_Hundun),GetRectMaxY(gg_rct_Hundun)),GetRandomReal(0,360)))
			set i = i + 1
		endloop
		call EnableTrigger(THundunSpellDamage)
		set hundun1_playerID = GetConvertedPlayerId(GetOwningPlayer(GetBuyingUnit()))
		if (IsWanjie()) then
			call StartJudgeTransmitHundun(u)
		endif
		set temp = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    混沌死亡
	*/
	function HundunDeath takes nothing returns nothing
		set hundun1_level = hundun1_level + I3(IsTianyan,3,1)
		call DestroyHundun1()
		 if ((hundun1_playerID != 0)) then
            call UnitAddItemByIdSwapped('I062', UDepot[hundun1_playerID])
            call SetUnitPosition(UDepot[hundun1_playerID],GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()))
        else
            call CreateItem('I062',GetUnitX(GetDyingUnit()),GetUnitY(GetDyingUnit()))
        endif
        set hundun1_playerID = 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    施法扣血技能
	*/
	private function THundunSpellDamageCon takes nothing returns boolean
		return udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == GetTriggerUnit()
	endfunction
	
	function THundunSpellDamageAct takes nothing returns nothing
		if (YDWEDistanceBetweenUnits(UHundun1, GetTriggerUnit()) < 1800) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()) ))
			call UnitDamageTarget( UHundun1, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE) * 0.1, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对话框内升级物品,使用次数与materials1一致
	*/
	function DialogCombineClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local unit u = LoadUnitHandle(itemTable,GetHandleId(d),3)

        if (GetClickedButtonBJ() == LoadButtonHandle(itemTable,GetHandleId(d),1)) then
			call UnitAddItemByIdSwapped( LoadInteger(itemTable,GetHandleId(d),4), u)
	        call SetItemCharges(GetLastCreatedItem(),LoadInteger(itemTable,GetHandleId(d),6))
        endif

        if (GetClickedButtonBJ() == LoadButtonHandle(itemTable,GetHandleId(d),2)) then
			call UnitAddItemByIdSwapped( LoadInteger(itemTable,GetHandleId(d),5), u)
	        call SetItemCharges(GetLastCreatedItem(),LoadInteger(itemTable,GetHandleId(d),6))
        endif

        call FlushChildHashtable(itemTable,GetHandleId(d))
    	call DialogDisplay( GetOwningPlayer(u), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        call PlaySoundBJ(gg_snd_hecheng_shenqi)
        call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        set d = null
        set u = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction

	function DialogCombine takes unit buyer,integer materials1,integer materials2,integer targetItem1,integer targetItem2,string targetName1,string targetName2,integer lumber returns nothing
		local trigger t 
	    local dialog d  
	    local integer i  

		if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1)) == materials1) and (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2)) == materials2) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1))) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2)))) then
	    	set i = GetItemCharges(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1))
	        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1) )
	        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2) )
			set t = CreateTrigger()
			set d = DialogCreate()
			call DialogSetMessage( d, "你想合成为:" )
			call SaveButtonHandle(itemTable,GetHandleId(d),1,DialogAddButton( d, targetName1,'1'))
			call SaveButtonHandle(itemTable,GetHandleId(d),2,DialogAddButton( d, targetName2,'2'))
			call SaveUnitHandle(itemTable,GetHandleId(d),3,buyer)
			call SaveInteger(itemTable,GetHandleId(d),4,targetItem1)
			call SaveInteger(itemTable,GetHandleId(d),5,targetItem2)
			call SaveInteger(itemTable,GetHandleId(d),6,i)
			call DialogDisplay( GetOwningPlayer(buyer), d, true )
			call TriggerRegisterDialogEvent( t, d )
			call TriggerAddAction(t, function DialogCombineClick)
			set d = null
			set t = null
	    else
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r你的材料不足." )
	        call AdjustPlayerStateBJ( lumber, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
	        return
	    endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    直接合成物品
	*/
	function CombineI takes unit buyer,integer materials1,integer materials2,integer targetItem,integer lumber,boolean hints returns nothing
	    local integer i  

		if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1)) == materials1) and (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2)) == materials2) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1))) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2)))) then
	    	set i = GetItemCharges(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1))
	        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials1) )
	        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), materials2) )
			call UnitAddItemByIdSwapped( targetItem, GetBuyingUnit())
    		call SetItemCharges(GetLastCreatedItem(),i)
        	call PlaySoundBJ(gg_snd_hecheng_shenqi)
        	call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        	call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        	call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
        	call BJDebugMsg("|cFFFF66CC【消息】|r"+GetItemName(GetLastCreatedItem())+"降临于世!!!")
	    else
	    	if (hints) then
	        	call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r你的材料不足." )
	    	endif
	        call AdjustPlayerStateBJ( lumber, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
	        return
	    endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    倚天的加木头
	*/
	function Yitian takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER) and udg_H[i] != null) then
				if (UnitHasItemOfTypeBJ(udg_H[i],'I04L') or UnitHasItemOfTypeBJ(udg_H[i],'I04M')) then
				    call AdjustPlayerStateBJ( 600*CModeH(1,2), ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
				    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(udg_H[i]), GetUnitY(udg_H[i]) ))
				elseif (UnitHasItemOfTypeBJ(udg_H[i],'rat6')) then
				    call AdjustPlayerStateBJ( 500*CModeH(1,2), ConvertedPlayer(i), PLAYER_STATE_RESOURCE_LUMBER )
				    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(udg_H[i]), GetUnitY(udg_H[i]) ))
				endif
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    合成皎月
	*/
	function CombineJiaoyue takes unit u returns nothing
		if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'rat6')) == 'rat6') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'ratc')) == 'ratc') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'mcou')) == 'mcou') and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'rat6')) ) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'mcou')) ) and (IsItemPawnable(GetItemOfTypeFromUnitBJ(u, 'ratc')) )) then
            call PolledWait(0.01)
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'ratc') )
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'mcou') )
            call RemoveItem( GetItemOfTypeFromUnitBJ(u, 'rat6') )
            call UnitAddItemById(u, 'I04L')
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cffff00ff【混沌】圣剑-皎月|r降世!!!!!!!")
			return
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    商店合成混沌夜之哀伤
	*/
	function CombineHundunyeai takes nothing returns nothing
		local integer i 
		if ((GetItemTypeId(GetSoldItem()) == 'I04Q')) then
			
		    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L')) == 'I04L') and (GetItemTypeId(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel')) == 'stel') and (IsItemPawnable(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L')) == true)) then
		    	set i = GetItemCharges(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel'))
		        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'I04L') )
		        call RemoveItem( GetItemOfTypeFromUnitBJ(GetBuyingUnit(), 'stel') )
		        call UnitAddItemByIdSwapped( 'I04M', GetBuyingUnit() )
		        call SetItemCharges(GetLastCreatedItem(),i)
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
				call BJDebugMsg("|cFFFF66CC【消息】|r尘封的|cFF66CC33【混沌】夜之哀伤|r降世!!!!!!!")
		        return
		    else
		        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r你的材料不足." )
		        call AdjustPlayerStateBJ( 1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
		        return
		    endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    合成装备
	*/
	function CombineHundunAll takes nothing returns nothing

		if ((GetItemTypeId(GetSoldItem()) == 'I064')) then
			call DialogCombine(GetBuyingUnit(),'tlum','I062','ICS1','I04W',"|cffffff00【混沌】诛神噬魔-贯|r(强大的破防能力与直刺生命的六元幽冥)","|cffffff00【混沌】诛神噬魔-袭|r(觉醒于融合六界之力的六元幽冥)",1000)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I063')) then
			call DialogCombine(GetBuyingUnit(),'ssil','I062','I04Y','I05T',"|cffff9900【混沌】幽冥项链-亡|r(用生命换取贯穿寰宇的力量)","|cffff9900【混沌】幽冥项链-凌|r(源源不断的圣界之力)",1000)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I065')) then
			call DialogCombine(GetBuyingUnit(),'lhst','I062','I05W','I05V',"|cffff00ff【混沌】魑魅魍魉-忌|r(更为玄幻的灵魂吸收之力)","|cffff00ff【混沌】魑魅魍魉-禁|r(空间跳跃，厉鬼相随)",1000)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I066')) then
			call DialogCombine(GetBuyingUnit(),'I05F','I062','ICY1','I05X',"|cff99cc00【混沌】九渊冥鸢|r(无缺之体,坚不可摧)","|cff99cc00【混沌】绯绫三生燕|r(燎原之火,焚照千里)",1000)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I067')) then
			call DialogCombine(GetBuyingUnit(),'IB09','I062','IB0A','I04X',"|cffff00ff【混沌】十翼|r|cffff0000天龙|r(拥有较强群体杀伤能力)","|cffff00ff【混沌】华缈|r|cffff0000弥鹤|r(拥有强大的单体杀伤能力)",1000)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I068')) then
			call CombineI(GetBuyingUnit(),'rst1','I062','ICX1',1000,true)
		endif

		if ((GetItemTypeId(GetSoldItem()) == 'I069')) then
			call CombineI(GetBuyingUnit(),'tbsm','I062','I05Y',0,false)
			call CombineI(GetBuyingUnit(),'tfar','I062','I05Z',0,false)
			call CombineI(GetBuyingUnit(),'tbak','I062','I060',0,false)
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    进入混沌之区
	*/
	function EnterHundun takes nothing returns nothing
		local real x
		local real y
		if ((GetItemTypeId(GetSoldItem()) == 'I04T')) then
			set x = GetRectCenterX(gg_rct_Hundun)
			set y = GetRectCenterY(gg_rct_Hundun)

	        call SetUnitX(GetBuyingUnit(),x)
	        call SetUnitY(GetBuyingUnit(),y)
	        call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
	        call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化混沌区的技能 
	*/
	function InitHundunInner takes nothing returns nothing

        local trigger t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Hundun )
        call TriggerAddCondition(t, Condition(function TLeaveHundunRegionCon))
        call TriggerAddAction(t, function TLeaveHundunRegionAct)
        set t = null

		set THundunSpellDamage = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(THundunSpellDamage,EVENT_PLAYER_UNIT_SPELL_EFFECT)
		call TriggerAddCondition(THundunSpellDamage, Condition(function THundunSpellDamageCon))
		call TriggerAddAction(THundunSpellDamage, function THundunSpellDamageAct)
		call DisableTrigger(THundunSpellDamage)
	endfunction
endlibrary