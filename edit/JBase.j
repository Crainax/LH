/*
    语法基础
*/
library_once JBase  
	
//---------------------------------------------------------------------------------------------------
    /*
        三目运算符,string
    */
    function S3 takes boolean b,string s1,string s2 returns string
        if (b) then
            return s1
        else
            return s2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        三目运算符,integer
    */
    function I3 takes boolean b,integer i1,integer i2 returns integer
        if (b) then
            return i1
        else
            return i2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        三目运算符,real
    */
    function R3 takes boolean b,real r1,real r2 returns real
        if (b) then
            return r1
        else
            return r2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        三目运算符,boolean
    */
    function B3 takes boolean b,boolean b1,boolean b2 returns boolean
        if (b) then
            return b1
        else
            return b2
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        三目运算符,unit
    */
    function U3 takes boolean b,unit u1,unit u2 returns unit
        if (b) then
            return u1
        else
            return u2
        endif
    endfunction
    
endlibrary