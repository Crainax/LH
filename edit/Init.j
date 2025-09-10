#ifndef InitIncluded
#define InitIncluded

#include "edit/LHBase.j"
//! zinc
/*
地图初始化
*/
library Init requires LHBase,Achievement,MiJing,Diffculty,Version,PIV {

    function onInit ()  {
        //在游戏开始0.0秒后再调用
        trigger tr = CreateTrigger();
        TriggerRegisterTimerEventSingle(tr,0.0);
        TriggerAddAction(tr,function (){
            group ydl_group;
            unit ydl_unit;

            CameraSetSmoothingFactor(2.00);
            InitAllAchievement();
            InitMiJing();
            CinematicModeBJ(true, GetPlayersByMapControl(MAP_CONTROL_USER));

            ForForce(GetPlayersAll(), function () {
                DisplayTimedTextToPlayer(GetEnumPlayer(), 0, 0, 5.00, "|cFF99FF00【消息】|r等待玩家1选择难度(120秒未选择会自动选择经典天国)");
                SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 2000);
                SetCameraFieldForPlayer(GetEnumPlayer(), CAMERA_FIELD_ZOFFSET, GetCameraTargetPositionZ() + 400.00, 0);
            });

            TransmissionFromUnitWithNameBJ(GetPlayersAll(), gg_unit_H01W_0207, "|cffff00ff首任六界王|r", null, "寰宇之争，混沌初开。当神魔之战成为传说，冥界的阴影已悄然笼罩五界。他们的目标，是维系世界平衡的圣光宝石。\n欢迎加入《轮回之狱》官方交流群：413359254", bj_TIMETYPE_ADD, 5.00, true);
            TriggerSleepAction(2.00);
            CinematicModeBJ(false, bj_FORCE_PLAYER[0]);
            ChooseGameMode(); //选择难度

            udg_Group = GetUnitsInRectAll(gg_rct_______c1);
            ForGroupBJ(udg_Group, function () {
                if (Get11() && IsUnitIsSpin(GetEnumUnit())) {
                    RemoveUnit(GetEnumUnit());
                } else {
                    SetUnitInvulnerable(GetEnumUnit(), true);
                }
            });
            DestroyGroup(udg_Group);

            debug JudgeCundang();
            ShowUnitHide(gg_unit_H01W_0207);

            ydl_group = null;
            ydl_unit = null;
            DestroyTrigger(GetTriggeringTrigger());
        });
        tr = null;
    }
}

//! endzinc
#endif
