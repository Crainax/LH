//! import "LHBase.j"
//! import "Huodong.j"
//! import "ChallangerDZ.j"
//! import "Mirror.j"

library_once ChallangerMode requires LHBase,ChallangerDZ,Huodong,Mirror

	globals
		integer EquipLoopingTime = 1
		group GJingxiang = null
	endglobals
//---------------------------------------------------------------------------------------------------
    /*
        输出选英雄皮肤的提示
    */
    function ShowChallangerDialog takes player p returns nothing
    	if (CType != 0) then
        	call ShowGameHint(p,GetChallangerContent(CType))
    	endif
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开始挑战3
	*/
	function StartTiaozhan1 takes nothing returns nothing
		local integer i  = 1
    	local unit u = CreateUnit(Player(10),'h025',0,0,0)
		loop
			exitwhen i > 6
			if (udg_H[i] != null) then
				call UnitRemoveAbility(udg_H[i],'A0B9')
			endif
			set i = i +1
		endloop
    	call ShowUnitHide(u)
		call BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战1,所有英雄失去攻击速度与100000%的移动速度.")
		set u = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化乱斗
	*/
	function InitKuanghuan takes nothing returns nothing
		set CType = -1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    开始挑战4
	*/
	private function Tiaozhan2Timer takes nothing returns nothing
		local integer i = 1
		if (udg_Bo >= 13) then
			loop
				exitwhen i > 6
				if (udg_H[i] != null) then
    				call RecoverUnitHP(udg_H[i],-0.3)
				endif
				set i = i +1
			endloop
		else
			loop
				exitwhen i > 6
				if (udg_H[i] != null) then
    				call RecoverUnitHP(udg_H[i],-0.1)
				endif
				set i = i +1
			endloop
		endif
	endfunction

	function StartTiaozhan2 takes nothing returns nothing
		call TimerStart(CreateTimer(),1,true,function Tiaozhan2Timer)
		call BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战2,所有英雄获得金钱为1%,英雄每秒减少10%的生命.(13波开始每秒减少30%的生命)")
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    挑战初始化
	*/
	function InitChallanger takes nothing returns nothing
		if (CT2()) then
			set EquipLoopingTime = 6
		elseif (CT3()) then
			call StartTiaozhan1()
		elseif (CT4()) then
			call StartTiaozhan2()
		elseif (CT5()) then
			set GJingxiang = CreateGroup()
		elseif (CT7()) then
	    	call SetPlayerTechResearchedSwap(  'R01L', 1 , Player(10))
	    	call SetPlayerTechResearchedSwap(  'R01L', 1 , Player(11))
			set udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 5
		endif

		if (CType != 0) then
			set SgameMode = S3(CDiff == 1,"简单",S3(CDiff == 2,"中等","困难")) + GetChallangerTitle(CType)
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    第二个挑战英雄初始化
	*/
	function InitChallanger2Hero takes unit u returns nothing
		local integer i = 2
		local item it = null
		if not(CT2()) then
			return
		endif
		loop
			exitwhen i > 6
			if (UnitItemInSlotBJ(u,i) != null) then
    			call UnitRemoveItemSwapped( UnitItemInSlotBJ(u,i), u )
			endif
			call UnitAddItemByIdSwapped('I079', u)
			set i = i +1
		endloop
		if (u == cangling) then
			set i = 8
			loop
				exitwhen i > 12
				set IBibo[i] = CreateItem('I079',0,0)
				call SetItemVisible(IBibo[i],false)
				set i = i +1
			endloop
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    第一个挑战英雄初始化
	*/
	function InitChallanger1Hero takes unit u returns nothing
		local integer int = 0
		local integer agi = 0
		local integer str = 0
		if not(CT1()) then
			return
		endif
		set int = GetHeroInt(u,true)
		set agi = GetHeroAgi(u,true)
		set str = GetHeroStr(u,true)
	    call SetHeroLevelBJ( u, 450, false )
	    call SetHeroInt(u,int,true)
	    call SetHeroAgi(u,agi,true)
	    call SetHeroStr(u,str,true)
	    call AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),-0.95)
	    call AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),-0.95)
	    call AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)),-0.95)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    游戏难度的选取
	*/
	function ChooseDifficulty takes integer i returns nothing
		call DialogSetMessage( udg_X_Nandu, "选择难度" )
	    if (i < 2) then
		    call DialogAddButtonBJ( udg_X_Nandu, "天国（24波）") 
		    set udg_X_Nandu_Chuangkou[1] = GetLastCreatedButtonBJ()
	    endif
	    if (i < 3) then
		    call DialogAddButtonBJ( udg_X_Nandu, "太平（24波）") 
		    set udg_X_Nandu_Chuangkou[2] = GetLastCreatedButtonBJ()
	    endif
	    if (i < 4) then
		    call DialogAddButtonBJ( udg_X_Nandu, "和谐（24+5波）") 
		    set udg_X_Nandu_Chuangkou[3] = GetLastCreatedButtonBJ()
	    endif
	    if (i < 5) then
		    call DialogAddButtonBJ( udg_X_Nandu, "战争（24+5波）" )
		    set udg_X_Nandu_Chuangkou[4] = GetLastCreatedButtonBJ()
		endif
	    if (i < 6) then
		    call DialogAddButtonBJ( udg_X_Nandu, "炼狱（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[5] = GetLastCreatedButtonBJ()
		endif
		
	    if (i < 7) then
		    call DialogAddButtonBJ( udg_X_Nandu, "地狱（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[6] = GetLastCreatedButtonBJ()
		endif
		
	    if (i < 8) then
		    call DialogAddButtonBJ( udg_X_Nandu, "|cFFFF0000末日|r（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[7] = GetLastCreatedButtonBJ()
		endif
		
	    if (i < 9) then
		    call DialogAddButtonBJ( udg_X_Nandu, "|cffff00ff轮回|r（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[8] = GetLastCreatedButtonBJ()
		endif
		
	    if (i < 10) then
		    call DialogAddButtonBJ( udg_X_Nandu, "|cff008000万劫|r（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[9] = GetLastCreatedButtonBJ()
		endif

	    if (IsTianyanOK()) then
		    call DialogAddButtonBJ( udg_X_Nandu, "|cff993366天魇|r（24+5+2波）" )
		    set udg_X_Nandu_Chuangkou[10] = GetLastCreatedButtonBJ()
	    endif

	    call DialogDisplay( GetFirstPlayer(), udg_X_Nandu, true )

	    if (CType != 0 and CType != -1) then
	    	call InitChallanger()
	    endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择速度后
	*/
	private function ChooseSpeedClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为经典(常速).")
			set mode = 1
			set SgameMode = SgameMode + "C"
    	endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为加速(进阶).")
			set mode = 2
			set SgameMode = SgameMode + "S"
    	endif

    	call ChooseDifficulty(GetChallangerDifficulty())
        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择加速与否
	*/
	private function CreateCDialog4 takes nothing returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

    	call DialogSetMessage( d, "经典(常速)还是加速?" )
	    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "经典(推荐)"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButton( d, "加速(进阶)",512))

	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function ChooseSpeedClick)
	    set d = null
	    set t = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    确认之后
	*/
	private function ChooseComfirmClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	call CreateCDialog4()
        	call BJDebugMsg("|cFFFF66CC【消息】|r已确认挑战内容,正在选择加速与难度.")
    	endif

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
    		call CreateCDialog2.execute()
        	call BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战类型.")
    	endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建挑战标题对话框
	*/
	private function CreateCDialog3 takes integer i returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

    	call DialogSetMessage( d, GetChallangerContent(i) )
    	//设置类型
    	set CType = i
	    
	    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "确认选择"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButton( d, "返回|cffff6800(Esc)|r",512))

	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function ChooseComfirmClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择内容之后
	*/
	private function ChooseChallangerClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local integer i = 1

	    loop
	    	exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
        		call CreateCDialog3(i)
        		call BJDebugMsg("|cFFFF66CC【消息】|r当前挑战为"+GetChallangerTitle(i)+".")
	    	endif
	    	set i = i +1
	    endloop

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),10)) then
    		call CreateCDialog1.execute()
    		call BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战难度.")
    	endif

        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建挑战标题对话框
	*/
	function CreateCDialog2 takes nothing returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    local integer i = 1

	    if (CDiff == 1) then
	    	call DialogSetMessage( d, "选择挑战类别(简单)" )
	    elseif (CDiff == 2) then
	    	call DialogSetMessage( d, "选择挑战类别(中等)" )
	    elseif (CDiff == 3) then
	    	call DialogSetMessage( d, "选择挑战类别(困难)" )
	    endif

	    call SaveButtonHandle(LHTable,GetHandleId(d),7,DialogAddButtonBJ( d, GetChallangerTitle(7) + S3(IsChallangerComplete(GetFirstPlayer(),7),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))

	    loop
	    	exitwhen i > 6
		    call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer(),i),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
	    	set i = i +1
	    endloop

    	call SaveButtonHandle(LHTable,GetHandleId(d),10,DialogAddButton( d, "返回|cffff6800(Esc)|r",512))
	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t,function ChooseChallangerClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择难度之后
	*/
	private function ChooseDifficultyClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
        	set CDiff = 1
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为简单.")
		elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
        	set CDiff = 2
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为中等.")
		elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),3)) then
        	set CDiff = 3
        	call CreateCDialog2()
        	call BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为困难.")
		endif	       

        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建难度对话框
	*/
	function CreateCDialog1 takes nothing returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

	    call DialogSetMessage( d, "选择挑战难度" )
	    if (DEBUG_MODE) then
		    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "简单(" + I2S(GetEasyComplete(GetFirstPlayer())) +"/"+I2S(COUNT_CHALLANGER)+")"))
		    call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "中等(" + I2S(GetMiddleComplete(GetFirstPlayer())) +"/"+I2S(COUNT_CHALLANGER)+")")) 
		    call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, "困难(" + I2S(GetHardComplete(GetFirstPlayer())) +"/"+I2S(COUNT_CHALLANGER)+")"))
		else
			call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "简单"))
		    call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "中等")) 
		    call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, "困难"))
	    endif
	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function ChooseDifficultyClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示挑战对话框
	*/
	function ShowTiaozhanDialog takes nothing returns nothing
		call CreateCDialog1()
	endfunction
	
endlibrary