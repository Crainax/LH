
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
    //技能触发
    trigger gg_trg_____________71
    trigger gg_trg_______21
        //基地总区域
        rect gg_rct__________u
        //杀阵
        unit gg_unit_h00K_0254
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
        leaderboard array udg_Paihang
        //基地
        unit gg_unit_haro_0030
        /*
            选英雄的区域
        */
        rect gg_rct_______c1
        /*
            秘境的区域
        */
        rect gg_rct_M1
        rect gg_rct_M2
        rect gg_rct_M3
        rect gg_rct_M4
        rect gg_rct_M5
        rect gg_rct_M6

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
        sound gg_snd_Renwu

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
            选择难度对话框
        */
        button array udg_X_Nandu_Chuangkou
        dialog udg_X_Nandu
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
        rect gg_rct______________084

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
        /*
            时间
        */
        integer array udg_Second
        //七星
        unit array udg_Unit_Qixing

        //辰寂剑灵判断
        trigger gg_trg_____________127
        trigger gg_trg_____________129
        //狼
        unit array udg_Lang
        //湮灭
        trigger gg_trg_____________3

        //经验
        real array udg_I_Jingyan
        boolean array udg_T1
	endglobals

    function OperatorDegreeAdd takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeSubtract takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeMultiply takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorDegreeDivide takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianAdd takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianSubtract takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianMultiply takes real r1,real r2 returns real
         return 0.
     endfunction 
    function OperatorRadianDivide takes real r1,real r2 returns real
         return 0.
     endfunction 

	private function InitTest takes nothing returns nothing
		// body...
	endfunction

endlibrary