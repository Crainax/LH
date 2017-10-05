//! import "LHBase.j"
//! import "Attr.j"
//! import "SpellBase.j"
//! import "Juexing.j"
//! import "Boss.j"
/////! import "Continous.j"
//! import "Shen.j"
//! import "item.j"
/////! import "Box.j"
/*
    物品技能
*/
library_once ItemSpell initializer InitItemSpell requires LHBase,Attr,SpellBase,Juexing,Boss,Box,Shen,ItemBase//,Continous
	

	globals
		boolean array BYaoShuxing 
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    转移物品
	*/
	private function TransferItemAct takes nothing returns nothing
		call UnitAddItem( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))],GetSpellTargetItem())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取物品
	*/
	private function GetHeroItemClick takes nothing returns nothing
        local dialog d = GetClickedDialogBJ()
        local unit u = LoadUnitHandle(LHTable,GetHandleId(d),8)
        local integer i = 1
        loop
        	exitwhen i > 6
        	if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
        		if (UnitItemInSlotBJ(u,i)!= null) then
        			if (not(IsMinganItem(UnitItemInSlotBJ(u,i))) and not(IsZhanfahun(UnitItemInSlotBJ(u,i)) and not(IsItemPawnable(UnitItemInSlotBJ(u,i))))) then
						call UnitAddItem( UDepot[GetConvertedPlayerId(GetOwningPlayer(u))],UnitItemInSlotBJ(u,i))
        			else
        				call DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r该物品不能移动.")
        			endif
        		endif
        	endif
        	set i = i +1
        endloop

        call FlushChildHashtable(LHTable,GetHandleId(d))
        call DialogDisplay( GetOwningPlayer(u), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        set u = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction

	private function GetHeroItemAct takes nothing returns nothing
        local trigger t  = CreateTrigger()
        local unit u = udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
        local dialog d = DialogCreate()

        call DialogSetMessage( d, "选择你要取走的装备" )

	    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButton( d, S3(UnitItemInSlotBJ(u,1)!= null,GetItemName(UnitItemInSlotBJ(u,1)),"空") + "|cff00ccff(1)|r",'1'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButton( d, S3(UnitItemInSlotBJ(u,2)!= null,GetItemName(UnitItemInSlotBJ(u,2)),"空") + "|cff00ccff(2)|r",'2'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButton( d, S3(UnitItemInSlotBJ(u,3)!= null,GetItemName(UnitItemInSlotBJ(u,3)),"空") + "|cff00ccff(3)|r",'3'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),4,DialogAddButton( d, S3(UnitItemInSlotBJ(u,4)!= null,GetItemName(UnitItemInSlotBJ(u,4)),"空") + "|cff00ccff(4)|r",'4'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),5,DialogAddButton( d, S3(UnitItemInSlotBJ(u,5)!= null,GetItemName(UnitItemInSlotBJ(u,5)),"空") + "|cff00ccff(5)|r",'5'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),6,DialogAddButton( d, S3(UnitItemInSlotBJ(u,6)!= null,GetItemName(UnitItemInSlotBJ(u,6)),"空") + "|cff00ccff(6)|r",'6'))
	    call SaveButtonHandle(LHTable,GetHandleId(d),7,DialogAddButton( d, "不传送|cff00ccff(Esc)|r" , 512))

        call SaveUnitHandle(LHTable,GetHandleId(d),8,u)
        call DialogDisplay( GetOwningPlayer(u), d, true )
        call TriggerRegisterDialogEvent( t, d )
        call TriggerAddAction(t, function GetHeroItemClick)

        set d = null
        set t = null
        set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    点金
	*/
	private function Dianjin takes nothing returns nothing
		local integer i = GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
	    if ((RectContainsUnit(gg_rct______________084, GetSpellTargetUnit()) == true)) then
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【提示】|r不能对炼狱的怪使用。" )
	        return
	    endif
	    if (IsLoyalUnit(GetSpellTargetUnit())) then
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【提示】|r不能对忠诚单位使用。" )
	        return
	    endif
	    if (i >= GetUnitLevel(GetSpellTargetUnit())) then
	        call SetUnitLifeBJ( GetSpellTargetUnit(), 5.00 )
	        call UnitDamageTarget( GetTriggerUnit(), GetSpellTargetUnit(), GetUnitState(GetSpellTargetUnit(),UNIT_STATE_MAX_LIFE)*10, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
	        call AdjustPlayerStateBJ( ( GetHeroLevel(GetTriggerUnit()) * 100 ), GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD )
	        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit())) )
	    	call CreateSpellTextTag("+" + I2S(( GetHeroLevel(GetTriggerUnit()) * 100 )),GetSpellTargetUnit(),100,100,0,2)
	    else
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, ( "|cFFFF66CC【提示】|r你的英雄需要" + ( I2S(GetUnitLevel(GetSpellTargetUnit())) + "级才能将该单位直接变成金币。" ) ) )
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    百分比范围伤害
	*/
    function DamageAreaPercent takes unit attacker,real x,real y,real radius,real percent returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,attacker)) then
                call UnitDamageTarget( attacker, l_unit, GetUnitState(l_unit,UNIT_STATE_MAX_LIFE)*percent, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    增加20秒的50%属性与100%防御
	*/
	private function AddAttr10SecondTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = LoadPlayerHandle(spellTable,id,1)
		call AddStrPercentImme(GetConvertedPlayerId(p),-0.5)
		call AddAgiPercentImme(GetConvertedPlayerId(p),-0.5)
		call AddIntPercentImme(GetConvertedPlayerId(p),-0.5)
		call AddDefensePercent(GetConvertedPlayerId(p),-1.)
		set BYaoShuxing[GetConvertedPlayerId(p)] = false
		call PauseTimer(t)
		call FlushChildHashtable(spellTable,id)
		call DestroyTimer(t)
		set p = null
		set t = null 
	endfunction

	private function AddAttr10Second takes unit u returns nothing
		local timer t = CreateTimer()
		call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),0.5)
		call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),0.5)
		call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),0.5)
		call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(u)),1.)
		set BYaoShuxing[GetConvertedPlayerId(GetOwningPlayer(u))] = true
		call SavePlayerHandle(spellTable,GetHandleId(t),1,GetOwningPlayer(u))
		call TimerStart(t,20,false,function AddAttr10SecondTimer)
		set t = null
		call PolledWait(20)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    倾寒千里
	*/
	function Qinghanqianli takes nothing returns nothing
		local integer i = 1
		local real x = GetUnitX(GetSpellAbilityUnit())
		local real y = GetUnitY(GetSpellAbilityUnit())
		call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", x, y ))
		loop
			exitwhen i > 6
			call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", YDWECoordinateX(x + 900 * CosBJ(i*60)), YDWECoordinateY(y + 900 * SinBJ(i*60)) ))
			set i = i + 1
		endloop
 		call SimulateSpell(GetSpellAbilityUnit(),GetSpellAbilityUnit(),'A0BI',5,6,"stomp",false,true,false)
 		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    物品技能
	*/
	private function ItemSpellJudge takes nothing returns nothing
		//转移物品
		if ((GetSpellAbilityId() == 'A0GT') and (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))] != udg_U_Zhuansheng_Dantiao[1])) then
			call TransferItemAct()
		//仓库回城
		elseif ((GetSpellAbilityId() == 'A0L0')) then
			call HG(UDepot[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
		//到英雄身边
		elseif ((GetSpellAbilityId() == 'A0L3') and (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))] != udg_U_Zhuansheng_Dantiao[1])) then
			call SetUnitX(GetTriggerUnit(),GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]))
			call SetUnitY(GetTriggerUnit(),GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]))		
		//拿装备
		elseif ((GetSpellAbilityId() == 'A0KZ') and (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))] != udg_U_Zhuansheng_Dantiao[1])) then
			call GetHeroItemAct()
		//点金
		elseif(GetSpellAbilityId() == 'A073') then
			call Dianjin()
		elseif (GetSpellAbilityId() == 'A0KQ') then
			//【地狱】琅玕绘蝉蜕
 			call SimulateSpell(GetSpellAbilityUnit(),GetSpellTargetUnit(),'A0KP',1,5,"faeriefire",false,false,true)
 			call SimulateSpell(GetSpellAbilityUnit(),GetSpellTargetUnit(),'A0KP',1,5,"faeriefire",false,false,true)
 			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetSpellTargetUnit()), GetUnitY(GetSpellTargetUnit()) ))
		elseif (GetSpellAbilityId() == 'A0KW') then
			call Qinghanqianli()
		debug elseif (GetSpellAbilityId() == 'A0MY') then
		debug 	call Duihuanjinbi()
		debug elseif (GetSpellAbilityId() == 'A0MZ') then
		debug 	call DuihuanMucai()
		debug elseif (GetSpellAbilityId() == 'A0N0') then
		debug 	call Wanwuqiyuan()
		elseif (GetSpellAbilityId() == 'A0MC') then
			call ChangeSpinDialog(GetOwningPlayer(GetTriggerUnit()))
		elseif (GetSpellAbilityId() == 'A0ME') then
			call CreateAchievementDialog(GetOwningPlayer(GetTriggerUnit()))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    使用物品
	*/
	private function ItemSpellUseJudgeCon takes nothing returns boolean
		return (GetPlayerController(GetOwningPlayer(GetManipulatingUnit())) == MAP_CONTROL_USER)
	endfunction

	private function ItemSpellUseJudge takes nothing returns nothing
		if (GetItemTypeId(GetManipulatedItem()) == 'I05T' or GetItemTypeId(GetManipulatedItem()) == 'I07H') then
			//幽冥项链-凌
			if (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),1.)
				call PolledWait(4)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-1.)
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该技能需要主英雄施放.")
			endif		
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I04Y' or GetItemTypeId(GetManipulatedItem()) == 'I07G') then
			//幽冥项链-亡
			if (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),1.)
				call PolledWait(8)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-1.)
				call KillSelf(GetTriggerUnit())
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该技能需要主英雄施放.")
			endif
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05Y' or GetItemTypeId(GetManipulatedItem()) == 'I07K') then
			//加防御
			if (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),1.)
				call PolledWait(10)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-1.)
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该技能需要主英雄施放.")
			endif

		elseif (GetItemTypeId(GetManipulatedItem()) == 'I05Z' or GetItemTypeId(GetManipulatedItem()) == 'I07J') then
			//加属性
			if (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),0.5)
				call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),0.5)
				call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),0.5)
				call PolledWait(10)
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
				call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-0.5)
				call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-0.5)
				call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())),-0.5)
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该技能需要主英雄施放.")
			endif

		elseif (GetItemTypeId(GetManipulatedItem()) == 'I060' or GetItemTypeId(GetManipulatedItem()) == 'I07I') then
			//无敌
			if (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call ImmuteDamageInterval(GetTriggerUnit(),5)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该技能需要主英雄施放.")
			endif		
		elseif ((GetItemTypeId(GetManipulatedItem()) == 'I05V' or GetItemTypeId(GetManipulatedItem()) == 'I07L') and GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
			//戒指
			call UnitApplyTimedLifeBJ( 3.00, 'BHwe',CreateUnit(GetOwningPlayer(GetTriggerUnit()),'h01N',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetRandomReal(0,360)) )
		elseif (GetItemTypeId(GetManipulatedItem()) == 'sres') then
			//【地狱】纯粹的天赋
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			call AllowTianfu()
			call BJDebugMsg("|cFFFF66CC【消息】|r天赋技能得到了暂时性的解禁.")		
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I06A') then
			//【地狱】霓裳之乱舞
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			if not(BYaoShuxing[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) then
				call AddAttr10Second(GetTriggerUnit())
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你处于属性增加状态,使用失败!")
			endif		
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I06B') then
			//【地狱】魄霜与流晶
			call ImmuteDamageInterval(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))],5)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) ))
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I06C') then
			//【地狱】天地共璎珞
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			set udg_Paihangbang[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = ( udg_Paihangbang[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] + (16000-udg_RENSHU*1000) )
    		call MultiboardSetItemValueBJ( udg_D, 5, ( GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1 ), I2S(udg_Paihangbang[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]) )
    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你的积分成功增加"+I2S(16500-udg_RENSHU*1500))		
    	elseif (GetItemTypeId(GetManipulatedItem()) == 'I06O') then
			//【地狱】命运无枷锁
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ))
			if (TLifeConnect != null) then
				set BGongxiang = false
	    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cffff0000【消息】解锁生命连结!|r")
	    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cffff0000【消息】解锁生命连结!|r")
	    		call PolledWait(30)
	    		if (TLifeConnect != null) then
					set BGongxiang = true
	    		endif
	    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cffff0000【消息】恢复生命连结!|r")
	    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cffff0000【消息】恢复生命连结!|r")
	    	else
	    		call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r现在是非生命连结状态.")
			endif    	
		elseif (GetItemTypeId(GetManipulatedItem()) == 'I07D') then
			//十二焱炎火
			if (GetItemCharges(GetManipulatedItem()) >= 1) then
				call Yanyanhuo12(GetTriggerUnit())
			else
				call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r该物品没有能量,请充能.")
				call SetItemCharges(GetManipulatedItem(),1)
			endif
		elseif (IsShenAll(GetManipulatedItem())) then
			//神器召唤
			call SummonJingling(GetManipulatedItem(),GetTriggerUnit())
		debug elseif (GetItemTypeId(GetManipulatedItem()) == 'I07T') then
		debug 	//月饼
		debug 	call OpenTheYuebing(GetOwningPlayer(GetTriggerUnit()))
    	//开箱子
		debug elseif(GetItemTypeId(GetManipulatedItem()) == 'I06N') then
			debug call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()) ))
			debug call RemoveItem(GetManipulatedItem())
			debug call GiveJianianhuaGift(GetOwningPlayer(GetTriggerUnit()))
			debug call CreateLoginDialog(GetOwningPlayer(GetTriggerUnit()))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    魔颤寰宇
	*/
	function Mochanhuanyu takes unit u returns nothing
		local string effs = S3(GetUnitAbilityLevel(u,'A0MT')==1,"Objects\\Spawnmodels\\Undead\\UDeathSmall\\UDeathSmall.mdl","war3mapImported\\DarkNova.mdx")
		call DamageArea(u,GetUnitX(u),GetUnitY(u),400,GetDamageBase(u) * 0.3 * GetUnitAbilityLevel(u,'A0MT'))
		call DestroyEffect(AddSpecialEffect(effs, GetUnitX(u),GetUnitY(u) ))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    武器伤害引导
	*/
	//单体
	private function ShenAttackEffectDan takes unit u1,unit u2,real damage,string eff,string name,integer red,integer yellow,integer blue  returns nothing
        call UnitDamageTarget( u1, u2, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect(AddSpecialEffect(eff, GetUnitX(u2), GetUnitY(u2) ))
	    call CreateSpellTextTag(name,u1,red,yellow,blue,2)
	endfunction
	//多体
	private function ShenAttackEffectDuo takes unit u1,unit u2,real damage,string eff,string name,integer red,integer yellow,integer blue  returns nothing
		call DamageAreaEff(u1,GetUnitX(u2),GetUnitY(u2),400,damage,eff)
	    call CreateSpellTextTag(name,u1,red,yellow,blue,2)
	endfunction
	//伤害引导
	private function ShenAttackEffect takes unit u1,unit u2,integer itemID,boolean dan,real damage,string eff,string name,integer red,integer yellow,integer blue returns boolean
		if (UnitHasItemOfTypeBJ(u1, itemID)) then
			if (dan) then
				call ShenAttackEffectDan(u1,u2,damage,eff,name,red,yellow,blue)
			else
				if (itemID =='ICS1' or itemID =='I07F') then
					call DamageAreaPercent(u1,GetUnitX(u2),GetUnitY(u2),400,0.01)
				endif
				call ShenAttackEffectDuo(u1,u2,damage*R3(itemID == 'I04W' or itemID == 'I07E',udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(u1))],1),eff,name,red,yellow,blue)
			endif
			return true
		endif
		return false
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	   超神器伤害
	*/
	private function TShenAttackCon takes nothing returns boolean
		 return ((GetRandomInt(1, 20) == 1) and (IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_MAGIC_IMMUNE) != true) and (GetAttackedUnitBJ() != gg_unit_haro_0030) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_USER) and (IsUnitType(GetAttacker(), UNIT_TYPE_HERO) == true))
	endfunction
	
	private function TShenAttackAct takes nothing returns nothing

		 if (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I07F',false,700000000,"Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl","八荒刑罚-贯",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I07E',false,600000000,"Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl","八荒刑罚-袭",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ICS1',false,500000000,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl","六元幽冥-贯",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I04W',false,400000000,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl","六元幽冥-袭",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'tlum',false,400000000,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl","六元幽冥",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'tbar',false,110000000,"Objects\\Spawnmodels\\Undead\\UDeathSmall\\UDeathSmall.mdl","炽焱爆冰",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ccmd',true,80000000,"Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl","天外雷星",100,0,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'iwbr',false,80000000,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl","驱杀之光",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'shtm',false,35000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'shcw',false,35000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'shhn',false,35000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'flag',true,35000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'srtl',true,35000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'olig',true,35000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'kgal',false,25000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'jdrn',false,25000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'cosl',false,25000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'grsl',true,25000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'arsh',true,25000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'brag',true,25000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'shrs',false,15000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'pams',false,15000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'blba',false,15000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'oslo',true,15000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'thdm',true,15000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'tmmt',true,15000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'stre',false,8000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'rat3',false,8000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ocor',false,8000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'sksh',true,8000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'lure',true,8000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'rots',true,8000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ram3',false,5000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ram4',false,5000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'asbl',false,5000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'esaz',true,5000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ram2',true,5000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'ram1',true,5000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'uflg',false,2000000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'fwss',false,2000000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'spre',false,2000000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'nflg',true,2000000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'tgxp',true,2000000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'dust',true,2000000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I050',false,300000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炽焰怒灼",100,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I057',false,300000,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl","海洋唤灭",80,20,100)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I056',false,300000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl","神罚之光",0,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I04Z',true,300000,"Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl","鬼魂之手",0,0,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I055',true,300000,"war3mapImported\\OrbitalRay.mdl","雷霆之怒",100,100,0)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I03Y',true,300000,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl","陨落星雨",100,20,30)) then
		 	return
		 elseif (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'I03E',false,100000,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl","炎爆",100,0,0)) then
		 	return
		 endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    灯神伤害
	*/
	private function TDengAttackCon takes nothing returns boolean
		return (GetRandomInt(1, 20) == 1) and (IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_MAGIC_IMMUNE) != true) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_USER) and IsUnitType(GetAttacker(), UNIT_TYPE_HERO) and GetDeng(GetAttacker()) >= 7 
	endfunction

	private function TDengAttackAct takes nothing returns nothing
		local real x1 = GetUnitX(GetAttacker())
		local real y1 = GetUnitY(GetAttacker())
		local real x2 = GetUnitX(GetAttackedUnitBJ())
		local real y2 = GetUnitY(GetAttackedUnitBJ())
        local unit  u = CreateUnit(GetOwningPlayer(GetAttacker()),'h000',x1,y1,Atan2BJ(y2-y1,x2-x1))
        call UnitApplyTimedLifeBJ( 3.00, 'BHwe',u )
        call UnitAddAbilityBJ( 'A0HP',u )
        call SetUnitAbilityLevel(u,'A0HP',GetDeng(GetAttacker()) - 6)
        call IssuePointOrder(u,"carrionswarm",x2,y2)
	    call CreateSpellTextTag("贯天照世枪",GetAttacker(),0,100,50,2)
	    set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    部分召唤物的伤害
	*/
	function SimulateDamageItem takes unit u returns boolean
		if (GetUnitTypeId(u) == 'h01P') then
			call UnitDamageTarget( udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], GetTriggerUnit(), 200000000, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'h02J') then
			call UnitDamageTarget( udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], GetTriggerUnit(), 400000000, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'h01N') then
			call UnitDamageTarget( udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], GetTriggerUnit(), 500000000, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			return true 
		endif
		if (GetUnitTypeId(u) == 'h01R') then
			call DisableTrigger(GetTriggeringTrigger())
			if (IsUnitType(GetTriggerUnit(), UNIT_TYPE_MAGIC_IMMUNE)  and playerName[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] != "信哲大人") then
				call UnitDamageTarget( u, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			else
				call UnitDamageTarget( u, GetTriggerUnit(), GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*0.1, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
			endif
			call EnableTrigger(GetTriggeringTrigger())
			return true 
		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitItemSpell takes nothing returns nothing
		//物品技能触发
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
		call TriggerAddAction(t, function ItemSpellJudge)

		//使用物品
		set t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_USE_ITEM)
		call TriggerAddCondition(t,Condition(function ItemSpellUseJudgeCon))
		call TriggerAddAction(t, function ItemSpellUseJudge)

		//超神器的
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(t, Condition(function TShenAttackCon))
	    call TriggerAddAction(t, function TShenAttackAct)

		//灯的攻击被动
	    set t = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
	    call TriggerAddCondition(t, Condition(function TDengAttackCon))
	    call TriggerAddAction(t, function TDengAttackAct)

		set t = null
	endfunction

endlibrary
	

