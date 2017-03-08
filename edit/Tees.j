function Test takes nothing returns nothing
    local integer i = 1
    local integer ran = GetRandomInt(1000,3000)
    local integer value = 1
    loop
        exitwhen i > 10
        set value = value + 1
        call BJDebugMsg(I2S(ran) + "...." + I2S(value))
        call PolledWait(1)
        set i = i +1
    endloop
endfunction