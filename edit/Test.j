
//! import "dependency/YDWESetGuard.j"
//! import "dependency/YDWETriggerEvent.j"
//! import "dependency/YDWETimerSystem.j"
//! import "dependency/YDWETimerPattern.j"
//! import "dependency/YDWEBase_common.j"
//! import "dependency/YDWEBase_hashtable.j"
//! import "dependency/YDWEAroundSystem.j"

//! import "DzAPI.j"
library_once Test initializer InitTest requires YDWESetGuard,YDWETriggerEvent,YDWEBaseHashtable,YDWEBaseCommon,YDWETimerSystem,YDWETimerPattern,YDWEAroundSystem,DzAPI

	globals
    unit gg_unit_Hant_0205 = null
    unit gg_unit_Hvwd_0016 = null
    trigger gg_trg_______17 = null
    trigger gg_trg_______19 = null

	location udg_Point  = null
    //刷新战斗力
    trigger gg_trg_zhandouli2 = null
    //复活
    location udg_Point_Fuhuo  = null
	//主基地的区域
	rect gg_rct________1 = null
	//难度等级，最高7
	integer udg_Nandu_JJJ = 0
    integer udg_Nandu = 0
    //技能触发
    trigger gg_trg_____________71 = null
    trigger gg_trg_______21 = null
        //基地总区域
        rect gg_rct__________u = null
        //杀阵
        unit gg_unit_h00K_0254 = null
	   //冥王
        unit gg_unit_Nkjx_0241  = null
        //左
        unit gg_unit_Uear_0242  = null
        //右
        unit gg_unit_Npld_0253  = null
        //战斗调整
        unit gg_unit_ndrz_0019 = null
        //英雄
        unit array udg_H
        //圣主分身
        unit gg_unit_Ekgg_0259 = null
        //技能伤害
        real array udg_I_Jinengjiacheng
        //增益
        real array udg_I_Xianglian
        //触发,属性刷新
        trigger gg_trg_D7 = null
        //波数
        integer udg_Bo = 0
        //排行榜
        integer array udg_Paihangbang
        leaderboard array udg_Paihang
        //基地
        unit gg_unit_haro_0030 = null
        /*
            选英雄的区域
        */
        rect gg_rct_______c1 = null
        /*
            秘境的区域
        */
        rect gg_rct_M1 = null
        rect gg_rct_M2 = null
        rect gg_rct_M3 = null
        rect gg_rct_M4 = null
        rect gg_rct_M5 = null
        rect gg_rct_M6 = null

        /*
            擂台
        */
        rect gg_rct_Arena_1 = null
        rect gg_rct_Arena_2 = null
        rect gg_rct_Arena_all = null
        rect gg_rct_Arena_forbit = null
        rect gg_rct_Arena_Spell = null

        /*
            宠物
        */
        sound gg_snd_Jidibeida =null
        sound gg_snd_Chenggong =null
        sound gg_snd_Shibai =null
        sound gg_snd_Renwu =null
        sound gg_snd_lichidazhao =null

        /*
            翅膀
        */
        rect gg_rct____1 = null
        rect gg_rct____2 = null
        rect gg_rct____3 = null
        rect gg_rct____4 = null
        rect gg_rct____5 = null
        rect gg_rct____6 = null

        /*
            仓库
        */
        unit gg_unit_nmgv_0193 = null
        unit gg_unit_nmgv_0194 = null
        unit gg_unit_nmgv_0195 = null
        unit gg_unit_nmgv_0196 = null
        unit gg_unit_nmgv_0197 = null
        unit gg_unit_nmgv_0198 = null

        /*
            金币有关
        */
        integer array udg_gold
        real array udg_I_Jinqianhuodelv
        /*
            选择难度对话框
        */
        button array udg_X_Nandu_Chuangkou
        dialog udg_X_Nandu = DialogCreate()
        /*
            人数
        */
        integer udg_RENSHU = 1

        /*
            多面板
        */
        multiboard udg_D = null

        /*
            炼狱
        */
        integer array udg_I_Lianyu
        rect gg_rct______________084 = null

        /*
            转生
        */
        unit array udg_U_Zhuansheng_Dantiao
        integer array udg_Z
        /*
            复活
        */
        rect gg_rct_QuitRegion = null

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
        trigger gg_trg_papa8____________u = null
        trigger gg_trg_papa9____________u = null
        trigger gg_trg_papa10____________u = null
        /*
            设置攻击与防御的触发
        */
        trigger gg_trg_____________800W = null
        trigger gg_trg___________________4000______u = null
        trigger gg_trg_HP_____________________u = null
        unit udg_Unit
        /*
            宝石区域
        */
        rect gg_rct________8 = null
        rect gg_rct_Diamond2 = null
        rect gg_rct_Diamond3 = null
        rect gg_rct_Chuancheng = null
        /*
            转生禁区
        */
        rect gg_rct_______a3 = null
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
        trigger gg_trg_____________127 = null
        trigger gg_trg_____________129 = null
        //狼
        unit array udg_Lang
        //湮灭
        trigger gg_trg_____________3 = null

        //经验
        real array udg_I_Jingyan
        boolean array udg_T1

        //混沌专区
        rect gg_rct_Hundun = null

        //出怪
        rect gg_rct________6 = null
        rect gg_rct________3 = null

        //计时器
        timer udg_Time_BOSS = null
        timerdialog udg_Timer_BOSS = null

        //小游戏场地
        rect gg_rct_Game1 = null
        rect gg_rct_Game2 = null
        unit gg_unit_n01Q_0273 = null
        unit gg_unit_Eevi_0020 = null

        //声音
        sound gg_snd_cangling_5 = null
        sound gg_snd_f_baoshi = null
        sound gg_snd_hanshang_5 = null
        sound gg_snd_hecheng_shenqi = null
        sound gg_snd_heiyan_5 = null
        sound gg_snd_huanyi_5 = null
        sound gg_snd_mengji_4 = null
        sound gg_snd_mengji_5 = null
        sound gg_snd_seyu_5 = null
        sound gg_snd_seyu_4 = null
        sound gg_snd_sichen_4 = null
        sound gg_snd_v_leitai = null
        sound gg_snd_v_mijing = null
        sound gg_snd_xinglong_4 = null
        sound gg_snd_xiaoting2 = null
        sound gg_snd_xiaoting1 = null
        sound gg_snd_kill_boss = null
        sound gg_snd_GoodJob = null
        sound gg_snd_Baodiao = null
        sound gg_snd_Clock = null
        sound gg_snd_yanmie_5 = null
        sound gg_snd_MapPing = null
        sound gg_snd_fanzhuan = null

        timer array udg_Double_M
        timerdialog udg_Double_Me = null

        //传承区域
        rect gg_rct_Chuangcheng = null

        //战斗力
        integer array udg_Zhandouli

        //光环
        unit gg_unit_n01S_0258 = null

        //衣服无敌
        boolean array udg_Yifu

        //凯撒
        trigger gg_trg_____________7 = null
        unit gg_unit_Ocbh_0251 = null
        trigger gg_trg_____________17 = null
        trigger gg_trg_____________18 = null
        trigger gg_trg_____________19 = null
        trigger gg_trg_____________22 = null
        rect gg_rct__________u = null

        unit gg_unit_E00C_0217 = null
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
        set udg_I_Er_diansi[1] = 20
	endfunction

endlibrary