
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
/*
    英雄瑟雨的技能
*/
library_once Seyu requires SpellBase,Printer,Attr 
	
	globals
		unit seyu = null

		/*
		    异界能量
		*/
		private texttag TTPower
		private integer IPower
		/*
			增益值 
		*/	
		private real RAddtion
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    异界能量1:文字位置
	*/
	//位置刷新，0.05s
	private function FlashPowerLocation takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTPower,seyu,25)
	endfunction

	//数值刷新,1秒1次
	private function FlashPowerData takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(seyu))
		local real delta
		//限制能量在0-105之间
		set IPower = IMinBJ(IMaxBJ(IPower - 1,0),105)
		call SetTextTagTextBJ(TTPower,I2S(IPower) + "%能量",20)
		set delta = I2R((IPower/10)*10)/100
		if (RAddtion != delta) then
			call AddStrPercent(index,GetStrPercent(index) - RAddtion + delta)
			call AddIntPercent(index,GetIntPercent(index) - RAddtion + delta)
			call AddAgiPercent(index,GetAgiPercent(index) - RAddtion + delta)
			set RAddtion = delta
			call BJDebugMsg("能量加成:"+R2S(RAddtion))
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", GetUnitX(seyu), GetUnitY(seyu) ))
		endif 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
    	异界能量的获取
	*/
	private function TDeathAddPowerCon takes nothing returns boolean
		return (IsEnemy(GetDyingUnit(),GetKillingUnitBJ()) == true and udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] == seyu)
	endfunction
	
	private function TDeathAddPowerAct takes nothing returns nothing
		set IPower = IPower + 1
		call BJDebugMsg("IPower:"+I2S(IPower))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化异界能量
	*/
	private function InitPower takes nothing returns nothing
		local timer ti = CreateTimer()
		local trigger t = CreateTrigger()

		//异界能量触发
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddCondition(t, Condition(function TDeathAddPowerCon))
		call TriggerAddAction(t, function TDeathAddPowerAct)

		set IPower = 0
		set RAddtion = 0
		set TTPower = CreateTextTagUnitBJ( I2S(IPower) + "%能量", seyu, 0, 20, 100, 0, 100, 0 )
		call TimerStart(ti,0.05,true,function FlashPowerLocation)

		set ti = CreateTimer()
		call TimerStart(ti,1,true,function FlashPowerData)

		set ti = null
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillSeyuI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == seyu) then
			if(whichSpell == 1) then
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(3)), 3 )
			elseif (whichSpell == 2 and IsSecondSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AUav') == 1) then
				//技能2初始化
				call InitPower()
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(4)), 3 )
			elseif (whichSpell == 3 and IsThirdSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEar') == 1) then
				//技能3初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(5)), 3 )
				call SetPlayerTechResearchedSwap( 'R00D', 1, GetOwningPlayer(seyu) )
				set i = 1
       			loop
       				exitwhen i > 6
       				
		            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
		                call AddAgiPercent(i,0.4)
		            endif

       				set i = i +1
       			endloop
			elseif (whichSpell == 4 and IsFourthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEsv') == 1) then
				//技能4初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(6)), 3 )
			elseif (whichSpell == 5 and IsFifthSpellOK(seyu) == true and GetUnitAbilityLevel(seyu,'AEst') == 1) then
				//技能5初始化
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(7)), 3 )
                call SetUnitUserData( YDWEGetUnitByString("空间虫洞", I2S(8)), 3 )
			endif
		endif
	endfunction

	function LearnSkillSeyu takes unit learner,integer learnSpellID returns nothing
		if (learner == seyu) then
			if (learnSpellID == 'AEfk') then
				call LearnSkillSeyuI(learner,1)
			elseif (learnSpellID == 'AUav') then
				call LearnSkillSeyuI(learner,2)
			elseif (learnSpellID == 'AEar') then
				call LearnSkillSeyuI(learner,3)
			elseif (learnSpellID == 'AEsv') then
				call LearnSkillSeyuI(learner,4)
			elseif (learnSpellID == 'AEst') then
				call LearnSkillSeyuI(learner,5)
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化瑟雨
	*/
	function InitSeyu takes unit u returns nothing
		set seyu = u
	endfunction
endlibrary