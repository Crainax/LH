#ifndef ItemTransportIncluded
#define ItemTransportIncluded

#include "../LHBase.j"
//! zinc
/*
物品双击传送的功能
*/
library ItemTransport requires LHBase {

    //操作物品的接口
    public function InitItemTransport (unit u) {
        TriggerRegisterUnitEvent(TrDbClick,u,EVENT_UNIT_ISSUED_TARGET_ORDER);
    }

    trigger TrDbClick = null;
    function onInit ()  {
        TrDbClick = CreateTrigger();
        TriggerAddCondition(TrDbClick, Condition(function () { //双击装备后  宠物<->英雄间移动
            integer i;
            integer pos = 0;
            timer t;
            if (GetIssuedOrderId() >= 852002 && GetIssuedOrderId() <= 852007) {
                for (1 <= i <= 6) {
                    if (UnitItemInSlotBJ(GetTriggerUnit(),i) == GetOrderTargetItem()) {
                        pos = i;
                        break;
                    }
                }
                if (pos > 0) {
                    t = CreateTimer();
                    SaveInteger(spellTable,GetHandleId(t),1,pos);
                    SaveItemHandle(spellTable,GetHandleId(t),2,GetOrderTargetItem());
                    SaveUnitHandle(spellTable,GetHandleId(t),3,GetTriggerUnit());
                    TimerStart(t,0.0,false,function (){
                        timer t = GetExpiredTimer();
                        integer id = GetHandleId(t);
                        integer pos = LoadInteger(spellTable,id,1);
                        item it = LoadItemHandle(spellTable,id,2);
                        unit u = LoadUnitHandle(spellTable,id,3);
                        integer index = GetConvertedPlayerId(GetOwningPlayer(u));
                        if (UnitItemInSlotBJ(u,pos) == it) {
                            if (u == UDepot[index]) { //宠物里双击
                                if (UnitAddItem( udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],it)) DisplayTextToPlayer( GetOwningPlayer(u), 0, 0, "|cFFFF66CC【消息】|r成功转移到英雄上." );
                                else DisplayTextToPlayer( GetOwningPlayer(u), 0, 0, "|cffff0000转移失败,英雄背包已满.|r" );
                            } else if (u == udg_H[index]) { //英雄里双击
                                if (UnitAddItem(UDepot[index],it)) DisplayTextToPlayer( GetOwningPlayer(u), 0, 0, "|cFFFF66CC【消息】|r成功转移到仓库上." );
                                else DisplayTextToPlayer( GetOwningPlayer(u), 0, 0, "|cffff0000转移失败,仓库背包已满.|r" );
                            }
                        }
                        PauseTimer(t);
                        FlushChildHashtable(spellTable,id);
                        DestroyTimer(t);
                        u = null;
                        it = null;
                        t = null;
                    });
                    t = null;
                }
            }
        }));
    }
}

//! endzinc
#endif
