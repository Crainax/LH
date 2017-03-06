globals
    integer array udg_C2
    integer udg_Ah
    integer udg_Al
    integer udg_Bh 
    integer udg_Bl
    integer udg_Ch 
    integer udg_Cl
    integer udg_Rh 
    integer udg_Rl
endglobals

function SH_S2I takes string s returns integer
    //这个函数好像发不出来
endfunction

function SH_StringChar takes string s, integer n returns integer
    local string ss = SubString(s, n, n+1)
    
    if (ss == "/") then
        set ss = "\\"
    endif

    return SH_S2I(ss)
endfunction

function SH_XOR takes integer x, integer y returns integer
    local integer z = 0
    local integer i = 0

    loop
        exitwhen (i == 16)
        if ((x - x/2*2) != (y - y/2*2)) then
            set z = z + udg_C2
        endif
        set x = x / 2
        set y = y / 2
        set i = i + 1    
    endloop

    return z
endfunction

function SH_NOT takes integer x returns integer
    local integer z = 0
    local integer i = 0

    loop
        exitwhen (i == 16)
        if ((x - x/2*2) == 0) then
            set z = z + udg_C2
        endif
        set x = x / 2
        set i = i + 1    
    endloop

    return z
endfunction

function SH_LShift takes integer Ah, integer Al, integer n returns nothing
    if (n > 8) then
        call SH_LShift(Ah, Al, n - 8)
        call SH_LShift(udg_Rh, udg_Rl, 8)
        return
    endif
    set udg_Rh = Ah * udg_C2[n]
    set udg_Rl = Al * udg_C2[n]
    set udg_Rh = udg_Rh + udg_Rl / udg_C2[16]
    set udg_Rl = udg_Rl - udg_Rl / udg_C2[16] * udg_C2[16]
    set udg_Rh = udg_Rh - udg_Rh / udg_C2[16] * udg_C2[16]
endfunction

function SH_RShift takes integer Ah, integer Al, integer n returns nothing
    if (n > 8) then
        call SH_RShift(Ah, Al, n - 8)
        call SH_RShift(udg_Rh, udg_Rl, 8)
        return
    endif
    set udg_Rh = Ah/udg_C2[n]
    set udg_Rl = Al/udg_C2[n] + (Ah - udg_Rh*udg_C2[n])*udg_C2[16-n]
endfunction

function SH_ADD_A takes integer Xh, integer Xl returns nothing
    set udg_Ah = udg_Ah + Xh
    set udg_Al = udg_Al + Xl

    if (udg_Al > udg_C2[16]) then
        set udg_Al = udg_Al - udg_C2[16]
        set udg_Ah = udg_Ah + 1
    elseif (udg_Al < 0) then
        set udg_Al = udg_Al + udg_C2[16]
        set udg_Ah = udg_Ah - 1 
    endif
    if (udg_Ah > udg_C2[16]) then
        set udg_Ah = udg_Ah - udg_C2[16]
    elseif (udg_Ah < 0) then
        set udg_Ah = udg_Ah + udg_C2[16]
    endif
endfunction

function SH_ADD_B takes integer Xh, integer Xl returns nothing
    set udg_Bh = udg_Bh + Xh
    set udg_Bl = udg_Bl + Xl
    if (udg_Bl > udg_C2[16]) then
        set udg_Bl = udg_Bl - udg_C2[16]
        set udg_Bh = udg_Bh + 1
    elseif (udg_Bl < 0) then
        set udg_Bl = udg_Bl + udg_C2[16]
        set udg_Bh = udg_Bh - 1  
    endif
    if (udg_Bh > udg_C2[16]) then
        set udg_Bh = udg_Bh - udg_C2[16]
    elseif (udg_Bh < 0) then
        set udg_Bh = udg_Bh + udg_C2[16]
    endif
endfunction

function SH_ADD_C takes integer Xh, integer Xl returns nothing
    set udg_Ch = udg_Ch + Xh
    set udg_Cl = udg_Cl + Xl
    if (udg_Cl > udg_C2[16]) then
        set udg_Cl = udg_Cl - udg_C2[16]
        set udg_Ch = udg_Ch + 1
    elseif (udg_Cl < 0) then
        set udg_Cl = udg_Cl + udg_C2[16]
        set udg_Ch = udg_Ch - 1  
    endif
    if (udg_Ch > udg_C2[16]) then
        set udg_Ch = udg_Ch - udg_C2[16]
    elseif (udg_Ch < 0) then
        set udg_Ch = udg_Ch + udg_C2[16]
    endif
endfunction

