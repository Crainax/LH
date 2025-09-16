
#ifndef SpinIncluded
#define SpinIncluded

#include  "edit/LHBase.j"
///#include  "edit/NetVersion.j"

//! zinc
library Spin requires LHBase,Version {

	public boolean BCancelSpin [];

	// 反转物品
	public function CreateFanzhuanItem(unit u) { //创建一个60秒的反转物品
		timer t;

		t = CreateTimer();
		SaveItemHandle(LHTable, GetHandleId(t), 1, UnitAddItemByIdSwapped(GetFanzhuanItemType(u), u));
		TimerStart(t, 60, false, function (){
			timer t; integer id; item it;

			t = GetExpiredTimer();
			id = GetHandleId(t);
			it = LoadItemHandle(LHTable, id, 1);

			if (it != null) {
				RemoveItem(it);
			}

			PauseTimer(t);
			FlushChildHashtable(LHTable, id);
			DestroyTimer(t);

			it = null;
			t = null;
		});

		t = null;
	}

	// 瑟雨的皮肤条件
	public function IsSeyuSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetSeyu1Spin(p));
		// return true
	}

	// 晓月的皮肤条件
	public function IsXiaoyueSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetXiaoyue1Spin(p));
		// return true
	}

	// 湮灭的皮肤条件
	public function IsYanmieSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetYanmie1Spin(p));
		// return true
	}

	// 玄雪的皮肤条件
	public function IsXuanxueSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetXuanxue1Spin(p));
		// return true
	}

	// 泰雅的皮肤条件
	public function IsTaiyaSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetTaiya1Spin(p));
		// return true
	}

	// 寒殇的皮肤条件
	public function IsHanshangSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetHanshang1Spin(p));
		// return true
	}

	// 辰寂的皮肤条件
	public function IsChenjiSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetChenji1Spin(p));
		// return true
	}

	// 辰寂的皮肤条件
	public function IsChenjiSpin2(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetChenji2Spin(p));
		// return true
	}

	// 凌雪的皮肤条件
	public function IsLingxueSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetLingxue1Spin(p));
		// return true
	}

	// 莫琪的皮肤条件
	public function IsMoqiSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetMoqiSpin(p));
		// return true
	}

	// 凯撒的皮肤条件
	public function IsKaisaSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetKaisaSpin(p));
		// return true
	}

	// 玄雪的皮肤条件
	public function IsXuanxueSpin2(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetXuanxue2Spin(p));
		// return true
	}

	// 霸绝的皮肤条件
	public function IsBajueSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetBajue1Spin(p));
		// return true
	}

	// 摄焱的皮肤条件
	public function IsSheyanSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetSheyan1Spin(p));
		// return true
	}

	// 幻逸的皮肤条件
	public function IsHuanyiSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetHuanyi1Spin(p));
		// return true
	}

	// 司宸的皮肤条件
	public function IsSichenSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetSichen1Spin(p));
		// return true
	}

	// 苍凌的皮肤条件
	public function IsCanglingSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetCangling1Spin(p));
		// return true
	}

	// 司宸的皮肤条件
	public function IsHeiyanSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetHeiyan1Spin(p));
		// return true
	}

	// 炼金的皮肤条件
	public function IsHanshangSpin2(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetHanshang2Spin(p));
		// return true
	}

	// 离魑的皮肤条件
	public function IsLichiSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetLichi1Spin(p));
		// return true
	}

	// 星胧的皮肤条件
	public function IsXinglongSpin1(player p) -> boolean {
		return (!BCancelSpin[GetConvertedPlayerId(p)]) && (GetXinglong1Spin(p));
		// return true
	}

	function onInit () {
		mallItem.init("SKIN1");
		mallItem.setTech("SKIN1", 'RMI4');
		mallItem.onReady(function () -> boolean {
			player p = Player(0);
			integer index;
			for (1 <= index <= MAX_PLAYER_COUNT) {
				p = ConvertedPlayer(index);
				if (mallItem.hasByPlayer(p, "SKIN1") && (GetPlayerSlotState(ConvertedPlayer(index)) == PLAYER_SLOT_STATE_PLAYING) && (GetPlayerController(ConvertedPlayer(index)) == MAP_CONTROL_USER)) {
					SetSeyuSpinOK(p);
					SetXiaoyueSpinOK(p);
					SetYanmieSpinOK(p);
					SetXuanxue1SpinOK(p);
					SetTaiyaSpinOK(p);
					SetChenji1SpinOK(p);
					SetHanshang1SpinOK(p);
					SetLingxueSpinOK(p);
					SetChenji2SpinOK(p);
					SetMoqiSpinOK(p);
					SetKaisaSpinOK(p);
					SetXuanxue2SpinOK(p);
					SetBajueSpinOK(p);
					SetSheyanSpinOK(p);
					SetHuanyiSpinOK(p);
					SetSichenSpinOK(p);
					SetLichiSpinOK(p);
					SetHeiyanSpinOK(p);
					SetCanglingSpinOK(p);
					SetHanshang2SpinOK(p);
					SetXinglong1SpinOK(p);
				}
			}
			p = null;
			return true;
		});
	}
}
//! endzinc
#endif
