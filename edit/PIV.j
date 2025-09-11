
#ifndef PIVIncluded
#define PIVIncluded

#include  "edit/LHBase.j"
#include  "edit/Attr.j"
#include  "edit/SpellBase.j"
#include  "edit/Juexing.j"
///#include  "edit/Beast.j"
///#include  "edit/Netversion.j"

//! zinc
library PIV requires LHBase,Beast,Version,Attr,SpellBase,Juexing {

	boolean isFirst = true;
	hashtable PIVTable = InitHashtable();
	key kPIV;
	key kPIVStr;
	key kPIVPlayer;
	key kPIVPointer;

	// 信哲
	public boolean BX1 = false;
	public boolean BX2 = false;

	// 定制初始化
	function XinzheCon() -> boolean {
		return (GetIssuedOrderIdBJ() == String2OrderIdBJ("smart"));
	}

	function XinzheAct() {
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
	}

	public function InitXinzhe(unit u) {
		trigger t;

		t = CreateTrigger();
		TriggerRegisterUnitEvent(t, u, EVENT_UNIT_ISSUED_POINT_ORDER);
		TriggerAddCondition(t, Condition(function XinzheCon));
		TriggerAddAction(t, function XinzheAct);

		t = null;
	}

	// 京剧
	function JingjuCondition() -> boolean {
		return GetUnitTypeId(GetFilterUnit()) == 'n006' || GetUnitTypeId(GetFilterUnit()) == 'n00Y';
	}

	function JingjuDiyuhuo() {
		RecoverUnitHP(GetEnumUnit(), 0.3);
	}

	function JingjuTimer() {
		timer t; integer id; unit u; group g;

		t = GetExpiredTimer();
		id = GetHandleId(t);
		u = LoadUnitHandle(LHTable, id, 1);
		g = GetUnitsOfPlayerMatching(GetOwningPlayer(u), Condition(function JingjuCondition));

		RecoverUnitHP(u, 0.1);
		ForGroupBJ(g, function JingjuDiyuhuo);

		u = null;
		DestroyGroup(g);
		t = null;
		g = null;
	}

	public function InitJingju(unit u) {
		timer t;

		t = CreateTimer();
		SaveUnitHandle(LHTable, GetHandleId(t), 1, u);
		TimerStart(t, 1, true, function JingjuTimer);

		t = null;
	}

	// 列表是否含有名单
	function TableHas(integer i) -> boolean {
		return HaveSavedBoolean(PIVTable, kPIV, i);
	}

	// 获取激活码
	function GetPIVCode(string s) -> integer {
		string result; integer i;

		result = s;
		i = 1;

		for (1 <= i <= 6) {
			result = I2S(StringHash(result));
		}

		return S2I(SubStringBJ(result, 2, StringLength(result)));
	}

	// 初始化玩家
	function InitPlayerPIV(player p) {
		if (isFirst) {
			isFirst = false;
			udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 2;
			BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5+2波的特权.");
			BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.");
		}

		sPIV[GetConvertedPlayerId(p)] = true;
		DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权，如果要关闭赞助功能,请输入-zz");
		debug SavePIV(p, GetPIVCode(GetPlayerName(p)));
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

	public function InitPIVHero(unit u) {
		debug InitDingzhi(u);

		if (IsPIV(GetOwningPlayer(u))) {
			UnitAddItemByIdSwapped('IXU1', u);
			SaveInteger(YDHT, GetHandleId(GetLastCreatedItem()), 0xA75AD423, GetConvertedPlayerId(GetOwningPlayer(u)));
			AdjustPlayerStateBJ(8000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD);
			Discolor(u);
			return;
		}

		if ((!IsPIV(GetOwningPlayer(u))) && IsColorSpin(GetOwningPlayer(u))) {
			Discolor(u);
		}

		debug GetPlatformLevelGold(GetOwningPlayer(u));
	}

	// VIP验证
	public function CertificatePIV(player p, string vCode) {
		if (vCode == null && TableHas(GetPIVCode(GetPlayerName(p)))) {
			InitPlayerPIV(p);
			return;
		}

		if (I2S(GetPIVCode(GetPlayerName(p))) == vCode) {
			InitPlayerPIV(p);
			return;
		}

		if (vCode != null) {
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！");
		}
	}

	// VIP验证
	public function ChatPIV() {
		string chat, vCode;

		chat = GetEventPlayerChatString();
		vCode = SubStringBJ(chat, 2, StringLength(chat));
		CertificatePIV(GetTriggerPlayer(), vCode);
	}

	// 对话框输入验证码
	function PIVDialogClick() {
		dialog d; integer i; string s; player p;

		d = GetClickedDialogBJ();
		i = 0;
		s = LoadStr(PIVTable, GetHandleId(d), kPIVStr);
		p = LoadPlayerHandle(PIVTable, GetHandleId(d), kPIVPlayer);

		// 验证
		if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable, GetHandleId(d), 10)) {
			CertificatePIV(p, s);
			FlushChildHashtable(PIVTable, GetHandleId(d));
			DialogDisplay(p, d, false);
			DialogClear(d);
			DialogDestroy(d);
			d = null;
			s = null;
			p = null;
			DestroyTrigger(GetTriggeringTrigger());
			return;
		}

		// 输入
		for (0 <= i <= 9) {
			if (GetClickedButtonBJ() == LoadButtonHandle(PIVTable, GetHandleId(d), i)) {
				s = s + I2S(i);
				SaveStr(PIVTable, GetHandleId(d), kPIVStr, s);
				break;
			}
		}

		DialogSetMessage(d, "激活码:" + s);
		DialogDisplay(p, d, true);

		d = null;
		s = null;
		p = null;
	}

	public function CreatePIVDialog() {
		trigger t; dialog d;

		if (IsPIV(GetTriggerPlayer())) {
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你已激活了永久赞助权限,无须重复激活！");
			return;
		}

		if (udg_H[GetConvertedPlayerId(GetTriggerPlayer())] != null) {
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r激活失败,请在选择英雄前激活！");
			return;
		}

		t = CreateTrigger();
		d = DialogCreate();
		DialogSetMessage(d, "请从第1位开始依次输入激活码");
		SaveButtonHandle(PIVTable, GetHandleId(d), 0, DialogAddButton(d, "0", '0'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 1, DialogAddButton(d, "1", '1'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 2, DialogAddButton(d, "2", '2'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 3, DialogAddButton(d, "3", '3'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 4, DialogAddButton(d, "4", '4'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 5, DialogAddButton(d, "5", '5'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 6, DialogAddButton(d, "6", '6'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 7, DialogAddButton(d, "7", '7'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 8, DialogAddButton(d, "8", '8'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 9, DialogAddButton(d, "9", '9'));
		SaveButtonHandle(PIVTable, GetHandleId(d), 10, DialogAddButton(d, "输入完毕|cffff6800(Esc)|r", 512));
		SaveStr(PIVTable, GetHandleId(d), kPIVStr, "");
		SavePlayerHandle(PIVTable, GetHandleId(d), kPIVPlayer, GetTriggerPlayer());
		SaveInteger(PIVTable, GetHandleId(d), kPIVPointer, 1);
		DialogDisplay(GetTriggerPlayer(), d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function PIVDialogClick);

		d = null;
		t = null;
	}

	// 关掉赞助指令
	public function CancelVIP(player p) {
		if (!IsPIV(p)) {
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你并非永久赞助,关闭失败.");
			return;
		}

		if (udg_H[GetConvertedPlayerId(p)] != null) {
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r该功能仅在选择英雄前输入有效.");
			return;
		}

		DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r关闭赞助功能成功.");
		sPIV[GetConvertedPlayerId(p)] = false;

		if (!hasPIV()) {
			isFirst = true;
			udg_I_Er_diansi[1] = 1;
			BJDebugMsg("|cFFFF66CC【消息】|r你们已失去在任意难度下获得24+5波的特权.");
			BJDebugMsg("|cFFFF66CC【消息】|r基地失去了额外的2次防护罩.");
		}
	}

	// 初始化
	public function InitAllPIV() {
		integer i;

		i = 1;
		for (1 <= i <= 6) {
			CertificatePIV(ConvertedPlayer(i), null);
			if (IsSavePIV(ConvertedPlayer(i), GetPIVCode(GetPlayerName(ConvertedPlayer(i))))) {
				CertificatePIV(ConvertedPlayer(i), I2S(GetPIVCode(GetPlayerName(ConvertedPlayer(i)))));
			}
		}
	}

	// 300秒后关闭入口
	public function ClosePIV() {
		FlushParentHashtable(PIVTable);
	}

	function onInit() {
		integer i; trigger t;

		i = 1;
		t = CreateTrigger();

		for (1 <= i <= 6) {
			sPIV[i] = false;
		}

		SaveBoolean(PIVTable,kPIV,560584534,true);
		// SaveBoolean(PIVTable,kPIV,805389327,true);
		//2.64:
		SaveBoolean(PIVTable,kPIV,1386963254,true);
		SaveBoolean(PIVTable,kPIV,920323633,true);
		SaveBoolean(PIVTable,kPIV,2028760546,true);
		SaveBoolean(PIVTable,kPIV,76404545,true);
		SaveBoolean(PIVTable,kPIV,772953595,true);
		SaveBoolean(PIVTable,kPIV,122150585,true);
		SaveBoolean(PIVTable,kPIV,1866394937,true);
		SaveBoolean(PIVTable,kPIV,668865994,true);
		SaveBoolean(PIVTable,kPIV,11465124,true);
		SaveBoolean(PIVTable,kPIV,1483305270,true);
		SaveBoolean(PIVTable,kPIV,89160614,true);
		SaveBoolean(PIVTable,kPIV,416503868,true);
		SaveBoolean(PIVTable,kPIV,366425370,true);
		SaveBoolean(PIVTable,kPIV,24682425,true);
		SaveBoolean(PIVTable,kPIV,838476900,true);
		SaveBoolean(PIVTable,kPIV,21235704,true);
		SaveBoolean(PIVTable,kPIV,259338775,true);
		SaveBoolean(PIVTable,kPIV,1945313488,true);
		SaveBoolean(PIVTable,kPIV,185409653,true);
		SaveBoolean(PIVTable,kPIV,848895504,true);
		SaveBoolean(PIVTable,kPIV,970908405,true);
		SaveBoolean(PIVTable,kPIV,1406966725,true);
		SaveBoolean(PIVTable,kPIV,476387019,true);
		SaveBoolean(PIVTable,kPIV,1407806903,true);
		SaveBoolean(PIVTable,kPIV,39350822,true);
		SaveBoolean(PIVTable,kPIV,947015907,true);
		SaveBoolean(PIVTable,kPIV,1524326451,true);
		SaveBoolean(PIVTable,kPIV,1199483482,true);
		SaveBoolean(PIVTable,kPIV,85817056,true);
		SaveBoolean(PIVTable,kPIV,1884797690,true);
		SaveBoolean(PIVTable,kPIV,138245006,true);
		SaveBoolean(PIVTable,kPIV,55883798,true);
		SaveBoolean(PIVTable,kPIV,237209239,true);
		SaveBoolean(PIVTable,kPIV,208207478,true);
		SaveBoolean(PIVTable,kPIV,764958705,true);
		SaveBoolean(PIVTable,kPIV,1556955637,true);
		SaveBoolean(PIVTable,kPIV,769983234,true);
		SaveBoolean(PIVTable,kPIV,1018574645,true);
		SaveBoolean(PIVTable,kPIV,1602970119,true);
		SaveBoolean(PIVTable,kPIV,1968941945,true);
		SaveBoolean(PIVTable,kPIV,281722192,true);
		SaveBoolean(PIVTable,kPIV,55774054,true);
		SaveBoolean(PIVTable,kPIV,1794669457,true);
		SaveBoolean(PIVTable,kPIV,4775200,true);
		SaveBoolean(PIVTable,kPIV,5934560,true);
		SaveBoolean(PIVTable,kPIV,1556972891,true);
		SaveBoolean(PIVTable,kPIV,1308263866,true);
		SaveBoolean(PIVTable,kPIV,819949938,true);
		SaveBoolean(PIVTable,kPIV,935082247,true);
		SaveBoolean(PIVTable,kPIV,874526666,true);
		SaveBoolean(PIVTable,kPIV,274143214,true);
		SaveBoolean(PIVTable,kPIV,242646218,true);
		SaveBoolean(PIVTable,kPIV,42780764,true);
		SaveBoolean(PIVTable,kPIV,15784280,true);
		SaveBoolean(PIVTable,kPIV,1846898150,true);
		SaveBoolean(PIVTable,kPIV,162418494,true);
		SaveBoolean(PIVTable,kPIV,1028656343,true);
		SaveBoolean(PIVTable,kPIV,871412081,true);
		SaveBoolean(PIVTable,kPIV,724251537,true);
		SaveBoolean(PIVTable,kPIV,572061793,true);
		SaveBoolean(PIVTable,kPIV,1562039753,true);
		SaveBoolean(PIVTable,kPIV,27535638,true);
		SaveBoolean(PIVTable,kPIV,2856770,true);
		SaveBoolean(PIVTable,kPIV,29748027,true);
		SaveBoolean(PIVTable,kPIV,78547297,true);
		SaveBoolean(PIVTable,kPIV,1691009533,true);
		SaveBoolean(PIVTable,kPIV,108509507,true);
		SaveBoolean(PIVTable,kPIV,863575409,true);
		SaveBoolean(PIVTable,kPIV,47256210,true);
		SaveBoolean(PIVTable,kPIV,386002974,true);
		SaveBoolean(PIVTable,kPIV,253021838,true);
		SaveBoolean(PIVTable,kPIV,4943346,true);
		SaveBoolean(PIVTable,kPIV,655724335,true);
		SaveBoolean(PIVTable,kPIV,1300925723,true);
		SaveBoolean(PIVTable,kPIV,526128524,true);
		SaveBoolean(PIVTable,kPIV,527932086,true);
		SaveBoolean(PIVTable,kPIV,491536351,true);
		SaveBoolean(PIVTable,kPIV,765412438,true);
		SaveBoolean(PIVTable,kPIV,1807059619,true);
		SaveBoolean(PIVTable,kPIV,158219634,true);
		SaveBoolean(PIVTable,kPIV,812702019,true);
		SaveBoolean(PIVTable,kPIV,93444649,true);
		SaveBoolean(PIVTable,kPIV,1652902274,true);
		SaveBoolean(PIVTable,kPIV,42083283,true);
		SaveBoolean(PIVTable,kPIV,79706688,true);
		SaveBoolean(PIVTable,kPIV,81738293,true);
		SaveBoolean(PIVTable,kPIV,3334224,true);
		SaveBoolean(PIVTable,kPIV,705577564,true);
		SaveBoolean(PIVTable,kPIV,1834015365,true);
		SaveBoolean(PIVTable,kPIV,249745215,true);
		SaveBoolean(PIVTable,kPIV,936721376,true);
		SaveBoolean(PIVTable,kPIV,96122563,true);
		SaveBoolean(PIVTable,kPIV,242232349,true);
		SaveBoolean(PIVTable,kPIV,99200445,true);
		SaveBoolean(PIVTable,kPIV,17295550,true);
		SaveBoolean(PIVTable,kPIV,192227001,true);
		SaveBoolean(PIVTable,kPIV,500660555,true);
		SaveBoolean(PIVTable,kPIV,1321008731,true);
		SaveBoolean(PIVTable,kPIV,917107829,true);
		SaveBoolean(PIVTable,kPIV,1277254148,true);
		SaveBoolean(PIVTable,kPIV,556905161,true);
		SaveBoolean(PIVTable,kPIV,55162747,true);
		SaveBoolean(PIVTable,kPIV,395306233,true);
		SaveBoolean(PIVTable,kPIV,442043076,true);
		SaveBoolean(PIVTable,kPIV,987238722,true);
		SaveBoolean(PIVTable,kPIV,454437652,true);
		SaveBoolean(PIVTable,kPIV,50731632,true);
		SaveBoolean(PIVTable,kPIV,1088397663,true);
		SaveBoolean(PIVTable,kPIV,1193547207,true);
		SaveBoolean(PIVTable,kPIV,263166628,true);
		SaveBoolean(PIVTable,kPIV,991993981,true);
		SaveBoolean(PIVTable,kPIV,343567476,true);
		SaveBoolean(PIVTable,kPIV,41292785,true);
		SaveBoolean(PIVTable,kPIV,199066564,true);
		SaveBoolean(PIVTable,kPIV,58301014,true);
		SaveBoolean(PIVTable,kPIV,975300858,true);
		SaveBoolean(PIVTable,kPIV,24962383,true);
		SaveBoolean(PIVTable,kPIV,6484930,true);
		SaveBoolean(PIVTable,kPIV,922261063,true);
		SaveBoolean(PIVTable,kPIV,9423109,true);
		SaveBoolean(PIVTable,kPIV,388868057,true);
		SaveBoolean(PIVTable,kPIV,61444830,true);
		SaveBoolean(PIVTable,kPIV,89183810,true);
		SaveBoolean(PIVTable,kPIV,255054188,true);
		SaveBoolean(PIVTable,kPIV,589040132,true);
		SaveBoolean(PIVTable,kPIV,46380924,true);

		TriggerRegisterPlayerChatEvent(t, Player(0), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(1), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(2), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(3), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(4), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(5), "##", true);
		TriggerAddAction(t, function CreatePIVDialog);

		t = null;
	}
}
//! endzinc
#endif