function SH_T2 takes integer a, integer b, integer c returns nothing
    call SH_RShift(udg_Ch, udg_Cl, a)
    call SH_ADD_A(-udg_Bh, -udg_Bl)
    call SH_ADD_A(-udg_Ch, -udg_Cl)
    set udg_Ah = SH_XOR(udg_Ah, udg_Rh)
    set udg_Al = SH_XOR(udg_Al, udg_Rl)

    call SH_LShift(udg_Ah, udg_Al, b)
    call SH_ADD_B(-udg_Ch, -udg_Cl)
    call SH_ADD_B(-udg_Ah, -udg_Al)
    set udg_Bh = SH_XOR(udg_Bh, udg_Rh)
    set udg_Bl = SH_XOR(udg_Bl, udg_Rl)

    call SH_RShift(udg_Bh, udg_Bl, c)
    call SH_ADD_C(-udg_Ah, -udg_Al)
    call SH_ADD_C(-udg_Bh, -udg_Bl)
    set udg_Ch = SH_XOR(udg_Ch, udg_Rh)
    set udg_Cl = SH_XOR(udg_Cl, udg_Rl)
endfunction

function SH_T1 takes nothing returns nothing
    call SH_T2(13,  8, 13)
    call SH_T2(12, 16,  5)
    call SH_T2( 3, 10, 15)
endfunction

function SH_Convert takes integer Xh, integer Xl returns integer
    if (Xh >= udg_C2[15]) then
        set Xh = SH_NOT(Xh)
        set Xl = SH_NOT(Xl)
        set Xl = Xl + 1
        set Xh = Xh*udg_C2[16]+Xl
        set Xh = -Xh
    else
        set Xh = Xh*udg_C2[16]+Xl
    endif 
    return Xh
endfunction

function SH_StringHashEx takes string s, integer len returns integer
    local integer n = 0
    local integer size_t = len

    set udg_Ah = $9E37
    set udg_Al = $79B9
    set udg_Bh = $9E37
    set udg_Bl = $79B9
    set udg_Ch = 0
    set udg_Cl = 0

    loop
        exitwhen len < 12
        call SH_ADD_A(SH_StringChar(s, n+3)*256+SH_StringChar(s, n+2), SH_StringChar(s, n+1)*256+SH_StringChar(s, n))
        call SH_ADD_B(SH_StringChar(s, n+7)*256+SH_StringChar(s, n+6), SH_StringChar(s, n+5)*256+SH_StringChar(s, n+4))
        call SH_ADD_C(SH_StringChar(s, n+11)*256+SH_StringChar(s, n+10), SH_StringChar(s, n+9)*256+SH_StringChar(s, n+8))
        call SH_T1()
        set n = n + 12
        set len = len - 12
    endloop

    call SH_ADD_C(0, size_t)

    if (len == 11) then
        call SH_ADD_C(SH_StringChar(s, n+10)*256, 0)
        set len = len - 1
    endif
    if (len == 10) then
        call SH_ADD_C(SH_StringChar(s, n+9), 0)
        set len = len - 1
    endif
    if (len == 9) then
        call SH_ADD_C(0, SH_StringChar(s, n+8)*256)
        set len = len - 1
    endif
    if (len == 8) then
        call SH_ADD_B(SH_StringChar(s, n+7)*256, 0)
        set len = len - 1
    endif
    if (len == 7) then
        call SH_ADD_B(SH_StringChar(s, n+6), 0)
        set len = len - 1
    endif 
    if (len == 6) then
        call SH_ADD_B(0, SH_StringChar(s, n+5)*256)
        set len = len - 1
    endif
    if (len == 5) then
        call SH_ADD_B(0, SH_StringChar(s, n+4))
        set len = len - 1
    endif
    if (len == 4) then
        call SH_ADD_A(SH_StringChar(s, n+3)*256, 0)
        set len = len - 1
    endif
    if (len == 3) then
        call SH_ADD_A(SH_StringChar(s, n+2), 0)
        set len = len - 1
    endif
    if (len == 2) then
        call SH_ADD_A(0, SH_StringChar(s, n+1)*256)
        set len = len - 1
    endif
    if (len == 1) then
        call SH_ADD_A(0, SH_StringChar(s, n))
        set len = len - 1
    endif

    call SH_T1()

    return SH_Convert(udg_Ch, udg_Cl)
endfunction

function SH_StringHash takes string s returns integer
    return SH_StringHashEx(StringCase(s, true), StringLength(s))
endfunction

function SH_Init takes nothing returns nothing
    local integer i = 1
    set udg_C2[0] = 1
    loop
        exitwhen (i == 31)
        set udg_C2 = udg_C2[i-1]*2
        set i = i + 1
    endloop
endfunction