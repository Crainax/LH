

library_once YDWETimerPattern
//***************************************************
//* �� - Matrix ����ģ�庯��
//*--------------------
//* ���ߣ�Warft_TigerCN  �����Ż���Fetrix_sai
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
        lasttime����ʱ��,timeoutˢ��ʱ��,cycle��������ײ,path���ӵ���,���һ��f����ײʱ����õĺ����ӿ�,����ñ���ѵ�����FALSE,���һ��װ����ʱ����Ч
    */
    function DIYRushSlide takes unit u, real face, real dis, real lasttime, real timeout, real damage, real radius, boolean killtrees, boolean cycle, boolean path, string part, string gsfx, string wsfx returns nothing
    endfunction


endlibrary