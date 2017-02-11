

library_once YDWETimerPattern
//***************************************************
//* ∑ - Matrix 万能模板函数
//*--------------------
//* 作者：Warft_TigerCN  代码优化：Fetrix_sai
//***************************************************


    globals
        private boolexpr Bexpr = null
        private rect Area = null
        private integer tmp_data
        private location yd_loc = Location(0.0, 0.0)
    endglobals

    function YDWETimerPatternJumpAttack takes unit u, real face, real dis, real lasttime, real timeout, real high, real damage, string part, string dsfx returns nothing
     
    endfunction

    // Moon Priestess Arrow PUI
    function YDWETimerPatternMoonPriestessArrow takes unit u, real face, real dis, real lasttime, real timeout, integer lv, integer aid, integer uid, string order, string part, string dsfx returns nothing
    
    endfunction

    // Rush Slide PUI
    function YDWETimerPatternRushSlide takes unit u, real face, real dis, real lasttime, real timeout, real damage, real radius, boolean killtrees, boolean cycle, boolean path, string part, string gsfx, string wsfx returns nothing
       
    endfunction


    /*
        lasttime持续时间,timeout刷新时间,cycle不计算碰撞,path无视地形,最后一个f是碰撞时候调用的函数接口,想调用必须把地形设FALSE,最后一个装到人时的特效
    */
    function DIYRushSlide takes unit u, real face, real dis, real lasttime, real timeout, real damage, real radius, boolean killtrees, boolean cycle, boolean path, string part, string gsfx, string wsfx returns nothing
    endfunction


endlibrary