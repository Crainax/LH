
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
library VIP requires LHBase,Beast,Version,Attr,SpellBase,Juexing,MallItem {


	public struct vip [] { //用结构体更舒服

		public static boolean isFirst = true;
		public static hashtable table = InitHashtable();
		boolean v; //玩家是否是VIP

		//玩家是否是VIP
		public static method is (player p)  -> boolean {
			return thistype[GetConvertedPlayerId(p)].v;
		}

		//当局游戏是否存在VIP
		public static method has ()  -> boolean {
			integer i;
			for (1 <= i <= MAX_PLAYER_COUNT) {
				if (thistype[i].v) return true;
			}
			return false;
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

		//初始化某个玩家
		static method initPlayer (player p)  {
			if (vip.isFirst) {
				vip.isFirst = false;
				udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 2;
				// BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5+2波的特权.");
				// BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.");
			}

			if (!thistype[GetConvertedPlayerId(p)].v) {
				thistype[GetConvertedPlayerId(p)].v = true;
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r永久赞助特权激活成功,如果要关闭赞助功能,请输入-zz");
			}
			debug SaveVIP(p, vip.getCode(GetPlayerName(p)));
		}


		// VIP验证
		static method certificate(player p, string vCode) {
			if (vCode == null && HaveSavedBoolean(table, kVIP, vip.getCode(GetPlayerName(p)))) {
				vip.initPlayer(p);
				return;
			}

			if (I2S(vip.getCode(GetPlayerName(p))) == vCode) {
				vip.initPlayer(p);
				return;
			}

			if (vCode != null) {
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r激活码不正确！");
			}
		}

		static method onInit () {
			integer i; trigger t; timer ti;

			i = 1;
			t = CreateTrigger();


			ti = CreateTimer();
			TimerStart(ti,300,false,function (){ //300秒关闭入口
				timer ti = GetExpiredTimer();
				FlushParentHashtable(table);
				PauseTimer(ti);
				DestroyTimer(ti);
				ti = null;
			});
			ti = null;

			SaveBoolean(table,kVIP,560584534,true);
			SaveBoolean(table,kVIP,1386963254,true);
			SaveBoolean(table,kVIP,920323633,true);
			SaveBoolean(table,kVIP,2028760546,true);
			SaveBoolean(table,kVIP,76404545,true);
			SaveBoolean(table,kVIP,772953595,true);
			SaveBoolean(table,kVIP,122150585,true);
			SaveBoolean(table,kVIP,1866394937,true);
			SaveBoolean(table,kVIP,668865994,true);
			SaveBoolean(table,kVIP,11465124,true);
			SaveBoolean(table,kVIP,1483305270,true);
			SaveBoolean(table,kVIP,89160614,true);
			SaveBoolean(table,kVIP,416503868,true);
			SaveBoolean(table,kVIP,366425370,true);
			SaveBoolean(table,kVIP,24682425,true);
			SaveBoolean(table,kVIP,838476900,true);
			SaveBoolean(table,kVIP,21235704,true);
			SaveBoolean(table,kVIP,259338775,true);
			SaveBoolean(table,kVIP,1945313488,true);
			SaveBoolean(table,kVIP,185409653,true);
			SaveBoolean(table,kVIP,848895504,true);
			SaveBoolean(table,kVIP,970908405,true);
			SaveBoolean(table,kVIP,1406966725,true);
			SaveBoolean(table,kVIP,476387019,true);
			SaveBoolean(table,kVIP,1407806903,true);
			SaveBoolean(table,kVIP,39350822,true);
			SaveBoolean(table,kVIP,947015907,true);
			SaveBoolean(table,kVIP,1524326451,true);
			SaveBoolean(table,kVIP,1199483482,true);
			SaveBoolean(table,kVIP,85817056,true);
			SaveBoolean(table,kVIP,1884797690,true);
			SaveBoolean(table,kVIP,138245006,true);
			SaveBoolean(table,kVIP,55883798,true);
			SaveBoolean(table,kVIP,237209239,true);
			SaveBoolean(table,kVIP,208207478,true);
			SaveBoolean(table,kVIP,764958705,true);
			SaveBoolean(table,kVIP,1556955637,true);
			SaveBoolean(table,kVIP,769983234,true);
			SaveBoolean(table,kVIP,1018574645,true);
			SaveBoolean(table,kVIP,1602970119,true);
			SaveBoolean(table,kVIP,1968941945,true);
			SaveBoolean(table,kVIP,281722192,true);
			SaveBoolean(table,kVIP,55774054,true);
			SaveBoolean(table,kVIP,1794669457,true);
			SaveBoolean(table,kVIP,4775200,true);
			SaveBoolean(table,kVIP,5934560,true);
			SaveBoolean(table,kVIP,1556972891,true);
			SaveBoolean(table,kVIP,1308263866,true);
			SaveBoolean(table,kVIP,819949938,true);
			SaveBoolean(table,kVIP,935082247,true);
			SaveBoolean(table,kVIP,874526666,true);
			SaveBoolean(table,kVIP,274143214,true);
			SaveBoolean(table,kVIP,242646218,true);
			SaveBoolean(table,kVIP,42780764,true);
			SaveBoolean(table,kVIP,15784280,true);
			SaveBoolean(table,kVIP,1846898150,true);
			SaveBoolean(table,kVIP,162418494,true);
			SaveBoolean(table,kVIP,1028656343,true);
			SaveBoolean(table,kVIP,871412081,true);
			SaveBoolean(table,kVIP,724251537,true);
			SaveBoolean(table,kVIP,572061793,true);
			SaveBoolean(table,kVIP,1562039753,true);
			SaveBoolean(table,kVIP,27535638,true);
			SaveBoolean(table,kVIP,2856770,true);
			SaveBoolean(table,kVIP,29748027,true);
			SaveBoolean(table,kVIP,78547297,true);
			SaveBoolean(table,kVIP,1691009533,true);
			SaveBoolean(table,kVIP,108509507,true);
			SaveBoolean(table,kVIP,863575409,true);
			SaveBoolean(table,kVIP,47256210,true);
			SaveBoolean(table,kVIP,386002974,true);
			SaveBoolean(table,kVIP,253021838,true);
			SaveBoolean(table,kVIP,4943346,true);
			SaveBoolean(table,kVIP,655724335,true);
			SaveBoolean(table,kVIP,1300925723,true);
			SaveBoolean(table,kVIP,526128524,true);
			SaveBoolean(table,kVIP,527932086,true);
			SaveBoolean(table,kVIP,491536351,true);
			SaveBoolean(table,kVIP,765412438,true);
			SaveBoolean(table,kVIP,1807059619,true);
			SaveBoolean(table,kVIP,158219634,true);
			SaveBoolean(table,kVIP,812702019,true);
			SaveBoolean(table,kVIP,93444649,true);
			SaveBoolean(table,kVIP,1652902274,true);
			SaveBoolean(table,kVIP,42083283,true);
			SaveBoolean(table,kVIP,79706688,true);
			SaveBoolean(table,kVIP,81738293,true);
			SaveBoolean(table,kVIP,3334224,true);
			SaveBoolean(table,kVIP,705577564,true);
			SaveBoolean(table,kVIP,1834015365,true);
			SaveBoolean(table,kVIP,249745215,true);
			SaveBoolean(table,kVIP,936721376,true);
			SaveBoolean(table,kVIP,96122563,true);
			SaveBoolean(table,kVIP,242232349,true);
			SaveBoolean(table,kVIP,99200445,true);
			SaveBoolean(table,kVIP,17295550,true);
			SaveBoolean(table,kVIP,192227001,true);
			SaveBoolean(table,kVIP,500660555,true);
			SaveBoolean(table,kVIP,1321008731,true);
			SaveBoolean(table,kVIP,917107829,true);
			SaveBoolean(table,kVIP,1277254148,true);
			SaveBoolean(table,kVIP,556905161,true);
			SaveBoolean(table,kVIP,55162747,true);
			SaveBoolean(table,kVIP,395306233,true);
			SaveBoolean(table,kVIP,442043076,true);
			SaveBoolean(table,kVIP,987238722,true);
			SaveBoolean(table,kVIP,454437652,true);
			SaveBoolean(table,kVIP,50731632,true);
			SaveBoolean(table,kVIP,1088397663,true);
			SaveBoolean(table,kVIP,1193547207,true);
			SaveBoolean(table,kVIP,263166628,true);
			SaveBoolean(table,kVIP,991993981,true);
			SaveBoolean(table,kVIP,343567476,true);
			SaveBoolean(table,kVIP,41292785,true);
			SaveBoolean(table,kVIP,199066564,true);
			SaveBoolean(table,kVIP,58301014,true);
			SaveBoolean(table,kVIP,975300858,true);
			SaveBoolean(table,kVIP,24962383,true);
			SaveBoolean(table,kVIP,6484930,true);
			SaveBoolean(table,kVIP,922261063,true);
			SaveBoolean(table,kVIP,9423109,true);
			SaveBoolean(table,kVIP,388868057,true);
			SaveBoolean(table,kVIP,61444830,true);
			SaveBoolean(table,kVIP,89183810,true);
			SaveBoolean(table,kVIP,255054188,true);
			SaveBoolean(table,kVIP,589040132,true);
			SaveBoolean(table,kVIP,46380924,true);

			TriggerRegisterPlayerChatEvent(t, Player(0), "##", true);
			TriggerRegisterPlayerChatEvent(t, Player(1), "##", true);
			TriggerRegisterPlayerChatEvent(t, Player(2), "##", true);
			TriggerRegisterPlayerChatEvent(t, Player(3), "##", true);
			TriggerRegisterPlayerChatEvent(t, Player(4), "##", true);
			TriggerRegisterPlayerChatEvent(t, Player(5), "##", true);
			TriggerAddAction(t, function () {
				trigger t; dialog d;

				if (vip.is(GetTriggerPlayer())) {
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
				SaveButtonHandle(table, GetHandleId(d), 0, DialogAddButton(d, "0", '0'));
				SaveButtonHandle(table, GetHandleId(d), 1, DialogAddButton(d, "1", '1'));
				SaveButtonHandle(table, GetHandleId(d), 2, DialogAddButton(d, "2", '2'));
				SaveButtonHandle(table, GetHandleId(d), 3, DialogAddButton(d, "3", '3'));
				SaveButtonHandle(table, GetHandleId(d), 4, DialogAddButton(d, "4", '4'));
				SaveButtonHandle(table, GetHandleId(d), 5, DialogAddButton(d, "5", '5'));
				SaveButtonHandle(table, GetHandleId(d), 6, DialogAddButton(d, "6", '6'));
				SaveButtonHandle(table, GetHandleId(d), 7, DialogAddButton(d, "7", '7'));
				SaveButtonHandle(table, GetHandleId(d), 8, DialogAddButton(d, "8", '8'));
				SaveButtonHandle(table, GetHandleId(d), 9, DialogAddButton(d, "9", '9'));
				SaveButtonHandle(table, GetHandleId(d), 10, DialogAddButton(d, "输入完毕|cffff6800(Esc)|r", 512));
				SaveStr(table, GetHandleId(d), kVIPStr, "");
				SavePlayerHandle(table, GetHandleId(d), kVIPPlayer, GetTriggerPlayer());
				SaveInteger(table, GetHandleId(d), kVIPPointer, 1);
				DialogDisplay(GetTriggerPlayer(), d, true);
				TriggerRegisterDialogEvent(t, d);
				TriggerAddAction(t, function (){

					dialog d; integer i; string s; player p;

					d = GetClickedDialogBJ();
					i = 0;
					s = LoadStr(table, GetHandleId(d), kVIPStr);
					p = LoadPlayerHandle(table, GetHandleId(d), kVIPPlayer);

					// 验证
					if (GetClickedButtonBJ() == LoadButtonHandle(table, GetHandleId(d), 10)) {
						certificate(p, s);
						FlushChildHashtable(table, GetHandleId(d));
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
						if (GetClickedButtonBJ() == LoadButtonHandle(table, GetHandleId(d), i)) {
							s = s + I2S(i);
							SaveStr(table, GetHandleId(d), kVIPStr, s);
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

			mallItem.init("VIP1");
			mallItem.setTech("VIP1", 'RMI3');
			mallItem.onReady(function () -> boolean {
				player p;
				integer index;
				for (1 <= index <= MAX_PLAYER_COUNT) {
					p = ConvertedPlayer(index);
					if (mallItem.hasByPlayer(p, "VIP1") && (GetPlayerSlotState(ConvertedPlayer(index)) == PLAYER_SLOT_STATE_PLAYING) && (GetPlayerController(ConvertedPlayer(index)) == MAP_CONTROL_USER)) {
						if (!thistype[index].v) {
							thistype[index].v = true;
							DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r永久赞助特权激活成功,如果要关闭赞助功能,请输入-zz");
							if (vip.isFirst) {
								vip.isFirst = false;
								udg_I_Er_diansi[1] = udg_I_Er_diansi[1] + 2;
								// BJDebugMsg("|cFFFF66CC【消息】|r你们已激活在任意难度下获得24+5+2波的特权.");
								// BJDebugMsg("|cFFFF66CC【消息】|r基地获得了额外的2次防护罩.");
							}
						}
					}
				}
				p = null;
				return true;
			});


			//在游戏开始1.0秒后再调用
			t = CreateTrigger();
			TriggerRegisterTimerEventSingle(t,1.0);
			TriggerAddCondition(t,Condition(function (){ //1.0秒初始赞助内容
				integer i;
				i = 1;
				for (1 <= i <= 6) {
					certificate(ConvertedPlayer(i), null);
					if (IsSaveVIP(ConvertedPlayer(i), vip.getCode(GetPlayerName(ConvertedPlayer(i))))) {
						certificate(ConvertedPlayer(i), I2S(vip.getCode(GetPlayerName(ConvertedPlayer(i)))));
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

				if (!vip.is(p)) {
					DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你并非永久赞助,关闭失败.");
					return;
				}

				if (udg_H[GetConvertedPlayerId(p)] != null) {
					DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r该功能仅在选择英雄前输入有效.");
					return;
				}

				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r关闭赞助功能成功.");
				thistype[GetConvertedPlayerId(p)].v = false;

				if (!vip.has()) {
					vip.isFirst = true;
					udg_I_Er_diansi[1] = 1;
					BJDebugMsg("|cFFFF66CC【消息】|r你们已失去在任意难度下获得24+5波的特权.");
					BJDebugMsg("|cFFFF66CC【消息】|r基地失去了额外的2次防护罩.");
				}

				p = null;
			}));
			t = null;
		}
	}

}


#undef kVIP
#undef kVIPStr
#undef kVIPPlayer
#undef kVIPPointer


//! endzinc
#endif


