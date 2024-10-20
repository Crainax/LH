#ifndef HanshangIncluded
#define HanshangIncluded

#include  "edit/SpellBase.j"
#include  "edit/Structs.j"
#include  "edit/Printer.j"
#include  "edit/Attr.j"
#include  "edit/Diffculty.j"
#include  "edit/Aura.j"
#include  "edit/Spin.j"
/*
    英雄寒殇的技能
*/
library_once Hanshang requires SpellBase,Printer,Attr,Diffculty,Aura,Version,Spin,Structs

	globals

		private boolean IsLianhuan = false
		/*
		    技能
		*/
		private trigger TSpellHanshang = null

		private trigger TSpellHanshang2 = null

		private trigger TSpellHanshang3 = null

		private trigger TSpellHanshang4 = null
		/*
		    第三个技能的增益与减伤
		*/
		private real RLianjin = 0
		private real RLianjin2 = 0
		key kLianhuanBoomX
		key kLianhuanBoomY

		/*
		    毒雾迷阵
		*/
		private timer TDuwu = null
		private unit UDuwu = null
		private effect EffectDu = null
		/*
		    三阶觉醒计数
		*/
		private integer IJuexing = 0
		/*
		    吃的总属性之和
		*/
		private integer ITotalEat = 0

		/*
		    吃的数量
		*/
		private integer ILianjinChi = 1

		//获得物品的数量
		private integer IDuxin = 0
		private trigger TDuxin = null
		private hashtable HTHS = null
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    鬼斧神工
	*/
    private function GuifushengongTimer takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local integer id = GetHandleId(t)
        local item it = LoadItemHandle(spellTable,id,1)
        call RemoveItem(it)
        call DisplayTextToPlayer(GetOwningPlayer(hanshang), 0., 0., "|cFFFF66CC【鬼斧神工】|r时间到，物品消失。")
        call PauseTimer(t)
        call FlushChildHashtable(spellTable,id)
        call DestroyTimer(t)
        set it = null
        set t = null
    endfunction

	private function Guifushengong takes nothing returns nothing
        local item it = null
        local timer t = null
        if not (IsCanCopy(GetSpellTargetItem())) then
            call DisplayTextToPlayer(GetOwningPlayer(hanshang), 0., 0., "|cFFFF66CC【鬼斧神工】|r该物品禁止复制。")
            return
        endif
        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r|cffff00ff鬼斧神工|r|cFFFF66CC】|r成功复制出了" + ( GetItemName(GetSpellTargetItem()) + "。" ) ) )
        set it = UnitAddItemByIdSwapped( GetItemTypeId(GetSpellTargetItem()), GetTriggerUnit() )
        if ((GetItemType(GetSpellTargetItem()) != ITEM_TYPE_CHARGED)) then
        	if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(hanshang))]) then
        		set IJuexing = IJuexing + 1
        		if (IJuexing >= 20) then
        			call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r|cffff00ff鬼斧神工|r|cFFFF66CC】|r该物品为真品。" ) )
					set IJuexing = 0
			        set it = null
			        set t = null
					return
				else
        			call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【|r|cffff00ff鬼斧神工|r|cFFFF66CC】|r还需要使用"+I2S(20 - IJuexing)+"次才为真品。" ) )
        		endif
        	endif
            call SetItemPawnable( it , false )
            set t = CreateTimer()
            call SaveItemHandle(spellTable,GetHandleId(t),1,it)
            call TimerStart(t,30,false,function GuifushengongTimer)
        endif
        set it = null
        set t = null

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    死神炸弹
	*/
	function SiShenZhaDan takes real x,real y,real damageRate,integer abilityID returns nothing
		local real n
		local real damage = GetDamageAgi(hanshang) * damageRate
		local real x1 = GetUnitX(hanshang)
	    local real y1 = GetUnitY(hanshang)
	    local real facing = GetFacingBetweenXY(x1,y1,x,y)
	    local real distance = SquareRoot((y-y1)*(y-y1)+(x-x1)*(x-x1))
	    if (distance < 1000) then
	    	set n = 1
	    elseif (distance < 4000) then
	    	set n =1.5
	    else
	    	set n = (1.5 + (distance - 4000) / 5000)
	    endif
	    set damage = damage * n
	    call Boom.create(CreateUnit(GetOwningPlayer(hanshang),'h007',x1,y1,facing),x,y,facing,damage,60*IJ2(hanshang,2,1),450,0.05,"Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl")
	    if(BJuexing2[GetConvertedPlayerId(GetOwningPlayer(hanshang))]) then
	    	call SetUnitLifePercentBJ(hanshang,100)
	    	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", GetUnitX(hanshang),GetUnitY(hanshang) ))
	    endif
	    if (abilityID != 0) then
	    	call PrintSpellAdd(GetOwningPlayer(hanshang),GetAbilityName(abilityID),damage,",距离伤害加成n为"+I2S(R2I(n*100) - 100)+"%.")
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    吃装备
	*/
	private function Wuqiongtunshi takes nothing returns nothing

        local item it = GetSpellTargetItem()
        local integer i = 0
        local real r = 0
        local integer loopI = 0
        if (HaveSavedInteger(YDHT,GetHandleId(it),0xA75AD423) and GetConvertedPlayerId(GetOwningPlayer(hanshang)) != LoadInteger(YDHT,GetHandleId(it),0xA75AD423)) then
            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【消息】|r这件东西属于" + ( GetUnitName(udg_H[LoadInteger(YDHT,GetHandleId(it),0xA75AD423)]) + ",不可吞噬。" ) ) )
            set it = null
            return
        endif

        if (GetItemTypeId(it) == 'I079') then
        	return
        endif

	    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(hanshang), GetUnitY(hanshang) ))

	    if (IsItemPawnable(it)) then
	    	set loopI = 1
	    	loop
	    		exitwhen i > (ILianjinChi - 1)
	    		if (LoadInteger(spellTable,GetHandleId(hanshang),i) == GetItemTypeId(it)) then
	    			call DisplayTextToPlayer(GetOwningPlayer(hanshang), 0., 0., "|cFFFF66CC【消息】|r吞噬失败,对同一种真品只能吞噬一次.(复制出来的没这个限制)")
	    			return
	    		endif
	    		set i = i +1
	    	endloop

	    	call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) + "|cFFFF66CC】|r吞噬成功，增加的属性值如以下所示：" ) ) )
			call SaveInteger(spellTable,GetHandleId(hanshang),ILianjinChi,GetItemTypeId(it))
			set ILianjinChi = ILianjinChi + 1

	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x5BAE281D)) then
	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x5BAE281D) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r全属性|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_STR, hanshang, bj_MODIFYMETHOD_ADD, i )
	            call ModifyHeroStat( bj_HEROSTAT_AGI, hanshang, bj_MODIFYMETHOD_ADD, i )
	            call ModifyHeroStat( bj_HEROSTAT_INT, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i * 3
	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x8D205575)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x8D205575) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r力量|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_STR, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i

	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x384C9D86)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x384C9D86) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r敏捷|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_AGI, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i


	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x1B5C932E)) then


	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x1B5C932E) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r智力|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_INT, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i


	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x5039AFFB)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x5039AFFB) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r攻击|cFFFF66CC】|r+" + I2S(i) ) )
	            call AddAttack(hanshang,i)

	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0xFCD961C9)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0xFCD961C9) * 2 / 5 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r生命上限|cFFFF66CC】|r+" + I2S(i) ) )
	            call AddHP(hanshang,i)

	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0x06C64278)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0x06C64278) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|r力量加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)
	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0x6FFF4132)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0x6FFF4132) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|r敏捷加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)

	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0xC0C6918C)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0xC0C6918C) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|r智力加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)

	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0xFAA305CD)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0xFAA305CD) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|rHP上限加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddHPPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)

	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0x4C0507D9)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0x4C0507D9) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|r攻击加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddAttackPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)
	        endif
	        if (HaveSavedReal(YDHT, GetItemTypeId(it) , 0x0B6FB20F)) then

	            set r = LoadReal(YDHT, GetItemTypeId(it), 0x0B6FB20F) / 5 * R3(JJ1,3.,1.)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0,  "|cFFFF66CC【|r防御加成|cFFFF66CC】|r+" +  I2S(R2I( r * 100.00 )) + "%。"   )
	            call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),r)
	        endif
	    else
	    	call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r" + ( GetAbilityName(GetSpellAbilityId()) + "|cFFFF66CC】|r吞噬成功，增加的属性值如以下所示：" ) ) )
	       if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x5BAE281D)) then
	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x5BAE281D) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r全属性|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_STR, hanshang, bj_MODIFYMETHOD_ADD, i )
	            call ModifyHeroStat( bj_HEROSTAT_AGI, hanshang, bj_MODIFYMETHOD_ADD, i )
	            call ModifyHeroStat( bj_HEROSTAT_INT, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i * 3
	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x8D205575)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x8D205575) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r力量|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_STR, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i

	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x384C9D86)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x384C9D86) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r敏捷|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_AGI, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i


	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x1B5C932E)) then


	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x1B5C932E) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r智力|cFFFF66CC】|r+" + I2S(i) ) )
	            call ModifyHeroStat( bj_HEROSTAT_INT, hanshang, bj_MODIFYMETHOD_ADD, i )
	            set ITotalEat = ITotalEat + i


	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0x5039AFFB)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0x5039AFFB) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r攻击|cFFFF66CC】|r+" + I2S(i) ) )
	            call AddAttack(hanshang,i)

	        endif
	        if (HaveSavedInteger(YDHT, GetItemTypeId(it) , 0xFCD961C9)) then

	            set i = LoadInteger(YDHT, GetItemTypeId(it), 0xFCD961C9) /20 * I3(JJ1,3,1)
	            call DisplayTextToPlayer( GetOwningPlayer(hanshang), 0, 0, ( "|cFFFF66CC【|r生命上限|cFFFF66CC】|r+" + I2S(i) ) )
	            call AddHP(hanshang,i)

	        endif
	    endif
	    if (ITotalEat > 5000000) then
	    	debug call SetHanshang1SpinOK(GetOwningPlayer(hanshang))
	    endif
	    call RemoveItem( it )
	    set it = null

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    无穷吞噬
	*/
	private function TSpellHanshang2Con takes nothing returns boolean
	    return ((GetAttackedUnitBJ() == hanshang) and ( IsSecondSpellOK(hanshang) == true) and (GetRandomInt(1, 10) == 1) and (GetUnitStateSwap(UNIT_STATE_MANA, hanshang) > 200.00) and GetUnitAbilityLevel(hanshang,'A0IK') >= 1)
	endfunction

	private function TSpellHanshang2Act takes nothing returns nothing
		call DisableTrigger(GetTriggeringTrigger())
		call SiShenZhaDan(GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0.33,'A0IK')
		call PolledWait(5)
		call EnableTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼金之术
	*/
	private function LianJinZhiShuTimer takes nothing returns nothing
		local integer lumber = GetPlayerState(GetOwningPlayer(hanshang), PLAYER_STATE_RESOURCE_LUMBER)
		local integer update = 0
		local real Rupdate
		if (lumber > 100000) then
			set update = 90
			set RLianjin2 = 0.72
		elseif (lumber > 10000) then
			set update = 75
			set RLianjin2 = 0.6
		elseif (lumber > 1000) then
			set update = 60
			set RLianjin2 = 0.48
		elseif (lumber > 100) then
			set update = 45
			set RLianjin2 = 0.36
		elseif (lumber > 10) then
			set update = 30
			set RLianjin2 = 0.24
		elseif (lumber > 1) then
			set update = 15
			set RLianjin2 = 0.12
		endif
		set Rupdate = I2R(update)/100
		if (RLianjin != Rupdate) then
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(hanshang), GetUnitY(hanshang) ))
			call PrintSpellContent(GetOwningPlayer(hanshang),GetAbilityName('A0BN'),"额外技能伤害加成"+I2S(update)+"%.")
			call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),Rupdate - RLianjin)
			set RLianjin = Rupdate
		endif
	endfunction


