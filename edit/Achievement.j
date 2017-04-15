//! import "LHBase.j"
/*
    debug模式是网易模式
*/
library_once Achievement requires LHBase
	
	globals
		integer array achiPage
		integer array achieve
		integer array achieve2
		effect array achiEff
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    获取位数字,1是个位
	*/
	private function GetBit takes integer num,integer bit returns integer
		local string s = I2S(num)
		local integer length = StringLength(s)
		if (length < bit) then
			return 0
		endif

		return S2I(SubStringBJ(s,length - bit + 1,length - bit + 1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    十转2
	*/
	function Int2Bin takes integer num returns string
		local string result = ""
		local integer mod = 0
		local integer number = num
		local integer i = 1

		loop
			exitwhen i > 31
			if (number == 0) then
				set result = "0" + result
			else
				set mod = ModuloInteger(number,2)
				set result = I2S(mod) + result
				set number = number / 2
			endif
			set i = i + 1
		endloop
		if (num < 0) then
			set result = "1" + result
		else
			set result = "0" + result
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    2转十
	*/
	function Bin2Int takes string bin returns integer
		local integer i = StringLength(bin)
		local integer result = 0
		local integer mi = 0
		if (i < 1) then
			return 0
		endif

		loop
			exitwhen i == 1
			
			set result = result + R2I(Pow(2,mi)) * S2I(SubStringBJ(bin,i,i))

			set mi = mi + 1
			set i = i - 1
		endloop

		if (S2I(SubStringBJ(bin,1,1)) == 1) then
			set result = result * -1
		endif

		return result
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给二进制的某位设置为1
	*/
	function SetBinBit takes string bin,integer bit,boolean isOne returns string
		local string result
		local integer length = StringLength(bin)

		if (length < bit or bit <= 0) then
			return bin
		endif

		set result = SubStringBJ(bin,1,bit-1)
		if (isOne) then
			set result = result + "1"
		else
			set result = result + "0"
		endif
		return result + SubStringBJ(bin,bit+1,length)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给整数的某位直接设置成1
	*/
	function SetIntegerBit takes integer int,integer bit,boolean isOne returns integer
		return Bin2Int(SetBinBit(Int2Bin(int),bit,isOne))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取整数的某位
	*/
	function GetIntegerBit takes integer int,integer bit returns integer
		return S2I(SubStringBJ(Int2Bin(int),bit,bit))
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的类项
	*/
	private function GetAchievePage takes player p returns integer
		return S2I(SubStringBJ(I2S(achiPage[GetConvertedPlayerId(p)]),1,1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的位数
	*/
	private function GetAchieveTarget takes player p returns integer
		return S2I(SubStringBJ(I2S(achiPage[GetConvertedPlayerId(p)]),2,StringLength(I2S(achiPage[GetConvertedPlayerId(p)]))))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取成就索引条件是否满足了
	*/
	function IsAchieveOK takes player p,integer achieveID returns boolean
		local integer id = GetConvertedPlayerId(p)
		local integer page = GetAchievePage(p)
		local integer target = GetAchieveTarget(p)
		if (page == 1) then
			return (GetBit(achieve[id],target) > 0)
		elseif (page == 2) then
			return (GetIntegerBit(achieve2[id],target) >0)
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始成就名
	*/
	function SetAchievement takes player p,integer achieveID returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (IsAchieveOK(p,achieveID)) then
			set achiPage[id] = achieveID
			//彩名	
			if (IsAchieveColor(achieveID)) then
				call SetPlayerName(p, GetAchievementName(achieveID) + GetRandomColor() + playerName[id] + "|r")
			elseif (IsAchieveWhite(achieveID)) then
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id])
			else
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id] + "|r")
			endif
			//特效
			if (IsAchieveLight(achieveID)) then
				if (achiEff[id] != null) then
					call DestroyEffect(achiEff[id])
				endif
				set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",udg_H[id],"war3mapImported\\lunhuitexiao.mdl")
			endif
		endif	
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就
	*/
	function SaveAchievePointer takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "page", achiPage[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建成就对话框 
	*/
	function NextPageAchievement takes player p, dialog d , integer page returns nothing
	    local integer i = 1
		if (page == 1) then
		    loop
		    	exitwhen i > 9
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 10) + S3(IsAchieveOK(p,i + 10),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i +1
		    endloop
		elseif (page == 2) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 20) + S3(IsAchieveOK(p,i + 20),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i +1
		    endloop
		endif

    	call SaveButtonHandle(LHTable,GetHandleId(d),10,DialogAddButtonBJ( d, "下一页"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),11,DialogAddButton( d, "关闭|cffff6800(Esc)|r",512))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    成就对话框点击事件
	*/
	function AchievementDialogClick takes nothing returns nothing
		local dialog d = GetClickedDialogBJ()
	    local integer i = 1
	    local integer page = LoadInteger(LHTable,GetHandleId(d),12)
	    local player p = LoadPlayerHandle(LHTable,GetHandleId(d),13)
	    local integer achieveID = LoadInteger(LHTable,GetHandleId(d),14)
        call DialogClear(d)

        //查看条件
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),15)) then
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetAchievementName(achieveID) + "|r成就的获取条件如下所示:")
	    	call DisplayTextToPlayer(p, 0., 0., GetAchievementName(achieveID) + "|r成就的获取条件如下所示:")
	    endif

	    //退出
	    if ((GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),11)) or (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),15)) or (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),16))) then
	        call FlushChildHashtable(LHTable,GetHandleId(d))
        	call DialogDisplay( p, d, false )
	        call DialogDestroy(d)
	        set d = null
	        set s = null
	        set p = null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //下一页
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),10)) then
	    	set page = I3(page < PAGE_ACHIEVE,page + 1,1)
    		call SaveInteger(LHTable,GetHandleId(d),12,page)
	    	call DialogSetMessage( d, "我的成就|cffff6800(第"+I2S(page)+"/"+I2S(PAGE_ACHIEVE)+"页)|r" )
	    	call NextPageAchievement(p,d,page)
	    endif

	    //点击指定的成就
	    loop
	        exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
	        	set achieveID = GetAchievementIndex(page,i)
	    		call SaveInteger(LHTable,GetHandleId(d),14,achieveID)
		    	call SaveButtonHandle(LHTable,GetHandleId(d),15,DialogAddButtonBJ( d, "查看获取条件"))
		    	if (IsAchieveOK(p,achieveID)) then
		    		call SaveButtonHandle(LHTable,GetHandleId(d),16,DialogAddButtonBJ( d, "使用该成就"))
		    	endif
		    	call SaveButtonHandle(LHTable,GetHandleId(d),11,DialogAddButton( d, "关闭|cffff6800(Esc)|r",512))
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

        call DialogDisplay( p, d, true )
	    set d = null
	    set s = null
	    set p = null
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    创建一个成就对话框给玩家
	*/
	function CreateWingDialog takes player p returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    call DialogSetMessage( d, "我的成就|cffff6800(第1/"+I2S(PAGE_ACHIEVE)+"页)|r" )
	    call NextPageAchievement(p,d,1)
    	call SaveInteger(LHTable,GetHandleId(d),12,1)
	    call SavePlayerHandle(LHTable,GetHandleId(d),13,p)
	    call SaveInteger(LHTable,GetHandleId(d),14,10)
	    call DialogDisplay( p, d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function AchievementDialogClick)
	    set d = null
	    set t = null
	endfunction
endlibrary