
#ifndef XuanxueIncluded
#define XuanxueIncluded

#include  "edit/LHBase.j"
#include  "edit/Skin.j"
#include  "edit/ChallangerDZ.j"

//! zinc
library Xuanxue requires LHBase,Spin,ChallangerDZ {

    public hashtable HTXX = null;
    public integer IQinru;

    // 皮肤的计数初始化
    public function InitHongdeng() {
        HTXX = InitHashtable();
        IQinru = 0;
    }


    public function CountQintu(unit u) {
        integer i;

        if (HTXX == null) {
            return;
        }

        if (GetXuanxue2Spin(GetOwningPlayer(xuanxue))) {
            return;
        }

        i = 1;
        for (1 <= i <= IQinru) {
            if (LoadInteger(HTXX, GetHandleId(xuanxue), i) == GetUnitTypeId(u)) {
                return;
            }
        }

        IQinru = IQinru + 1;
        SaveInteger(HTXX, GetHandleId(xuanxue), IQinru, GetUnitTypeId(u));

        if (IQinru < 134) {
            BJDebugMsg("|cFFFF0000【凝冰红灯】|r进度:" + I2S(IQinru) + "/134.");
        } else {
            debug SetXuanxue2SpinOK(GetOwningPlayer(xuanxue));
        }
    }

    // 冰之凋零
    public function Bingzhidiaoling(unit u) {
        real damage; real x; real y;

        damage = GetDamageInt(xuanxue);
        x = GetUnitX(u);
        y = GetUnitY(u);

        PrintSpell(GetOwningPlayer(xuanxue), GetAbilityName(GetSpellAbilityId()), damage);
        DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl", x, y));
        UnitDamageTarget(xuanxue, u, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);

        PolledWait(1);
        DamageAreaEff(xuanxue, x, y, 600, damage, "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl");
    }

    // 万古玄霜的被动效果
    public function Wanguxuanshuang(unit u) {
        if (IsEnemyUnit(u, xuanxue) && (udg_U_Zhuansheng_Dantiao[2] != u || GetAttacker() == xuanxue) && GetUnitState(xuanxue, UNIT_STATE_MANA) >= 400) {
            UnitDamageTarget(xuanxue, u, GetDamageInt(xuanxue) * 0.1, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
        }
    }

    // 玄雪法杖
    function InitXuanxueSpin(unit u) -> unit {
        if (IsXuanxueSpin2(GetOwningPlayer(u))) {
            udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u), 'U002', GetUnitX(u), GetUnitY(u), 0);
            gg_unit_Uktl_0018 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))];
            UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]);
            AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.1);
            SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], 1000);
            RemoveUnit(u);
            u = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))];
        }

        if (IsXuanxueSpin1(GetOwningPlayer(u))) {
            UnitRemoveAbility(u, 'A046');
            UnitAddAbility(u, 'A0JM');
            AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.2);
            return u;
        } else {
            return u;
        }
    }

    public function InitXuanxue(unit u) {
        xuanxue = InitXuanxueSpin(u);
    }
}
//! endzinc

#endif
