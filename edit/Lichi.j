//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"

/*
    英雄离魑的技能
*/
library_once Lichi requires SpellBase,Printer,Attr,Aura


	globals
		private trigger TSpellLichi = null
		private trigger TSpellLichiDamage = null
		private trigger TAttackLichi = null

		//伤害值
		private real LichiDamage = 0

		//记录点
		private real NiLiX = 0.
		private real NiLiY = 0.

		//幻影
		private integer IMaxHuanying = 0
		private unit array UHuan
		//幻影攻击目标
		private boolean BHuanAttack = false
		//0是静止,1是移动,2是攻击
		private integer ILichiDoing = 0
		//统计值
		private integer IHuanyingCount = 0

		//第二个技能的冷却期
		private boolean BTongyun = false
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
		马甲的死亡触发效果 
	*/	
	function SimulateDeathLichi takes unit u returns nothing
		if (GetUnitTypeId(u) == 'h01L') then
			call DamageArea(lichi,GetUnitX(u),GetUnitY(u),600,1)
 			call DestroyEffect(AddSpecialEffect("war3mapImported\\IceStomp.mdx", GetUnitX(u),GetUnitY(u) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取某个幻影对应的位置，下面的话是负数形式
	*/
	private function GetHuanyingIndex takes integer id returns integer
		if (ModuloInteger(id,2) == 1) then
			// 奇数
			return (id/2)+1
		else
			return -1 * (id/2)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    创建一个分身
	*/
	function CreateHuanying takes nothing returns nothing
		local integer i = 1
		local integer index = 0
		loop
			exitwhen i > IMaxHuanying
			if (UHuan[i] == null) then
				set index = GetHuanyingIndex(i)
				set UHuan[i] = CreateUnit(GetOwningPlayer(lichi),'h028',GetUnitX(lichi) +  IAbsBJ(index) * 150 * CosBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)),GetUnitY(lichi) +  IAbsBJ(index) * 150 * SinBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)),GetUnitFacing(lichi))
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(UHuan[i]),GetUnitY(UHuan[i]) ))
        		call UnitAddType( UHuan[i], UNIT_TYPE_PEON )
    			call SetUnitAcquireRange( UHuan[i], 1.00 )
        		call IssueTargetOrder(UHuan[i],"attack",lichi)
				return
			endif
			set i = i +1
		endloop
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    杀怪统计创造分身
	*/
	private function KillCountHuanying takes nothing returns nothing
		set IHuanyingCount = IHuanyingCount + 1
		if (IHuanyingCount >= 200) then
			call CreateHuanying()
		elseif (ModuloInteger(IHuanyingCount,50) == 0) then
    		call CreateTextTagA("影:"+I2S(IHuanyingCount),lichi,0,100,100,3,12)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    一样的步调
	*/
	private function JudgeLichiMove takes nothing returns nothing
		local integer i
		local integer index
    	if (NiLiX != GetUnitX(lichi) or NiLiY != GetUnitY(lichi)) then
    		set NiLiX = GetUnitX(lichi)
    		set NiLiY = GetUnitY(lichi)
    		set i = 1
    		loop
    			exitwhen i > IMaxHuanying
				set index = GetHuanyingIndex(i)
    			call SetUnitX(UHuan[i],GetUnitX(lichi) + IAbsBJ(index) * 150 * CosBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)))
    			call SetUnitY(UHuan[i],GetUnitY(lichi) + IAbsBJ(index) * 150 * SinBJ(GetUnitFacing(lichi)+R3(index > 0,90.,-90.)))
    			call SetUnitFacing(UHuan[i],GetUnitFacing(lichi))
    			set i = i +1
    		endloop
    		//移动
    		if (ILichiDoing != 1) then
    			set ILichiDoing = 1
    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
        			call IssueImmediateOrder(UHuan[i],"stop")
	    			call SetUnitAnimationByIndex( UHuan[i], 2 )
    				set i = i +1
    			endloop
    		endif
    	else
    		//静止
    		if (ILichiDoing == 1) then
    			set ILichiDoing = 0
    			call SetUnitAnimationByIndex( lichi, 1 )

    			set i = 1
    			loop
    				exitwhen i > IMaxHuanying
	    			call SetUnitAnimationByIndex( UHuan[i], 1 )
        			call IssueImmediateOrder(UHuan[i],"stop")
    				set i = i +1
    			endloop
    		endif
    	endif
	endfunction	

