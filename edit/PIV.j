//! import "LHBase.j"
//! import "Attr.j"
//! import "SpellBase.j"
/////! import "Beast.j"
/////! import "Netversion.j"
library_once PIV initializer InitPIV requires LHBase,Beast,Version,Attr,SpellBase
	globals
		boolean array sPIV
		private boolean isFirst = true
		private hashtable PIVTable = InitHashtable()
		key kPIV
	    key kPIVStr
	    key kPIVPlayer
	    key kPIVPointer
	    trigger T17Wan = null

	    //信哲
	    boolean BX1 = false
	    boolean BX2 = false

	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    定制初始化
	*/
	private function XinzheCon takes nothing returns boolean
		return (GetIssuedOrderIdBJ() == String2OrderIdBJ("smart"))
	endfunction

	private function XinzheAct takes nothing returns nothing

		if (IsInForbitRegion(GetOrderPointX(),GetOrderPointY(),GetTriggerUnit())) then
			call IssueImmediateOrder( GetTriggerUnit(), "stop" )
	        call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达." )
	        return
		endif

		call SetUnitX(GetTriggerUnit(),GetOrderPointX())
		call SetUnitY(GetTriggerUnit(),GetOrderPointY())

		if (BX1) then
			call DamageArea(GetTriggerUnit(),GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),600,GetDamageBase(GetTriggerUnit())*0.8)
		endif

	endfunction

	function InitXinzhe takes unit u returns nothing
		local trigger t = CreateTrigger()
    	call TriggerRegisterUnitEvent( t, u, EVENT_UNIT_ISSUED_POINT_ORDER )
		call TriggerAddCondition(t, Condition(function XinzheCon))
		call TriggerAddAction(t, function XinzheAct)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    京剧
	*/
	private function JingjuCondition takes nothing returns boolean
		return GetUnitTypeId(GetFilterUnit()) == 'n006' or GetUnitTypeId(GetFilterUnit()) == 'n00Y'
	endfunction

	private function JingjuDiyuhuo takes nothing returns nothing
		call RecoverUnitHP(GetEnumUnit(),0.3)
	endfunction

	private function JingjuTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(LHTable,id,1)
		local group g = GetUnitsOfPlayerMatching(GetOwningPlayer(u), Condition(function JingjuCondition))
		call RecoverUnitHP(u,0.1)
		call ForGroupBJ( g, function JingjuDiyuhuo )
		set u = null
		call DestroyGroup(g)
		set t = null 
		set g = null
	endfunction

	function InitJingju takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(LHTable,GetHandleId(t),1,u)
		call TimerStart(t,1,true,function JingjuTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    列表是否含有名单
	*/
	private function TableHas takes integer i returns boolean
		return HaveSavedBoolean(PIVTable,kPIV,i)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    是否是VIP
	*/
	function IsPIV takes player p returns boolean
		return sPIV[GetConvertedPlayerId(p)]
	endfunction

//---------------------------------------------------------------------------------------------------
    /*
        获取激活码
    */
    private function GetPIVCode takes string s returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > 6
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(SubStringBJ(result,2,StringLength(result)))
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化玩家
	*/
	private function InitPlayerPIV takes player p returns nothing
		if (isFirst) then
			set isFirst = false
			set udg_I_Er_diansi[1] = 3
			call BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5+1波的特权.")
			call BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.")
		endif

		set sPIV[GetConvertedPlayerId(p)] = true 
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权，如果要关闭赞助功能,请输入-zz")
		debug call SavePIV(p,GetPIVCode(GetPlayerName(p)))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	private function InitDingzhi takes unit u returns nothing
		if (playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") then
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
	        call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)),2)
	        call AddHPPercent(GetConvertedPlayerId(GetOwningPlayer(u)),2.0)
	        call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.7)
	        call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.7)
	        call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(u)),0.7)
    		call SetPlayerTechResearchedSwap(  'R01K', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R006', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R007', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R008', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R009', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R00A', 1 , GetOwningPlayer(u))
    		call SetPlayerTechResearchedSwap(  'R00B', 1 , GetOwningPlayer(u))
			call InitJingju(u)
		elseif (playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "信哲大人") then
			set BGoldGongxiang[GetConvertedPlayerId(GetOwningPlayer(u))] = true
	        call AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)),1.5)
	        call AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(u)),1.5)
	        call AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)),1.5)
	        call AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(u)),1.5)
	        call AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)),4.)
	        call UnitAddAbility(u,'A0MF')
            call UnitMakeAbilityPermanent(u,true,'A0MF')
            call UnitMakeAbilityPermanent(u,true,'A0MG')
			call SetPlayerAbilityAvailable(GetOwningPlayer(u),'A0MF',false)
			call InitXinzhe(u)
		endif
	endfunction

	function InitPIVHero takes unit u returns nothing

		debug call InitDingzhi(u)


		if (IsPIV(GetOwningPlayer(u))) then
			call UnitAddItemByIdSwapped('IXU1', u)
	        call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetOwningPlayer(u)))
			call AdjustPlayerStateBJ( 8000, GetOwningPlayer(u) , PLAYER_STATE_RESOURCE_GOLD )
			call Discolor(u)
			return
		endif

		if ((not(IsPIV(GetOwningPlayer(u)))) and IsColorSpin(GetOwningPlayer(u))) then
			call Discolor(u)
		endif

		debug call GetPlatformLevelGold(GetOwningPlayer(u))

	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    VIP验证
	*/
	function CertificatePIV takes player p,string vCode returns nothing

		if (vCode == null and TableHas(GetPIVCode(GetPlayerName(p)))) then
			call InitPlayerPIV(p)
			return
		endif

		if (I2S(GetPIVCode(GetPlayerName(p))) == vCode) then
			call InitPlayerPIV(p)
			return
		endif

		if (vCode != null) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    判断是否有VIP
	*/
	function hasPIV takes nothing returns boolean
		local integer i = 1
		loop
			exitwhen i > 6
			if (IsPIV(ConvertedPlayer(i))) then
				return true
			endif
			set i = i +1
		endloop
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    VIP验证
	*/
    function ChatPIV takes nothing returns nothing
        local string chat = GetEventPlayerChatString()
        local string vCode = SubStringBJ(chat,2,StringLength(chat))
		call CertificatePIV(GetTriggerPlayer(),vCode)
    endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    对话框输入验证码
	*/
	private function PIVDialogClick takes nothing returns nothing
	    local dialog d = GetClickedDialogBJ()
	    local integer i = 0
	    local string s = LoadStr(PIVTable,GetHandleId(d),kPIVStr)
	    local player p = LoadPlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer)
	    //验证
	    if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable,GetHandleId(d),10)) then
	        call CertificatePIV(p,s)
	        call FlushChildHashtable(PIVTable,GetHandleId(d))
        	call DialogDisplay( p, d, false )
	        call DialogClear(d)
	        call DialogDestroy(d)
	        set d = null
	        set s = null
	        set p = null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //输入
	    loop
	        exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable,GetHandleId(d),i)) then
	            set s = s + I2S(i)
	            call SaveStr(PIVTable,GetHandleId(d),kPIVStr,s)
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

	    call DialogSetMessage( d, "激活码:"+s )
        call DialogDisplay( p, d, true )
	    set d = null
	    set s = null
	    set p = null
	endfunction

	function CreatePIVDialog takes nothing returns nothing
	    local trigger t 
	    local dialog d

		if (IsPIV(GetTriggerPlayer())) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！")
			return
		endif

		if (udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
			return
		endif

	    set t = CreateTrigger()
	    set d = DialogCreate()
	    call DialogSetMessage( d, "请从第1位开始依次输入激活码" )
	    call SaveButtonHandle(PIVTable,GetHandleId(d),0,DialogAddButton( d, "0",'0'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),1,DialogAddButton( d, "1",'1'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),2,DialogAddButton( d, "2",'2'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),3,DialogAddButton( d, "3",'3'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),4,DialogAddButton( d, "4",'4'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),5,DialogAddButton( d, "5",'5'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),6,DialogAddButton( d, "6",'6'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),7,DialogAddButton( d, "7",'7'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),8,DialogAddButton( d, "8",'8'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),9,DialogAddButton( d, "9",'9'))
	    call SaveButtonHandle(PIVTable,GetHandleId(d),10,DialogAddButton( d, "输入完毕|cffff6800(Esc)|r",512))
	    call SaveStr(PIVTable,GetHandleId(d),kPIVStr,"")
	    call SavePlayerHandle(PIVTable,GetHandleId(d),kPIVPlayer,GetTriggerPlayer())
	    call SaveInteger(PIVTable,GetHandleId(d),kPIVPointer,1)
	    call DialogDisplay( GetTriggerPlayer(), d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function PIVDialogClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    17玩吧激活码
	*/
	function Qskc_GetL takes player l100,string str,integer l10O,integer l1O0 returns boolean
		local integer OO11=0
		local integer lI0O=0
		local integer l0O1=0
		local integer O011=0
		local integer llO0=0
		local integer ll0O= 0
		local integer O01l= 0
		local string OOll=SubStringBJ(str, 11, 9999)
		local string OOl1=SubStringBJ(str, 1, 10)
		local integer llOO=StringLength(OOll)-2
		local integer O0l1=IAbsBJ(StringHash(GetPlayerName(l100)))
		set ll0O=StringHash(OOll)
		set ll0O=ll0O+StringHash(I2S(StringLength(OOll)))
		loop
		exitwhen llO0>=StringLength(OOll)
		set ll0O=ll0O+StringHash(SubString(OOll,llO0,llO0+1))
		set O01l=S2I(SubStringBJ(R2S(IAbsBJ(ll0O)),1,2))+S2I(SubStringBJ(R2S(IAbsBJ(ll0O)),3,4))
		set llO0=llO0+1
		endloop
		if StringLength(str)<90 then
		return false
		endif
		loop
		exitwhen O011>=O01l
		set O0l1 =IAbsBJ(StringHash(I2S(O0l1)))
		set O011 = O011 + 1
		endloop
		if O0l1<$3B9ACA00 then
		set O0l1=O0l1+$3B9ACA00
		endif
		loop
		exitwhen OO11>llOO
		set lI0O=lI0O+StringHash(SubString(OOll,OO11,OO11+2))+StringHash(I2S(l0O1))
		set l0O1=l0O1+StringHash(I2S(lI0O))-StringHash(SubString(OOll,OO11,OO11+2))
		set OO11=OO11+1
		endloop
		return lI0O==l10O and l0O1==l1O0 and I2S(O0l1)==OOl1
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    新密钥验证
	*/
	function Fgetc_GetL takes player l1000,string l1OOO,integer l10OO,integer l1O00 returns boolean
		local integer OO111=0
		local integer lI0OO=0
		local integer l0O11=0
		local integer O0111=0
		local integer llO00=0
		local integer ll0OO=0
		local integer O01ll=0
		local integer O10ll=0
		local integer O1l0l=0
		local integer llOOO=0
		local string lllOO= ""
		local string ll1OO= ""
		local string array l1lOO 
		local integer O0l11=IAbsBJ(StringHash(GetPlayerName(l1000)))
		local integer l11O0=IAbsBJ(StringHash(GetPlayerName(l1000)))
		local string OOl11=SubStringBJ(l1OOO, 1, 10)
		local string OOlll=SubStringBJ(l1OOO, 11, 9999)
		set l1lOO[0] = SubStringBJ(OOlll,1,3)
		set l1lOO[1] = SubStringBJ(OOlll,9,11)
		set l1lOO[2] = SubStringBJ(OOlll,16,19)
		set l1lOO[3] = SubStringBJ(OOlll,4,8)
		set l1lOO[4] = SubStringBJ(OOlll,12,15)
		set l1lOO[5] = SubStringBJ(OOlll,20,999)
		set lllOO=l1lOO[0]+l1lOO[1]+l1lOO[2]
		set ll1OO=l1lOO[3]+l1lOO[4]+l1lOO[5]
		set llOOO=StringLength(ll1OO)-2
		set ll0OO=StringHash(ll1OO)
		set ll0OO=ll0OO+StringHash(I2S(StringLength(ll1OO)))
		loop
		exitwhen llO00>=StringLength(ll1OO)
		set ll0OO=ll0OO+StringHash(SubString(ll1OO,llO00,llO00+1))
		set O01ll=S2I(SubStringBJ(I2S(IAbsBJ(ll0OO)),1,2))+S2I(SubStringBJ(I2S(IAbsBJ(ll0OO)),3,4))
		set O10ll=S2I(SubStringBJ(I2S(IAbsBJ(ll0OO)),4,5))+S2I(SubStringBJ(I2S(IAbsBJ(ll0OO)),6,7))
		set llO00=llO00+1
		endloop
		loop
		exitwhen O0111>=O01ll
		set O0l11 =IAbsBJ(StringHash(I2S(O0l11))+$77359400)
		set O0111 = O0111 + 1
		endloop
		loop
		exitwhen O1l0l>=O10ll
		set l11O0 =IAbsBJ(StringHash(I2S(l11O0))+$77359400)
		set O1l0l = O1l0l + 1
		endloop
		if O0l11<$3B9ACA00 then
		set O0l11=O0l11+$3B9ACA00
		endif
		if l11O0<$3B9ACA00 then
		set l11O0=l11O0+$3B9ACA00
		endif
		loop
		exitwhen OO111>llOOO
		set lI0OO=lI0OO+StringHash(SubString(ll1OO,OO111,OO111+2))+StringHash(I2S(l0O11))
		set l0O11=l0O11+StringHash(I2S(lI0OO))-StringHash(SubString(ll1OO,OO111,OO111+2))
		set OO111=OO111+1
		endloop
		return lI0OO==l10OO and l0O11==l1O00 and I2S(O0l11)==OOl11 and I2S(l11O0)==lllOO
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    17玩吧验证
	*/
	private function Verify17Wanba takes nothing returns nothing

	    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-117135511,628755061)) or Fgetc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-1139053518,43777771)) then

		    if (IsPIV(GetTriggerPlayer())) then
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！")
				return
			endif

			if (udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null) then
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
				return
			endif

			call InitPlayerPIV(GetTriggerPlayer())
		elseif ((Fgetc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-767946655,-1650132445))) then
			call BJDebugMsg("|cFFFF66CC【消息】|rspin.")
			debug call SetSeyuSpinOK(GetTriggerPlayer())
			debug call SetXiaoyueSpinOK(GetTriggerPlayer())
			debug call SetYanmieSpinOK(GetTriggerPlayer())
			debug call SetXuanxue1SpinOK(GetTriggerPlayer())
			debug call SetTaiyaSpinOK(GetTriggerPlayer())
			debug call SetChenji1SpinOK(GetTriggerPlayer())
			debug call SetHanshangSpinOK(GetTriggerPlayer())
			debug call SetLingxueSpinOK(GetTriggerPlayer())
			debug call SetChenji2SpinOK(GetTriggerPlayer())
			debug call SetMoqiSpinOK(GetTriggerPlayer())
			debug call SetKaisaSpinOK(GetTriggerPlayer())
			debug call SetXuanxue2SpinOK(GetTriggerPlayer())
			debug call SetBajueSpinOK(GetTriggerPlayer())
			debug call SetSheyanSpinOK(GetTriggerPlayer())
			debug call SetHuanyiSpinOK(GetTriggerPlayer())
			debug call SetSichenSpinOK(GetTriggerPlayer())
			debug call SetLichiSpinOK(GetTriggerPlayer())
			debug call SetHeiyanSpinOK(GetTriggerPlayer())
			debug call SetCanglingSpinOK(GetTriggerPlayer())
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    关掉赞助指令
	*/
	function CancelVIP takes player p returns nothing

	    if not(IsPIV(p)) then
			call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你并非永久赞助,关闭失败.")
			return
		endif
		if (udg_H[GetConvertedPlayerId(p)] != null) then
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r该功能仅在选择英雄前输入有效.")
			return
		endif
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r关闭赞助功能成功.")
		set sPIV[GetConvertedPlayerId(p)] = false
		if not(hasPIV()) then
			set isFirst = true
			set udg_I_Er_diansi[1] = 1
			call BJDebugMsg("|cFFFF66CC【消息】|r你们已失去在任意难度下获得24+5波的特权.")
			call BJDebugMsg("|cFFFF66CC【消息】|r基地失去了额外的2次防护罩.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始化
	*/
	function InitAllPIV takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6
			call CertificatePIV(ConvertedPlayer(i),null)
			debug if (IsSavePIV(ConvertedPlayer(i),GetPIVCode(GetPlayerName(ConvertedPlayer(i))))) then
			debug 		call CertificatePIV(ConvertedPlayer(i),I2S(GetPIVCode(GetPlayerName(ConvertedPlayer(i)))))
			debug endif
			set i = i +1
		endloop
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    300秒后关闭入口
	*/
	function ClosePIV takes nothing returns nothing
		call FlushParentHashtable(PIVTable)
	endfunction
	
//---------------------------------------------------------------------------------------------------
	private function InitPIV takes nothing returns nothing
		local integer i = 1
		local trigger t = CreateTrigger()

		loop
			exitwhen i > 6
			set sPIV[i] = false
			set i = i +1
		endloop

		call SaveBoolean(PIVTable,kPIV,560584534,true) 
		//call SaveBoolean(PIVTable,kPIV,805389327,true)
		//2.64:
		call SaveBoolean(PIVTable,kPIV,1386963254,true)
		call SaveBoolean(PIVTable,kPIV,920323633,true)
		call SaveBoolean(PIVTable,kPIV,2028760546,true)
		call SaveBoolean(PIVTable,kPIV,76404545,true)
		call SaveBoolean(PIVTable,kPIV,772953595,true)
		call SaveBoolean(PIVTable,kPIV,122150585,true)
		call SaveBoolean(PIVTable,kPIV,1866394937,true)
		call SaveBoolean(PIVTable,kPIV,668865994,true)
		call SaveBoolean(PIVTable,kPIV,11465124,true)
		call SaveBoolean(PIVTable,kPIV,1483305270,true)
		call SaveBoolean(PIVTable,kPIV,89160614,true)
		call SaveBoolean(PIVTable,kPIV,416503868,true)
		call SaveBoolean(PIVTable,kPIV,366425370,true)
		call SaveBoolean(PIVTable,kPIV,24682425,true)
		call SaveBoolean(PIVTable,kPIV,838476900,true)
		call SaveBoolean(PIVTable,kPIV,21235704,true)
		call SaveBoolean(PIVTable,kPIV,259338775,true)
		call SaveBoolean(PIVTable,kPIV,1945313488,true)
		call SaveBoolean(PIVTable,kPIV,185409653,true)
		call SaveBoolean(PIVTable,kPIV,848895504,true)
		call SaveBoolean(PIVTable,kPIV,970908405,true)
		call SaveBoolean(PIVTable,kPIV,1406966725,true)
		call SaveBoolean(PIVTable,kPIV,476387019,true)
		call SaveBoolean(PIVTable,kPIV,1407806903,true)
		call SaveBoolean(PIVTable,kPIV,39350822,true)
		call SaveBoolean(PIVTable,kPIV,947015907,true)
		call SaveBoolean(PIVTable,kPIV,1524326451,true)
		call SaveBoolean(PIVTable,kPIV,1199483482,true)
		call SaveBoolean(PIVTable,kPIV,85817056,true)
		call SaveBoolean(PIVTable,kPIV,1884797690,true)
		call SaveBoolean(PIVTable,kPIV,138245006,true)
		call SaveBoolean(PIVTable,kPIV,55883798,true)
		call SaveBoolean(PIVTable,kPIV,237209239,true)
		call SaveBoolean(PIVTable,kPIV,208207478,true)
		call SaveBoolean(PIVTable,kPIV,764958705,true)
		call SaveBoolean(PIVTable,kPIV,1556955637,true)
		call SaveBoolean(PIVTable,kPIV,769983234,true)
		call SaveBoolean(PIVTable,kPIV,1018574645,true)
		call SaveBoolean(PIVTable,kPIV,1602970119,true)
		call SaveBoolean(PIVTable,kPIV,1968941945,true)
		call SaveBoolean(PIVTable,kPIV,281722192,true)
		call SaveBoolean(PIVTable,kPIV,55774054,true)
		call SaveBoolean(PIVTable,kPIV,1794669457,true)
		call SaveBoolean(PIVTable,kPIV,4775200,true)
		call SaveBoolean(PIVTable,kPIV,5934560,true)
		call SaveBoolean(PIVTable,kPIV,1556972891,true)
		call SaveBoolean(PIVTable,kPIV,1308263866,true)
		call SaveBoolean(PIVTable,kPIV,819949938,true)
		call SaveBoolean(PIVTable,kPIV,935082247,true)
		call SaveBoolean(PIVTable,kPIV,874526666,true)
		call SaveBoolean(PIVTable,kPIV,274143214,true)
		call SaveBoolean(PIVTable,kPIV,242646218,true)
		call SaveBoolean(PIVTable,kPIV,42780764,true)
		call SaveBoolean(PIVTable,kPIV,15784280,true)
		call SaveBoolean(PIVTable,kPIV,1846898150,true)
		call SaveBoolean(PIVTable,kPIV,162418494,true)
		call SaveBoolean(PIVTable,kPIV,1028656343,true)
		call SaveBoolean(PIVTable,kPIV,871412081,true)
		call SaveBoolean(PIVTable,kPIV,724251537,true)
		call SaveBoolean(PIVTable,kPIV,572061793,true)
		call SaveBoolean(PIVTable,kPIV,1562039753,true)
		call SaveBoolean(PIVTable,kPIV,27535638,true)
		call SaveBoolean(PIVTable,kPIV,2856770,true)
		call SaveBoolean(PIVTable,kPIV,29748027,true)
		call SaveBoolean(PIVTable,kPIV,78547297,true)
		call SaveBoolean(PIVTable,kPIV,1691009533,true)
		call SaveBoolean(PIVTable,kPIV,108509507,true)
		call SaveBoolean(PIVTable,kPIV,863575409,true)
		call SaveBoolean(PIVTable,kPIV,47256210,true)
		call SaveBoolean(PIVTable,kPIV,386002974,true)
		call SaveBoolean(PIVTable,kPIV,253021838,true)
		call SaveBoolean(PIVTable,kPIV,4943346,true)
		call SaveBoolean(PIVTable,kPIV,655724335,true)
		call SaveBoolean(PIVTable,kPIV,1300925723,true)
		call SaveBoolean(PIVTable,kPIV,526128524,true)
		call SaveBoolean(PIVTable,kPIV,527932086,true)
		call SaveBoolean(PIVTable,kPIV,491536351,true)
		call SaveBoolean(PIVTable,kPIV,765412438,true)
		call SaveBoolean(PIVTable,kPIV,1807059619,true)
		call SaveBoolean(PIVTable,kPIV,158219634,true)
		call SaveBoolean(PIVTable,kPIV,812702019,true)
		call SaveBoolean(PIVTable,kPIV,93444649,true)
		call SaveBoolean(PIVTable,kPIV,1652902274,true)
		call SaveBoolean(PIVTable,kPIV,42083283,true)
		call SaveBoolean(PIVTable,kPIV,79706688,true)
		call SaveBoolean(PIVTable,kPIV,81738293,true)
		call SaveBoolean(PIVTable,kPIV,3334224,true)
		call SaveBoolean(PIVTable,kPIV,705577564,true)
		call SaveBoolean(PIVTable,kPIV,1834015365,true)
		call SaveBoolean(PIVTable,kPIV,249745215,true)
		call SaveBoolean(PIVTable,kPIV,936721376,true)
		call SaveBoolean(PIVTable,kPIV,96122563,true)
		call SaveBoolean(PIVTable,kPIV,242232349,true)
		call SaveBoolean(PIVTable,kPIV,99200445,true)
		call SaveBoolean(PIVTable,kPIV,17295550,true)
		call SaveBoolean(PIVTable,kPIV,192227001,true)
		call SaveBoolean(PIVTable,kPIV,500660555,true)
		call SaveBoolean(PIVTable,kPIV,1321008731,true)
		call SaveBoolean(PIVTable,kPIV,917107829,true)
		call SaveBoolean(PIVTable,kPIV,1277254148,true)
		call SaveBoolean(PIVTable,kPIV,556905161,true)
		call SaveBoolean(PIVTable,kPIV,55162747,true)
		call SaveBoolean(PIVTable,kPIV,395306233,true)
		call SaveBoolean(PIVTable,kPIV,442043076,true)
		call SaveBoolean(PIVTable,kPIV,987238722,true)
		call SaveBoolean(PIVTable,kPIV,454437652,true)
		call SaveBoolean(PIVTable,kPIV,50731632,true)
		call SaveBoolean(PIVTable,kPIV,1088397663,true)
		call SaveBoolean(PIVTable,kPIV,1193547207,true)
		call SaveBoolean(PIVTable,kPIV,263166628,true)
		call SaveBoolean(PIVTable,kPIV,991993981,true)
		call SaveBoolean(PIVTable,kPIV,343567476,true)
		call SaveBoolean(PIVTable,kPIV,41292785,true)
		call SaveBoolean(PIVTable,kPIV,199066564,true)
		call SaveBoolean(PIVTable,kPIV,58301014,true)
		call SaveBoolean(PIVTable,kPIV,975300858,true)
		call SaveBoolean(PIVTable,kPIV,24962383,true)
		call SaveBoolean(PIVTable,kPIV,6484930,true)
		call SaveBoolean(PIVTable,kPIV,922261063,true)
		call SaveBoolean(PIVTable,kPIV,9423109,true)
		call SaveBoolean(PIVTable,kPIV,388868057,true)
		call SaveBoolean(PIVTable,kPIV,61444830,true)
		call SaveBoolean(PIVTable,kPIV,89183810,true)
		call SaveBoolean(PIVTable,kPIV,255054188,true)
		call SaveBoolean(PIVTable,kPIV,384268954,true)
		call SaveBoolean(PIVTable,kPIV,8326255,true)


		call TriggerRegisterPlayerChatEvent( t, Player(0), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "##", true )
	    call TriggerAddAction(t, function CreatePIVDialog)

	    set T17Wan = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(0), "", false )
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(1), "", false )
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(2), "", false )
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(3), "", false )
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(4), "", false )
		call TriggerRegisterPlayerChatEvent( T17Wan, Player(5), "", false )
	    call TriggerAddAction(T17Wan, function Verify17Wanba)

	    set t = null
	endfunction

endlibrary