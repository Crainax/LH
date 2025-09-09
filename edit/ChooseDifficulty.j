#ifndef ChooseIncluded
#define ChooseIncluded

#include "edit/LHBase.j"
#include "edit/NetVersion.j"
#include "edit/Diffculty.j"
//! zinc
/*
选择难度
*/
library ChooseDifficulty requires LHBase,Version,Diffculty,PIV {

    function onInit ()  {
        trigger tr;
        tr = CreateTrigger();
        TriggerRegisterDialogEvent(tr, udg_X_Nandu);
        TriggerAddAction(tr, function () {
            integer i;

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[1]) {
                udg_Nandu = 1;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为天国。");
                    SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
                });
                udg_Nandu_JJJ = 1;
                diffculty = "天国";
                udg_IWang = 2;
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[2]) {
                udg_Nandu = 2;
                udg_Nandu_JJJ = 2;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为太平。");
                    SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
                });
                udg_IWang = 4;
                diffculty = "太平";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[3]) {
                udg_Nandu = 4;
                udg_Nandu_JJJ = 3;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为和谐。");
                    SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
                });
                udg_IWang = 7;
                diffculty = "和谐";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[4]) {
                udg_Nandu = 6;
                udg_Nandu_JJJ = 4;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为战争，金钱获得率为80%，每多一名玩家获得率+10%，上限100%。");
                    SetPlayerTechResearchedSwap('R01K', 1, GetEnumPlayer());
                });
                udg_IWang = 8;
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.80;
                }
                diffculty = "战争";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[5]) {
                udg_Nandu = 8;
                udg_Nandu_JJJ = 5;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为炼狱，金钱获得率为70%，每多一名玩家获得率+10%，上限100%。");
                });
                udg_IWang = 10;
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.70;
                }
                diffculty = "炼狱";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[6]) {
                udg_Nandu = 10;
                udg_Nandu_JJJ = 6;
                NanDiff = 1;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为地狱，金钱获得率为60%，每多一名玩家获得率+10%，上限100%。");
                });
                udg_IWang = 12;
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.60;
                }
                diffculty = "地狱";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[7]) {
                udg_Nandu = 20;
                udg_Nandu_JJJ = 7;
                udg_Nandu_JJJ = 7;
                NanDiff = 2;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cFFFF0000末日|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
                });
                udg_IWang = 16;
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.50;
                }
                diffculty = "|cFFFF0000末日|r";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[8]) {
                udg_Nandu = 40;
                udg_Nandu_JJJ = 7;
                udg_IWang = 32;
                NanDiff = 3;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cffff00ff轮回|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
                });
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.50;
                }
                diffculty = "|cffff00ff轮回|r";
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[9]) {
                udg_Nandu = 40;
                udg_Nandu_JJJ = 8;
                udg_IWang = 32;
                NanDiff = 3;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cff008000万劫|r，金钱获得率为50%，每多一名玩家获得率+10%，上限100%。");
                });
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.50;
                }
                diffculty = "|cff008000万劫|r";
                InitWanjie();
            }

            if (GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[10]) {
                udg_Nandu = 40;
                udg_Nandu_JJJ = 8;
                udg_IWang = 32;
                NanDiff = 3;
                IsTianyan = true;
                ForForce(GetPlayersAll(), function () {
                    DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r当前难度为|cff993366天魇|r，金钱获得率为20%，每多一名玩家获得率+10%，上限100%。");
                });
                for (1 <= i <= 6) {
                    udg_I_Jinqianhuodelv[i] = 0.00;
                }
                diffculty = "|cff993366天魇|r";
                InitWanjie();
                InitTianyan();
            }

            CinematicModeBJ(false, GetPlayersAll());
            PrintDifficulty();
            InitAllPIV();

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
        });
        tr = null;
    }
}

//! endzinc
#endif