//---------------------------------------------------------------------------------------------------
	/*
	    攻击与被攻击事件
	*/
   	private function TAttackLichiCon takes nothing returns boolean
    	return GetAttacker() == lichi or GetAttackedUnitBJ() == lichi
    endfunction
    
    private function TAttackLichiAct takes nothing returns nothing
    	local integer i
    	if (GetAttacker() == lichi) then
    		//英雄攻击,命令幻影攻击
    		if not(BHuanAttack) then
    			set BHuanAttack = true
    			set i = 1
    			call BJDebugMsg("|cFFFF66CC【消息】|rattack")
    			loop
    				exitwhen i > IMaxHuanying
					if (UHuan[i] != null) then
        				call IssueTargetOrder( UHuan[i], "attack", GetAttackedUnitBJ() )
					endif
    				set i = i +1
    			endloop
    			call PolledWait(0.6)
    			set BHuanAttack = false
    		endif
    	else
    		//英雄被攻击，放第二个技能
    		if (not(BTongyun) and IsSecondSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JO') == 1) then
    		endif
    	endif
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    替死
	*/
    private function TSpellLichiDamageCon takes nothing returns boolean
    	return GetEventDamage() > GetUnitState(lichi,UNIT_STATE_LIFE)
    endfunction
    
    private function TSpellLichiDamageAct takes nothing returns nothing
    	local integer i = 1
    	loop
    		exitwhen i > IMaxHuanying
    		if (UHuan[i] != null) then
    			call KillUnit(UHuan[i])
    			set UHuan[i] = null
				call ImmuteDamageInterval(lichi,1)
				call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(lichi), GetUnitY(lichi) ))
				call SetUnitLifePercentBJ(lichi,100)
				call PrintSpellContent(GetOwningPlayer(lichi),GetAbilityName('A0MH'),"续命.")
    			return
    		endif
    		set i = i +1
    	endloop
    endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    主英雄使用技能
	*/
	private function TSpellLichiAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'A0JN') then
		elseif (GetSpellAbilityId() == 'A0JO') then
		elseif (GetSpellAbilityId() == 'A0JQ') then
		elseif (GetSpellAbilityId() == 'AEme') then 
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害值
	*/
	private function FlashLichiDamage takes nothing returns nothing
		set LichiDamage = GetDamageInt(lichi)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillLichiI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == lichi) then
			if (whichSpell == 3 and IsThirdSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JP') == 1) then
			elseif (whichSpell == 5 and IsFifthSpellOK(lichi) and GetUnitAbilityLevel(lichi,'A0JR') == 1) then
			endif
		endif
	endfunction

	function LearnSkillLichi takes unit learner,integer learnSpellID returns nothing
		if (learner == lichi) then
			if (learnSpellID == 'A0MI') then
				call LearnSkillLichiI(learner,1)
			elseif (learnSpellID == 'A0MN') then
				call LearnSkillLichiI(learner,2)
			elseif (learnSpellID == 'A0MO') then
				call LearnSkillLichiI(learner,3)
			elseif (learnSpellID == 'A0MP') then
				call LearnSkillLichiI(learner,4)
			elseif (learnSpellID == 'A0MQ') then
				call LearnSkillLichiI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitLichi takes unit u returns nothing
		set lichi = u

		//上限是4
		set IMaxHuanying = 4

		//施法总事件
		set TSpellLichi = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellLichi,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellLichi, function TSpellLichiAct)

	    //初始加成
	    call AddAttackPercent(GetConvertedPlayerId(GetOwningPlayer(u)),5.)
	    call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.5)

	    //刷新伤害,还有每秒判断形态是否扣血,还有加属性的判断
	    call TimerStart(CreateTimer(),1,true,function FlashLichiDamage)
	    call UnitRemoveAbility(lichi,'A0B9')

	    //一致的步调动作与位置
	    call TimerStart(CreateTimer(),0.05,true,function JudgeLichiMove)
	    //call TimerStart(CreateTimer(),0.055,true,function JudgeLichiPos)

	    //攻击与被攻击事件
		set TAttackLichi = CreateTrigger()
	    call TriggerRegisterAnyUnitEventBJ(TAttackLichi,EVENT_PLAYER_UNIT_ATTACKED)
	    call TriggerAddCondition(TAttackLichi, Condition(function TAttackLichiCon))
	    call TriggerAddAction(TAttackLichi, function TAttackLichiAct)

	    //伤害免疫事件
	    set TSpellLichiDamage = CreateTrigger()
	    call TriggerRegisterUnitEvent( TSpellLichiDamage,  lichi, EVENT_UNIT_DAMAGED )
	    call TriggerAddCondition(TSpellLichiDamage, Condition(function TSpellLichiDamageCon))
	    call TriggerAddAction(TSpellLichiDamage, function TSpellLichiDamageAct)
	endfunction
endlibrary
