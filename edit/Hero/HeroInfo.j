#ifndef HeroInfoIncluded
#define HeroInfoIncluded

//! zinc
/*
库名
*/
library HeroInfo requires Keyboard {

    //显示
    private struct heroInfo [] {

        static boolean BYincang [];

        static method onInit () {
            //在游戏开始1.0秒后再调用
            trigger tr = CreateTrigger();
            TriggerRegisterTimerEventSingle(tr,1.0);
            TriggerAddCondition(tr,Condition(function (){
                keyboard.regKeyUpEvent(KEY_TAB, function (){
                    DzSyncData("tab",""); //触发数据传送
                });
                DestroyTrigger(GetTriggeringTrigger());
            }));

            tr = CreateTrigger();
            DzTriggerRegisterSyncData(tr,"tab",false);
            TriggerAddCondition(tr, Condition(function () {
                string str = DzGetTriggerSyncData();
                player p = DzGetTriggerSyncPlayer();
                integer index = GetConvertedPlayerId(p);

                if (!BYincang[index]) {
                    LeaderboardDisplayBJ(false, udg_Paihang[index]);
                    DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r如果要面板显示请再次按tab.");
                } else {
                    LeaderboardDisplayBJ(true, udg_Paihang[index]);
                }
                BYincang[index] = !BYincang[index];

                str = null;
                p = null;
            }));


            tr = null;

        }

    }
}

//! endzinc
#endif
