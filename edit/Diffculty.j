
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
	function PrintDiyuDifficulty takes nothing returns nothing
		call BJDebugMsg("|cFFFF66CC【消息】|r地狱难度下，会额外提高以下怪物的难度：")
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

    	set u = null
	endfunction
endlibrary