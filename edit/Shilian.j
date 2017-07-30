//! import "LHBase.j"
//! import "SpellBase.j"
//! import "Structs.j"
//! import "Attr.j"

/*
    传承试练
*/
library_once Shilian initializer InitShilian requires LHBase,SpellBase,Structs,Attr

	
	globals
		unit UShilian = null

		//时间
		private integer array IShilianTime
		//连结效果
		private Connect array CShilian
		//类型
		private integer array IShilianType
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
		//试练提示对话框:第一次成功
		private boolean array BFirstShilian2
		//试练提示对话框:第一次使用,提示关闭
		private boolean array BFirstShilian3

		boolean array BEscOnce
		boolean array BEscTwice

		//单位组，传承试练
		private group GShilian = null
		//试练玩家 
		private player PShilian = null
		//正在挑战的试练
		private integer IContinousShilian = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取类型
	*/
	//临
	function SLSpellLin takes unit u returns nothing
	endfunction


	//兵
	function SLSpellBing takes unit u returns nothing

	endfunction

	//阵
	function SLSpellZhen takes unit u returns nothing

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
	    对每个字的主动进行初始化
	*/
	function InitShilianSpell takes player p returns nothing
		local integer id = GetConvertedPlayerId(p)

		if (IShilianType[id] == 1) then
			
		elseif (IShilianType[id] == 2) then
			//兵

		elseif (IShilianType[id] == 3) then
			
		elseif (IShilianType[id] == 4) then
			
		elseif (IShilianType[id] == 5) then
			
		elseif (IShilianType[id] == 6) then
			
		elseif (IShilianType[id] == 7) then
			
		elseif (IShilianType[id] == 8) then
			
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
			
		elseif (IShilianType[id] == 2) then
			//兵

		elseif (IShilianType[id] == 3) then
			
		elseif (IShilianType[id] == 4) then
			
		elseif (IShilianType[id] == 5) then
			
		elseif (IShilianType[id] == 6) then
			
		elseif (IShilianType[id] == 7) then
			
		elseif (IShilianType[id] == 8) then
			
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
        if (ModuloInteger(IShilianTime[id],10) == 0) then
			call TTBShilian[id].setContent("剩余时间:" + I2S(IShilianTime[id]/10) +"s")
        endif
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
		set CShilian[id] = Connect.create(UShilian,udg_H[id],"DRAM")
		set TShilian[id] = CreateTimer()
		call SavePlayerHandle(LHTable,GetHandleId(TShilian[id]),1,p)
		call TimerStart(TShilian[id],0.1,true,function FlashShilianTimer)
		set TTBShilian[id] = TextTagBind.create(udg_H[id],100,100)
		call InitShilianSpell(p)
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
	    刚刚定下你的真言的时候
	*/
	function ChooseShilian takes player p,integer index returns nothing
		local integer id = GetConvertedPlayerId(p)
		set IShilianType[id] = index

		if (index == 1) then
			//临
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 临|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L7')
		elseif (index == 2) then
			//兵
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 兵|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0KX')
		elseif (index == 3) then
			//斗
			call UnitAddAbilityP(udg_H[id],'A0KX')
			call UnitAddAbilityP(udg_H[id],'A0LE')
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 斗|r定为你的试练内容.")
			call SetPlayerAbilityAvailable(p,'A0LE',false)
		elseif (index == 4) then
			//者
			call UnitAddAbilityP(udg_H[id],'A0LF')
			call SetPlayerAbilityAvailable(p,'A0LF',false)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 者|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0LA')
		elseif (index == 5) then
			//皆
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 皆|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L6')
		elseif (index == 6) then
			//阵
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 阵|r定为你的试练内容.")
			call AddSpellPercent(GetConvertedPlayerId(p),0.1)
			call UnitAddAbilityP(udg_H[id],'A0LB')
		elseif (index == 7) then
			//列
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 列|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L5')
		elseif (index == 8) then
			//前
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 前|r定为你的试练内容.")
			call UnitAddAbilityP(udg_H[id],'A0L8')
		elseif (index == 9) then
			//行
			call UnitAddAbilityP(udg_H[id],'A0L9')
			call UnitAddAbilityP(udg_H[id],'A0LG')
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功的将|cff00ccff九字真言 - 行|r定为你的试练内容.")
			call SetPlayerAbilityAvailable(p,'A0LG',false)
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给怪物加上随机的技能
	*/
	private function AddMonsterRandomAbility takes u returns nothing
		local integer i = GetRandomInt(1,24)
		if (i == 1) then
			
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建怪物
	*/
	private function CreateShilianMonster takes nothing returns nothing
		local integer i = 1
		local unit u = null
		loop
			exitwhen i > 20
            set u = CreateUnit(Player(11),'aaaa',GetRandomReal(GetRectMinX(gg_rct_Chuangcheng),GetRectMaxX(gg_rct_Chuangcheng)),GetRandomReal(GetRectMinY(gg_rct_Chuangcheng),GetRectMaxY(gg_rct_Chuangcheng)),GetRandomReal(0,360))
        	call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl", GetUnitX(u),GetUnitY(u) ))
        	call AddMonsterRandomAbility(u)
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
        	if (IShilianType[GetOwningPlayer(PShilian)] == 0) then
        		call ChooseShilian(PShilian,IContinousShilian)
        	endif
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

		if not(udg_H[id] == GetBuyingUnit() and RectContainsUnit(gg_rct_Chuangcheng,GetBuyingUnit())) then
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r请用英雄来试练。" )
		endif

		if (i == 1 or i == 5 or i == 7 or i == 8) then
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r该挑战尚未开放,敬请期待." )
            return
		endif

		if (IShilianTime > 0) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的时间未用完，请把所有时间用完再来试练！")
		endif

        if (GetPlayerState(GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER) < (R2I(Pow(2,IShilianTimes)) * 10)) then
            call DisplayTextToPlayer(p , 0., 0., "|cFFFF66CC【消息】|r你的木头不足" + I2S((R2I(Pow(2,IShilianTimes)) * 10)) + ".")
            return
        endif
        call AdjustPlayerStateBJ( -1*(R2I(Pow(2,IShilianTimes)) * 10), p , PLAYER_STATE_RESOURCE_LUMBER )

		if not(BFirstShilian1[id]) then
			set BFirstShilian1[id] = true
			call ShowGameHint(p,"传承试练介绍

				|cff00ccff在1分钟内清除与自身战斗力有关的20只怪物,
				每只怪物有24波进攻怪的随机技能,
				便可以获得对应主动技能与被动技能!|r

				|cffffff00主动技能在挑战结束后会充能一定的时间,
				使用主动技能会消耗该充能时间,
				在把时间用光后请继续来挑战获取时间.|r

				|cffff6800注意:每次挑战都要花费一定的木头,
				第1次为10,第2次为20,第3次为40,
				……第5次为160,第6次为320……
				以此类推,每次都会在原基础*2。|r

				挑战将在5秒后开始。
")
			call PolledWait(5)
		endif

		set IContinousShilian = i

		set GShilian = CreateGroup()
		call CreateShilianMonster()

		set PShilian = GetBuyingUnit()

        set TChuanchengRest = CreateTimer()
        set TDChuanchengRest = CreateTimerDialogBJ(TChuanchengRest,"传承试练")
        call TimerStart(TChuanchengRest,60,false,function ChuanchengTimeOut)
        call TimerDialogDisplay(TDChuanchengRest,true)

        set TChuanchengJudge = CreateTimer()
        call TimerStart(TChuanchengJudge,1,true,function ChuanchengJudge)

	endfunction
//---------------------------------------------------------------------------------------------------
    /*
        进入试练，开启
    */
    function EnterMijing takes nothing returns nothing
        local real x
        local real y
        if ((GetItemTypeId(GetSoldItem()) == 'I06P')) then
            set x = GetRectCenterX(gg_rct_Chuangcheng)
            set y = GetRectCenterY(gg_rct_Chuangcheng)
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
	    初始化
	*/
	private function InitShilian takes nothing returns nothing
		
		local trigger t = CreateTrigger()

		set UShilian = null

    	call TriggerRegisterPlayerEventEndCinematic( t, Player(0) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(1) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(2) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(3) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(4) )
    	call TriggerRegisterPlayerEventEndCinematic( t, Player(5) )
		call TriggerAddAction(t, function TDoubleEscAct)
		set t = null

		//技能的隐藏


	endfunction

endlibrary