//! import "LHBase.j"
//! import "NetVersion.j"
//! import "ChallangerDZ.j"

library_once Box requires LHBase,Version,ChallangerDZ
	
//---------------------------------------------------------------------------------------------------
	/*
	    获取对应的仓库
	*/
	private function GetBoxName takes integer i returns string
		if (i == 1) then
			return "倾雪寒晶"
		elseif (i == 2) then
			return "救死扶伤"
		endif

		return ""
	endfunction

	private function GetBoxCondition takes integer i returns string
		if (i == 1) then
			return "|cff33cccc(完成挑战>20%解锁,或参加七夕抽奖活动)|r"
		elseif (i == 2) then
			return "|cff33cccc(完成挑战>99%解锁,或参加七夕抽奖活动)|r"
		endif
		return ""
	endfunction

	private function GetBoxType takes integer i returns integer
		if (i == 1) then
			return 'n01R'
		elseif (i == 2) then
			return 'n01Z'
		endif
		return 0
	endfunction

	private function GetBoxAbility takes integer i returns integer
		if (i == 1) then
			return 'A0KW'
		elseif (i == 2) then
			return 'A0MD'
		endif
		return 0
	endfunction

	private function IsBoxAccess takes player p,integer i returns boolean
		if (i == 1) then
			return GetCompleteRate(p) >= 0.2 or GetBit(Greward[GetConvertedPlayerId(p)],1) > 0
		elseif (i == 2) then
			return GetCompleteRate(p) >= 0.99 or GetBit(Greward[GetConvertedPlayerId(p)],2) > 0
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
		if (GetDiffculty() <= 5) then
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
	        	endif
			endif	       
	    	set i = i +1
	    endloop

	    call BJDebugMsg("|cFFFF66CC【活动】|r
	    	8月27日晚8点锁定YY90163轮回之狱专区参与抽奖活动,赞助、自选多种英雄皮肤、多种仓库模型大放送!")

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
	    loop
	    	exitwhen i > 2
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

endlibrary