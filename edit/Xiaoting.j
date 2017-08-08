
//! import "SpellBase.j"
//! import "Printer.j"
//! import "Attr.j"
//! import "Aura.j"
/*
    英雄霄霆的技能
*/
library_once Xiaoting requires SpellBase,Printer,Attr,Aura
	
	globals
		/*
		    技能触发
		*/
		private trigger TSpellXiaoting = null
		/*
		    伤害
		*/
		private real RDamageXiaoting = 0.

		/*
		    元素状态
		*/
		//private integer ISpellState = 0
		/*
		    魔能数
		*/
		private integer ICombo = 0

		/*
		    魔能
		*/
		private texttag TTCombo = null

		/*
		    箭的单位
		*/
		private integer IMaxCombo = 0
		private timer TArrow = 0
		private unit array UArrow
		//反弹布尔
		private boolean BFantan = false
		//静止布尔
		private boolean BJingzhi = false


	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的攻击伤害
	*/
	
	function SimulateDamageXiaoting takes unit u returns boolean

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取combo对应的层数
	*/
	private function GetComboMulti takes nothing returns integer

		if not(IsThirdSpellOK(xiaoting) and GetUnitAbilityLevel(xiaoting,'AX30') == 1) then
			return 1
		endif

		if (ICombo > 1000) then
			return 4
		elseif (ICombo > 100) then
			return 3
		elseif (ICombo > 10) then
			return 2
		else
			return 1
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取匹配的箭的序列
	*/
	/*private function GetArrowIndex takes timer t returns integer
		local integer i = 1
		loop
			exitwhen i > IMaxCombo
			if (t == TArrow) then
				return i
			endif
			set i = i +1
		endloop
	endfunction*/
