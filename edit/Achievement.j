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
	    获取成就索引条件是否满足了
	*/
	function IsAchieveOK takes player p,integer achieveID returns boolean
		local integer id = GetConvertedPlayerId(p)
		return (GetBit(achieve[id],9) > 0 and achieveID = 19) or (GetBit(achieve[id],8) > 0 and achieveID = 18) or (GetBit(achieve[id],7) > 0 and achieveID = 17) or (GetBit(achieve[id],6) > 0 and achieveID = 16) or (GetBit(achieve[id],5) > 0 and achieveID = 15) or (GetBit(achieve[id],4) > 0 and achieveID = 14) or (GetBit(achieve[id],3) > 0 and achieveID = 13) or (GetBit(achieve[id],2) > 0 and achieveID = 12) or (GetBit(achieve[id],1) > 0 and achieveID = 11)
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始成就名
	*/
	function SetAchievement takes player p,integer achieveID returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (IsAchieveOK(p,achieveID) and achieveID == 19) then
			call SetPlayerName(p,"|cff008000【万劫录】"+ playerName[id] +"|r")
			if (achiEff[id] != null) then
				call DestroyEffect(achiEff[id])
			endif
			set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",u,"war3mapImported\\lunhuitexiao.mdl")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 18) then
			call SetPlayerName(p,"|cffff00ff【轮回舰】"+ playerName[id] +"|r")
			if (achiEff[id] != null) then
				call DestroyEffect(achiEff[id])
			endif
			set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",u,"war3mapImported\\lunhuitexiao.mdl")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 17) then
			call SetPlayerName(p,"|cffff0000【末日车】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 16) then
			call SetPlayerName(p,"|cffff6600【地狱使】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 15) then
			call SetPlayerName(p,"|cffffff00【灭炼狱】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 14) then
			call SetPlayerName(p,"|cff3366ff【定战争】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 13) then
			call SetPlayerName(p,"|cff99cc00【和谐世】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 12) then
			call SetPlayerName(p,"【太平源】"+ playerName[id] )
			set achiPage[id] = achieveID
		elseif (IsAchieveOK(p,achieveID) and achieveID == 11) then
			call SetPlayerName(p,"|cff999999【天国音】"+ playerName[id] +"|r")
			set achiPage[id] = achieveID
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就
	*/
	function SaveAchievePointer takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "page", achiPage[id] )
	endfunction
//---------------------------------------------------------------------------------------------------

/*
	function Test3 takes integer i returns nothing

		local string temp
		local integer length = StringLength(I2S(i))

		//call BJDebugMsg("原数字:" + I2S(i))
		//call BJDebugMsg("转二:" + Int2Bin(i))
		//call BJDebugMsg("转二再转十:" + I2S(Bin2Int(Int2Bin(i))))

		call BJDebugMsg("位数:" + SubStringBJ(I2S(i),1,length-1))
		call BJDebugMsg("操作的数:" + SubStringBJ(I2S(i),length,length))
		if (S2I(SubStringBJ(I2S(i),length,length)) < 1) then
			set udg_i = SetIntegerBit(udg_i,S2I(SubStringBJ(I2S(i),1,length-1)),false)
		else
			set udg_i = SetIntegerBit(udg_i,S2I(SubStringBJ(I2S(i),1,length-1)),true)
		endif
		call BJDebugMsg("操作结果:"+I2S(udg_i))


		call BJDebugMsg("位测试1:"+I2S(GetIntegerBit(udg_i,S2I(SubStringBJ(I2S(i),1,length-1)) - 1)))
		call BJDebugMsg("位测试2:"+I2S(GetIntegerBit(udg_i,S2I(SubStringBJ(I2S(i),1,length-1)))))
		call BJDebugMsg("位测试3:"+I2S(GetIntegerBit(udg_i,S2I(SubStringBJ(I2S(i),1,length-1)) + 1)))

	endfunction
*/
	

endlibrary