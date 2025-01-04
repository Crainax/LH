 #ifndef ShilianIncluded
 #define ShilianIncluded

#include  "edit/LHBase.j"
#include  "edit/SpellBase.j"
#include  "edit/Structs.j"
#include  "edit/Attr.j"
#include  "edit/Diffculty.j"
#include  "edit/Multiboard.j"
#include  "edit/GoldSystem.j"
///#include  "edit/NetVersion.j"

/*
    传承试练
*/
library_once Shilian initializer InitShilian requires LHBase,SpellBase,Structs,Attr,Diffculty,Multiboard,GoldSystem,Version


	globals
		unit UShilian = null

		//时间
		private integer array IShilianTime
		//连结效果
		private Connect array CShilian
		//类型
		integer array IShilianType
		//是否正在放
		private boolean array BShilianing
		//计时器
		private timer array TShilian
		//那个漂浮文字
		private TextTagBind array TTBShilian
		//次数
		private integer array IShilianTimes
		//试练提示对话框:第一次购买
		private boolean array BFirstShilian1
		//试练提示对话框:第一次使用,提示关闭
		private boolean array BFirstShilian2

		boolean array BEscOnce
		boolean array BEscTwice

		//单位组，传承试练
		private group GShilian = null
		//试练玩家
		private player PShilian = null
		//正在挑战的试练
		private integer IContinousShilian = 0
		//正在进行传承的计时器
		private timer TChuanchengRest =null
		private timerdialog TDChuanchengRest =null
		private timer TChuanchengJudge = null

		//字的触发
		private trigger TZhe = null
		private trigger TXing = null

		//吸怪的临
		private Attract array ALin

		//皆的数值中途值
		private integer array IJie1
		private integer array IJie2

		//前的分身
		private unit array UQian
		private boolean array BQian

		integer array IKuanghuanType

		integer array IQianAchievement
		integer array IZheCountOnce
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    者的防御效果
	*/
	private function TZheCon takes nothing returns boolean
		return (GetEventDamage() > GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)) and BShilianing[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))]
	endfunction

	private function TZheAct takes nothing returns nothing
		if (GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 0) then
			set IZheCountOnce[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] = IZheCountOnce[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] + 1
		endif
		call ImmuteDamageInterval(GetTriggerUnit(),0.1)
		call SetUnitLifePercentBJ(GetTriggerUnit(),100)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    行的移动 效果
	*/
	private function TXingCon takes nothing returns boolean
		return (GetIssuedOrderIdBJ() == String2OrderIdBJ("smart")) and (BShilianing[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] or IKuanghuanType[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] == 2)
	endfunction

	private function TXingAct takes nothing returns nothing

		if (IsInForbitRegion(GetOrderPointX(),GetOrderPointY(),GetTriggerUnit())) then
			call IssueImmediateOrder( GetTriggerUnit(), "stop" )
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达." )
	        return
		endif

	    if (IsTerrainPathable(GetOrderPointX(), GetOrderPointY(), PATHING_TYPE_WALKABILITY)) then
	    	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,瞬移失败！")
	    	return
	    endif

		call SetUnitX(GetTriggerUnit(),GetOrderPointX())
		call SetUnitY(GetTriggerUnit(),GetOrderPointY())
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl", GetOrderPointX(), GetOrderPointY() ))

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取类型
	*/
	//临
	function SLSpellLin takes unit u returns nothing
	endfunction


	//兵
	function SLSpellBing takes unit u returns nothing
		local group l_group = null
		local unit l_unit = null
		local unit temp = null
		if (ModuloInteger(IShilianTime[GetConvertedPlayerId(GetOwningPlayer(u))],10) != 0) then
			return
		endif

		set l_group = CreateGroup()
		call GroupEnumUnitsInRange(l_group, GetUnitX(u),GetUnitY(u), 600, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (IsEnemyUnit(l_unit,u)) then
			    if (GetUnitState(l_unit,UNIT_STATE_LIFE) > GetUnitState(temp,UNIT_STATE_LIFE)) then
			    	set temp = l_unit
			    endif
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		if (temp != null) then
			call UnitDamageTarget( u, temp, GetDamageBase(u)*0.6 , false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
			call DestroyEffect(AddSpecialEffect("war3mapImported\\ImpaleMissTarget_Portrait.mdl", GetUnitX(temp),GetUnitY(temp) ))
		endif
		set temp = null

	endfunction

	//阵
	function SLSpellZhen takes unit u returns nothing
		if (ModuloInteger(IShilianTime[GetConvertedPlayerId(GetOwningPlayer(u))],10) != 0) then
			return
		endif

		call DamageAreaEff(u,GetUnitX(u),GetUnitY(u),600,GetDamageBase(u)*0.2,"war3mapImported\\Artillery.mdl")
	endfunction


	//总索引
	function ShilianTimerContent takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (IShilianType[id] == 2) then
			call SLSpellBing(udg_H[id])
		elseif (IShilianType[id] == 6) then
			call SLSpellZhen(udg_H[id])
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皆
	*/
	private function InitJieDamage takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		set IJie1[index] = Mdamage1[index]
		set IJie2[index] = Mdamage2[index]
	endfunction

	private function JieDamageExpose takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		local real damage1 = I2R(Mdamage1[index] - IJie1[index])*0.3
		local real damage2 = I2R(Mdamage2[index] - IJie2[index])*0.3
		local real damage = 0.
		local group l_group = CreateGroup()
		local unit l_unit = null
		local integer count = 0
		call GroupEnumUnitsInRange(l_group, GetUnitX(udg_H[GetConvertedPlayerId(p)]),GetUnitY(udg_H[GetConvertedPlayerId(p)]), 900, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (IsEnemyUnit(l_unit,udg_H[GetConvertedPlayerId(p)])) then
		    	set count = count + 1
		    endif
		endloop
		if (count >= 120 and not(IsInRect(GetUnitX(udg_H[GetConvertedPlayerId(p)]),GetUnitY(udg_H[GetConvertedPlayerId(p)]),gg_rct__________u))) then
			debug call GetAchievementAndSave(p,421)
		elseif (count >= 20) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r数量:"+I2S(count))
		endif
		call DestroyGroup(l_group)
		set damage = RMinBJ(300000000.*100,damage2 * 100000000 + damage1)/IMaxBJ(1,count)
		call CreateTextTagA( I2S(R2I(damage/10000)) + "万伤害!",udg_H[GetConvertedPlayerId(p)],100,0,0,3,30)
		set l_group = CreateGroup()
		call GroupEnumUnitsInRange(l_group, GetUnitX(udg_H[GetConvertedPlayerId(p)]),GetUnitY(udg_H[GetConvertedPlayerId(p)]), 900, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (IsEnemyUnit(l_unit,udg_H[GetConvertedPlayerId(p)])) then
		    	if (IsUnitType(l_unit,UNIT_TYPE_HERO)) then
		    		call UnitDamageTarget( udg_H[GetConvertedPlayerId(p)], l_unit, RMinBJ(damage,GetUnitState(l_unit,UNIT_STATE_MAX_LIFE)*0.2), false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
		    	else
		    		call UnitDamageTarget( udg_H[GetConvertedPlayerId(p)], l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
		    	endif
				call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl", GetUnitX(l_unit), GetUnitY(l_unit) ))
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		set IJie1[index] = 0
		set IJie2[index] = 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    设置对应的属性
	*/
	private function SyncQian takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		local unit u = udg_H[GetConvertedPlayerId(p)]
		local integer i = 1
		if (IsUnitAliveBJ(UQian[id])) then
			call SetUnitUserData(UQian[id],0)
			loop
				exitwhen i > 6
				if (GetItemTypeId(UnitItemInSlotBJ(u,i)) != GetItemTypeId(UnitItemInSlotBJ(UQian[id],i))) then
					call RemoveItem(UnitItemInSlotBJ(UQian[id],i))
					call UnitAddItemToSlotById(UQian[id],GetItemTypeId(UnitItemInSlotBJ(u,i)),i-1)
				    call SetItemDroppable( UnitItemInSlotBJ(UQian[id],i), false )
				    call SetItemPawnable( UnitItemInSlotBJ(UQian[id],i), false )
				endif
				set i = i +1
			endloop
			call SetUnitUserData(UQian[id],1)
			if not(BQian[id]) then
				call SetAttack(UQian[id],R2I(GetAttack(u)*0.1))
				call SetDefense(UQian[id],R2I(GetDefense(u)*0.1))
				call SetHP(UQian[id],R2I(GetHP(u)*0.1))
				call SetHeroInt(UQian[id],R2I(GetHeroInt(u,false)*0.1),false)
				call SetHeroStr(UQian[id],R2I(GetHeroStr(u,false)*0.1),false)
				call SetHeroAgi(UQian[id],R2I(GetHeroAgi(u,false)*0.1),false)
			else
				call SetAttack(UQian[id],GetAttack(u))
				call SetDefense(UQian[id],GetDefense(u))
				call SetHP(UQian[id],GetHP(u))
				call SetHeroStr(UQian[id],GetHeroStr(u,false),false)
				call SetHeroAgi(UQian[id],GetHeroAgi(u,false),false)
				call SetHeroInt(UQian[id],GetHeroInt(u,false),false)
			endif
		endif
		set u = null
	endfunction

	private function QianTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local player p = LoadPlayerHandle(LHTable,id,1)
		call SyncQian(p)
		set p = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    同步前幻象
	*/
	function InitSyncQianAttr takes player p returns nothing
		local timer t = CreateTimer()
		call SyncQian(p)
		call SavePlayerHandle(LHTable,GetHandleId(t),1,p)
		call TimerStart(t,10,true,function QianTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对每个字的主动进行初始化
	*/
	function InitShilianSpell takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)

		if (IShilianType[id] == 1) then
			set ALin[id] = Attract.create(udg_H[id],900,0.05,50)
			call ALin[id].SetForbitHero()
			call ALin[id].SetDeathContinue()
		    call ALin[id].start()
		elseif (IShilianType[id] == 2) then

		elseif (IShilianType[id] == 3) then
			call UnitAddAbilityP(udg_H[id],'A0LC')
		elseif (IShilianType[id] == 4) then
			set IZheCountOnce[id] = 0
		elseif (IShilianType[id] == 5) then
			call InitJieDamage(p)
		elseif (IShilianType[id] == 6) then

		elseif (IShilianType[id] == 7) then
			call UnitAddAbilityP(udg_H[id],'A0MA')
			set BGoldGongxiang[id] = true
		elseif (IShilianType[id] == 8) then
			set BQian[id] =  true
			call SyncQian(p)
		elseif (IShilianType[id] == 9) then
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对每个字的主动关闭
	*/
	function CloseShilianSpell takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)

		if (IShilianType[id] == 1) then
		    call ALin[id].destroy()
			set ALin[id] = 0
		elseif (IShilianType[id] == 3) then
			call UnitRemoveAbility(udg_H[id],'A0LC')
		elseif (IShilianType[id] == 4) then
			if (IZheCountOnce[id] > 0) then
				if (IZheCountOnce[id] >= 18) then
					debug call GetAchievementAndSave(p,423)
				else
					call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【者之尘】|r"+I2S(IZheCountOnce[id]))
				endif
			endif
		elseif (IShilianType[id] == 5) then
			call JieDamageExpose(p)
		elseif (IShilianType[id] == 6) then

		elseif (IShilianType[id] == 7) then
			call UnitRemoveAbility(udg_H[id],'A0MA')
			set BGoldGongxiang[id] = false
		elseif (IShilianType[id] == 8) then
			set BQian[id] =  false
			call SyncQian(p)
		elseif (IShilianType[id] == 9) then
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    关闭
	*/
	function DestroyShilianSpell takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		set BShilianing[id] = false
		call CShilian[id].destroy()
		set CShilian[id] = 0
		call FlushChildHashtable(LHTable,GetHandleId(TShilian[id]))
		call PauseTimer(TShilian[id])
		call DestroyTimer(TShilian[id])
		set TShilian[id] = null
		call TTBShilian[id].destroy()
		call CloseShilianSpell(p)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开启时期的计时器
	*/
	function FlashShilianTimer takes nothing returns nothing
		local player p = LoadPlayerHandle(LHTable,GetHandleId(GetExpiredTimer()),1)
		local integer id = GetConvertedPlayerId(p)
        set IShilianTime[id] = IShilianTime[id] - 1
        if (IShilianTime[id] <= 0) then
        	call DestroyShilianSpell(p)
        	set p = null
        	return
        endif
		call TTBShilian[id].setContent(I2S(IShilianTime[id]/10) + "." + I2S(ModuloInteger(IShilianTime[id],10)) +"s")
    	call ShilianTimerContent(p)
        set p = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开启
	*/
	function StartShilianSpell takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		set BShilianing[id] = true
		set CShilian[id] = Connect.create(UShilian,udg_H[id],"HWPB")
		set TShilian[id] = CreateTimer()
		call SavePlayerHandle(LHTable,GetHandleId(TShilian[id]),1,p)
		call TimerStart(TShilian[id],0.1,true,function FlashShilianTimer)
		set TTBShilian[id] = TextTagBind.create(udg_H[id],70,70)
		call InitShilianSpell(p)
		if not(BFirstShilian2[id]) then
			set BFirstShilian2[id] = true
			call ShowGameHint(p,"
			|cff00ccff每次完成挑战你将得到
			"+I2S(IShilianTime[id]/10)+"s的主动技能持续时间.|r

			|cffffff00在开启该技能时该持续时间会不断消耗.|r

			|cffff6800你可以再次通过双击(点击2次)Esc键
			来关闭主动技能,停止时间消耗.|r
")
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开启/关闭技能
	*/
	function SpellShilian takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		if not(BShilianing[id]) then
			// 开始施放技能
			if (IShilianTime[id] > 0) then
				call StartShilianSpell(p)
			else
				call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的试练充能时间已经用光了,请重新试练吧!")
			endif
		else
			//已经开始施放了,则关闭
			call DestroyShilianSpell(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    双击Esc事件
	*/
	private function TDoubleEscAct takes nothing returns nothing
		local integer id = GetConvertedPlayerId(GetTriggerPlayer())
		if (BEscOnce[id]) then
			set BEscOnce[id] = false
			if not(BEscTwice[id]) then
				call SpellShilian(GetTriggerPlayer())
				set BEscTwice[id]= true
				call PolledWait(0.3)
				set BEscTwice[id]= false
				set BEscOnce[id]= false
			endif
		else
			set BEscOnce[id]= true
			call PolledWait(0.3)
			set BEscOnce[id]= false
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    为一个单位添加行字效果
	*/
	function AddXingUnit takes unit u returns nothing
    	if (TXing == null) then
			set TXing = CreateTrigger()
			call TriggerAddCondition(TXing, Condition(function TXingCon))
			call TriggerAddAction(TXing, function TXingAct)
		endif
    	call TriggerRegisterUnitEvent( TXing, u , EVENT_UNIT_ISSUED_POINT_ORDER )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刚刚定下你的真言的时候
	*/
	function ChooseShilian takes player p,integer index returns nothing
		local integer id = GetConvertedPlayerId(p)
		set IShilianType[id] = index

		if (index == 1) then
			//临
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 临|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L7')
			call AddAgiPercentImme(id,0.05)
			call AddStrPercentImme(id,0.05)
			call AddIntPercentImme(id,0.05)
		elseif (index == 2) then
			//兵
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 兵|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0KX')
		elseif (index == 3) then
			//斗
			call UnitAddAbilityP(udg_H[id],'A0L4')
			call UnitAddAbilityP(udg_H[id],'A0LE')
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 斗|r定为你的试练内容.")
			call SetPlayerAbilityAvailable(p,'A0LE',false)
			call SetPlayerAbilityAvailable(p,'A0LC',false)
		elseif (index == 4) then
			//者
			call UnitAddAbilityP(udg_H[id],'A0LF')
			call SetPlayerAbilityAvailable(p,'A0LF',false)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 者|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0LA')
			if (TZhe == null) then
				set TZhe = CreateTrigger()
				call TriggerAddCondition(TZhe, Condition(function TZheCon))
				call TriggerAddAction(TZhe, function TZheAct)
			endif
	   		call TriggerRegisterUnitEvent(TZhe,udg_H[GetConvertedPlayerId(p)],EVENT_UNIT_DAMAGED)
		elseif (index == 5) then
			//皆
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 皆|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L6')
			call AddHPPercent(id,0.1)
		elseif (index == 6) then
			//阵
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 阵|r定为你的试练内容.")
			call AddDamagePercent(GetConvertedPlayerId(p),0.08)
			call UnitAddAbilityP(udg_H[id],'A0LB')
		elseif (index == 7) then
			//列
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 列|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L5')
			call AddDefensePercent(id,0.1)
			call SetPlayerAbilityAvailable(p,'A0MA',false)
		elseif (index == 8) then
			//前
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 前|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L8')
			set UQian[id] = CreateUnit(p,'N01Y',GetUnitX(udg_H[id]),GetUnitY(udg_H[id]),0)
			call InitSyncQianAttr(p)
		elseif (index == 9) then
			//行
			call UnitAddAbilityP(udg_H[id],'A0L9')
			call UnitAddAbilityP(udg_H[id],'A0LG')
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 行|r定为你的试练内容.")
			call SetPlayerAbilityAvailable(p,'A0LG',false)

			call AddXingUnit(udg_H[GetConvertedPlayerId(p)])

		endif
		call ShowGameHint(p,"
			恭喜你完成了传承试练!

			|cff00ccff你获得了对应该传承的
			主动技能与被动技能.|r

			|cffffff00被动技能将会一直存在.|r

			|cffff6800你可以通过双击(点击2次)Esc键
			来开启主动技能.|r
")
    	call SetPlayerTechResearchedSwap(  'R01K', 1 , p)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给怪物加上随机的技能
	*/
	private function AddMonsterRandomAbility takes unit u returns nothing
		local integer i = GetRandomInt(1,24)
		if (i == 1) then
			call UnitAddAbility(u,'A044')
			call SetUnitAbilityLevel(u,'A044',udg_Nandu_JJJ)
		elseif (i == 2) then
			call UnitAddAbility(u,'A0AN')
		elseif (i == 3) then
			call UnitAddAbility(u,'A00A')
		elseif (i == 4) then
			call UnitAddAbility(u,'ACat')
			call SetUnitAbilityLevel(u,'ACat',udg_Nandu_JJJ)
		elseif (i == 5) then
			call UnitAddAbility(u,'A03T')
			call SetUnitAbilityLevel(u,'A03T',udg_Nandu_JJJ)
			call UnitAddAbility(u,'A06K')
			call SetUnitAbilityLevel(u,'A06K',udg_Nandu_JJJ)
		elseif (i == 6) then
			call UnitAddAbility(u,'A05N')
			call SetUnitAbilityLevel(u,'A05N',udg_Nandu_JJJ)
		elseif (i == 7) then
			call UnitAddAbility(u,'A08H')
			call SetUnitAbilityLevel(u,'A08H',udg_Nandu_JJJ)
			call UnitAddAbility(u,'A05O')
			call SetUnitAbilityLevel(u,'A05O',udg_Nandu_JJJ)
		elseif (i == 8) then
			call UnitAddAbility(u,'uban')
			call SetUnitAbilityLevel(u,'uban',udg_Nandu_JJJ)
		elseif (i == 9) then
			call UnitAddAbility(u,'A05V')
			call SetUnitAbilityLevel(u,'A05V',udg_Nandu_JJJ)
		elseif (i == 10) then
			call UnitAddAbility(u,'A05I')
			call SetUnitAbilityLevel(u,'A05I',udg_Nandu_JJJ)
		elseif (i == 11) then
			call UnitAddAbility(u,'Ablo')
			call SetUnitAbilityLevel(u,'Ablo',udg_Nandu_JJJ)
		elseif (i == 12) then
			call UnitAddAbility(u,'A09G')
			call SetUnitAbilityLevel(u,'A09G',udg_Nandu_JJJ)
		elseif (i == 13) then
			call UnitAddAbility(u,'A09N')
			call SetUnitAbilityLevel(u,'A09N',udg_Nandu_JJJ)
		elseif (i == 14) then

			//归一
			//call UnitAddAbility(u,'A095')
		elseif (i == 15) then
			call UnitAddAbility(u,'Aams')
			call SetUnitAbilityLevel(u,'Aams',udg_Nandu_JJJ)
		elseif (i == 16) then
			call UnitAddAbility(u,'A08A')
			call SetUnitAbilityLevel(u,'A08A',udg_Nandu_JJJ)
		elseif (i == 17) then
			call UnitAddAbility(u,'A0A1')
			call SetUnitAbilityLevel(u,'A0A1',udg_Nandu_JJJ)
		elseif (i == 18) then
			call UnitAddAbility(u,'A09C')
			call SetUnitAbilityLevel(u,'A09C',udg_Nandu_JJJ)
		elseif (i == 19) then
			call UnitAddAbility(u,'A0LH')
		elseif (i == 20) then
			call UnitAddAbility(u,'ANr2')
			call SetUnitAbilityLevel(u,'ANr2',udg_Nandu_JJJ)
		elseif (i == 21) then
			call UnitAddAbility(u,'A0LI')
		elseif (i == 22) then
			call UnitAddAbility(u,'A08F')
			call SetUnitAbilityLevel(u,'A08F',udg_Nandu_JJJ)
		elseif (i == 23) then
			call UnitAddAbility(u,'A0B8')
		elseif (i == 24) then
			call UnitAddAbility(u,'A0BD')
			call SetUnitAbilityLevel(u,'A0BD',udg_Nandu_JJJ)
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    给怪物设置相应的生命与生命,还有防御
	*/
	private function MonsterSetPower takes unit u,player p returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (udg_Zhandouli[id] < 500) then
			call SetHeroInt(u,20,true)
			call SetHeroAgi(u,5000,true)
			call SetHeroStr(u,1000,true)
		elseif (udg_Zhandouli[id] < 2500) then
			call SetHeroInt(u,80,true)
			call SetHeroAgi(u,15000,true)
			call SetHeroStr(u,30000,true)
		elseif (udg_Zhandouli[id] < 8500) then
			call SetHeroInt(u,500,true)
			call SetHeroAgi(u,30000,true)
			call SetHeroStr(u,150000,true)
		elseif (udg_Zhandouli[id] < 15000) then
			call SetHeroInt(u,5000,true)
			call SetHeroAgi(u,50000,true)
			call SetHeroStr(u,500000,true)
		elseif (udg_Zhandouli[id] < 30000) then
			call SetHeroInt(u,30000,true)
			call SetHeroAgi(u,80000,true)
			call SetHeroStr(u,1300000,true)
		elseif (udg_Zhandouli[id] < 60000) then
			call SetHeroInt(u,60000,true)
			call SetHeroAgi(u,120000,true)
			call SetHeroStr(u,3000000,true)
		elseif (udg_Zhandouli[id] < 120000) then
			call SetHeroInt(u,150000,true)
			call SetHeroAgi(u,120000,true)
			call SetHeroStr(u,10000000,true)
		elseif (udg_Zhandouli[id] < 250000) then
			call SetHeroInt(u,800000,true)
			call SetHeroAgi(u,200000,true)
			call SetHeroStr(u,30000000,true)
		elseif (udg_Zhandouli[id] < 500000) then
			call SetHeroInt(u,3000000,true)
			call SetHeroAgi(u,400000,true)
			call SetHeroStr(u,100000000,true)
		elseif (udg_Zhandouli[id] < 700000) then
			call SetHeroInt(u,5000000,true)
			call SetHeroAgi(u,500000,true)
			call SetHeroStr(u,200000000,true)
		elseif (udg_Zhandouli[id] < 800000) then
			call SetHeroInt(u,6000000,true)
			call SetHeroAgi(u,600000,true)
			call SetHeroStr(u,300000000,true)
		elseif (udg_Zhandouli[id] < 900000) then
			call SetHeroInt(u,8000000,true)
			call SetHeroAgi(u,700000,true)
			call SetHeroStr(u,500000000,true)
		elseif (udg_Zhandouli[id] < 1000000) then
			call SetHeroInt(u,10000000,true)
			call SetHeroAgi(u,1000000,true)
			call SetHeroStr(u,800000000,true)
		elseif (udg_Zhandouli[id] < 1200000) then
			call SetHeroInt(u,18000000,true)
			call SetHeroAgi(u,1300000,true)
			call SetHeroStr(u,1000000000,true)
		elseif (udg_Zhandouli[id] < 1500000) then
			call SetHeroInt(u,24000000,true)
			call SetHeroAgi(u,1500000,true)
			call SetHeroStr(u,1400000000,true)
		elseif (udg_Zhandouli[id] < 1800000) then
			call SetHeroInt(u,29000000,true)
			call SetHeroAgi(u,1800000,true)
			call SetHeroStr(u,1600000000,true)
		else
			call SetHeroInt(u,34000000,true)
			call SetHeroAgi(u,2200000,true)
			call SetHeroStr(u,2000000000,true)
		endif

	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    创建怪物
	*/
	private function CreateShilianMonster takes player p returns nothing
		local integer i = 1
		local unit u = null

		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的战斗力为"+I2S(udg_Zhandouli[GetConvertedPlayerId(p)])+".")
		loop
			exitwhen i > 20
            set u = CreateUnit(Player(11),'N01U',GetRandomReal(GetRectMinX(gg_rct_Chuancheng),GetRectMaxX(gg_rct_Chuancheng)),GetRandomReal(GetRectMinY(gg_rct_Chuancheng),GetRectMaxY(gg_rct_Chuancheng)),GetRandomReal(0,360))
        	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", GetUnitX(u),GetUnitY(u) ))
        	call AddMonsterRandomAbility(u)
    		call TriggerExecute( gg_trg_zhandouli2 )
        	call MonsterSetPower(u,p)
            call EnhanceDiffAttack(u)
			call GroupAddUnit(GShilian,u)
			set i = i +1
		endloop
		set u = null
	endfunction

//---------------------------------------------------------------------------------------------------
    /*
        判断怪物的数量
    */
    private function GetShilianMonsterCount takes nothing returns integer
        local group l_group = CreateGroup()
        local unit l_unit
        local integer count = 0
        call GroupAddGroup(GShilian,l_group)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsUnitAliveBJ(l_unit) and GetOwningPlayer(l_unit) == Player(11)) then
                set count = count + 1
                call UnitRemoveBuffsBJ( bj_REMOVEBUFFS_ALL, l_unit )
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
        return count
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    清除试练时的所有东西
	*/
	private function RemoveChuanchengUnit takes nothing returns nothing
        if (IsUnitAliveBJ(GetEnumUnit()) and GetOwningPlayer(GetEnumUnit()) == Player(11)) then
            call FlushChildHashtable(YDHT,GetHandleId(GetEnumUnit()))
            call RemoveUnit(GetEnumUnit())
        endif
	endfunction

	private function ClearChuancheng takes nothing returns nothing
		call ForGroup(GShilian,function RemoveChuanchengUnit)
		call DestroyGroup(GShilian)
		set GShilian = null
		set IContinousShilian = 0
		set PShilian = null
		call PauseTimer(TChuanchengRest)
		call DestroyTimer(TChuanchengRest)
		call DestroyTimerDialog(TDChuanchengRest)
		set TChuanchengRest = null
		set TDChuanchengRest = null
		call PauseTimer(TChuanchengJudge)
		call DestroyTimer(TChuanchengJudge)
		set TChuanchengJudge = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    每秒都判断一次是否胜利
	*/
	private function ChuanchengJudge takes nothing returns nothing

        if (GetShilianMonsterCount() == 0) then
        	if (IShilianType[GetConvertedPlayerId(PShilian)] == 0) then
        		call ChooseShilian(PShilian,IContinousShilian)
        	endif
			set IShilianTimes[GetConvertedPlayerId(PShilian)] = IShilianTimes[GetConvertedPlayerId(PShilian)] + 1
        	if (IShilianType[GetConvertedPlayerId(PShilian)] == 1) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 250 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 2) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 600 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 3) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 900 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 4) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 50 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 5) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 250 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 6) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 600 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 7) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 900 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 8) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 900 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	elseif (IShilianType[GetConvertedPlayerId(PShilian)] == 9) then
        		set IShilianTime[GetConvertedPlayerId(PShilian)] = 450 * I3(GetUnitAbilityLevel(gg_unit_n01S_0258,'A0M5') == 1,2,1)
        	endif
        	call DisplayTextToPlayer(PShilian, 0., 0., "|cFFFF66CC【消息】|r你的主动技能时间充能至"+I2S(IShilianTime[GetConvertedPlayerId(PShilian)]/10)+"s.")
			call ClearChuancheng()
        endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    时间到了，失败哦
	*/
	private function ChuanchengTimeOut takes nothing returns nothing
		//清除传承有关的东西
		call DisplayTextToPlayer(PShilian, 0., 0., "|cFFFF66CC【消息】|r你的传承试练失败了！")
		call ClearChuancheng()
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开始试练
	*/
	function StartShilian takes player p,integer i returns nothing

		local integer id = GetConvertedPlayerId(p)

		if (i != IShilianType[id] and IShilianType[id] != 0) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r每一局游戏只能选择一种试练并不能更改.")
			return
		endif

		if not(udg_H[id] == GetBuyingUnit() and RectContainsUnit(gg_rct_Chuancheng,GetBuyingUnit())) then
            call DisplayTextToPlayer( p, 0, 0, "|cFFFF66CC【消息】|r请用英雄来试练。" )
            return
		endif

		if (PShilian != null) then
            call DisplayTextToPlayer( p, 0, 0, "|cFFFF66CC【消息】|r有人正在试练!" )
            return
		endif

		if (IShilianTime[GetConvertedPlayerId(p)] > 0) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的时间未用完，请把所有时间用完再来试练！")
            return
		endif

        if (GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) < (R2I(Pow(2,IShilianTimes[GetConvertedPlayerId(p)])) * 10)) then
            call DisplayTextToPlayer(p , 0., 0., "|cFFFF66CC【消息】|r你的木头不足" + I2S((R2I(Pow(2,IShilianTimes[GetConvertedPlayerId(p)])) * 10)) + ".")
            return
        endif
        call AdjustPlayerStateBJ( -1*(R2I(Pow(2,IShilianTimes[GetConvertedPlayerId(p)])) * 10), p , PLAYER_STATE_RESOURCE_LUMBER )

		set IContinousShilian = i
		set GShilian = CreateGroup()
		set PShilian = p

		if not(BFirstShilian1[id]) then
			set BFirstShilian1[id] = true
			call ShowGameHint(p,"传承试练介绍

				|cff00ccff在1分钟内清除与自身战斗力有关的20只怪物,
				每只怪物有24波进攻怪的随机技能,
				便可以获得对应主动技能与被动技能!|r

				|cffffff00主动技能在挑战结束后会充能一定的时间,
				使用主动技能会消耗该充能时间,
				再次双击Esc能随时关闭该主动技能,
				在把时间用光后请继续来挑战获取时间.|r

				|cffff6800注意:每次挑战都要花费一定的木头,
				第1次为10,第2次为20,第3次为40,
				……第5次为160,第6次为320……
				以此类推,每次都会在原基础*2。|r

				挑战将在5秒后开始。
")
			call PolledWait(5)
		endif

		call CreateShilianMonster(p)

        set TChuanchengRest = CreateTimer()
        set TDChuanchengRest = CreateTimerDialogBJ(TChuanchengRest,"传承试练")
        call TimerStart(TChuanchengRest,60,false,function ChuanchengTimeOut)
        call TimerDialogDisplay(TDChuanchengRest,true)

        set TChuanchengJudge = CreateTimer()
        call TimerStart(TChuanchengJudge,1,true,function ChuanchengJudge)

        set p = null

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    离开后就失败了
	*/
	private function TLeaveShilianCon takes nothing returns boolean
		return GetLeavingUnit() == udg_H[GetConvertedPlayerId(PShilian)]
	endfunction

	private function TLeaveShilianAct takes nothing returns nothing
		call DisplayTextToPlayer(PShilian, 0., 0., "|cFFFF66CC【消息】|r你的传承试练失败了！")
		call ClearChuancheng()
	endfunction
//---------------------------------------------------------------------------------------------------
    /*
        进入试练，开启
    */
    function EnterShilian takes nothing returns nothing
        local real x
        local real y
        if ((GetItemTypeId(GetSoldItem()) == 'I06P')) then
            set x = GetRectCenterX(gg_rct_Chuancheng)
            set y = GetRectCenterY(gg_rct_Chuancheng)
            call SetUnitX(GetBuyingUnit(),x)
            call SetUnitY(GetBuyingUnit(),y)
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        endif
        //试练
        if ((GetItemTypeId(GetSoldItem()) == 'I06Q')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),1)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06R')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),2)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06S')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),3)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06T')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),4)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06U')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),5)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06V')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),6)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06W')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),7)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I06X')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),8)
        elseif ((GetItemTypeId(GetSoldItem()) == 'I077')) then
        	call StartShilian(GetOwningPlayer(GetBuyingUnit()),9)
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    那个死亡后的者被动
	*/
	function ZheBeidong takes unit u returns nothing
		if (IShilianType[GetConvertedPlayerId(GetOwningPlayer(u))] == 2) then
			set IShilianTime[GetConvertedPlayerId(GetOwningPlayer(u))] = IShilianTime[GetConvertedPlayerId(GetOwningPlayer(u))] + 50
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    前字的成就
	*/
	function QianAchievement takes player p returns nothing
		if (GetUnitTypeId(GetKillingUnitBJ()) == 'N01Y' or (GetUnitTypeId(GetKillingUnitBJ()) == 'h02T' and GetUnitUserData(GetKillingUnitBJ()) == 1)) then
			set IQianAchievement[GetConvertedPlayerId(p)] = IQianAchievement[GetConvertedPlayerId(p)] + CModeH(1,2)
			if (IQianAchievement[GetConvertedPlayerId(p)] >= 6700) then
				debug call GetAchievementAndSave(p,422)
			elseif (ModuloInteger(IQianAchievement[GetConvertedPlayerId(p)],100) == 0) then
				call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【前之痕】|r:"+I2S(IQianAchievement[GetConvertedPlayerId(p)]))
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitShilian takes nothing returns nothing

		local trigger t = CreateTrigger()

		set UShilian = CreateUnit( Player(PLAYER_NEUTRAL_PASSIVE), 'n01T', -14272.0, -5440.0, 270.000 )

    	call TriggerRegisterPlayerEventEndCinematic( t, Player(0) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(1) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(2) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(3) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(4) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(5) )
		call TriggerAddAction(t, function TDoubleEscAct)

        set t = CreateTrigger()
        call TriggerRegisterLeaveRectSimple( t, gg_rct_Chuancheng )
        call TriggerAddCondition(t, Condition(function TLeaveShilianCon))
        call TriggerAddAction(t, function TLeaveShilianAct)

		set t = null

	endfunction

endlibrary
 #endif

