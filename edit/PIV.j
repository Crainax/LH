//! import "LHBase.j"
/////! import "Beast.j"
library_once PIV initializer InitPIV requires LHBase,Beast,Version
	globals
		boolean array sPIV
		private boolean isFirst = true
		private hashtable PIVTable = InitHashtable()
		key kPIV
	    key kPIVStr
	    key kPIVPlayer
	    key kPIVPointer

	endglobals

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
			call BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5波的特权.")
			call BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.")
		endif

		set sPIV[GetConvertedPlayerId(p)] = true 
		call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权！")
		debug call SavePIV(p,GetPIVCode(GetPlayerName(p)))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化英雄
	*/
	function InitPIVHero takes unit u returns nothing
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
	    17玩吧验证
	*/
	private function Verify17Wanba takes nothing returns nothing

	    if ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),-117135511,628755061))) then

		    if (IsPIV(GetTriggerPlayer())) then
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！")
				return
			endif

			if (udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null) then
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！")
				return
			endif

			call InitPlayerPIV(GetTriggerPlayer())
		elseif ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),756731533,1299228219))) then
			debug if (GetSeyu1Spin(GetTriggerPlayer())) then
			debug call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已获取了瑟雨皮肤,无须重复激活！")
			debug return
			debug endif

			debug call SetSeyuSpinOK(GetTriggerPlayer())

		elseif ((Qskc_GetL(GetTriggerPlayer(),GetEventPlayerChatString(),34568491,245622564))) then
			debug if (GetXiaoyue1Spin(GetTriggerPlayer())) then
			debug call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已获取了晓月皮肤,无须重复激活！")
			debug return
			debug endif

			debug call SetXiaoyueSpinOK(GetTriggerPlayer())

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
		call SaveBoolean(PIVTable,kPIV,632066098,true)
		call SaveBoolean(PIVTable,kPIV,679792348,true)
		call SaveBoolean(PIVTable,kPIV,244103987,true)
		call SaveBoolean(PIVTable,kPIV,1624950439,true)
		call SaveBoolean(PIVTable,kPIV,981252778,true)
		call SaveBoolean(PIVTable,kPIV,442300691,true)
		call SaveBoolean(PIVTable,kPIV,127836247,true)
		call SaveBoolean(PIVTable,kPIV,747551996,true)
		call SaveBoolean(PIVTable,kPIV,1549153604,true)
		call SaveBoolean(PIVTable,kPIV,243951516,true)
		call SaveBoolean(PIVTable,kPIV,472054031,true)
		call SaveBoolean(PIVTable,kPIV,156566316,true)
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
		call SaveBoolean(PIVTable,kPIV,2096927165,true)
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
		call SaveBoolean(PIVTable,kPIV,794534180,true)
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
		call SaveBoolean(PIVTable,kPIV,904823142,true)
		call SaveBoolean(PIVTable,kPIV,13683093,true)
		call SaveBoolean(PIVTable,kPIV,1242297465,true)
		call SaveBoolean(PIVTable,kPIV,610812043,true)
		call SaveBoolean(PIVTable,kPIV,225975698,true)
		call SaveBoolean(PIVTable,kPIV,1778330124,true)
		call SaveBoolean(PIVTable,kPIV,1021570043,true)
		call SaveBoolean(PIVTable,kPIV,22278263,true)
		call SaveBoolean(PIVTable,kPIV,534339887,true)
		call SaveBoolean(PIVTable,kPIV,46380924,true)
		call SaveBoolean(PIVTable,kPIV,434531878,true)
		call SaveBoolean(PIVTable,kPIV,48827206,true)
		call SaveBoolean(PIVTable,kPIV,23689807,true)
		call SaveBoolean(PIVTable,kPIV,601303810,true)
		call SaveBoolean(PIVTable,kPIV,2024814813,true)
		call SaveBoolean(PIVTable,kPIV,1965676132,true)
		call SaveBoolean(PIVTable,kPIV,1356170852,true)
		call SaveBoolean(PIVTable,kPIV,730864612,true)
		call SaveBoolean(PIVTable,kPIV,415945636,true)
		call SaveBoolean(PIVTable,kPIV,162905578,true)
		call SaveBoolean(PIVTable,kPIV,69068141,true)
		call SaveBoolean(PIVTable,kPIV,541279117,true)

		//test
		//call SaveBoolean(PIVTable,kPIV,238541434,true)


		call TriggerRegisterPlayerChatEvent( t, Player(0), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "##", true )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "##", true )
	    call TriggerAddAction(t, function CreatePIVDialog)

	    set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( t, Player(0), "", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "", false )
	    call TriggerAddAction(t, function Verify17Wanba)

	    set t = null
	endfunction

endlibrary