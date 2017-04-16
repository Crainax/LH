
//! import "dependency/YDWESetGuard.j"
//! import "dependency/YDWETriggerEvent.j"
//! import "dependency/YDWETimerSystem.j"
//! import "dependency/YDWETimerPattern.j"
//! import "dependency/YDWEBase_common.j"
//! import "dependency/YDWEBase_hashtable.j"

//! import "DzAPI.j"
library_once Test initializer InitTest requires YDWESetGuard,YDWETriggerEvent,YDWEBaseHashtable,YDWEBaseCommon,YDWETimerSystem,YDWETimerPattern,DzAPI

	globals
		
    //复活
    location udg_Point_Fuhuo
	//主基地的区域
	rect gg_rct________1
	//难度等级，最高7
	integer udg_Nandu_JJJ
    integer udg_Nandu
	//冥王
        unit gg_unit_Nkjx_0241 
        //左
        unit gg_unit_Uear_0242 
        //右
        unit gg_unit_Npld_0253 
        //战斗调整
        unit gg_unit_ndrz_0019
        //英雄
        unit array udg_H
        //圣主分身
        unit gg_unit_Ekgg_0259
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
        rect gg_rct_Arena_Spell

        /*
            宠物
        */
        sound gg_snd_GoodJob
        sound gg_snd_Jidibeida
        sound gg_snd_Chenggong
        sound gg_snd_Shibai

        /*
            翅膀
        */
        rect gg_rct____1
        rect gg_rct____2
        rect gg_rct____3
        rect gg_rct____4
        rect gg_rct____5
        rect gg_rct____6

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

        /*
            人数
        */
        integer udg_RENSHU

        /*
            多面板
        */
        multiboard udg_D

        /*
            炼狱
        */
        integer array udg_I_Lianyu

        /*
            虫洞判定区域
        */
        rect gg_rct______________095

        /*
            转生
        */
        unit array udg_U_Zhuansheng_Dantiao
        integer array udg_Z
        /*
            复活
        */
        rect gg_rct_QuitRegion

        /*
            防护罩
        */
        integer array udg_I_Er_diansi
        /*
            Crainax
        */
        integer array udg_Laser

        /*
            立即刷新属性值
        */
        trigger gg_trg_papa8____________u
        trigger gg_trg_papa9____________u
        trigger gg_trg_papa10____________u
        /*
            设置攻击与防御的触发
        */
        trigger gg_trg_____________800W
        trigger gg_trg___________________4000______u
        trigger gg_trg_HP_____________________u
        unit udg_Unit
        /*
            宝石区域
        */
        rect gg_rct________8
        rect gg_rct_Diamond2
        /*
            转生禁区
        */
        rect gg_rct_______a3
        /*
            伤害加成
        */
        real array udg_I_Shanghai
	endglobals


	private function InitTest takes nothing returns nothing
		// body...
	endfunction

endlibrary