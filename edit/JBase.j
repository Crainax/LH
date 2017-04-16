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
endlibrary