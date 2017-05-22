
//! import "LHBase.j"

library_once Diffculty requires LHBase
	
	globals
		/*
		    地狱1,末日2,轮回万劫3
		*/
		integer NanDiff = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取当前难度序号
	*/
	function GetDiffculty takes nothing returns integer

		if (udg_Nandu_JJJ > 7) then
			return 9
		elseif (udg_Nandu > 20) then
			return 8
		elseif (udg_Nandu > 10) then
			return 7
		elseif (udg_Nandu > 8) then
			return 6
		elseif (udg_Nandu > 6) then
			return 5
		elseif (udg_Nandu > 4) then
			return 4
		elseif (udg_Nandu > 2) then
			return 3
		elseif (udg_Nandu > 1) then
			return 2
		else
			return 1
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    判断当前难度是否是万劫
	*/
	function IsWanjie takes nothing returns boolean
		return GetDiffculty() == 9
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    加强攻击力
	*/
	function EnhanceDiffAttack takes unit u returns nothing
		if (NanDiff <= 0) then
			return
		endif

		//100倍攻击加强
		if (GetUnitAbilityLevel(u,'A09V') >= 1) then
			call SetUnitAbilityLevel(u,'A09V',NanDiff + 1)
			return
		endif

		call UnitAddAbility(u,'A0EY')
		call SetUnitAbilityLevel(u,'A0EY',NanDiff)
		
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万劫的加强攻击力
	*/	
	function EnhanceWanjieAttack takes unit u returns nothing
		if(IsWanjie()) then
			call EnhanceDiffAttack(u)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取巨能对应等级的科技
	*/
	function GetJunengTech takes nothing returns integer

		if (NanDiff == 1) then
			return 'R00T'
		elseif (NanDiff == 2) then
			return 'R00U'
		elseif (NanDiff == 3) then
			return 'R00V'
		else
			return 'R00R'
		endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取擂台升级的速度
	*/
	function GetArenaUpdateSpeed takes nothing returns real
		if (NanDiff == 1) then
			return 4.
		elseif (NanDiff == 2) then
			return 3.
		elseif (NanDiff == 3) then
			return 2.
		else
			return 5.
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万劫数据才value*rate
	*/
	function GetWanjieInt takes integer value,real rate returns integer
		if(IsWanjie()) then
			return IMinBJ(2100000000,R2I(I2R(value) * rate))
		endif

		return value
	endfunction

	/*
	    万劫数据才value*rate，实数版 
	*/
	function GetWanjieReal takes real value ,real rate returns real
		if (IsWanjie()) then
			return value * rate
		endif

		return value
	endfunction
	/*
	    万劫数据才value + add
	*/
	function GetWanjieAddInt takes integer value,integer add returns integer
		if (IsWanjie()) then
			return value + add
		endif

		return value
	endfunction

	 
