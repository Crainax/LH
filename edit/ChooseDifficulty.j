#ifndef ChooseDifficultyIncluded
#define ChooseDifficultyIncluded

#include "edit/LHBase.j"
#include "edit/NetVersion.j"
#include "edit/Diffculty.j"
//! zinc
/*
选择难度
*/
library ChooseDifficulty requires LHBase,Version,Diffculty,PIV {

    // 初始化万劫难度
	function InitWanjie() {
		//光环（加防和回血）
		UWanjieGuanghuan = CreateUnit(Player(10),'h00U',0,0,0);
		if (IsTianyan) {
			SetUnitAbilityLevel(UWanjieGuanghuan,'A0HD',2);
			UnitAddAbility(UWanjieGuanghuan,'A0JJ');
		}
		ShowUnitHide(UWanjieGuanghuan);

		//前三野与前30层科技 3倍生命
		SetPlayerTechResearchedSwap('R00X', 1, Player(10));
		SetPlayerTechResearchedSwap('R00X', 1, Player(11));
		//11-24波怪物，10倍生命
		SetPlayerTechResearchedSwap('R00Y', 1, Player(10));
		SetPlayerTechResearchedSwap('R00Y', 1, Player(11));
		//加宝石射程
		SetPlayerTechResearchedSwap('R010', 1, Player(10));
		SetPlayerTechResearchedSwap('R010', 1, Player(11));
		SetPlayerTechResearchedSwap('R011', 1, Player(10));
		SetPlayerTechResearchedSwap('R011', 1, Player(11));
		//冥刹30000E
		SetPlayerTechResearchedSwap('R013', 1, Player(10));
		SetPlayerTechResearchedSwap('R013', 1, Player(11));
	}

    // 地狱难度的数据提示
	function PrintDifficulty() {
		integer d = GetDiffculty();
		if (d == 6) {
			BJDebugMsg("|cFFFF66CC【消息】|r地狱难度下，会额外提高以下怪物的难度：");
			BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高100%,生命提高66%.");
		} else if (d == 7) {
			BJDebugMsg("|cFFFF66CC【消息】|r|cffff0000末日|r难度下，会额外提高以下怪物的难度：");
			BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高200%,生命提高133%.");
		} else if (d == 8) {
			BJDebugMsg("|cFFFF66CC【消息】|r|cffff00ff轮回|r难度下，会额外提高以下怪物的难度：");
			BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.");
		} else if (d == 9) {
			BJDebugMsg("|cFFFF66CC【消息】|r|cff008000万劫|r难度下，会额外提高以下怪物的难度：");
			BJDebugMsg("|cFFFF66CC【消息】|r炼狱30+层、宝石区怪物和翅膀区伤害提高300%,有几率无视闪避,生命提高200%.");
			BJDebugMsg("|cFFFF66CC【消息】|r炼狱前30层与天庭均会增强同上属性.");
			BJDebugMsg("|cFFFF66CC【消息】|r所有单位增加50%基础防御,所有非英雄单位增加2%生命回复速度.");
			BJDebugMsg("|cFFFF66CC【消息】|r野怪每次升级会升3级.");
			BJDebugMsg("|cFFFF66CC【消息】|r进攻怪获得技能\"闪烁\",10波以后怪物提高20倍生命与20倍攻击.");
			BJDebugMsg("|cFFFF66CC【消息】|r熊猫与大法BOSS提高50倍生命与20倍生命.");
			BJDebugMsg("|cFFFF66CC【消息】|r英雄获得经验减少25%.");
			BJDebugMsg("|cFFFF66CC【消息】|r通关该难度可以加轮回之狱主群把你名字永久保存在|cff99cc00封帝万劫录|r中哦!");
		}
	}

    // 设置难度函数，参数 difficultyIndex: 1-10 分别对应天国到天魇
    public function SetDifficulty(integer difficultyIndex) {
        integer i;

        // 根据难度索引设置相应的游戏参数
        if (difficultyIndex == 1) { // 天国
            udg_Nandu = 1;
            udg_Nandu_JJJ = 1;
            udg_IWang = 2;
            diffculty = "天国";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为天国。");
                SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
            });
        } else if (difficultyIndex == 2) { // 太平
            udg_Nandu = 2;
            udg_Nandu_JJJ = 2;
            udg_IWang = 4;
            diffculty = "太平";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为太平。");
                SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
            });
        } else if (difficultyIndex == 3) { // 和谐
            udg_Nandu = 4;
            udg_Nandu_JJJ = 3;
            udg_IWang = 7;
            diffculty = "和谐";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为和谐。");
                SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
            });
        } else if (difficultyIndex == 4) { // 战争
            udg_Nandu = 6;
            udg_Nandu_JJJ = 4;
            udg_IWang = 8;
            diffculty = "战争";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为战争，金钱获得率为80%，每多一名玩家获得率+10%，上限100%。");
                SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.80;
            }
        } else if (difficultyIndex == 5) { // 炼狱
            udg_Nandu = 8;
            udg_Nandu_JJJ = 5;
            udg_IWang = 10;
            diffculty = "炼狱";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为炼狱，金钱获得率为70%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.70;
            }
        } else if (difficultyIndex == 6) { // 地狱
            udg_Nandu = 10;
            udg_Nandu_JJJ = 6;
            udg_IWang = 12;
            NanDiff = 1;
            diffculty = "地狱";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为地狱，金钱获得率为60%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.60;
            }
        } else if (difficultyIndex == 7) { // 末日
            udg_Nandu = 20;
            udg_Nandu_JJJ = 7;
            udg_IWang = 16;
            NanDiff = 2;
            diffculty = "|cFFFF0000末日|r";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cFFFF0000末日|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.50;
            }
        } else if (difficultyIndex == 8) { // 轮回
            udg_Nandu = 40;
            udg_Nandu_JJJ = 7;
            udg_IWang = 32;
            NanDiff = 3;
            diffculty = "|cffff00ff轮回|r";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cffff00ff轮回|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.50;
            }
        } else if (difficultyIndex == 9) { // 万劫
            udg_Nandu = 40;
            udg_Nandu_JJJ = 8;
            udg_IWang = 32;
            NanDiff = 3;
            diffculty = "|cff008000万劫|r";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cff008000万劫|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.50;
            }
            InitWanjie();
        } else if (difficultyIndex == 10) { // 天魇
            udg_Nandu = 40;
            udg_Nandu_JJJ = 8;
            udg_IWang = 32;
            NanDiff = 3;
            IsTianyan = true;
            diffculty = "|cff993366天魇|r";
            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cff993366天魇|r，金钱获得率为20%，每多一名玩家获得率+10%，上限100%。");
            });
            for (1 <= i <= 6) {
                udg_I_Jinqianhuodelv[i] = 0.00;
            }
            InitWanjie();
            InitTianyan();
        }

        // 执行难度设置后的公共逻辑
        CinematicModeBJ(false, GetPlayersAll());
        PrintDifficulty();
        InitAllPIV();

        // 设置科技研究
        if (IsTianyan) {
            ForForce(GetPlayersByMapControl(MAP_CONTROL_COMPUTER), function () {
                SetPlayerTechResearchedSwap('R00I', (NanDiff + 1), GetEnumPlayer());
                SetPlayerTechResearchedSwap('R00S', NanDiff, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R001', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R005', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R00Q', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R004', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R003', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R000', udg_Nandu, GetEnumPlayer());
            });
        } else {
            ForForce(GetPlayersAll(), function () {
                SetPlayerTechResearchedSwap('R00I', (NanDiff + 1), GetEnumPlayer());
                SetPlayerTechResearchedSwap('R00S', NanDiff, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R001', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R005', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R00Q', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R004', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R003', udg_Nandu, GetEnumPlayer());
                SetPlayerTechResearchedSwap('R000', udg_Nandu, GetEnumPlayer());
            });
        }

        // 保存玩家名称并执行后续初始化
        ForForce(GetPlayersAll(), function () {
            playerName[GetConvertedPlayerId(GetEnumPlayer())] = GetPlayerName(GetEnumPlayer());
            debug PrintCurrentPlatformLevel(GetEnumPlayer());
        });

        TriggerExecute(gg_trg_D4);
        StartTimerBJ(udg_Time_Start[1], false, 60.00);
        CreateTimerDialogBJ(udg_Time_Start[1], "准备时间");
        udg_Time_Monster_C[1] = GetLastCreatedTimerDialogBJ();
        TimerDialogDisplayBJ(true, udg_Time_Monster_C[1]);
        InitJungle();
    }

    public function registerDifficultyDialog(dialog d) {
        trigger tr;
        tr = CreateTrigger();
        TriggerRegisterDialogEvent(tr, d);
        TriggerAddAction(tr, function () {
            integer difficultyIndex;

            // 根据点击的按钮确定难度索引
            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[1]) {
                difficultyIndex = 1;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[2]) {
                difficultyIndex = 2;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[3]) {
                difficultyIndex = 3;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[4]) {
                difficultyIndex = 4;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[5]) {
                difficultyIndex = 5;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[6]) {
                difficultyIndex = 6;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[7]) {
                difficultyIndex = 7;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[8]) {
                difficultyIndex = 8;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[9]) {
                difficultyIndex = 9;
            } else if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[10]) {
                difficultyIndex = 10;
            }

            // 调用统一的难度设置函数
            SetDifficulty(difficultyIndex);
        });
        tr = null;
    }
}

//! endzinc
#endif
