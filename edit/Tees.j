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

function SetIntegerBit takes integer int,integer bit,boolean isOne returns integer
	return Bin2Int(SetBinBit(Int2Bin(int),bit,isOne))
endfunction

function GetIntegerBit takes integer int,integer bit returns integer
	return S2I(SubStringBJ(Int2Bin(int),bit,bit))
endfunction

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

function T1Actions takes nothing returns nothing
	call BJDebugMsg(GetEventPlayerChatString())
	call Test3(S2I(GetEventPlayerChatString()))
endfunction

function InitT1 takes nothing returns nothing
    local trigger t1 = CreateTrigger()
    call TriggerRegisterPlayerChatEvent( t1, Player(0), "", false )
    call TriggerAddAction(t1, function T1Actions)
    set t1 = null
endfunction