//---------------------------------------------------------------------------------------------------
	/*
	    清除所有箭有关的东西
	*/
	private function ClearAllArrow takes nothing returns nothing
		local integer i = 1
		call PauseTimer(TArrow)
		call DestroyTimer(TArrow)
		set TArrow = null
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call RemoveUnit(UArrow[i])
				set UArrow[i] = null
				call DestroyGroup(GArrow[i])
				set GArrow[i] = null
			endif
			set i = i +1
		endloop
		set BFantan = false
		set BJingzhi = false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭的运动
	*/
	private function FlashArrowMove takes integer index returns nothing
		local real x = GetUnitX(UArrow[index])
		local real y = GetUnitY(UArrow[index])
        local real xp = x + 50. * CosBJ(GetUnitFacing(UArrow[index]))
        local real yp = y + 50. * SinBJ(GetUnitFacing(UArrow[index]))
        local group g = null
        local unit l_unit
        local integer times = GetComboMulti()
        local real radius = 200 + times * 100

        //如果英雄死亡则清除
        if (BHeroDeath[GetConvertedPlayerId(GetOwningPlayer(xiaoting))]) then
        	call ClearAllArrow()
        	return
        endif

        //反弹
        if (BFantan) then

        else
        	call SetUnitX(UArrow[index],xp)
        	call SetUnitY(UArrow[index],yp)
        endif

        set l_group = CreateGroup()
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,xiaoting) and not(IsUnitInGroup(l_unit,GArrow[index]))) then
            	call UnitDamageTarget( xiaoting, l_unit, RDamageXiaoting * times, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
            	call GroupAddUnit(GArrow[index],l_unit)
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
	endfunction

	private function FlashArrowMoveTimer takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				call FlashArrowMove(i)
			endif
			set i = i +1
		endloop
	endfunction

    private function Rebound takes Thread t,real nx,real ny returns nothing
        
        if not (IsTerrainPathable(nx, t.pos.y, PATHING_TYPE_WALKABILITY)) then
            set t.vel.y = -1 * t.vel.y
        elseif not (IsTerrainPathable(t.pos.x, ny, PATHING_TYPE_WALKABILITY)) then
            set t.vel.x = -1 * t.vel.x
        else
            set t.vel.y = -1 * t.vel.y
            set t.vel.x = -1 * t.vel.x
        endif
        call GroupClear(t.g)
        call SetUnitFacing(t.obj,Atan2BJ(t.vel.y,t.vel.x))
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    贯虹箭
	*/
	private function Guanhongjian takes real x,real y,real facing returns nothing
		local integer i = 1 
		loop
			exitwhen i > IMaxCombo
			if (UArrow[i] != null) then
				set UArrow[i] = CreateUnit(GetOwningPlayer(xiaoting),'aaaa',x,y,facing)
				if (TArrow != null) then
					set TArrow = CreateTimer()
					call TimerStart(TArrow,0.05,true,function FlashArrowMoveTimer)
				endif
				set GArrow[i] = CreateGroup()
				return
			endif
			set i = i +1
		endloop
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    折返
	*/
	private function Zhefan takes nothing returns nothing
		
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炎止
	*/
	private function Yanzhi takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    沉默
	*/
	private function Chenmo takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    追心
	*/
	private function Zhuixin takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    冰墙
	*/
	private function Bingqiang takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    静体
	*/
	private function Jingti takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    分裂
	*/
	private function Fenlie takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瞬体
	*/
	private function Shunti takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    渡越
	*/
	private function Duyue takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    御箭
	*/
	private function Yujian takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    绝焱
	*/
	private function Jueyan takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    静滞
	*/
	private function Jingzhi takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭灵
	*/
	private function Jianling takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    穿刺
	*/
	private function Chuanci takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    屏障
	*/
	private function Pingzhang takes nothing returns nothing
			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    箭绝天技
	*/
	private function Jianjuetianji takes nothing returns nothing

			
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新Combo
	*/
	private function FlashComboPos takes nothing returns nothing
		call SetTextTagPosUnitBJ(TTCombo,xiaoting,20)
	endfunction

	private function FlashComboData takes nothing returns nothing
		set ICombo = IMaxBJ(R2I(0.98*(ICombo-1)),0)
		call SetTextTagTextBJ(TTCombo,I2S(ICombo) + "Combo:"+I2S(ICombo),20)
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    初始化Combo
	*/
	private function InitCombo takes nothing returns nothing

		set ICombo = 0
		set TTCombo = CreateTextTagUnitBJ( "Combo:0", xiaoting, 0, 20, 100, 0, 50, 0 )
		call TimerStart(CreateTimer(),0.05,true,function FlashComboPos)
		call TimerStart(CreateTimer(),1,true,function FlashComboData)
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    根据当前技能套设定相关的技能
	*/
	private function SetSpellSet takes integer i returns nothing

		//set ISpellState = i
		if (i == 0) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX13',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX23',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX33',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX43',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX10',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX20',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX30',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX40',true)
		elseif (i == 1) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX10',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX20',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX30',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX40',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX11',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX21',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX31',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX41',true)
		elseif (i == 2) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX11',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX21',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX31',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX41',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX12',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX22',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX32',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX42',true)
		elseif (i == 3) then
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX12',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX22',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX32',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX42',false)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX13',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX23',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX33',true)
			call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AX43',true)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    主英雄技能判断
	*/

	private function TSpellXiaotingAct takes nothing returns nothing
		//切换技能套
		if (GetSpellAbilityId() == 'AHH0') then
			call UnitRemoveAbility(xiaoting,'AHH0')
			call UnitAddAbility(xiaoting,'AHH1')
			call SetSpellSet(1)
		elseif (GetSpellAbilityId() == 'AHH1') then
			call UnitRemoveAbility(xiaoting,'AHH1')
			call UnitAddAbility(xiaoting,'AHH2')
			call SetSpellSet(2)
		elseif (GetSpellAbilityId() == 'AHH2') then 
			call UnitRemoveAbility(xiaoting,'AHH2')
			call UnitAddAbility(xiaoting,'AHH3')
			call SetSpellSet(3)
		elseif (GetSpellAbilityId() == 'AHH3') then 
			call UnitRemoveAbility(xiaoting,'AHH3')
			call UnitAddAbility(xiaoting,'AHH0')
			call SetSpellSet(0)
		//大招-箭绝天技
		elseif (GetSpellAbilityId() == 'AHH4') then 
			call Jianjuetianji()
		//贯虹箭
		elseif (GetSpellAbilityId() == 'AX10') then 
			call Guanhongjian()
		//箭技-折返
		elseif (GetSpellAbilityId() == 'AX11') then 
			call Zhefan()
		//箭技-炎止
		elseif (GetSpellAbilityId() == 'AX12') then 
			call Yanzhi()
		//箭技-沉默
		elseif (GetSpellAbilityId() == 'AX13') then 
			call Chenmo()
		//箭技-追心
		elseif (GetSpellAbilityId() == 'AX20') then 
			call Zhuixin()
		//绝技-冰墙
		elseif (GetSpellAbilityId() == 'AX21') then 
			call Bingqiang()
		//绝技-静体
		elseif (GetSpellAbilityId() == 'AX22') then 
			call Jingti()
		//箭技-分裂
		elseif (GetSpellAbilityId() == 'AX23') then 
			call Fenlie()
		//箭技-瞬体
		elseif (GetSpellAbilityId() == 'AX30') then 
			call Shunti()
		//箭技-渡越
		elseif (GetSpellAbilityId() == 'AX31') then 
			call Duyue()
		//箭技-御箭
		elseif (GetSpellAbilityId() == 'AX32') then 
			call Yujian()
		//箭技-绝焱
		elseif (GetSpellAbilityId() == 'AX33') then 
			call Jueyan()
		//箭技-静滞
		elseif (GetSpellAbilityId() == 'AX40') then 
			call Jingzhi()
		//箭技-箭灵
		elseif (GetSpellAbilityId() == 'AX41') then 
			call Jianling()
		//箭技-穿刺
		elseif (GetSpellAbilityId() == 'AX42') then 
			call Chuanci()
		//绝技-屏障
		elseif (GetSpellAbilityId() == 'AX43') then 
			call Pingzhang()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    刷新伤害
	*/
	private function FlashXiaotingDamage takes nothing returns nothing
		set RDamageXiaoting = GetDamageAgi(xiaoting)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄学习技能
	*/

	//按照12345来判断
	function LearnSkillXiaotingI takes unit learner,integer whichSpell returns nothing
		local integer i
		if (learner == xiaoting) then
			if (whichSpell == 1) then
		    	call UnitAddAbility(xiaoting,'AX11')
		    	call UnitAddAbility(xiaoting,'AX12')
		    	call UnitAddAbility(xiaoting,'AX13')
			elseif (whichSpell == 2) then
		    	call UnitAddAbility(xiaoting,'AX21')
		    	call UnitAddAbility(xiaoting,'AX22')
		    	call UnitAddAbility(xiaoting,'AX23')
			elseif (whichSpell == 3) then
		    	call UnitAddAbility(xiaoting,'AX31')
		    	call UnitAddAbility(xiaoting,'AX32')
		    	call UnitAddAbility(xiaoting,'AX33')
			elseif (whichSpell == 4) then
		    	call UnitAddAbility(xiaoting,'AX41')
		    	call UnitAddAbility(xiaoting,'AX42')
		    	call UnitAddAbility(xiaoting,'AX43')
		    endif

			if (whichSpell == 2 and IsSecondSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'AX20') == 1) then
				//技能2初始化
				call InitCombo()
			elseif (whichSpell == 3 and IsThirdSpellOK(xiaoting) == true and GetUnitAbilityLevel(xiaoting,'AX30') == 1) then
				call InitXiaotingAura()
				//todo：加上光环
				call AddSpecialEffectTargetUnitBJ("origin",xiaoting,"war3mapImported\\sichongjiejie_b.mdx")
			endif
		endif
	endfunction

	function LearnSkillXiaoting takes unit learner,integer learnSpellID returns nothing
		if (learner == xiaoting) then
			if (learnSpellID == 'AX10') then
				call LearnSkillXiaotingI(learner,1)
			elseif (learnSpellID == 'AX20') then
				call LearnSkillXiaotingI(learner,2)
			elseif (learnSpellID == 'AX30') then
				call LearnSkillXiaotingI(learner,3)
			elseif (learnSpellID == 'AX40') then
				call LearnSkillXiaotingI(learner,4)
			elseif (learnSpellID == 'AHH4') then
				call LearnSkillXiaotingI(learner,5)
			endif
		endif
	endfunction

//---------------------------------------------------------------------------------------------------

	/*
	    初始化新英雄,选取时调用
	*/
	function InitXiaoting takes unit u returns nothing
		set xiaoting = u
		//主英雄技能
		set TSpellXiaoting = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellXiaoting,u,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellXiaoting, function TSpellXiaotingAct)

	    //刷新伤害
	    call TimerStart(CreateTimer(),1,true,function FlashXiaotingDamage)

	    //初始化技能状态
	    call UnitAddAbility(xiaoting,'AHH6')
	    call UnitAddAbility(xiaoting,'AHH7')
	    call UnitAddAbility(xiaoting,'AHH8')
	    call UnitAddAbility(xiaoting,'AHH9')
	    call UnitAddAbility(xiaoting,'AHHA')
	    call UnitAddAbility(xiaoting,'AHHB')
	    call UnitAddAbility(xiaoting,'AHHC')
	    call UnitAddAbility(xiaoting,'AHHD')
	    call UnitAddAbility(xiaoting,'AHHE')
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH6',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH7',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH8',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHH9',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHA',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHB',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHC',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHD',false)
		call SetPlayerAbilityAvailable(GetOwningPlayer(xiaoting),'AHHE',false)

		set IMaxCombo = 4

	endfunction

endlibrary