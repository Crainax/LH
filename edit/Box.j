
#ifndef BoxIncluded
#define BoxIncluded

#include  "edit/LHBase.j"
#include  "edit/NetVersion.j"
#include  "edit/ChallangerDZ.j"
#include  "edit/VIP.j"
#include  "edit/Structs.j"

//! zinc
library Box requires LHBase,Version,ChallangerDZ,VIP,Structs {

	TextTagBind TTBBox [];

	// 创建并绑定文字
	function InitBoxWord(player p) {
		integer index;

		index = GetConvertedPlayerId(p);
		TTBBox[index] = TextTagBind.create(UDepot[index], 50, 50);
		TTBBox[index].setContent(S3(StringLength(SBoxWord[index]) < 1, "输入-ck改头衔", SBoxWord[index]));
		TTBBox[index].setSize(12.);
	}

	// 使用自定义指令后
	public function SetDIYBoxName(player p, string s) {
		if (ModuloInteger(StringLength(s), 3) == 0) {
			if ((StringLength(s) > (((DzAPI_Map_GetMapLevel(p) / 10) + 2) * 3))) {
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你地图等级当前为" + I2S(DzAPI_Map_GetMapLevel(p)) + "级,最多可自定义" + I2S(((DzAPI_Map_GetMapLevel(p) / 10) + 2)) + "个字.");
				DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r每10级可以额外获得1个字.");
				return;
			}

			SBoxWord[GetConvertedPlayerId(p)] = s;
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r成功修改头衔!");
			DzAPI_Map_StoreString(p, "SBoxWord", SBoxWord[GetConvertedPlayerId(p)]);

			if (TTBBox[GetConvertedPlayerId(p)] != 0) {
				TTBBox[GetConvertedPlayerId(p)].setContent(SBoxWord[GetConvertedPlayerId(p)]);
			}
		} else {
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r头衔格式不对！不允许中英(或数字)混杂输入。");
		}
	}

	// 技能
	public function Duihuanjinbi() {
		if (GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER) >= 10) {
			AdjustPlayerStateBJ(-10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER);
			AdjustPlayerStateBJ(10000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD);
		} else {
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你的木材不足.");
		}
	}

	public function DuihuanMucai() {
		if (GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD) >= 10000) {
			AdjustPlayerStateBJ(10, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER);
			AdjustPlayerStateBJ(-10000, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD);
		} else {
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你的金币不足.");
		}
	}

	public function Wanwuqiyuan() {
		UnitAddItemByIdSwapped('I006', GetTriggerUnit());
	}

	// 获取对应的仓库
	function GetBoxName(integer i) -> string {
		if (i == 1) {
			return "倾雪寒晶";
		} else if (i == 2) {
			return "救死扶伤";
		} else if (i == 3) {
			return "货币达人";
		} else if (i == 4) {
			return "心寞孤客";
		} else if (i == 5) {
			return "瞬息万年";
		} else if (i == 6) {
			return "紫雷之极";
		} else if (i == 7) {
			return "万物之源";
		} else if (i == 8) {
			return "熔炎火炮";
		} else if (i == 9) {
			return "紫薇上神";
		}

		return "";
	}

	function GetBoxCondition(integer i) -> string {
		if (i == 1) {
			return "|cff33cccc(完成挑战>10%解锁)|r";
		} else if (i == 2) {
			return "|cff33cccc(完成挑战>25%解锁)|r";
		} else if (i == 3) {
			return "|cff33cccc(完成挑战>50%解锁)|r";
		} else if (i == 4) {
			return "|cff33cccc(完成挑战>75%解锁)|r";
		} else if (i == 5) {
			return "|cff33cccc(完成挑战>99%解锁)|r";
		} else if (i == 6) {
			return "|cff33cccc(地图等级大于18级解锁)|r";
		} else if (i == 7) {
			return "|cff33cccc(地图等级大于24级解锁)|r";
		} else if (i == 8) {
			return "|cff33cccc(获取赞助权限解锁)|r";
		} else if (i == 9) {
			return "|cff33cccc(击败傀儡樱乐与梵胤解锁)|r";
		}

		return "";
	}

	function GetBoxType(integer i) -> integer {
		if (i == 1) {
			return 'n01R';
		} else if (i == 2) {
			return 'n01Z';
		} else if (i == 3) {
			return 'n026';
		} else if (i == 4) {
			return 'n027';
		} else if (i == 5) {
			return 'n020';
		} else if (i == 6) {
			return 'n021';
		} else if (i == 7) {
			return 'n024';
		} else if (i == 8) {
			return 'n025';
		} else if (i == 9) {
			return 'n02D';
		}

		return 0;
	}

	function GetBoxAbility(integer i) -> integer {
		if (i == 1) {
			return 'A0KW';
		} else if (i == 2) {
			return 'A0MD';
		} else if (i == 3) {
			return 'A0MY';
		} else if (i == 4) {
			return 'A0MZ';
		} else if (i == 5) {
			return 'A0MX';
		} else if (i == 6) {
			return 'Aprg';
		} else if (i == 7) {
			return 'A0N0';
		} else if (i == 8) {
			return 'A0N1';
		} else if (i == 9) {
			return 'A0N7';
		}

		return 0;
	}

	function IsBoxAccess(player p, integer i) -> boolean {
		if (i == 1) {
			return IsHasCangku(p, i) || GetCompleteRate(p) >= 0.1 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 1) > 0;
		} else if (i == 2) {
			return IsHasCangku(p, i) || GetCompleteRate(p) >= 0.25 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 2) > 0;
		} else if (i == 3) {
			return IsHasCangku(p, i) || GetCompleteRate(p) >= 0.5 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 5) > 0;
		} else if (i == 4) {
			return IsHasCangku(p, i) || GetCompleteRate(p) >= 0.75 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 6) > 0;
		} else if (i == 5) {
			return IsHasCangku(p, i) || GetCompleteRate(p) >= 0.99 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 3) > 0;
		} else if (i == 6) {
			return IsHasCangku(p, i) || DzAPI_Map_GetMapLevel(p) >= 18 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 4) > 0;
		} else if (i == 7) {
			return IsHasCangku(p, i) || DzAPI_Map_GetMapLevel(p) >= 24 || GetDigitAt(Greward[GetConvertedPlayerId(p)], 7) > 0;
		} else if (i == 8) {
			return IsHasCangku(p, i) || vip.is(p) || GetDigitAt(Greward[GetConvertedPlayerId(p)], 8) > 0;
		} else if (i >= 9) {
			return IsHasCangku(p, i);
		}

		return false;
	}

	// 切换仓库皮肤
	function CreateNewBox(player p, integer i) {
		integer ii; real x, y;

		ii = 1;
		x = GetUnitX(UDepot[GetConvertedPlayerId(p)]);
		y = GetUnitY(UDepot[GetConvertedPlayerId(p)]);

		for (1 <= ii <= 6) {
			UnitRemoveItem( UDepot[GetConvertedPlayerId(p)],UnitItemInSlotBJ(UDepot[GetConvertedPlayerId(p)], ii));
		}

		RemoveUnit(UDepot[GetConvertedPlayerId(p)]);
		UDepot[GetConvertedPlayerId(p)] = CreateUnit(p, GetBoxType(i), x, y, 270.000);
		InitItemTransport(UDepot[GetConvertedPlayerId(p)]);

		if (GetDiffculty() <= 8 || i >= 9) {
			UnitAddAbility(UDepot[GetConvertedPlayerId(p)], GetBoxAbility(i));
		}
	}

	public function ChangeSpinDialog(player p) {
		trigger t; dialog d; integer i;

		t = CreateTrigger();
		d = DialogCreate();
		i = 1;

		DialogSetMessage(d, " \n \
		完成挑战:(" + I2S(GetAllComplete(p)) + "/" + I2S(COUNT_CHALLANGER * 3) + "=" + I2S(R2I(GetCompleteRate(p) * 100)) + "%)" + " \n \
		箱子变形:");

		SaveButtonHandle(LHTable, GetHandleId(d), 9, DialogAddButtonBJ(d, GetBoxName(9) + S3(IsBoxAccess(p, 9), "|cffff9900(已解锁)|r", GetBoxCondition(9))));

		for (1 <= i <= 8) {
			SaveButtonHandle(LHTable, GetHandleId(d), i, DialogAddButtonBJ(d, GetBoxName(i) + S3(IsBoxAccess(p, i), "|cffff9900(已解锁)|r", GetBoxCondition(i))));
		}

		SaveButtonHandle(LHTable, GetHandleId(d), 10, DialogAddButton(d, "取消|cffff6800(Esc)|r", 512));
		SavePlayerHandle(LHTable, GetHandleId(d), 11, p);
		DialogDisplay(p, d, true);
		TriggerRegisterDialogEvent(t, d);
		TriggerAddAction(t, function (){
			dialog d; player p; integer i;

			d = GetClickedDialogBJ();
			p = LoadPlayerHandle(LHTable, GetHandleId(d), 11);
			i = 1;

			for (1 <= i <= 9) {
				if (GetClickedButtonBJ() == LoadButtonHandle(LHTable, GetHandleId(d), i)) {
					if (IsBoxAccess(p, i)) {
						CreateNewBox(p, i);
						InitBoxWord(p);
					}
				}
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
}
//! endzinc
#endif