//---------------------------------------------------------------------------------------------------
	/*
	    万劫给怪物加闪烁技能，波数11波后60倍攻击
	*/
	function AddWanjieSpell takes unit u returns nothing
		if (IsWanjie()) then
			if (udg_Bo > 10) then
				//60倍技能
				call UnitAddAbility(u,'A0GL')
			endif

			//闪烁技能
			call UnitAddAbility(u,'ANbl')
			call UnitAddAbility(u,'A0HE')
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    地狱难度的数据提示
	*/
	function PrintDifficulty takes nothing returns nothing
		local integer d = GetDiffculty()
		if (d == 6) then
			call BJDebugMsg("|cFFFF66CC【消息】|r地狱难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高100%,生命提高66%.")
		elseif (d == 7) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cffff0000末日|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高200%,生命提高133%.")
		elseif (d == 8) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cffff00ff轮回|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.")
		elseif (d == 9) then
			call BJDebugMsg("|cFFFF66CC【消息】|r|cff008000万劫|r难度下，会额外提高以下怪物的难度：")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.")
			call BJDebugMsg("|cFFFF66CC【消息】|r炼狱前30层与天庭均会增强同上属性.")
			call BJDebugMsg("|cFFFF66CC【消息】|r所有单位增加50%基础防御,所有非英雄单位增加2%生命回复速度.")
			call BJDebugMsg("|cFFFF66CC【消息】|r野怪每次升级会升3级.")
			call BJDebugMsg("|cFFFF66CC【消息】|r进攻怪获得技能\"闪烁\",10波以后怪物提高20倍生命与20倍攻击.")
			call BJDebugMsg("|cFFFF66CC【消息】|r熊猫与大法BOSS提高50倍生命与20倍生命.")
			call BJDebugMsg("|cFFFF66CC【消息】|r英雄获得经验减少25%.")
			call BJDebugMsg("|cFFFF66CC【消息】|r通关该难度可以加轮回之狱主群把你名字永久保存在|cff99cc00封帝万劫录|r中哦!")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化万劫难度
	*/
	function InitWanjie takes nothing returns nothing

		//光环（加防和回血）
    	local unit u = CreateUnit(Player(10),'h00U',0,0,0)
    	call ShowUnitHide(u)

		//前三野与前30层科技 3倍生命
    	call SetPlayerTechResearchedSwap(  'R00X', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00X', 1 , Player(11))
    	//11-24波怪物，10倍生命
    	call SetPlayerTechResearchedSwap(  'R00Y', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00Y', 1 , Player(11))
    	//加宝石射程
    	call SetPlayerTechResearchedSwap(  'R00Z', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00Z', 1 , Player(11))
    	call SetPlayerTechResearchedSwap(  'R010', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R010', 1 , Player(11))
    	call SetPlayerTechResearchedSwap(  'R011', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R011', 1 , Player(11))
    	//冥刹30000E
    	call SetPlayerTechResearchedSwap(  'R013', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R013', 1 , Player(11))

    	set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    游戏难度的选取
	*/
	function ChooseDifficulty takes nothing returns nothing
		call DialogSetMessage( udg_X_Nandu, "选择难度" )
	    call DialogAddButtonBJ( udg_X_Nandu, "天国（24波）") 
	    set udg_X_Nandu_Chuangkou[1] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "太平（24波）") 
	    set udg_X_Nandu_Chuangkou[2] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "和谐（24波）") 
	    set udg_X_Nandu_Chuangkou[3] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "战争（24+5波）" )
	    set udg_X_Nandu_Chuangkou[4] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "炼狱（24+5波）" )
	    set udg_X_Nandu_Chuangkou[5] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "地狱（24+5波）" )
	    set udg_X_Nandu_Chuangkou[6] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "|cFFFF0000末日|r（24+5波）" )
	    set udg_X_Nandu_Chuangkou[7] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "|cffff00ff轮回|r（24+5波）" )
	    set udg_X_Nandu_Chuangkou[8] = GetLastCreatedButtonBJ()
	    call DialogAddButtonBJ( udg_X_Nandu, "|cff008000万劫|r（24+5波）" )
	    set udg_X_Nandu_Chuangkou[9] = GetLastCreatedButtonBJ()
	    call DialogDisplay( GetFirstPlayer(), udg_X_Nandu, true )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    游戏模式选中
	*/
	private function GameModeClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()

        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),1)) then
			//经典模式
			set mode = 1
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"经典模式\".")
			set SgameMode = "经典"
		elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
			//加速模式
			set mode = 2
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"加速模式\".")
			set SgameMode = "加速"
		endif	       

		call ChooseDifficulty()
        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    选择游戏模式
	*/
	function ChooseGameMode takes nothing returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

	    call DialogSetMessage( d, "请选择游戏模式" )
	    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "经典模式"))
	    call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "加速模式(进阶)"))
	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function GameModeClick)
	    set d = null
	    set t = null
	endfunction
endlibrary