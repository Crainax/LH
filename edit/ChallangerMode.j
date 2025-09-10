
#ifndef ChallangerModeIncluded
#define ChallangerModeIncluded

#include  "edit/LHBase.j"
///#include  "edit/Huodong.j"
#include  "edit/ChallangerDZ.j"
#include  "edit/Mirror.j"

//! zinc
library ChallangerMode requires LHBase,ChallangerDZ,Huodong,Mirror {

	public integer EquipLoopingTime = 1;
	public group GJingxiang = null;

	/*
	输出选英雄皮肤的提示
	*/
	public function ShowChallangerDialog(player p) {
		if (CType != 0) {
			ShowGameHint(p, GetChallangerContent(CType));
		}
	}

	/*
	开始挑战3
	*/
	function StartTiaozhan1() {
		integer i; unit u;

		i = 1;
		u = CreateUnit(Player(10), 'h025', 0, 0, 0);

		for (1 <= i <= 6) {
			if (udg_H[i] != null) {
				UnitRemoveAbility(udg_H[i], 'A0B9');
			}
		}

		ShowUnitHide(u);
		BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战1,所有英雄失去攻击速度与100000%的移动速度.");

		u = null;
	}

	/*
	初始化乱斗
	*/
	public function InitKuanghuan() {
		CType = -1;
	}

	/*
	开始挑战4
	*/
	function Tiaozhan2Timer() {
		integer i;

		i = 1;
		if (udg_Bo >= 13) {
			for (1 <= i <= 6) {
				if (udg_H[i] != null) {
					RecoverUnitHP(udg_H[i], -0.3);
				}
			}
		} else {
			for (1 <= i <= 6) {
				if (udg_H[i] != null) {
					RecoverUnitHP(udg_H[i], -0.1);
				}
			}
		}
	}

	function StartTiaozhan2() {
		timer tm;

		tm = CreateTimer();
		TimerStart(tm, 1, true, function Tiaozhan2Timer);
		BJDebugMsg("|cFFFF66CC【消息】|r你们开启了成就挑战2,所有英雄获得金钱为1%,英雄每秒减少10%的生命.(13波开始每秒减少30%的生命)");

		tm = null;
	}

	/*
	挑战初始化
	*/
	function InitChallanger() {
		if (CT2()) {
			EquipLoopingTime = 6;
		} else if (CT3()) {
			StartTiaozhan1();
		} else if (CT4()) {
			StartTiaozhan2();
		} else if (CT5()) {
			GJingxiang = CreateGroup();
		} else if (CT7()) {
			SetPlayerTechResearchedSwap('R01L', 1, Player(10));
			SetPlayerTechResearchedSwap('R01L', 1, Player(11));
			udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 5;
		}

		if (CType != 0) {
			SgameMode = S3(CDiff == 1, "简单", S3(CDiff == 2, "中等", "困难")) + GetChallangerTitle(CType);
		}
	}

	/*
	第二个挑战英雄初始化
	*/
	public function InitChallanger2Hero(unit u) {
		integer i; item it;

		if (!CT2()) {
			return;
		}

		i = 2;
		it = null;

		for (2 <= i <= 6) {
			if (UnitItemInSlotBJ(u, i) != null) {
				UnitRemoveItem( u, UnitItemInSlot(u, ( i)-1));
			}
			UnitAddItemByIdSwapped('I079', u);

		}

		if (u == cangling) {
			for (8 <= i <= 12) {
				IBibo[i] = CreateItem('I079', 0, 0);
				SetItemVisible(IBibo[i], false);
			}
		}

		it = null;
	}

	/*
	第一个挑战英雄初始化
	*/
	public function InitChallanger1Hero(unit u) {
		integer int, agi, str;

		if (!CT1()) {
			return;
		}

		int = GetHeroInt(u, true);
		agi = GetHeroAgi(u, true);
		str = GetHeroStr(u, true);

		SetHeroLevelBJ(u, 450, false);
		SetHeroInt(u, int, true);
		SetHeroAgi(u, agi, true);
		SetHeroStr(u, str, true);
		AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)), -0.95);
		AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)), -0.95);
		AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(u)), -0.95);
	}

	/*
	游戏难度的选取
	@ param i 最低出现什么难度
	*/
	public function ShowDifficutyDiglog(integer i) {
		udg_X_Nandu = DialogCreate();
		DialogSetMessage(udg_X_Nandu, "选择难度");

		if (i < 2) {
			DialogAddButtonBJ(udg_X_Nandu, "天国（24波）");
			udg_X_Nandu_Chuangkou[1] = GetLastCreatedButtonBJ();
		}

		if (i < 3) {
			DialogAddButtonBJ(udg_X_Nandu, "太平（24波）");
			udg_X_Nandu_Chuangkou[2] = GetLastCreatedButtonBJ();
		}

		if (i < 4) {
			DialogAddButtonBJ(udg_X_Nandu, "和谐（24+5波）");
			udg_X_Nandu_Chuangkou[3] = GetLastCreatedButtonBJ();
		}

		if (i < 5) {
			DialogAddButtonBJ(udg_X_Nandu, "战争（24+5波）");
			udg_X_Nandu_Chuangkou[4] = GetLastCreatedButtonBJ();
		}

		if (i < 6) {
			DialogAddButtonBJ(udg_X_Nandu, "炼狱（24+5+2波）");
			udg_X_Nandu_Chuangkou[5] = GetLastCreatedButtonBJ();
		}

		if (i < 7) {
			DialogAddButtonBJ(udg_X_Nandu, "地狱（24+5+2波）");
			udg_X_Nandu_Chuangkou[6] = GetLastCreatedButtonBJ();
		}

		if (i < 8) {
			DialogAddButtonBJ(udg_X_Nandu, "|cFFFF0000末日|r（24+5+2波）");
			udg_X_Nandu_Chuangkou[7] = GetLastCreatedButtonBJ();
		}

		if (i < 9) {
			DialogAddButtonBJ(udg_X_Nandu, "|cffff00ff轮回|r（24+5+2波）");
			udg_X_Nandu_Chuangkou[8] = GetLastCreatedButtonBJ();
		}

		if (i < 10) {
			DialogAddButtonBJ(udg_X_Nandu, "|cff008000万劫|r（24+5+2波）");
			udg_X_Nandu_Chuangkou[9] = GetLastCreatedButtonBJ();
		}

		if (IsTianyanOK()) {
			DialogAddButtonBJ(udg_X_Nandu, "|cff993366天魇|r（24+5+2波）");
			udg_X_Nandu_Chuangkou[10] = GetLastCreatedButtonBJ();
		}

		DialogDisplay(GetFirstPlayer(), udg_X_Nandu, true);
		registerDifficultyDialog.execute(udg_X_Nandu);

		if (CType != 0 && CType != -1) {
			InitChallanger();
		}
	}

	/*
	选择加速与否
	*/
	function CreateCDialog4() {
		trigger t; dialog d;

		t = CreateTrigger();
		d = DialogCreate();

		DialogSetMessage(d, "经典(常速)还是加速?");
		SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "经典(推荐)"));
		SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "加速(进阶)", 512));

		DialogDisplay(GetFirstPlayer(), d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function (){
			dialog d;

			d = GetClickedDialogBJ();

			if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1)) {
				BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为经典(常速).");
				mode = 1;
				SgameMode = SgameMode + "C";
			}

			if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2)) {
				BJDebugMsg("|cFFFF66CC【消息】|r当前游戏速度为加速(进阶).");
				mode = 2;
				SgameMode = SgameMode + "S";
			}

			ShowDifficutyDiglog(GetChallangerDifficulty());
			FlushChildHashtable(LHTable, GetHandleId(d));
			DialogDisplay(Player(0), d, false);
			DialogClear(d);
			DialogDestroy(d);

			d = null;
			DestroyTrigger(GetTriggeringTrigger());
		});

		d = null;
		t = null;
	}

	/*
	确认之后
	*/


	/*
	创建挑战标题对话框
	*/
	function CreateCDialog3(integer i) {
		trigger t; dialog d;

		t = CreateTrigger();
		d = DialogCreate();

		DialogSetMessage(d, GetChallangerContent(i));
		// 设置类型
		CType = i;

		SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "确认选择"));
		SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButton(d, "返回|cffff6800(Esc)|r", 512));

		DialogDisplay(GetFirstPlayer(), d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function (){
			dialog d;

			d = GetClickedDialogBJ();

			if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1)) {
				CreateCDialog4();
				BJDebugMsg("|cFFFF66CC【消息】|r已确认挑战内容,正在选择加速与难度.");
			}

			if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2)) {
				CreateCDialog2.execute();
				BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战类型.");
			}

			FlushChildHashtable(LHTable, GetHandleId(d));
			DialogDisplay(Player(0), d, false);
			DialogClear(d);
			DialogDestroy(d);

			d = null;
			DestroyTrigger(GetTriggeringTrigger());
		});

		d = null;
		t = null;
	}

	/*
	创建挑战标题对话框
	*/
	public function CreateCDialog2() {
		trigger t; dialog d; integer i;

		t = CreateTrigger();
		d = DialogCreate();
		i = 1;

		if (CDiff == 1) {
			DialogSetMessage(d, "选择挑战类别(简单)");
		} else if (CDiff == 2) {
			DialogSetMessage(d, "选择挑战类别(中等)");
		} else if (CDiff == 3) {
			DialogSetMessage(d, "选择挑战类别(困难)");
		}

		SaveButtonHandle(LHTable, GetHandleId(d), 7, DialogAddButtonBJ(d, GetChallangerTitle(7) + S3(IsChallangerComplete(GetFirstPlayer(), 7), "|cffff9900(已完成)|r", "|cff33cccc(未完成)|r")));

		for (1 <= i <= 6) {
			SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetChallangerTitle(i) + S3(IsChallangerComplete(GetFirstPlayer(), i), "|cffff9900(已完成)|r", "|cff33cccc(未完成)|r")));
		}

		SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "返回|cffff6800(Esc)|r", 512));
		DialogDisplay(GetFirstPlayer(), d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function (){
			dialog d; integer i;

			d = GetClickedDialogBJ();
			i = 1;

			for (1 <= i <= 9) {
				if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i)) {
					CreateCDialog3(i);
					BJDebugMsg("|cFFFF66CC【消息】|r当前挑战为" + GetChallangerTitle(i) + ".");
				}
			}

			if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 10)) {
				CreateCDialog1.execute();
				BJDebugMsg("|cFFFF66CC【消息】|r正在切换挑战难度.");
			}

			FlushChildHashtable(LHTable, GetHandleId(d));
			DialogDisplay(Player(0), d, false);
			DialogClear(d);
			DialogDestroy(d);

			d = null;
			DestroyTrigger(GetTriggeringTrigger());
		});

		d = null;
		t = null;
	}

	/*
	选择难度之后
	*/
	function ChooseDifficultyClick() {
		dialog d;

		d = GetClickedDialogBJ();

		if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 1)) {
			CDiff = 1;
			CreateCDialog2();
			BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为简单.");
		} else if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 2)) {
			CDiff = 2;
			CreateCDialog2();
			BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为中等.");
		} else if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), 3)) {
			CDiff = 3;
			CreateCDialog2();
			BJDebugMsg("|cFFFF66CC【消息】|r当前的挑战模式难度为困难.");
		}

		FlushChildHashtable(LHTable, GetHandleId(d));
		DialogDisplay(Player(0), d, false);
		DialogClear(d);
		DialogDestroy(d);

		d = null;
		DestroyTrigger(GetTriggeringTrigger());
	}

	/*
	创建难度对话框
	*/
	public function CreateCDialog1() {
		trigger t; dialog d;

		t = CreateTrigger();
		d = DialogCreate();

		DialogSetMessage(d, "选择挑战难度");
		if (DEBUG_MODE) {
			SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单(" + I2S(GetEasyComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"));
			SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等(" + I2S(GetMiddleComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"));
			SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难(" + I2S(GetHardComplete(GetFirstPlayer())) + "/" + I2S(COUNT_CHALLANGER) + ")"));
		} else {
			SaveButtonHandle(LHTable, GetHandleId(d), 1, DialogAddButtonBJ(d, "简单"));
			SaveButtonHandle(LHTable, GetHandleId(d), 2, DialogAddButtonBJ(d, "中等"));
			SaveButtonHandle(LHTable, GetHandleId(d), 3, DialogAddButtonBJ(d, "困难"));
		}

		DialogDisplay(GetFirstPlayer(), d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function ChooseDifficultyClick);

		d = null;
		t = null;
	}

	/*
	显示挑战对话框
	*/
	public function ShowTiaozhanDialog() {
		CreateCDialog1();
	}
}
//! endzinc
#endif
