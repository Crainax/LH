private function Int2Bin takes integer num returns string
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

private function Bin2Int takes string bin returns integer
	
endfunction