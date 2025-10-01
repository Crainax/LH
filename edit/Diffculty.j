#ifndef DiffcultyIncluded
#define DiffcultyIncluded

#include "edit/LHBase.j"
#include "edit/ChallangerMode.j"
#include "edit/Kuanghuan.j"
#include "edit/Huodong.j"
//! zinc
library Diffculty requires LHBase, Huodong, ChallangerMode,AutoDifficulty {

	/*
	地狱1,末日2,轮回万劫3
	*/
	public integer NanDiff          = 0;
	public unit    UWanjieGuanghuan = null;
	public boolean IsTianyan        = false;


	//---------------------------------------------------------------------------------------------------
	/*
	获取当前难度序号
	*/
	public function GetDiffculty() -> integer {
		if (udg_Nandu_JJJ > 7) {
			return 9;
		} else if (udg_Nandu > 20) {
			return 8;
		} else if (udg_Nandu > 10) {
			return 7;
		} else if (udg_Nandu > 8) {
			return 6;
		} else if (udg_Nandu > 6) {
			return 5;
		} else if (udg_Nandu > 4) {
			return 4;
		} else if (udg_Nandu > 2) {
			return 3;
		} else if (udg_Nandu > 1) {
			return 2;
		} else {
			return 1;
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	创建镜像单位
	*/
	public function CreateJingongguai(integer unitType, real facing) {
		integer id;
		if (CT5()) {
			id = GetNextPlayerID();
			CreateNUnitsAtLoc(1, GetUnitTypeId(udg_H[id]), Player(11), udg_Point, facing);
			SetUnitMirror(GetLastCreatedUnit(), udg_H[id], I3(udg_Bo == 1, 1, udg_Bo * GetDiffculty()));
			GroupAddUnit(GJingxiang, GetLastCreatedUnit());
		} else {
			CreateNUnitsAtLoc(1, unitType, Player(11), udg_Point, facing);
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	判断当前难度是否是万劫
	*/
	public function IsWanjie() -> boolean {
		return GetDiffculty() == 9;
	}
	//---------------------------------------------------------------------------------------------------
	/*
	加强攻击力
	*/
	public function EnhanceDiffAttack(unit u) {
		if (NanDiff <= 0) {
			return;
		}

		if (IsTianyan) {
			UnitAddAbility(u, 'A0G5');
		}

		//100倍攻击加强
		if (GetUnitAbilityLevel(u, 'A09V') >= 1) {
			SetUnitAbilityLevel(u, 'A09V', NanDiff + 1);
			return;
		}

		UnitAddAbility(u, 'A0EY');
		SetUnitAbilityLevel(u, 'A0EY', NanDiff);
	}
	//---------------------------------------------------------------------------------------------------
	/*
	天魇难度加强魔抗
	*/
	public function AddTianyanmokang(unit u) {
		if (IsTianyan) {
			UnitAddAbility(u, 'A09G');
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	移除技能
	*/
	public function RemoveDiffAttack(unit u) {
		if (GetUnitAbilityLevel(u, 'A09V') >= 1) {
			SetUnitAbilityLevel(u, 'A09V', 1);
		}
		UnitRemoveAbility(u, 'A0EY');
		UnitRemoveAbility(u, 'A05O');
		UnitRemoveAbility(u, 'A0G5');
	}
	//---------------------------------------------------------------------------------------------------
	/*
	万劫的加强攻击力
	*/
	public function EnhanceWanjieAttack(unit u) {
		if (IsWanjie()) {
			EnhanceDiffAttack(u);
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	直接A基地
	*/
	public function AttackBase(unit u) {
		if (IsTianyan && GetUnitTypeId(u) == 'hrif') {
			IssueTargetOrder(u, "attack", gg_unit_haro_0030);
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	获取巨能对应等级的科技
	*/
	public function GetJunengTech() -> integer {
		if (NanDiff == 1) {
			return 'R00T';
		} else if (NanDiff == 2) {
			return 'R00U';
		} else if (NanDiff == 3) {
			return 'R00V';
		} else {
			return 'R00R';
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	获取混沌对应等级的科技
	*/
	public function GetHundunTech() -> integer {
		if (NanDiff == 1) {
			return 'R01H';
		} else if (NanDiff == 2) {
			return 'R01I';
		} else if (NanDiff == 3) {
			return 'R01J';
		} else {
			return 'R01G';
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	获取混沌2对应等级的科技
	*/
	public function GetHundun2Tech() -> integer {
		if (NanDiff == 1) {
			return 'R01M';
		} else if (NanDiff == 2) {
			return 'R01N';
		} else if (NanDiff == 3) {
			return 'R01O';
		} else {
			return 'R01P';
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	获取禁用技能的时间
	*/
	public function GetForbidTianfuTime() -> real {
		if (GetDiffculty() >= 9) {
			return 9.5;
		} else if (GetDiffculty() >= 8) {
			return 7.5;
		} else {
			return 5.;
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	获取擂台升级的速度
	*/
	public function GetArenaUpdateSpeed() -> real {
		if (NanDiff == 1) {
			return 4.;
		} else if (NanDiff == 2) {
			return 3.;
		} else if (NanDiff == 3) {
			return 2.;
		} else {
			return 5.;
		}
	}
	//---------------------------------------------------------------------------------------------------
	/*
	万劫数据才value*rate
	*/
	public function GetWanjieInt(integer value, real rate) -> integer {
		if(IsWanjie()) {
			return IMinBJ(2100000000, R2I(I2R(value) * rate));
		}
		return value;
	}
	//---------------------------------------------------------------------------------------------------
	/*
	万劫数据才value*rate，实数版
	*/
	public function GetWanjieReal(real value, real rate) -> real {
		if (IsWanjie()) {
			return value * rate;
		}
		return value;
	}
	//---------------------------------------------------------------------------------------------------
	/*
	万劫数据才value + add
	*/
	public function GetWanjieAddInt(integer value, integer add) -> integer {
		if (IsWanjie()) {
			return value + add;
		}
		return value;
	}
	//---------------------------------------------------------------------------------------------------
	/*
	万劫给怪物加闪烁技能，波数11波后60倍攻击
	*/
	public function AddWanjieSpell(unit u) {
		if (IsWanjie()) {
			if (udg_Bo > 10) {
				//60倍技能
				UnitAddAbility(u, 'A0GL');
			}
			//闪烁技能
			UnitAddAbility(u, 'ANbl');
			UnitAddAbility(u, 'A0HE');
		}
	}

	// 无限沉默
	public function UnlimitSlienceTianyan(unit u) {
		timer t;
		t = CreateTimer();
		SaveUnitHandle(spellTable, GetHandleId(t), 1, u);
		TimerStart(t, 3.0, true, function (){
			timer t;
			integer id;
			unit u;

			t = GetExpiredTimer();
			id = GetHandleId(t);
			u = LoadUnitHandle(spellTable, id, 1);

			if (IsUnitAliveBJ(u)) {
				SimulateSpell(u, u, 'A0JK', 1, 5, "silence", true, false, false);
			} else {
				PauseTimer(t);
				FlushChildHashtable(spellTable, id);
				DestroyTimer(t);
			}
			u = null;
			t = null;
		});
		t = null;
	}

	//---------------------------------------------------------------------------------------------------
	/*
	显示对话框提示选更高难度
	*/
	public function Show245Dialog() {
		ShowGameHintAll(" \
		感谢对本地图的支持！ \
		你选择的难度在这波就结束了. \
		后续的关卡请选择\"和谐\"难度(难度3)或以上进行体验 \
		(前5个难度其实提升不大)");
	}
	//---------------------------------------------------------------------------------------------------
	/*
	显示对话框提示选更高难度
	*/
	public function Show2451Dialog() {
		ShowGameHintAll(" \
		感谢对本地图的支持！ \
		你选择的难度在这波就结束了. \
		后续的关卡请选择\"炼狱\"难度(难度35)或以上进行体验 \
		(前5个难度其实提升不大)");
	}
	//---------------------------------------------------------------------------------------------------
	/*
	显示对话框提示冥界进攻
	*/
	public function ShowMingjieDialog() {
		ShowGameHintAll(" \
		|cffff6800新任务:|r \
		击败来自冥界的5波攻击并击败|cffff0000冥刹|r.");
	}
	//---------------------------------------------------------------------------------------------------
	/*
	显示对话框提示选更高难度
	*/
	public function ShowKuileiDialog() {
		ShowGameHintAll(" \
		|cffff6800新任务:|r \
		击败六界傀儡|cffffff00穆晴|r与白浅.");
	}

}
//! endzinc
#endif
