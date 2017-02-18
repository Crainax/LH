
//! import "dependency/YDWESetGuard.j"
//! import "dependency/YDWETriggerEvent.j"
//! import "dependency/YDWETimerSystem.j"
//! import "dependency/YDWETimerPattern.j"
//! import "dependency/YDWEBase_common.j"
//! import "dependency/YDWEBase_hashtable.j"
library_once Test initializer InitTest requires YDWESetGuard,YDWETriggerEvent,YDWEBaseHashtable,YDWEBaseCommon,YDWETimerSystem,YDWETimerPattern

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
        //增益
        real array udg_I_Xianglian
        //触发,属性刷新
        trigger gg_trg_D7
        //波数
        integer udg_Bo
        //排行榜
        integer array udg_Paihangbang
        //基地
        unit gg_unit_haro_0030

        /*
            擂台
        */
        rect gg_rct_Arena_1
        rect gg_rct_Arena_2
        rect gg_rct_Arena_all
        rect gg_rct_Arena_forbit

        /*
            宠物
        */
        sound gg_snd_GoodJob
        sound gg_snd_Jidibeida

        /*
            仓库
        */
        unit gg_unit_nmgv_0193
        unit gg_unit_nmgv_0194
        unit gg_unit_nmgv_0195
        unit gg_unit_nmgv_0196
        unit gg_unit_nmgv_0197
        unit gg_unit_nmgv_0198

        /*
            金币有关
        */
        integer array udg_gold
        real array udg_I_Jinqianhuodelv
	endglobals

	private function InitTest takes nothing returns nothing
		// body...
	endfunction

endlibrary