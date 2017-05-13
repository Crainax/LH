//! import "LHBase.j"
/*
    物品技能
*/
library_once ItemSpell initializer InitItemSpell requires LHBase 
	
	/*
	    转移物品
	*/
	private function TransferItemCon takes nothing returns boolean
		return (GetSpellAbilityId() == 'A0GT') and (udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))] != udg_U_Zhuansheng_Dantiao[1])
	endfunction

	private function TransferItemAct takes nothing returns nothing
		call UnitAddItem( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetSpellAbilityUnit()))],GetSpellTargetItem())
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
	    物品技能
	*/
	private function ItemSpellJudge takes nothing returns nothing
		//转移物品
		if (TransferItemCon()) then
			call TransferItemAct()
		//点金
		elseif(GetSpellAbilityId() == 'A073') then
			call Dianjin()
		endif
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
				call ShenAttackEffectDuo(u1,u2,damage,eff,name,red,yellow,blue)
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
		 if (ShenAttackEffect( GetAttacker(),GetAttackedUnitBJ(),'tlum',false,400000000,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl","六元幽冥",100,0,0)) then
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
	private function InitItemSpell takes nothing returns nothing
		//物品技能触发
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
		call TriggerAddAction(t, function ItemSpellJudge)

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
	

