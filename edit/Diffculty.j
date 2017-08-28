
//! import "LHBase.j"
//! import "ChallangerMode.j"
library_once Diffculty requires LHBase,Huodong,ChallangerMode
	
	globals
		/*
		    地狱1,末日2,轮回万劫3
		*/
		integer NanDiff = 0
		unit UWanjieGuanghuan = null
		boolean IsTianyan = false
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
	    创建镜像单位
	*/
	function CreateJingongguai takes integer unitType,real facing returns nothing
		local integer id
		if (CT5()) then
			set id = GetNextPlayerID()
	    	call CreateNUnitsAtLoc( 1, GetUnitTypeId(udg_H[id]), Player(11), udg_Point, facing )
	    	call SetUnitMirror(GetLastCreatedUnit(),udg_H[id],I3(udg_Bo == 1 ,1,udg_Bo*GetDiffculty()))
	    	call GroupAddUnit(GJingxiang,GetLastCreatedUnit())
		else
	    	call CreateNUnitsAtLoc( 1, unitType, Player(11), udg_Point, facing )
		endif
	endfunction
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
	    天魇难度加强魔抗
	*/
	function AddTianyanmokang takes unit u returns nothing
		if (IsTianyan) then
			 call UnitAddAbility(u,'A09G')
		endif
	endfunction


//---------------------------------------------------------------------------------------------------
	/*
	    移除技能
	*/
	function RemoveDiffAttack takes unit u returns nothing
		if (GetUnitAbilityLevel(u,'A09V') >= 1) then
			call SetUnitAbilityLevel(u,'A09V',1)
		endif

		call UnitRemoveAbility(u,'A0EY')
		call UnitRemoveAbility(u,'A05O')
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
	    直接A基地
	*/
	function AttackBase takes unit u returns nothing
		if (IsTianyan and GetUnitTypeId(u) == 'hrif') then
			call IssueTargetOrder(u,"attack",gg_unit_haro_0030)
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
	    获取混沌对应等级的科技
	*/
	function GetHundunTech takes nothing returns integer

		if (NanDiff == 1) then
			return 'R01H'
		elseif (NanDiff == 2) then
			return 'R01I'
		elseif (NanDiff == 3) then
			return 'R01J'
		else
			return 'R01G'
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取禁用技能的时间
	*/
	function GetForbidTianfuTime takes nothing returns real
		if (GetDiffculty() >= 9) then
			return 9.5
		elseif (GetDiffculty() >= 8) then
			return 7.5
		else
			return 5.
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
    	set UWanjieGuanghuan = CreateUnit(Player(10),'h00U',0,0,0)
    	if (IsTianyan) then
    		call SetUnitAbilityLevel(UWanjieGuanghuan,'A0HD',2)
    		call UnitAddAbility(UWanjieGuanghuan,'A0JJ')
    	endif
    	call ShowUnitHide(UWanjieGuanghuan)

		//前三野与前30层科技 3倍生命
    	call SetPlayerTechResearchedSwap(  'R00X', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00X', 1 , Player(11))
    	//11-24波怪物，10倍生命
    	call SetPlayerTechResearchedSwap(  'R00Y', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00Y', 1 , Player(11))
    	//加宝石射程
    	call SetPlayerTechResearchedSwap(  'R010', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R010', 1 , Player(11))
    	call SetPlayerTechResearchedSwap(  'R011', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R011', 1 , Player(11))
    	//冥刹30000E
    	call SetPlayerTechResearchedSwap(  'R013', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R013', 1 , Player(11))

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    无限沉默
	*/
	private function UnlimitSlienceTianyanTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(spellTable,id,1)
		if (IsUnitAliveBJ(u)) then
 			call SimulateSpell(u,u,'A0JK',1,5,"silence",true,false,false)
		else
			call PauseTimer(t)
			call FlushChildHashtable(spellTable,id)
			call DestroyTimer(t)
		endif
		set u = null
		set t = null 
	endfunction
	
	function UnlimitSlienceTianyan takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(spellTable,GetHandleId(t),1,u)
		call TimerStart(t,3,true,function UnlimitSlienceTianyanTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天魇
	*/
	function InitTianyan takes nothing returns nothing
		local unit l_unit = null
		local group g = GetUnitsOfTypeIdAll('uzg2')
		loop
		    set l_unit = FirstOfGroup(g)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(g, l_unit)
		    call AddTianyanmokang(l_unit)
		endloop
    	call SetPlayerTechResearchedSwap(  'R00Z', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R00Z', 1 , Player(11))
    	call SetPlayerTechResearchedSwap(  'R01F', 1 , Player(10))
    	call SetPlayerTechResearchedSwap(  'R01F', 1 , Player(11))
    	call DestroyGroup(g)
    	set g = null
    	set l_unit = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示对话框提示选更高难度
	*/
	function Show245Dialog takes nothing returns nothing
		call ShowGameHintAll("
		感谢对本地图的支持！
    	你选择的难度在这波就结束了.
    	后续的关卡请选择\"和谐\"难度(难度3)或以上进行体验
    	(前5个难度其实提升不大)")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示对话框提示选更高难度
	*/
	function Show2451Dialog takes nothing returns nothing
		call ShowGameHintAll("
			感谢对本地图的支持！
	    	你选择的难度在这波就结束了.
	    	后续的关卡请选择\"炼狱\"难度(难度35)或以上进行体验
	    	(前5个难度其实提升不大)")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示对话框提示冥界进攻
	*/
	function ShowMingjieDialog takes nothing returns nothing
		call ShowGameHintAll("
			|cffff6800新任务:|r
			击败来自冥界的5波攻击并击败|cffff0000冥刹|r.")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    显示对话框提示选更高难度
	*/
	function ShowKuileiDialog takes nothing returns nothing
		call ShowGameHintAll("
			|cffff6800新任务:|r
			击败六界傀儡|cffffff00穆晴|r与白浅.")
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
			call ChooseDifficulty(1)
		elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),3)) then
			//加速模式
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"挑战模式\".")
			set SgameMode = "挑战"
			set mode = 1
			call ShowTiaozhanDialog()
		elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),2)) then
			//挑战模式
			set mode = 2
			call BJDebugMsg("|cFFFF66CC【消息】|r当前的游戏模式为\"加速模式\".")
			set SgameMode = "加速"
			call ChooseDifficulty(1)
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
	    选择游戏模式
	*/
	function ChooseGameMode takes nothing returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()

	    call DialogSetMessage( d, "请选择游戏模式" )
	    call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, "经典模式"))
	    call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, "挑战模式(New)"))
	    call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, "加速模式(进阶)"))
	    call DialogDisplay( GetFirstPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function GameModeClick)
	    set d = null
	    set t = null
	endfunction
endlibrary