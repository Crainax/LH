
#ifndef ContinousIncluded
#define ContinousIncluded

#include  "edit/LHBase.j"
#include  "edit/item.j"
#include  "edit/Huodong.j"
#include  "edit/Achievement.j"
///#include  "edit/Jizi.j"

//! zinc
library Continous requires LHBase,ItemBase,Achievement,Huodong {

	public{
		integer IConDays[];
		integer ILastTime[];
		constant integer TIMESTAMP_START = 1500998400;
		boolean BWuxing[];
	}
	//integer DzAPI_Map_GetGameStartTime() = 0

	// 获取签到的金币奖励
	function GetGoldReward(integer day) -> integer {
		return I3(day == 1, 500, R2I((SquareRoot(day) + 2.) * 300.));
	}

	// 给奖励
	public function GiveJianianhuaGift(player p) {
		integer i; unit u;

		i = IConDays[GetConvertedPlayerId(p)];
		u = udg_H[GetConvertedPlayerId(p)];

		AdjustPlayerStateBJ(GetGoldReward(i), GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD);

		if (i >= 2) {
			UnitAddItemByIdSwapped('ankh', u);
		}

		if (i >= 4) {
			UnitAddItemByIdSwapped('k3m1', u);
		}

		if (i >= 7) {
			UnitAddItemByIdSwapped('I07A', u);
			BWuxing[GetConvertedPlayerId(p)] = true;
		}

		if (i >= 12) {
			UnitAddItemByIdSwapped('I05O', u);
			SetItemPawnable(GetLastCreatedItem(), false);
		}

		if (i >= 14) {
			SetLingxueSpinOK(p);
		}

		if (i >= 20) {
			UnitAddItemByIdSwapped('hlst', u);
		}

		if (i >= 40) {
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
		if (DzAPI_Map_GetGameStartTime() < TIMESTAMP_START) {
			return 0;
		}
		return (DzAPI_Map_GetGameStartTime() - ILastTime[GetConvertedPlayerId(p)]) / 86400;
	}

	// 创建一个对话框
	public function CreateLoginDialog(player p) {
		dialog d; string s; integer i;

		d = DialogCreate();
		s = " \
		连续登录奖励 \
		\
		你获得了第" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天对应的" + I2S(GetGoldReward(IConDays[GetConvertedPlayerId(p)])) + "金币! \
		明天继续签到可以获得" + I2S(GetGoldReward(IConDays[GetConvertedPlayerId(p)] + 1)) + "的金币! \
		\
		\
		";

		i = 1;
		for (1 <= i <= 41) {
			if (GetDailyReward(i) != null) {
				s = s + "第" + I2S(i) + "天:" + GetDailyReward(i) + S3(IConDays[GetConvertedPlayerId(p)] >= i, "|cffff9900(已完成)|r", "|cff33cccc(未完成)|r") + " \
				";
			}
		}

		s = s + " \
		你已经连续签到了" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天,注意断签了会重新计算哦.";

		DialogSetMessage(d, s);
		DialogAddButton(d, "10分钟之后当天才签到成功|cffff6800(Esc)|r", 512);
		DialogDisplay(p, d, true);
		//DialogDestroy(d);

		d = null;
	}

	// 获取当前时间的0点
	function GetCurrentStartTime() -> integer {
		return TIMESTAMP_START + ((DzAPI_Map_GetGameStartTime() - TIMESTAMP_START) / 86400) * 86400;
	}

	// 获取前n天的0点
	function GetOldStartTime(integer day) -> integer {
		return GetCurrentStartTime() - ((day - 1) * 86400);
	}

	// 初始化你的登录时间
	public function InitContinousData(player p) {
		IConDays[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "IConDays");
		ILastTime[GetConvertedPlayerId(p)] = DzAPI_Map_GetStoredInteger(p, "ILastTime");
	}

	// 显示签到指数
	// function ShowQiandao(player p) {
	//     DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你的签到指数为" + I2S(IQiandao2[GetConvertedPlayerId(p)]) + ".");
	// }

	// 保存登录状态
	public function SaveLoginState(player p) {
		if (Bdudang[GetConvertedPlayerId(p)]) {
			DzAPI_Map_StoreInteger(p, "IConDays", IConDays[GetConvertedPlayerId(p)]);
			DzAPI_Map_StoreInteger(p, "ILastTime", ILastTime[GetConvertedPlayerId(p)]);
			//DzAPI_Map_StoreInteger(p, "IQiandao2", IQiandao2[GetConvertedPlayerId(p)]);
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存成功!|r");
			//CreateYuebingPlayer(GetUnitX(udg_H[GetConvertedPlayerId(p)]), GetUnitY(udg_H[GetConvertedPlayerId(p)]), p);
		} else {
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r");
			DisplayTextToPlayer(p, 0., 0., "|cffff0000【消息】连续登录数据保存失败,请重启游戏!|r");
		}
	}

	// 等10分钟后上传到网易
	function UploadToNetEaseTimer() {
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
	}

	public function UploadToNetEase(player p) {
		timer t;

		t = CreateTimer();
		SavePlayerHandle(LHTable, GetHandleId(t), 1, p);
		TimerStart(t, 600, false, function UploadToNetEaseTimer);

		t = null;
	}

	// 设置连续时间
	public function SetDenglu(player p) {
		// 活动还没开始，或者说是首次
		if (DzAPI_Map_GetGameStartTime() < TIMESTAMP_START) {
			BJDebugMsg("|cFFFF66CC【消息】|r ");
			return;
		}

		if (ILastTime[GetConvertedPlayerId(p)] < TIMESTAMP_START) {
			ILastTime[GetConvertedPlayerId(p)] = TIMESTAMP_START;
			IConDays[GetConvertedPlayerId(p)] = 0;
		}

		// 断签啦重新存储
		if (GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)]) {
			// 首次连续登录的提示与奖励
			IConDays[GetConvertedPlayerId(p)] = GetContinousDay(p) + 1;

			//IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p);
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(注意今天的签到需要等10分钟才能保存).");
		} else if (GetContinousDay(p) == IConDays[GetConvertedPlayerId(p)] - 1) {
			// 保持当天的奖励
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(今天的签到数据已经在前面游戏中保存了哦).");
		} else {
			ILastTime[GetConvertedPlayerId(p)] = GetCurrentStartTime();
			IConDays[GetConvertedPlayerId(p)] = 1;

			//IQiandao2[GetConvertedPlayerId(p)] = IQiandao2[GetConvertedPlayerId(p)] + DzAPI_Map_GetGameStartTime() - GetCurrentStartTime(p);
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你已经成功连续登录" + I2S(IConDays[GetConvertedPlayerId(p)]) + "天(注意今天的签到需要等10分钟才能保存).");
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

	function onInit() {
		// 初始化代码
	}
}
//! endzinc
#endif
