#ifndef HeroSelectIncluded
#define HeroSelectIncluded

#include "edit/LHBase.j"
#include "edit/Achievement.j"
#include "edit/VIP.j"
#include "edit/RandomHero.j"
//! zinc
/*
英雄选择
*/
library HeroSelect requires LHBase,Achievement,VIP,RandomHero {

	// 信哲
	public boolean BX1 = false;
	public boolean BX2 = false;

	// 定制初始化
	public function InitXinzhe(unit u) {
		trigger t;

		t = CreateTrigger();
		TriggerRegisterUnitEvent(t, u, EVENT_UNIT_ISSUED_POINT_ORDER);
		TriggerAddCondition(t, Condition(function () -> boolean{
			return (GetIssuedOrderIdBJ() == String2OrderIdBJ("smart"));
		}));
		TriggerAddAction(t, function (){
			if (IsInForbitRegion(GetOrderPointX(), GetOrderPointY(), GetTriggerUnit())) {
				IssueImmediateOrder(GetTriggerUnit(), "stop");
				DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达.");
				return;
			}

			SetUnitX(GetTriggerUnit(), GetOrderPointX());
			SetUnitY(GetTriggerUnit(), GetOrderPointY());

			if (BX1) {
				DamageAreaMagic(GetTriggerUnit(), GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), 600, GetDamageBase(GetTriggerUnit()) * 0.8, null);
			}
		});

		t = null;
	}

	// 京剧
	public function InitJingju(unit u) {
		timer t;
		t = CreateTimer();
		SaveUnitHandle(LHTable, GetHandleId(t), 1, u);
		TimerStart(t, 1, true, function (){
			timer t; integer id; unit u; group g;

			t = GetExpiredTimer();
			id = GetHandleId(t);
			u = LoadUnitHandle(LHTable, id, 1);
			g = GetUnitsOfPlayerMatching(GetOwningPlayer(u), Condition(function () -> boolean{
				return GetUnitTypeId(GetFilterUnit()) == 'n006' || GetUnitTypeId(GetFilterUnit()) == 'n00Y';
			}));

			RecoverUnitHP(u, 0.1);
			ForGroupBJ(g, function (){
				RecoverUnitHP(GetEnumUnit(), 0.3);
			});

			u = null;
			DestroyGroup(g);
			t = null;
			g = null;
		});

		t = null;
	}

	// 初始化英雄
	function InitDingzhi(unit u) {
		if (playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") {
			UnitAddItemByIdSwapped('IXU1', u);
			SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)));
			UnitAddItemByIdSwapped('IXU1', u);
			SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)));
			AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 5);
			AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 5);
			AddHPPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 2.0);
			AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.7);
			AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.7);
			AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.7);
			SetPlayerTechResearchedSwap('R01K', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R006', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R007', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R008', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R009', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R00A', 1, GetOwningPlayer(u));
			SetPlayerTechResearchedSwap('R00B', 1, GetOwningPlayer(u));
			InitJingju(u);
			udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(u))] = udg_I_Jingyan[GetConvertedPlayerId(GetOwningPlayer(u))] + 2.5;
			SetPlayerStateBJ(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP) + 10));
		} else if (playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "信哲大人") {
			BGoldGongxiang[GetConvertedPlayerId(GetOwningPlayer(u))] = true;
			AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 1.5);
			AddIntPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 1.5);
			AddAgiPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 1.5);
			AddStrPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 1.5);
			AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 4.);
			UnitAddAbility(u, 'A0MF');
			UnitMakeAbilityPermanent(u, true, 'A0MF');
			UnitMakeAbilityPermanent(u, true, 'A0MG');
			SetPlayerAbilityAvailable(GetOwningPlayer(u), 'A0MF', false);
			InitXinzhe(u);
		}
	}

	//选英雄时调用(赞助)
	public function InitVIPHero(unit u) {
		debug InitDingzhi(u);

		if (vip.is(GetOwningPlayer(u))) {
			UnitAddItemByIdSwapped('IXU1', u);
			SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)));
			AdjustPlayerStateBJ(8000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD);
			Discolor(u);
			return;
		}

		if ((!vip.is(GetOwningPlayer(u))) && IsColorSpin(GetOwningPlayer(u))) {
			Discolor(u);
		}

		debug GetPlatformLevelGold(GetOwningPlayer(u));
	}


    function onInit ()  {
        trigger t = CreateTrigger();
        integer i = 0;
        while (i <= 9) {
            TriggerRegisterPlayerSelectionEventBJ(t, Player(i), true);
            i = i + 1;
        }
        TriggerAddCondition(t, Condition(function () -> boolean {
            return (((GetOwningPlayer(GetTriggerUnit()) == Player(PLAYER_NEUTRAL_PASSIVE)) && IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) && (udg_T1[GetConvertedPlayerId(GetTriggerPlayer())] == false)));
        }));
        TriggerAddAction(t, function () {
            integer i;
            integer ydul_g;
            timer ydl_timer;
            player p = GetTriggerPlayer();
            unit u = GetTriggerUnit();
            integer pid = GetConvertedPlayerId(p);

            if ((udg_T2[pid] == true)
            && ((u != gg_unit_Hapm_0255) || (vip.is(p)) || (GetXinglongSelectedCon(p)))
            && ((u != gg_unit_Hant_0205) || (vip.is(p)) || (GetHuanyiSelectedCon(p)))
            && ((u != gg_unit_Hkal_0208) || (vip.is(p)) || (GetMengjiSelectedCon(p)) || (BSuiji[pid]))
            && ((u != gg_unit_Nsjs_0209) || (vip.is(p)) || (GetCanglingSelectedCon(p)))
            && ((u != gg_unit_H01Y_0286) || (vip.is(p)) || (GetXiaotingSelectedCon(p)))) {

                if (CT6() && !BSuiji[pid]) { //挑战:纯随机
                    udg_T2[pid] = false;
                    RandomPick(p);
                    ydl_timer = null;
                    return;
                }

                if (GetUnitTypeId(u) == 'H02B') {  //选择随机英雄
                    udg_T2[pid] = false;
                    RandomPick(p);
                    ydl_timer = null;
                    return;
                } else {
                    if ((IChooseAura != 0) && (udg_H[pid] == xinglong)) { //星胧选光环
                        ChooseAura(u);
                        udg_T2[pid] = false;
                        ydl_timer = null;
                        return;
                    }
                }

                udg_T1[pid] = true;
                udg_Point = GetRandomLocInRect(gg_rct________1);
                SetUnitPositionLoc(u, udg_Point);
                SetUnitOwner(u, p, true);
                PanCameraToTimedLocForPlayer(p, udg_Point, 0.20);
                RemoveLocation(udg_Point);
                udg_RENSHU = (udg_RENSHU + 1);
                udg_H[pid] = u;
                SetPlayerStateBJ(p, PLAYER_STATE_RESOURCE_FOOD_CAP, 1);
                MultiboardSetItemValueBJ(udg_D, 1, (pid + 1), GetUnitName(u));
                MultiboardSetItemValueBJ(udg_D, 7, (pid + 1), "存活");
                MultiboardSetItemValueBJ(udg_D, 6, (pid + 1), "1");

                UDepot[pid] = CreateUnit(p, 'nmgv', 10175.0 + ModuloInteger(pid - 1, 3) * 132.0, (- 691.0 + R3(pid > 3,1,0) * 630.4), 270.000);
                InitItemTransport(UDepot[pid]);

                if (udg_I_Jinqianhuodelv[pid] < 1.00) {
                    ydul_g = 1;
                    for (1 <= ydul_g <= 6) {
                        udg_I_Jinqianhuodelv[ydul_g] = (udg_I_Jinqianhuodelv[ydul_g] + 0.10);
                        ydul_g = ydul_g + 1;
                    }
                }

                DisplayTimedTextToForce(GetPlayersAll(), 30, "|cFFFF66CC【提示】|r当前金钱获得率为" + (I2S(R2I(udg_I_Jinqianhuodelv[pid] * 100.00))) + "%。");
                udg_Point = GetRectCenter(udg_Ju_Lianyu[pid]);
                CreateTextTagLocBJ("第1层", udg_Point, 0, 25.00, 100.00, 100, 0.00, 25.00);
                udg_Piaofu_Lianyu[pid] = GetLastCreatedTextTag();
                RemoveLocation(udg_Point);
                LeaderboardSetLabel(udg_Paihang[pid], (GetUnitName(u) + "属性（输入\"-yc\"隐藏）"));
                PlayerSetLeaderboard(p, udg_Paihang[pid]);

                for (1 <= i <= 10) {
                    udg_Point = GetRandomLocInRect(udg_Ju_Lianyu[(pid + 6)]);
                    CreateNUnitsAtLoc(1, 'nspr', Player(11), udg_Point, GetRandomDirectionDeg());
                    UnitAddAbilityBJ('A04A', GetLastCreatedUnit());
                    UnitAddAbilityBJ('A04B', GetLastCreatedUnit());
                    GroupAddUnitSimple(GetLastCreatedUnit(), udg_Lianyu_Group[pid]);
                    RemoveLocation(udg_Point);
                }

                InitAchievementName(u);

                if (u == gg_unit_Hvwd_0016) { //莫琪
                    InitMoqi(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNSylvanusWindrunner.blp");
                    udg_Unit_Qixing[1] = CreateUnit(p, 'ewsp', YDWECoordinateX((GetUnitX(moqi) + 400.00)), YDWECoordinateY(GetUnitY(moqi)), 90.00);
                    udg_Unit_Qixing[2] = CreateUnit(p, 'e006', YDWECoordinateX((GetUnitX(moqi) + 249.39)), YDWECoordinateY((GetUnitY(moqi) + 312.73)), 141.42);
                    udg_Unit_Qixing[3] = CreateUnit(p, 'e008', YDWECoordinateX((GetUnitX(moqi) - 89.00)), YDWECoordinateY((GetUnitY(moqi) + 389.97)), 192.84);
                    udg_Unit_Qixing[4] = CreateUnit(p, 'e009', YDWECoordinateX((GetUnitX(moqi) - 360.38)), YDWECoordinateY((GetUnitY(moqi) + 173.55)), 244.27);
                    udg_Unit_Qixing[5] = CreateUnit(p, 'e00A', YDWECoordinateX((GetUnitX(moqi) - 360.38)), YDWECoordinateY((GetUnitY(moqi) - 173.55)), 295.71);
                    udg_Unit_Qixing[6] = CreateUnit(p, 'e007', YDWECoordinateX((GetUnitX(moqi) - 89.00)), YDWECoordinateY((GetUnitY(moqi) - 389.97)), 347.14);
                    udg_Unit_Qixing[7] = CreateUnit(p, 'e005', YDWECoordinateX((GetUnitX(moqi) + 249.39)), YDWECoordinateY((GetUnitY(moqi) - 312.73)), 398.57);
                    UnitAddAbilityBJ('A066', gg_unit_Hvwd_0016);
                    EnableTrigger(gg_trg_______13);
                    EnableTrigger(gg_trg_______17);
                    udg_I_Xianglian[(pid + 6)] = (udg_I_Xianglian[(pid + 6)] + 0.20);
                    udg_I_Xianglian[(pid + 12)] = (udg_I_Xianglian[(pid + 12)] + 0.20);
                    udg_I_Xianglian[(pid + 0)] = (udg_I_Xianglian[(pid + 0)] + 0.20);
                    udg_I_Xianglian[(pid + 24)] = (udg_I_Xianglian[(pid + 24)] + 0.50);
                    udg_I_Xianglian[(pid + 30)] = (udg_I_Xianglian[(pid + 30)] + 0.20);
                    udg_I_Jinengjiacheng[pid] = (udg_I_Jinengjiacheng[pid] + 0.20);
                    TriggerExecute(gg_trg_papa10____________u);
                    TriggerExecute(gg_trg_papa9____________u);
                    TriggerExecute(gg_trg_papa8____________u);
                }

                if (u == gg_unit_Hjai_0014) {
                    InitLingxue(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNJaina.blp");
                    EnableTrigger(gg_trg_____________11);
                    EnableTrigger(gg_trg_____________23);
                }

                if (u == gg_unit_Eevi_0020) {
                    InitYanmie(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNHeroDemonHunter.blp");
                    ydl_timer = CreateTimer();
                    TimerStart(ydl_timer, 5.00, true, function (){
                        if (GetUnitUserData(gg_unit_nmre_0234) != 1) {
                            DisplayTimedTextToPlayer(GetOwningPlayer(gg_unit_Eevi_0020), 0, 0, 30, "|cFFFF66CC【提示】|r你选的英雄|cFFFFCC66湮灭|r拥有全图闪烁的技能，使用|cffffff00M|r键来使用该技能。");
                        } else {
                            YDWEFlushMissionByInteger(YDWEGetTimerID(GetExpiredTimer()));
                            DestroyTimer(GetExpiredTimer());
                        }
                    });
                }

                if (u == gg_unit_Ocbh_0251) {
                    InitKaisa(u);
                    EnableTrigger(gg_trg_____________7);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNHeroTaurenChieftain.blp");
                }

                if (u == gg_unit_Udea_0279) {
                    InitHeiyan(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNHeroDeathKnight.blp");
                }

                if (u == gg_unit_Hant_0205) {
                    InitHuanyi(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp");
                }

                if (u == gg_unit_Hkal_0208) {
                    InitMengji(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNwenlei.blp");
                }

                if (u == gg_unit_Usyl_0215) {
                    InitXiaoyue(u);
                    EnableTrigger(gg_trg_____________65);
                    EnableTrigger(gg_trg_____________66);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNBansheeRanger.blp");
                }

                if (u == gg_unit_E00D_0210) {
                    InitSeyu(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNWarden2.blp");
                }

                if (u == gg_unit_Uktl_0018) {
                    InitXuanxue(u);
                    EnableTrigger(gg_trg_____________35);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNLichVersion2.blp");
                    if (GetUnitUserData(gg_unit_n00W_0038) != 1) {
                        DisplayTimedTextToPlayer(GetOwningPlayer(gg_unit_Uktl_0018), 0, 0, 30, "|cFFFF66CC【提示】|r你选的英雄|cFF33FF33玄雪|r拥有灵魂侵入的技能，使用|cffffff00D|r键来使用该技能。");
                    } else {
                        YDWEFlushMissionByInteger(YDWEGetTimerID(GetExpiredTimer()));
                        DestroyTimer(GetExpiredTimer());
                    }
                }

                ShowUnitHide(gg_unit_h006_0252);

                if (u == gg_unit_Harf_0262) {
                    InitChenji(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNArthas.blp");
                    EnableTrigger(gg_trg_____________122);
                    EnableTrigger(gg_trg_____________128);
                    EnableTrigger(gg_trg_____________132);
                    SetPlayerAbilityAvailableBJ(false, 'A0FJ', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FQ', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FP', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FL', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FM', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FK', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FI', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FO', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0FN', p);
                    SetPlayerAbilityAvailableBJ(false, 'A0G4', p);
                }

                if (u == gg_unit_Othr_0256) {
                    InitSheyan(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNThrall.blp");
                    EnableTrigger(gg_trg_____________108);
                    EnableTrigger(gg_trg_____________116);
                }

                if (u == gg_unit_Etyr_0017) {
                    InitTaiya(u);
                    SetUnitUserData(gg_unit_h006_0252, 0);
                    EnableTrigger(gg_trg_______CD);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNPriestessOfTheMoon.blp");
                    ydl_timer = CreateTimer();
                    TimerStart(ydl_timer, 5.00, true, function (){
                        if (GetUnitUserData(gg_unit_ncp3_0238) != 1) {
                            DisplayTimedTextToPlayer(GetOwningPlayer(gg_unit_Etyr_0017), 0, 0, 30, "|cFFFF66CC【提示】|r你选的英雄|cFFFF3399泰雅|r拥有月神之箭的技能，使用|cffffff00D|r键来使用该技能。");
                        } else {
                            YDWEFlushMissionByInteger(YDWEGetTimerID(GetExpiredTimer()));
                            DestroyTimer(GetExpiredTimer());
                        }
                    });
                }

                if (u == gg_unit_Nbbc_0235) {
                    InitBajue(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNChaosBlademaster.blp");
                    udg_Jiansheng = 3;
                    EnableTrigger(gg_trg_______62);
                }

                if (u == gg_unit_E00C_0217) {
                    InitHanshang(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNHeroAlchemist.blp");
                }

                if (u == gg_unit_Hhkl_0218) {
                    InitSichen(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNKnightOfTheEbonBlade.blp");
                }

                if (u == gg_unit_Hapm_0255) {
                    InitXinglong(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNXinglong.blp");
                }

                if (u == gg_unit_H01Y_0286) {
                    InitXiaoting(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNRagnarFlamebeard.blp");
                }

                if (u == gg_unit_Nsjs_0209) {
                    InitCangling(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNEarthBrewmaster.blp");
                }

                if (u == gg_unit_H027_0292) {
                    InitLichi(u);
                    MultiboardSetItemIcon(MultiboardGetItem(udg_D, pid, 0), "ReplaceableTextures\\CommandButtons\\BTNlichi2.blp");
                }

                TriggerExecute(gg_trg_D7);
                SetUnitInvulnerable(udg_H[pid], false);
                UnitAddItemByIdSwapped('spsh', udg_H[pid]);
                InitVIPHero(udg_H[pid]);
                SetDenglu(p);
                if (IsJianianhua()) {
                    UnitAddItemByIdSwapped('I06N', udg_H[pid]);
                    SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, pid);
                }
                InitChallanger1Hero(udg_H[pid]);
                InitChallanger2Hero(udg_H[pid]);
                ShowChallangerDialog(p);
                InitItemTransport(udg_H[pid]);

                if (CT3()) {
                    UnitRemoveAbility(udg_H[pid], 'A0B9');
                }

                if (CT6()) {
                    AdjustPlayerStateBJ(5000, p, PLAYER_STATE_RESOURCE_GOLD);
                }

                if (IsKuanghuan()) {
                    GiveRandomEggs(udg_H[pid]);
                }

                if (BSuiji[pid]) {
                    UnitAddItemByIdSwapped(GetRandomPotion(), udg_H[pid]);
                }
                BSuiji[pid] = false;
            } else {
                udg_T2[pid] = true;
                TriggerSleepAction(0.30);
                udg_T2[pid] = false;
            }

            ydl_timer = null;
            p = null;
            u = null;
            pid = 0;

        });
        t = null;
    }
}


//! endzinc
#endif
