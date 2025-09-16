
#ifndef VIPIncluded
#define VIPIncluded

#include  "edit/LHBase.j"
#include  "edit/Attr.j"
#include  "edit/SpellBase.j"
#include  "edit/Juexing.j"

#define kVIP  16423172
#define kVIPStr  164231724
#define kVIPPlayer  164231726
#define kVIPPointer  164231728

//! zinc
library VIP requires LHBase,Beast,Version,Attr,SpellBase,Juexing {

	boolean isFirst = true;
	hashtable VIPTable = InitHashtable();

	public struct vip [] { //用结构体更舒服

		public boolean is; //玩家是否是VIP

		public static method is (player p)  -> boolean {
			return thistype[GetConvertedPlayerId(p)].is;
		}

		public static method has ()  -> boolean {
			integer i;
			for (1 <= i <= MAX_PLAYER_COUNT) {
				if (thistype[i].is) return true;
			}
			return false
		}

		// 获取激活码
		public static method getCode (string s)  -> integer {
			string result; integer i;

			result = s;
			i = 1;

			for (1 <= i <= 6) {
				result = I2S(StringHash(result));
			}

			return S2I(SubStringBJ(result, 2, StringLength(result)));
		}

	}


	// 初始化玩家
	function InitPlayerVIP(player p) {
		if (isFirst) {
			isFirst = false;
			udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 2;
			// BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5+2波的特权.");
			// BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.");
		}

		sVIP[GetConvertedPlayerId(p)] = true;
		DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活成功,你已经获得永久赞助特权，如果要关闭赞助功能,请输入-zz");
		debug SaveVIP(p, vip.getCode(GetPlayerName(p)));
	}


	// VIP验证
	public function CertificateVIP(player p, string vCode) {
		if (vCode == null && HaveSavedBoolean(VIPTable, kVIP, vip.getCode(GetPlayerName(p)))) {
			InitPlayerVIP(p);
			return;
		}

		if (I2S(vip.getCode(GetPlayerName(p))) == vCode) {
			InitPlayerVIP(p);
			return;
		}

		if (vCode != null) {
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！");
		}
	}

	function onInit() {
		integer i; trigger t; timer ti;

		i = 1;
		t = CreateTrigger();

		for (1 <= i <= 6) {
			sVIP[i] = false;
		}

		ti = CreateTimer();
		TimerStart(ti,300,false,function (){ //300秒关闭入口
			timer ti = GetExpiredTimer();
			FlushParentHashtable(VIPTable);
			PauseTimer(ti);
			DestroyTimer(ti);
			ti = null;
		});
		ti = null;

		SaveBoolean(VIPTable,kVIP,560584534,true);
		SaveBoolean(VIPTable,kVIP,1386963254,true);
		SaveBoolean(VIPTable,kVIP,920323633,true);
		SaveBoolean(VIPTable,kVIP,2028760546,true);
		SaveBoolean(VIPTable,kVIP,76404545,true);
		SaveBoolean(VIPTable,kVIP,772953595,true);
		SaveBoolean(VIPTable,kVIP,122150585,true);
		SaveBoolean(VIPTable,kVIP,1866394937,true);
		SaveBoolean(VIPTable,kVIP,668865994,true);
		SaveBoolean(VIPTable,kVIP,11465124,true);
		SaveBoolean(VIPTable,kVIP,1483305270,true);
		SaveBoolean(VIPTable,kVIP,89160614,true);
		SaveBoolean(VIPTable,kVIP,416503868,true);
		SaveBoolean(VIPTable,kVIP,366425370,true);
		SaveBoolean(VIPTable,kVIP,24682425,true);
		SaveBoolean(VIPTable,kVIP,838476900,true);
		SaveBoolean(VIPTable,kVIP,21235704,true);
		SaveBoolean(VIPTable,kVIP,259338775,true);
		SaveBoolean(VIPTable,kVIP,1945313488,true);
		SaveBoolean(VIPTable,kVIP,185409653,true);
		SaveBoolean(VIPTable,kVIP,848895504,true);
		SaveBoolean(VIPTable,kVIP,970908405,true);
		SaveBoolean(VIPTable,kVIP,1406966725,true);
		SaveBoolean(VIPTable,kVIP,476387019,true);
		SaveBoolean(VIPTable,kVIP,1407806903,true);
		SaveBoolean(VIPTable,kVIP,39350822,true);
		SaveBoolean(VIPTable,kVIP,947015907,true);
		SaveBoolean(VIPTable,kVIP,1524326451,true);
		SaveBoolean(VIPTable,kVIP,1199483482,true);
		SaveBoolean(VIPTable,kVIP,85817056,true);
		SaveBoolean(VIPTable,kVIP,1884797690,true);
		SaveBoolean(VIPTable,kVIP,138245006,true);
		SaveBoolean(VIPTable,kVIP,55883798,true);
		SaveBoolean(VIPTable,kVIP,237209239,true);
		SaveBoolean(VIPTable,kVIP,208207478,true);
		SaveBoolean(VIPTable,kVIP,764958705,true);
		SaveBoolean(VIPTable,kVIP,1556955637,true);
		SaveBoolean(VIPTable,kVIP,769983234,true);
		SaveBoolean(VIPTable,kVIP,1018574645,true);
		SaveBoolean(VIPTable,kVIP,1602970119,true);
		SaveBoolean(VIPTable,kVIP,1968941945,true);
		SaveBoolean(VIPTable,kVIP,281722192,true);
		SaveBoolean(VIPTable,kVIP,55774054,true);
		SaveBoolean(VIPTable,kVIP,1794669457,true);
		SaveBoolean(VIPTable,kVIP,4775200,true);
		SaveBoolean(VIPTable,kVIP,5934560,true);
		SaveBoolean(VIPTable,kVIP,1556972891,true);
		SaveBoolean(VIPTable,kVIP,1308263866,true);
		SaveBoolean(VIPTable,kVIP,819949938,true);
		SaveBoolean(VIPTable,kVIP,935082247,true);
		SaveBoolean(VIPTable,kVIP,874526666,true);
		SaveBoolean(VIPTable,kVIP,274143214,true);
		SaveBoolean(VIPTable,kVIP,242646218,true);
		SaveBoolean(VIPTable,kVIP,42780764,true);
		SaveBoolean(VIPTable,kVIP,15784280,true);
		SaveBoolean(VIPTable,kVIP,1846898150,true);
		SaveBoolean(VIPTable,kVIP,162418494,true);
		SaveBoolean(VIPTable,kVIP,1028656343,true);
		SaveBoolean(VIPTable,kVIP,871412081,true);
		SaveBoolean(VIPTable,kVIP,724251537,true);
		SaveBoolean(VIPTable,kVIP,572061793,true);
		SaveBoolean(VIPTable,kVIP,1562039753,true);
		SaveBoolean(VIPTable,kVIP,27535638,true);
		SaveBoolean(VIPTable,kVIP,2856770,true);
		SaveBoolean(VIPTable,kVIP,29748027,true);
		SaveBoolean(VIPTable,kVIP,78547297,true);
		SaveBoolean(VIPTable,kVIP,1691009533,true);
		SaveBoolean(VIPTable,kVIP,108509507,true);
		SaveBoolean(VIPTable,kVIP,863575409,true);
		SaveBoolean(VIPTable,kVIP,47256210,true);
		SaveBoolean(VIPTable,kVIP,386002974,true);
		SaveBoolean(VIPTable,kVIP,253021838,true);
		SaveBoolean(VIPTable,kVIP,4943346,true);
		SaveBoolean(VIPTable,kVIP,655724335,true);
		SaveBoolean(VIPTable,kVIP,1300925723,true);
		SaveBoolean(VIPTable,kVIP,526128524,true);
		SaveBoolean(VIPTable,kVIP,527932086,true);
		SaveBoolean(VIPTable,kVIP,491536351,true);
		SaveBoolean(VIPTable,kVIP,765412438,true);
		SaveBoolean(VIPTable,kVIP,1807059619,true);
		SaveBoolean(VIPTable,kVIP,158219634,true);
		SaveBoolean(VIPTable,kVIP,812702019,true);
		SaveBoolean(VIPTable,kVIP,93444649,true);
		SaveBoolean(VIPTable,kVIP,1652902274,true);
		SaveBoolean(VIPTable,kVIP,42083283,true);
		SaveBoolean(VIPTable,kVIP,79706688,true);
		SaveBoolean(VIPTable,kVIP,81738293,true);
		SaveBoolean(VIPTable,kVIP,3334224,true);
		SaveBoolean(VIPTable,kVIP,705577564,true);
		SaveBoolean(VIPTable,kVIP,1834015365,true);
		SaveBoolean(VIPTable,kVIP,249745215,true);
		SaveBoolean(VIPTable,kVIP,936721376,true);
		SaveBoolean(VIPTable,kVIP,96122563,true);
		SaveBoolean(VIPTable,kVIP,242232349,true);
		SaveBoolean(VIPTable,kVIP,99200445,true);
		SaveBoolean(VIPTable,kVIP,17295550,true);
		SaveBoolean(VIPTable,kVIP,192227001,true);
		SaveBoolean(VIPTable,kVIP,500660555,true);
		SaveBoolean(VIPTable,kVIP,1321008731,true);
		SaveBoolean(VIPTable,kVIP,917107829,true);
		SaveBoolean(VIPTable,kVIP,1277254148,true);
		SaveBoolean(VIPTable,kVIP,556905161,true);
		SaveBoolean(VIPTable,kVIP,55162747,true);
		SaveBoolean(VIPTable,kVIP,395306233,true);
		SaveBoolean(VIPTable,kVIP,442043076,true);
		SaveBoolean(VIPTable,kVIP,987238722,true);
		SaveBoolean(VIPTable,kVIP,454437652,true);
		SaveBoolean(VIPTable,kVIP,50731632,true);
		SaveBoolean(VIPTable,kVIP,1088397663,true);
		SaveBoolean(VIPTable,kVIP,1193547207,true);
		SaveBoolean(VIPTable,kVIP,263166628,true);
		SaveBoolean(VIPTable,kVIP,991993981,true);
		SaveBoolean(VIPTable,kVIP,343567476,true);
		SaveBoolean(VIPTable,kVIP,41292785,true);
		SaveBoolean(VIPTable,kVIP,199066564,true);
		SaveBoolean(VIPTable,kVIP,58301014,true);
		SaveBoolean(VIPTable,kVIP,975300858,true);
		SaveBoolean(VIPTable,kVIP,24962383,true);
		SaveBoolean(VIPTable,kVIP,6484930,true);
		SaveBoolean(VIPTable,kVIP,922261063,true);
		SaveBoolean(VIPTable,kVIP,9423109,true);
		SaveBoolean(VIPTable,kVIP,388868057,true);
		SaveBoolean(VIPTable,kVIP,61444830,true);
		SaveBoolean(VIPTable,kVIP,89183810,true);
		SaveBoolean(VIPTable,kVIP,255054188,true);
		SaveBoolean(VIPTable,kVIP,589040132,true);
		SaveBoolean(VIPTable,kVIP,46380924,true);

		TriggerRegisterPlayerChatEvent(t, Player(0), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(1), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(2), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(3), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(4), "##", true);
		TriggerRegisterPlayerChatEvent(t, Player(5), "##", true);
		TriggerAddAction(t, function () {
			trigger t; dialog d;

			if (IsVIP(GetTriggerPlayer())) {
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
			SaveButtonHandle(VIPTable, GetHandleId(d), 0, DialogAddButton(d, "0", '0'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 1, DialogAddButton(d, "1", '1'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 2, DialogAddButton(d, "2", '2'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 3, DialogAddButton(d, "3", '3'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 4, DialogAddButton(d, "4", '4'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 5, DialogAddButton(d, "5", '5'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 6, DialogAddButton(d, "6", '6'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 7, DialogAddButton(d, "7", '7'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 8, DialogAddButton(d, "8", '8'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 9, DialogAddButton(d, "9", '9'));
			SaveButtonHandle(VIPTable, GetHandleId(d), 10, DialogAddButton(d, "输入完毕|cffff6800(Esc)|r", 512));
			SaveStr(VIPTable, GetHandleId(d), kVIPStr, "");
			SavePlayerHandle(VIPTable, GetHandleId(d), kVIPPlayer, GetTriggerPlayer());
			SaveInteger(VIPTable, GetHandleId(d), kVIPPointer, 1);
			DialogDisplay(GetTriggerPlayer(), d, true);
			TriggerRegisterDialogEvent(t, d);
			TriggerAddAction(t, function (){

				dialog d; integer i; string s; player p;

				d = GetClickedDialogBJ();
				i = 0;
				s = LoadStr(VIPTable, GetHandleId(d), kVIPStr);
				p = LoadPlayerHandle(VIPTable, GetHandleId(d), kVIPPlayer);

				// 验证
				if (GetClickedButtonBJ() == LoadButtonHandle(VIPTable, GetHandleId(d), 10)) {
					CertificateVIP(p, s);
					FlushChildHashtable(VIPTable, GetHandleId(d));
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
					if (GetClickedButtonBJ() == LoadButtonHandle(VIPTable, GetHandleId(d), i)) {
						s = s + I2S(i);
						SaveStr(VIPTable, GetHandleId(d), kVIPStr, s);
						break;
					}
				}

				DialogSetMessage(d, "激活码:" + s);
				DialogDisplay(p, d, true);

				d = null;
				s = null;
				p = null;

			});

			d = null;
			t = null;
		});


		//在游戏开始1.0秒后再调用
		t = CreateTrigger();
		TriggerRegisterTimerEventSingle(t,1.0);
		TriggerAddCondition(t,Condition(function (){ //1.0秒初始赞助内容

			integer i;

			i = 1;
			for (1 <= i <= 6) {
				CertificateVIP(ConvertedPlayer(i), null);
				if (IsSaveVIP(ConvertedPlayer(i), vip.getCode(GetPlayerName(ConvertedPlayer(i))))) {
					CertificateVIP(ConvertedPlayer(i), I2S(vip.getCode(GetPlayerName(ConvertedPlayer(i)))));
				}
			}

			DestroyTrigger(GetTriggeringTrigger());
		}));
		//mallItem
		t = CreateTrigger();
		TriggerRegisterPlayerChatEvent(t, Player(0), "-zz", true);
		TriggerRegisterPlayerChatEvent(t, Player(1), "-zz", true);
		TriggerRegisterPlayerChatEvent(t, Player(2), "-zz", true);
		TriggerRegisterPlayerChatEvent(t, Player(3), "-zz", true);
		TriggerRegisterPlayerChatEvent(t, Player(4), "-zz", true);
		TriggerRegisterPlayerChatEvent(t, Player(5), "-zz", true);
		TriggerAddCondition(t, Condition(function () { //关闭赞助
			player p = GetTriggerPlayer();

			if (!IsVIP(p)) {
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你并非永久赞助,关闭失败.");
				return;
			}

			if (udg_H[GetConvertedPlayerId(p)] != null) {
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r该功能仅在选择英雄前输入有效.");
				return;
			}

			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r关闭赞助功能成功.");
			sVIP[GetConvertedPlayerId(p)] = false;

			if (!hasVIP()) {
				isFirst = true;
				udg_I_Er_diansi[1] = 1;
				BJDebugMsg("|cFFFF66CC【消息】|r你们已失去在任意难度下获得24+5波的特权.");
				BJDebugMsg("|cFFFF66CC【消息】|r基地失去了额外的2次防护罩.");
			}

			p = null;
		}));
		t = null;

		t = null;
	}
}


#undef kVIP
#undef kVIPStr
#undef kVIPPlayer
#undef kVIPPointer


//! endzinc
#endif