//---------------------------------------------------------------------------------------------------

	/*
	    连环炸弹
	*/

	private function LianhuanBoomTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local real x = LoadReal(spellTable,id,kLianhuanBoomX)
		local real y = LoadReal(spellTable,id,kLianhuanBoomY)
		if ((GetUnitState( hanshang , UNIT_STATE_MANA) >= 100) and (IsLianhuan == true)) then
			call SetUnitManaBJ(hanshang,GetUnitState( hanshang , UNIT_STATE_MANA)- 100)
			call SiShenZhaDan(x,y,1,0)
		else
        	call IssueImmediateOrder( hanshang, "stop" )
        	set IsLianhuan = false
			call PrintSpellContent(GetOwningPlayer(hanshang),GetAbilityName('A0F0'),"施法结束.")
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(spellTable,id)
		endif
		set t = null
	endfunction

	private function LianhuanBoom takes nothing returns nothing
		local timer t = CreateTimer()
		set IsLianhuan = true
		call EnableTrigger(TSpellHanshang4)
		call SaveReal(spellTable,GetHandleId(t),kLianhuanBoomX,GetSpellTargetX())
		call SaveReal(spellTable,GetHandleId(t),kLianhuanBoomY,GetSpellTargetY())
		call TimerStart(t,0.5,true,function LianhuanBoomTimer)
		call PrintSpellName(GetOwningPlayer(hanshang),GetAbilityName('A0F0'))
		set t = null
	endfunction

	/*
	    判断还在施法
	*/
	private function TSpellHanshang4Con takes nothing returns boolean
	    return ((GetSpellAbilityId() == 'A0F0'))
	endfunction

	private function TSpellHanshang4Act takes nothing returns nothing
		set IsLianhuan = false
		call DisableTrigger(TSpellHanshang4)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给地狱之礼
	*/
	private function GiveDiyu takes nothing returns nothing
		local integer i = GetRandomInt(1,3)
		if (IsFourthSpellOK(hanshang) and GetUnitAbilityLevel(hanshang,'A0F0') == 1) then
			if (i == 1) then
				call UnitAddItemByIdSwapped('I06A', UDepot[GetConvertedPlayerId(GetOwningPlayer(hanshang))])
			elseif (i == 2) then
				call UnitAddItemByIdSwapped('I06J', UDepot[GetConvertedPlayerId(GetOwningPlayer(hanshang))])
			elseif (i == 3) then
				call UnitAddItemByIdSwapped('I06B', UDepot[GetConvertedPlayerId(GetOwningPlayer(hanshang))])
			endif
			call PrintSpellContent(GetOwningPlayer(hanshang),GetAbilityName('A0F0'),"获得了"+GetItemName(GetLastCreatedItem())+"存放于仓库.")
            call PingMinimapForForce( GetForceOfPlayer(GetOwningPlayer(hanshang)), GetUnitX(UDepot[GetConvertedPlayerId(GetOwningPlayer(hanshang))]), GetUnitY(UDepot[GetConvertedPlayerId(GetOwningPlayer(hanshang))]), 2.00 )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    毒雾迷阵
	*/

	private function DuwumizhenTimer takes nothing returns nothing
		if ((IsUnitAliveBJ(UDuwu)) and (GetUnitAbilityLevelSwapped('Avul', UDuwu) < 1) and (IsUnitAliveBJ(hanshang) == true)) then
	    	call DamageArea(hanshang,GetUnitX(UDuwu),GetUnitY(UDuwu),400,GetDamageAgi(hanshang)* 0.6)
		else
			call PauseTimer(TDuwu)
			call DestroyTimer(TDuwu)
			set TDuwu = null
			set UDuwu = null
			call DestroyEffect(EffectDu)
			set EffectDu = null
		endif
	endfunction

	private function Duwumizhen takes nothing returns nothing
		if (EffectDu != null) then
        	call DestroyEffect( EffectDu )
		endif
	    set UDuwu = GetSpellTargetUnit()
	    set EffectDu = AddSpecialEffectTarget("war3mapImported\\radioactivecloud.mdl", UDuwu, "chest")
    	call PrintSpell(GetOwningPlayer(hanshang),GetAbilityName(GetSpellAbilityId()),GetDamageAgi(hanshang)* 0.6)
		if (TDuwu == null) then
			set TDuwu = CreateTimer()
			call TimerStart(TDuwu,1,true,function DuwumizhenTimer)
		endif
		call PlaySoundBJ(gg_snd_hanshang_5)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄使用技能
	*/
	private function TSpellHanshangCon takes nothing returns boolean
	    return (GetSpellAbilityUnit() == hanshang)
	endfunction

	private function TSpellHanshangAct takes nothing returns nothing
		if ((GetSpellAbilityId() == 'A0IJ')) then
			call SiShenZhaDan(GetSpellTargetX(),GetSpellTargetY(),1,GetSpellAbilityId())
		elseif ((GetSpellAbilityId() == 'A0F0')) then
			call LianhuanBoom()
		//鬼斧神工
        elseif ((GetSpellAbilityId() == 'A0II')) then
            call Guifushengong()
        //无穷吞噬
        elseif ((GetSpellAbilityId() == 'A0IK')) then
            call Wuqiongtunshi()
        //毒雾迷阵
        elseif ((GetSpellAbilityId() == 'AUfa')) then
            call Duwumizhen()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寒殇金币减少受到的伤害
	*/
	private function TSpellHanshang3Con takes nothing returns boolean
		return IsThirdSpellOK(hanshang) == true and GetUnitAbilityLevel(hanshang,'A0BN') == 1 and GetEventDamage() > 100 and GetTriggerUnit() == hanshang and IsUnitAliveBJ(hanshang)
	endfunction

	private function TSpellHanshang3Act takes nothing returns nothing
		call SetUnitLifeBJ(hanshang,GetUnitState(hanshang,UNIT_STATE_LIFE)+GetEventDamage() * RLianjin2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillHanshangI takes unit learner,integer whichSpell returns nothing
		if (learner == hanshang) then
			if (whichSpell == 3 and IsThirdSpellOK(hanshang) == true and GetUnitAbilityLevel(hanshang,'A0BN') == 1) then
				//技能3初始化
		        call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),0.25)

       			call InitHanshangAura()
       			//炼金之术
       			call TimerStart(CreateTimer(),3,true,function LianJinZhiShuTimer)
       		endif
		endif
	endfunction

	function LearnSkillHanshang takes unit learner,integer learnSpellID returns nothing
		if (learner == hanshang) then
			if (learnSpellID == 'A0IJ') then
				call LearnSkillHanshangI(learner,1)
			elseif (learnSpellID == 'A0IK') then
				call LearnSkillHanshangI(learner,2)
			elseif (learnSpellID == 'A0BN') then
				call LearnSkillHanshangI(learner,3)
			elseif (learnSpellID == 'A0F0') then
				call LearnSkillHanshangI(learner,4)
			elseif (learnSpellID == 'AUfa') then
				call LearnSkillHanshangI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化皮肤任务
	*/
	private function TDuxinAct takes nothing returns nothing
		local integer i
		if (HTHS == null) then
			return
		endif

		if (GetHanshang2Spin(GetOwningPlayer(hanshang))) then
			return
		endif
		set i = 1
		loop
			exitwhen i > IDuxin
    		if (LoadInteger(HTHS,GetHandleId(hanshang),i) == GetItemTypeId(GetManipulatedItem())) then
    			return
    		endif
			set i = i +1
		endloop
		set IDuxin = IDuxin + 1
		call SaveInteger(HTHS,GetHandleId(hanshang),IDuxin,GetItemTypeId(GetManipulatedItem()))
		if (IDuxin < 520) then
			call DisplayTextToPlayer(GetOwningPlayer(hanshang), 0., 0., "|cFF3333FF【耀金独心|r】|r进度:"+I2S(IDuxin) + "/520.")
		else
			debug call SetHanshang2SpinOK(GetOwningPlayer(hanshang))
		endif
	endfunction

	function InitDuxin takes nothing returns nothing
		set TDuxin = CreateTrigger()
		set HTHS = InitHashtable()
    	call TriggerRegisterUnitEvent( TDuxin, hanshang, EVENT_UNIT_PICKUP_ITEM )
		call TriggerAddAction(TDuxin, function TDuxinAct)
		set TDuxin = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寒殇匕首
	*/
	private function InitHanshangSpin takes unit u returns unit

        if (IsHanshangSpin2(GetOwningPlayer(u))) then
            set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'E00H',GetUnitX(u),GetUnitY(u),0)
            set gg_unit_E00C_0217 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
            call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
            call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.1)
            call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
            call RemoveUnit(u)
            set u = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
        endif

		if (IsHanshangSpin1(GetOwningPlayer(u))) then
			call UnitAddAbility(u,'A0KV')
			call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.08)
			return u
		else
			return u
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化寒殇的技能
	*/
	function InitHanshang takes unit u returns nothing
		set hanshang = InitHanshangSpin(u)

		//1
	    set TSpellHanshang = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang, EVENT_PLAYER_UNIT_SPELL_EFFECT )
	    call TriggerAddCondition(TSpellHanshang, Condition(function TSpellHanshangCon))
	    call TriggerAddAction(TSpellHanshang, function TSpellHanshangAct)

	    //2
	    set TSpellHanshang2 = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang2, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(TSpellHanshang2, Condition(function TSpellHanshang2Con))
	    call TriggerAddAction(TSpellHanshang2, function TSpellHanshang2Act)

	    //魔能等级低于5则减少受到的50%伤害
	    set TSpellHanshang3 = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellHanshang3,hanshang,EVENT_UNIT_DAMAGED)
	    call TriggerAddCondition(TSpellHanshang3,Condition(function TSpellHanshang3Con))
	    call TriggerAddAction(TSpellHanshang3,function TSpellHanshang3Act)

	    //4
	    set TSpellHanshang4 = CreateTrigger()
	    call DisableTrigger(TSpellHanshang4)
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_ENDCAST )
	    call TriggerRegisterAnyUnitEventBJ( TSpellHanshang4, EVENT_PLAYER_UNIT_SPELL_FINISH )
	    call TriggerAddCondition(TSpellHanshang4, Condition(function TSpellHanshang4Con))
	    call TriggerAddAction(TSpellHanshang4, function TSpellHanshang4Act)

		call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)),0.3)

		call TimerStart(CreateTimer(),CModeH(150,75),true,function GiveDiyu)
	endfunction
endlibrary

#endif


