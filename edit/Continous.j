
#ifndef ContinousIncluded
#define ContinousIncluded

#include  "edit/LHBase.j"
#include  "edit/item.j"
#include  "edit/Huodong.j"
#include  "edit/Achievement.j"
///#include  "edit/Jizi.j"

// 指令 qd：打开当前玩家的签到对话框，便于多次测试 UI。
// 指令 qdt：运行断言测试 ContAssertTests，覆盖：
// 连续签到 +1 不变基准
// 当天二次登录不变
// 非连续登录：无特权重置，有特权不重置按 +1 并重设基准
// 有效天数计算：GetEffectiveDays(p) == IConDays + (hasPass ? 3 : 0)

//! zinc
library Continous requires LHBase,ItemBase,Achievement,Huodong,MallItem {

	public{
		integer IConDays[];
		integer ILastTime[];
		boolean BWuxing[];
	}

	// 获取签到的金币奖励
	function GetGoldReward(integer day) -> integer {
		return I3(day == 1, 500, R2I((SquareRoot(day) + 2.) * 300.));
	}

	#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
	private boolean Cont_hasPass_overrideEnabled = false;
	private boolean Cont_hasPass_overrideValue = false;
	private boolean Cont_timeOverrideEnabled = false;
	private integer Cont_timeOverrideValue = 1758006447; // 默认测试时间戳
	#define DzAPI_Map_GetGameStartTime() Cont_timeOverrideValue

	// 测试专用的时间获取函数
	function ContGetGameTime() -> integer {
		if (Cont_timeOverrideEnabled) {
			return Cont_timeOverrideValue;
		}
		return DzAPI_Map_GetGameStartTime();
	}

	// 测试专用的GetContinousDay
	function ContGetContinousDay(player p) -> integer {
		integer gameTime = ContGetGameTime();
		return (gameTime - ILastTime[GetConvertedPlayerId(p)]) / 86400;
	}

	// 测试专用的GetCurrentStartTime
	function ContGetCurrentStartTime() -> integer {
		integer gameTime = ContGetGameTime();
		return (gameTime / 86400) * 86400;
	}
	#endif

	// 统一的 PASS1 判断（测试可覆盖）
	function HasPass1(player p) -> boolean {
		#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
		if (Cont_hasPass_overrideEnabled) {
			return Cont_hasPass_overrideValue;
		}
		#endif
		return mallItem.hasByPlayer(p, "PASS1");
	}

	// 获取显示用的签到天数（PASS1 特权：仅显示层 +3，不影响存档与奖励发放）
	function GetConDays(player p) -> integer {
		integer pid; boolean hasPass;
		pid = GetConvertedPlayerId(p);
		hasPass = HasPass1(p);
		return IConDays[pid] + I3(hasPass, 3, 0);
	}

	// 给奖励
	public function GiveJianianhuaGift(player p) {
		integer i; integer eff; unit u; integer pid;

		pid = GetConvertedPlayerId(p);
		i = IConDays[pid];
		eff = GetConDays(p);
		u = udg_H[pid];

		// 奖励按“有效天数”计算（拥有 PASS1 则等效+3 天）
		AdjustPlayerStateBJ(GetGoldReward(eff), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD);

		if (eff >= 2) {
			UnitAddItemByIdSwapped('ankh', u);
		}

		if (eff >= 4) {
			UnitAddItemByIdSwapped('k3m1', u);
		}

		if (eff >= 7) {
			UnitAddItemByIdSwapped('I07A', u);
			BWuxing[pid] = true;
		}

		if (eff >= 12) {
			UnitAddItemByIdSwapped('I05O', u);
			SetItemPawnable(GetLastCreatedItem(), false);
		}

		if (eff >= 14) {
			SetLingxueSpinOK(p);
		}

		if (eff >= 20) {
			UnitAddItemByIdSwapped('hlst', u);
		}

		if (eff >= 40) {
			GetAchievementAndSave(p, 47);
		}

		u = null;
	}

	// 奖励物品
	public function GetDailyReward(integer days) -> string {
		if (days == 2) {
			return "天地庇佑 * 2";
		} else if (days == 4) {
			return "血精石 * 1";
		} else if (days == 7) {
			return "|cffffff00【妖】五行之杖|r * 1";
		} else if (days == 12) {
			return "聚宝·Lv0 * 1";
		} else if (days == 14) {
			return "|cFF339933沐雪无瑕|r皮肤";
		} else if (days == 20) {
			return "|cff808080【E】幸运宝箱|r";
		} else if (days == 40) {
			return GetAchievementName(47) + "成就";
		}

		return null;
	}

	// 获取从保存的第一天开始的时间
	public function GetContinousDay(player p) -> integer {
		return (DzAPI_Map_GetGameStartTime() - ILastTime[GetConvertedPlayerId(p)]) / 86400;
	}

	// 创建一个对话框
	public function CreateLoginDialog(player p) {
		dialog d; string s; integer i; integer shownDays; boolean hasPass; integer pid; integer eff; integer effNext;

		d = DialogCreate();
		pid = GetConvertedPlayerId(p);
		hasPass = HasPass1(p);
		shownDays = IConDays[pid] + I3(hasPass, 3, 0);
		eff = GetConDays(p);
		effNext = eff + 1;
		s = " \
		连续登录奖励 \n \
		\n \
		你获得了第" + I2S(shownDays) + "天对应的" + I2S(GetGoldReward(eff)) + "金币! \n \
		明天继续签到可以获得" + I2S(GetGoldReward(effNext)) + "的金币! \n \
		\n \
		\n \
		";

		i = 1;
		for (1 <= i <= 41) {
			if (GetDailyReward(i) != null) {
				s = s + "第" + I2S(i) + "天:" + GetDailyReward(i) + S3(eff >= i, "|cffff9900(已完成)|r", "|cff33cccc(未完成)|r") + " \n \
				";
			}
		}

		if (hasPass) {
			s = s + " \n \
			|cFF33CC99【特权】|r你拥有签到特权：\n \
			- 奖励按 +3 天计算\n \
			- 累计签到不再要求连续，进度将持续保留";
		} else {
			s = s + " \n \
			你已经连续签到了" + I2S(shownDays) + "天,注意断签了会重新计算哦.";
		}

		DialogSetMessage(d, s);
		DialogAddButton(d, "10分钟之后当天才签到成功|cffff6800(Esc)|r", 512);
		DialogDisplay(p, d, true);
		//DialogDestroy(d);

		d = null;
	}

	// 获取当前0点（不再使用北京时间，直接用UTC时间）
	function GetCurrentStartTime() -> integer {
		integer t = DzAPI_Map_GetGameStartTime();
		return (t / 86400) * 86400;
	}

	// 获取前n天的北京时间0点
	function GetOldStartTime(integer day) -> integer {
		return GetCurrentStartTime() - ((day - 1) * 86400);
	}

	// 初始化你的登录时间
	public function InitContinousData(player p) {
		IConDays[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "IConDays");
		ILastTime[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "ILastTime");
	}

	// 保存登录状态
	public function SaveLoginState(player p) {
		DzAPI_Map_StoreInteger(p, "IConDays", IConDays[GetConvertedPlayerId(p)]);
		DzAPI_Map_StoreInteger(p, "ILastTime", ILastTime[GetConvertedPlayerId(p)]);
		//DzAPI_Map_StoreInteger(p, "IQiandao2", IQiandao2[GetConvertedPlayerId(p)]);
		DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
		DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
		DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
		DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
		DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
		//CreateYuebingPlayer(GetUnitX(udg_H[GetConvertedPlayerId(p)]), GetUnitY(udg_H[GetConvertedPlayerId(p)]), p);
	}

	// 等10分钟后上传到网易
	public function UploadToNetEase(player p) {
		timer t;
		#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
		integer i  = 3;
		#else
		integer i  = 600;
		#endif

		t = CreateTimer();
		SavePlayerHandle(LHTable, GetHandleId(t), 1, p);
		TimerStart(t, i, false, function (){
			timer t; integer id; player p;

			t = GetExpiredTimer();
			id = GetHandleId(t);
			p = LoadPlayerHandle(LHTable, id, 1);

			SaveLoginState(p);
			PauseTimer(t);
			FlushChildHashtable(LHTable, id);
			DestroyTimer(t);

			p = null;
			t = null;
		});
		t = null;
	}

	// 设置连续时间
	public function SetDenglu(player p) {
		integer pid; integer newDays; integer newBase; integer gameTime; integer contDay;

		#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
		// 测试模式下使用测试时间
		if (Cont_timeOverrideEnabled) {
			gameTime = ContGetGameTime();
			contDay = ContGetContinousDay(p);
		} else {
			gameTime = DzAPI_Map_GetGameStartTime();
			contDay = GetContinousDay(p);
		}
		#else
		gameTime = DzAPI_Map_GetGameStartTime();
		contDay = GetContinousDay(p);
		#endif

		// 初始化检查
		if (ILastTime[GetConvertedPlayerId(p)] == 0) {
			ILastTime[GetConvertedPlayerId(p)] = gameTime;
			IConDays[GetConvertedPlayerId(p)] = 0;
		}

		// 断签啦重新存储
		if (contDay == IConDays[GetConvertedPlayerId(p)]) {
			// 首次连续登录的提示与奖励
			IConDays[GetConvertedPlayerId(p)] = contDay + 1;
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(GetConDays(p)) + "天(注意今天的签到需要等10分钟才能保存).");
		} else if (contDay == IConDays[GetConvertedPlayerId(p)] - 1) {
			// 保持当天的奖励
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(GetConDays(p)) + "天(今天的签到数据已经在前面游戏中保存了哦).");
		} else {
			// PASS1 特权：累计签到不再要求连续，进度不重置，仅在登录日 +1
			if (HasPass1(p)) {
				pid = GetConvertedPlayerId(p);
				newDays = IConDays[pid] + 1;
				// 调整基准，使得今天 contDay == newDays - 1
				#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
				if (Cont_timeOverrideEnabled) {
					newBase = ContGetCurrentStartTime() - (newDays - 1) * 86400;
				} else {
					newBase = GetCurrentStartTime() - (newDays - 1) * 86400;
				}
				#else
				newBase = GetCurrentStartTime() - (newDays - 1) * 86400;
				#endif
				ILastTime[pid] = newBase;
				IConDays[pid] = newDays;
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(GetConDays(p)) + "天(注意今天的签到需要等10分钟才能保存).");
			} else {
				#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
				if (Cont_timeOverrideEnabled) {
					ILastTime[GetConvertedPlayerId(p)] = ContGetCurrentStartTime();
				} else {
					ILastTime[GetConvertedPlayerId(p)] = GetCurrentStartTime();
				}
				#else
				ILastTime[GetConvertedPlayerId(p)] = GetCurrentStartTime();
				#endif
				IConDays[GetConvertedPlayerId(p)] = 1;
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(GetConDays(p)) + "天(注意今天的签到需要等10分钟才能保存).");
			}
		}

		UploadToNetEase(p);
	}

	// 补签
	public function Buqian1(player p) {
		if (!BBuqian1) {
			BBuqian1 = true;
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r补签1阶段.");
		}
	}

	public function Buqian2(player p, string s) {
		if (s == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)], 25))) {
			BBuqian2 = true;
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r补签2阶段.");
		}
		BBuqian1 = false;
	}

	public function Buqian3(player p, string s) {
		integer i, result;

		i = 1;
		result = 0;

		for (1 <= i <= 100) {
			if (s == I2S(GetCycleHash(I2S(i), 1))) {
				IConDays[GetConvertedPlayerId(p)] = i;
				ILastTime[GetConvertedPlayerId(p)] = GetOldStartTime(i);
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r补签为" + I2S(i) + "天.");
				SaveLoginState(p);
				break;
			}
		}

		BBuqian2 = false;
	}


	#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)

	// 断言测试：签到逻辑
	private function ContAssertTests(player p) {
		integer pid; integer nowTs; integer cs; boolean hasPass;
		integer origDays; integer expectDays; integer prevDays; integer expectBase;

		// 启用测试时间覆盖
		Cont_timeOverrideEnabled = true;

		pid = GetConvertedPlayerId(p);
		hasPass = mallItem.hasByPlayer(p, "PASS1");
		nowTs = ContGetGameTime();
		cs = ContGetCurrentStartTime();

		// 用例1：连续签到 +1（构造满足 ContGetContinousDay(p) == IConDays 的前置）
		IConDays[pid] = 5;
		ILastTime[pid] = nowTs - IConDays[pid] * 86400;
		SetDenglu(p);
		assert.Integer(IConDays[pid], 6, "连续签到失败：IConDays 应为 6");
		assert.Integer(ILastTime[pid], nowTs - 5 * 86400, "连续签到失败：ILastTime 不应变化");

		// 用例2：当天重复登录不应变化
		prevDays = IConDays[pid];
		SetDenglu(p);
		assert.Integer(IConDays[pid], prevDays, "重复登录失败：IConDays 不应变化");
		assert.Integer(ILastTime[pid], nowTs - 5 * 86400, "重复登录失败：ILastTime 不应变化");

		// 用例3：非连续登录
		IConDays[pid] = 6;
		ILastTime[pid] = nowTs - 12 * 86400; // 使 GetContinousDay 返回更大，模拟断签
		SetDenglu(p);
		if (hasPass) {
			// PASS1：不重置，只 +1，且重设基准
			expectDays = 7;
			expectBase = cs - (expectDays - 1) * 86400;
			assert.Integer(IConDays[pid], expectDays, "PASS1 非连续失败：IConDays 应 +1");
			assert.Integer(ILastTime[pid], expectBase, "PASS1 非连续失败：ILastTime 应重设");
		} else {
			// 非特权：重置为 1，基准为今天 0 点
			expectDays = 1;
			expectBase = cs;
			assert.Integer(IConDays[pid], expectDays, "无特权非连续失败：IConDays 应重置为 1");
			assert.Integer(ILastTime[pid], expectBase, "无特权非连续失败：ILastTime 应为今日 0 点");
		}

		// 用例4：有效天数（奖励/显示）
		IConDays[pid] = 12;
		assert.Integer(GetConDays(p), 12 + I3(hasPass, 3, 0), "有效天数计算错误");

		// 用例5：强制 hasPass=false 再跑一遍全链路
		Cont_hasPass_overrideEnabled = true;
		Cont_hasPass_overrideValue = false;
		hasPass = false;
		// 连续 +1
		IConDays[pid] = 3; ILastTime[pid] = nowTs - 3 * 86400; SetDenglu(p);
		assert.Integer(IConDays[pid], 4, "[无特权] 连续签到失败：IConDays 应为 4");
		assert.Integer(ILastTime[pid], nowTs - 3 * 86400, "[无特权] 连续签到失败：ILastTime 不应变化");
		// 当天重复
		prevDays = IConDays[pid]; SetDenglu(p);
		assert.Integer(IConDays[pid], prevDays, "[无特权] 重复登录失败：IConDays 不应变化");
		assert.Integer(ILastTime[pid], nowTs - 3 * 86400, "[无特权] 重复登录失败：ILastTime 不应变化");
		// 非连续应重置
		IConDays[pid] = 8; ILastTime[pid] = nowTs - 12 * 86400; SetDenglu(p);
		assert.Integer(IConDays[pid], 1, "[无特权] 非连续失败：应重置为 1");
		assert.Integer(ILastTime[pid], cs, "[无特权] 非连续失败：基准应为今日 0 点");
		// 有效天数==真实
		IConDays[pid] = 10; assert.Integer(GetConDays(p), 10, "[无特权] 有效天数应等于真实");
		Cont_hasPass_overrideEnabled = false;

		// 关闭时间覆盖
		Cont_timeOverrideEnabled = false;
	}

	// 注册测试指令
	private function ContRegisterChat() {
		UnitTestRegisterChatEvent(function () {
			string str = GetEventPlayerChatString();
			integer spacePos; string cmd; string param; integer timeValue;

			if (str == "qd") {
				SetDenglu(GetTriggerPlayer());
				CreateLoginDialog(GetTriggerPlayer());
			} else if (str == "qdt") {
				ContAssertTests(GetTriggerPlayer());
				BJDebugMsg("[Continous] 断言测试完成");
			} else if (StringLength(str) > 8 && SubString(str, 0, 8) == "faketime") {
				// faketime xxx 指令解析
				spacePos = 8; // "faketime" 长度
				if (spacePos < StringLength(str) && SubString(str, spacePos, spacePos + 1) == " ") {
					param = SubString(str, spacePos + 1, StringLength(str));
					timeValue = S2I(param);

					if (timeValue > 0) {
						Cont_timeOverrideEnabled = true;
						Cont_timeOverrideValue = timeValue;
						BJDebugMsg("[Continous] 已设置模拟时间: " + I2S(timeValue));
						BJDebugMsg("[Continous] 模拟时间状态: 已启用");
					} else {
						BJDebugMsg("[Continous] 错误: 无效的时间戳，请输入正整数");
					}
				} else {
					BJDebugMsg("[Continous] 用法: faketime <时间戳>");
					BJDebugMsg("[Continous] 示例: faketime 1757992018");
				}
			} else if (str == "faketime off") {
				Cont_timeOverrideEnabled = false;
				BJDebugMsg("[Continous] 已关闭模拟时间，恢复使用真实时间");
			} else if (str == "faketime status") {
				if (Cont_timeOverrideEnabled) {
					BJDebugMsg("[Continous] 模拟时间状态: 已启用，当前值: " + I2S(Cont_timeOverrideValue));
				} else {
					BJDebugMsg("[Continous] 模拟时间状态: 已关闭，使用真实时间");
				}
			}
		});
	}
	#endif

	function onInit() {

		mallItem.init("PASS1");
		mallItem.setTech("PASS1", 'RMI2');

		#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
		ContRegisterChat();
		#undef DzAPI_Map_GetGameStartTime
		#endif
	}
}
//! endzinc
#endif
