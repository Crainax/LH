//! import "LHBase.j"
//! import "SpellBase.j"
//! import "Structs.j"

/*
    传承试练
*/
library_once Shilian initializer InitShilian requires LHBase,SpellBase,Structs

	
	globals
		unit UShilian = null

		//时间
		private integer array IShilianTime
		//连结效果
		private Connect array CShilian
		//类型
		private SLSpell array IShilianType
		//是否正在放
		private boolean array BShilianing
		//计时器
		private timer array TShilian
		//那个漂浮文字
		private TextTagBind array TTBShilian

		boolean array BEscOnce
		boolean array BEscTwice
	endglobals

	//计时器施放那种
    function interface SLSpell takes unit u returns nothing
    //初始化
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
	//斗
	function SLSpellDou takes unit u returns nothing
	endfunction
	//者
	function SLSpellZhe takes unit u returns nothing
	endfunction
	//皆
	function SLSpellJie takes unit u returns nothing
	endfunction
	//阵
	function SLSpellZhen takes unit u returns nothing
	endfunction
	//列
	function SLSpellLie takes unit u returns nothing
	endfunction
	//前
	function SLSpellQian takes unit u returns nothing
	endfunction
	//行
	function SLSpellXing takes unit u returns nothing
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
        if (IShilianType[id] != 0) then
        	call IShilianType[id].execute(udg_H[id])
        endif
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

	endfunction

endlibrary