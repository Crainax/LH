#ifndef BoxIncluded
#define BoxIncluded

#include  "edit/LHBase.j"
#include  "edit/NetVersion.j"
#include  "edit/ChallangerDZ.j"
#include  "edit/PIV.j"
#include  "edit/Structs.j"

library_once Box requires LHBase,Version,ChallangerDZ,PIV,Structs

	globals
		TextTagBind array TTBBox
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    创建并绑定文字
	*/
	private function InitBoxWord takes player p returns nothing
		local integer index = GetConvertedPlayerId(p)
		set TTBBox[index] = TextTagBind.create(UDepot[index],50,50)
		call TTBBox[index].setContent(S3(StringLength(SBoxWord[index]) < 1,"输入-ck改头衔",SBoxWord[index]))
		call TTBBox[index].setSize(12.)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    使用自定义指令后
	*/
	function SetDIYBoxName takes player p,string s returns nothing
		if (ModuloInteger(StringLength(s),3) == 0) then
			if ((StringLength(s) > (((DzAPI_Map_GetMapLevel(p)/10) + 2 )*3))) then
				call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你地图等级当前为"+I2S(DzAPI_Map_GetMapLevel(p))+"级,最多可自定义"+I2S(((DzAPI_Map_GetMapLevel(p)/10) + 2 ))+"个字.")
				call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r每10级可以额外获得1个字.")
				return
			endif
			set SBoxWord[GetConvertedPlayerId(p)] = s
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r成功修改头衔!")
			call DzAPI_Map_StoreString( p,  "SBoxWord", SBoxWord[GetConvertedPlayerId(p)] )
			if (TTBBox[GetConvertedPlayerId(p)] != 0) then
				call TTBBox[GetConvertedPlayerId(p)].setContent(SBoxWord[GetConvertedPlayerId(p)])
			endif
		else
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r头衔格式不对！不允许中英(或数字)混杂输入。")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    技能
	*/
	function Duihuanjinbi takes nothing returns nothing
		if (GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER) >= 10) then
        	call AdjustPlayerStateBJ( -10 , GetOwningPlayer(GetTriggerUnit()) , PLAYER_STATE_RESOURCE_LUMBER )
        	call AdjustPlayerStateBJ( 10000 , GetOwningPlayer(GetTriggerUnit()) , PLAYER_STATE_RESOURCE_GOLD )
        else
        	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你的木材不足.")
		endif
	endfunction

	function DuihuanMucai takes nothing returns nothing
		if (GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD) >= 10000) then
        	call AdjustPlayerStateBJ( 10 , GetOwningPlayer(GetTriggerUnit()) , PLAYER_STATE_RESOURCE_LUMBER )
        	call AdjustPlayerStateBJ( -10000 , GetOwningPlayer(GetTriggerUnit()) , PLAYER_STATE_RESOURCE_GOLD )
        else
        	call DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你的金币不足.")
		endif
	endfunction

	function Wanwuqiyuan takes nothing returns nothing
		call UnitAddItemByIdSwapped('I006', GetTriggerUnit())
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取对应的仓库
	*/
	private function GetBoxName takes integer i returns string
		if (i == 1) then
			return "倾雪寒晶"
		elseif (i == 2) then
			return "救死扶伤"
		elseif (i == 3) then
			return "货币达人"
		elseif (i == 4) then
			return "心寞孤客"
		elseif (i == 5) then
			return "瞬息万年"
		elseif (i == 6) then
			return "紫雷之极"
		elseif (i == 7) then
			return "万物之源"
		elseif (i == 8) then
			return "熔炎火炮"
		elseif (i == 9) then
			return "紫薇上神"
		endif

		return ""
	endfunction

	private function GetBoxCondition takes integer i returns string
		if (i == 1) then
			return "|cff33cccc(完成挑战>10%解锁)|r"
		elseif (i == 2) then
			return "|cff33cccc(完成挑战>25%解锁)|r"
		elseif (i == 3) then
			return "|cff33cccc(完成挑战>50%解锁)|r"
		elseif (i == 4) then
			return "|cff33cccc(完成挑战>75%解锁)|r"
		elseif (i == 5) then
			return "|cff33cccc(完成挑战>99%解锁)|r"
		elseif (i == 6) then
			return "|cff33cccc(地图等级大于18级解锁)|r"
		elseif (i == 7) then
			return "|cff33cccc(地图等级大于24级解锁)|r"
		elseif (i == 8) then
			return "|cff33cccc(获取赞助权限解锁)|r"
		elseif (i == 9) then
			return "|cff33cccc(击败傀儡樱乐与梵胤解锁)|r"
		endif
		return ""
	endfunction

	private function GetBoxType takes integer i returns integer
		if (i == 1) then
			return 'n01R'
		elseif (i == 2) then
			return 'n01Z'
		elseif (i == 3) then
			return 'n026'
		elseif (i == 4) then
			return 'n027'
		elseif (i == 5) then
			return 'n020'
		elseif (i == 6) then
			return 'n021'
		elseif (i == 7) then
			return 'n024'
		elseif (i == 8) then
			return 'n025'
		elseif (i == 9) then
			return 'n02D'
		endif
		return 0
	endfunction

	private function GetBoxAbility takes integer i returns integer
		if (i == 1) then
			return 'A0KW'
		elseif (i == 2) then
			return 'A0MD'
		elseif (i == 3) then
			return 'A0MY'
		elseif (i == 4) then
			return 'A0MZ'
		elseif (i == 5) then
			return 'A0MX'
		elseif (i == 6) then
			return 'Aprg'
		elseif (i == 7) then
			return 'A0N0'
		elseif (i == 8) then
			return 'A0N1'
		elseif (i == 9) then
			return 'A0N7'
		endif
		return 0
	endfunction

	private function IsBoxAccess takes player p,integer i returns boolean
		if (i == 1) then
			return IsHasCangku(p,i) or GetCompleteRate(p) >= 0.1 or GetDigitAt(Greward[GetConvertedPlayerId(p)],1) > 0
		elseif (i == 2) then
			return IsHasCangku(p,i) or GetCompleteRate(p) >= 0.25 or GetDigitAt(Greward[GetConvertedPlayerId(p)],2) > 0
		elseif (i == 3) then
			return IsHasCangku(p,i) or GetCompleteRate(p) >= 0.5 or GetDigitAt(Greward[GetConvertedPlayerId(p)],5) > 0
		elseif (i == 4) then
			return IsHasCangku(p,i) or GetCompleteRate(p) >= 0.75 or GetDigitAt(Greward[GetConvertedPlayerId(p)],6) > 0
		elseif (i == 5) then
			return IsHasCangku(p,i) or GetCompleteRate(p) >= 0.99 or GetDigitAt(Greward[GetConvertedPlayerId(p)],3) > 0
		elseif (i == 6) then
			return IsHasCangku(p,i) or DzAPI_Map_GetMapLevel(p) >= 18 or GetDigitAt(Greward[GetConvertedPlayerId(p)],4) > 0
		elseif (i == 7) then
			return IsHasCangku(p,i) or DzAPI_Map_GetMapLevel(p) >= 24 or GetDigitAt(Greward[GetConvertedPlayerId(p)],7) > 0
		elseif (i == 8) then
			return IsHasCangku(p,i) or IsPIV(p) or GetDigitAt(Greward[GetConvertedPlayerId(p)],8) > 0
		elseif (i >= 9) then
			return IsHasCangku(p,i)
		endif

		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    切换仓库皮肤
	*/
	private function CreateNewBox takes player p,integer i returns nothing
		local integer ii = 1
		local real x = GetUnitX(UDepot[GetConvertedPlayerId(p)])
		local real y = GetUnitY(UDepot[GetConvertedPlayerId(p)])
		loop
			exitwhen ii > 6
    		call UnitRemoveItemSwapped( UnitItemInSlotBJ(UDepot[GetConvertedPlayerId(p)], ii), UDepot[GetConvertedPlayerId(p)] )
			set ii = ii +1
		endloop
		call RemoveUnit(UDepot[GetConvertedPlayerId(p)])
		set UDepot[GetConvertedPlayerId(p)] = CreateUnit(p, GetBoxType(i), x, y, 270.000)
		call InitItemTransport(UDepot[GetConvertedPlayerId(p)])
		if (GetDiffculty() <= 8 or i >= 9) then
			call UnitAddAbility(UDepot[GetConvertedPlayerId(p)],GetBoxAbility(i))
		endif
	endfunction

	private function ChooseBoxClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local player p = LoadPlayerHandle(LHTable,GetHandleId(d),11)
	    local integer i = 1

	    loop
	    	exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
	        	if (IsBoxAccess(p,i)) then
	    			call CreateNewBox(p,i)
	    			call InitBoxWord(p)
	        	endif
			endif
	    	set i = i +1
	    endloop

        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( Player(0), d, false )
        call DialogClear(d)
        call DialogDestroy(d)
        set d = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction

	function ChangeSpinDialog takes player p returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    local integer i = 1
	    call DialogSetMessage( d, "
	    完成挑战:("+I2S(GetAllComplete(p)) +"/"+I2S(COUNT_CHALLANGER * 3)+"="+I2S(R2I( GetCompleteRate(p)*100))+"%)"+"
	    箱子变形:" )
    	call SaveButtonHandle(LHTable,GetHandleId(d),9,DialogAddButtonBJ( d, GetBoxName(9) + S3(IsBoxAccess(p,9),"|cffff9900(已解锁)|r",GetBoxCondition(9))))
	    loop
	    	exitwhen i > 8
	    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetBoxName(i) + S3(IsBoxAccess(p,i),"|cffff9900(已解锁)|r",GetBoxCondition(i))))
	    	set i = i +1
	    endloop

    	call SaveButtonHandle(LHTable,GetHandleId(d),10,DialogAddButton( d, "取消|cffff6800(Esc)|r",512))
    	call SavePlayerHandle(LHTable,GetHandleId(d),11,p)
	    call DialogDisplay( p, d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function ChooseBoxClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
endlibrary
#endif
