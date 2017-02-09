
//! import "YDWESetGuard.j"
//! import "YDWETriggerEvent.j"
//! import "YDWEBase_common.j"
//! import "YDWEBase_hashtable.j"
library_once Test initializer InitTest requires YDWESetGuard,YDWETriggerEvent,YDWEBaseHashtable,YDWEBaseCommon

	globals
		
		//主基地的区域
		rect gg_rct________1
		//难度等级，最高7
		integer udg_Nandu_JJJ
		//冥王
        unit gg_unit_Nkjx_0241 
        //左
        unit gg_unit_Uear_0242 
        //右
        unit gg_unit_Npld_0253 
        //英雄
        unit array udg_H
        //技能伤害
        real array udg_I_Jinengjiacheng
	endglobals

	private function InitTest takes nothing returns nothing
		// body...
	endfunction

endlibrary