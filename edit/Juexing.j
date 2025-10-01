#ifndef JuexingIncluded
#define JuexingIncluded

#include  "edit/LHBase.j"
#include  "edit/Moqi.j"
#include  "edit/Seyu.j"
#include  "edit/Mengji.j"
#include  "edit/Huanyi.j"
#include  "edit/Xinglong.j"
#include  "edit/Lichi.j"
#include  "edit/Xiaoting.j"

//! zinc

library Juexing requires LHBase, Moqi, Seyu, Mengji, Xinglong, Huanyi, Lichi, Xiaoting {

	// 天赋禁用
	function ForbidTianfu() {
		integer i;

		i = 1;
		BTianfu = true;
		while (i <= 6) {
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) && (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) {
				UnitAddAbility(udg_H[i], 'A0KK');
				if (udg_H[i] == Huanyi) {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), ICurrentSpell, false);
				} else if (udg_H[i] == mengji) {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GX', false);
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GY', false);
				} else if (udg_H[i] == xiaoting) {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LK', false);
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LL', false);
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LM', false);
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LJ', false);
				} else {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), GetHeroTianFu(udg_H[i]), false);
				}
			}
			i = i + 1;
		}
	}

	// 天赋允许
	function AllowTianfu() {
		integer i;

		i = 1;
		BTianfu = false;
		while (i <= 6) {
			if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) && (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) {
				UnitRemoveAbility(udg_H[i], 'A0KK');
				if (udg_H[i] == Huanyi) {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), ICurrentSpell, true);
				} else if (udg_H[i] == mengji) {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GX', true);
					SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0GY', true);
				} else if (udg_H[i] == xiaoting) {
					if (ISpellState == 0) {
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LK', true);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LL', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LM', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LJ', false);
					} else if (ISpellState == 1) {
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LL', true);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LK', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LM', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LJ', false);
					} else if (ISpellState == 2) {
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LM', true);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LK', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LL', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LJ', false);
					} else if (ISpellState == 3) {
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LJ', true);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LK', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LL', false);
						SetPlayerAbilityAvailable(ConvertedPlayer(i), 'A0LM', false);
					}
				} else {
					SetPlayerAbilityAvailable(ConvertedPlayer(i), GetHeroTianFu(udg_H[i]), true);
				}
			}
			i = i + 1;
		}
	}

	// 循环禁用天赋
	public struct TianfuForbidder {

		real IForbid;
		real IAllow;
		timer t;

		static method allowTimer() {
			thistype this;

			this = thistype[GetExpiredTimer()];
			AllowTianfu();
			PauseTimer(this.t);
			TimerStart(this.t, this.IAllow, false, function thistype.forbitTimer);
		}

		static method forbitTimer() {
			thistype this;

			this = thistype[GetExpiredTimer()];
			ForbidTianfu();
			PauseTimer(this.t);
			TimerStart(this.t, this.IForbid, false, function thistype.allowTimer);
		}

		static method operator [] (handle h) -> thistype {
			return YDWEGetIntegerByString("SPellBase", I2S(YDWEH2I(h)));
		}

		static method operator []= (handle h, thistype value) {
			YDWESaveIntegerByString("SPellBase", I2S(YDWEH2I(h)), value);
		}

		static method flush(handle h) {
			YDWEFlushStoredIntegerByString("SPellBase", I2S(YDWEH2I(h)));
		}

		static method create(unit caster, real forbidTime, real allowTime) -> thistype {
			thistype this;

			this = thistype.allocate();
			this.IForbid = forbidTime;
			this.IAllow = allowTime;
			this.t = CreateTimer();
			thistype[this.t] = integer(this);
			TimerStart(this.t, allowTime, false, function thistype.forbitTimer);
			return this;
		}

		method onDestroy() {
			thistype.flush(this.t);
			AllowTianfu();
			this.IForbid = 0;
			this.IAllow = 0;
			PauseTimer(this.t);
			DestroyTimer(this.t);
			this.t = null;
		}
	}

	// 一段觉醒
	function InitHeroJuexing1(unit u) {
		integer i;

		i = GetHeroTianFu(u);
		if (JJ4 && playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") {
			return;
		}
		SetUnitAbilityLevel(u, i, 2);
		DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的" + GetAbilityName(i) + "技能一阶觉醒了!");
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)));
		BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] = true;

		if (u == seyu) {
			JuexingSeyu1();
		} else if (u == Huanyi) {
			UnitAddAbility(Huanyi, 'A0HX');
		} else if (u == sichen) {
			SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2));
		} else if (u == hanshang) {
			AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)), 0.25);
		} else if (u == lichi) {
			UnitAddAbility(lichi, 'A0B9');
		} else if (u == xinglong && IsLong()) {
			AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), 0.2);
			AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), 0.1);
		}
	}

	// 二段觉醒
	function InitHeroJuexing2(unit u) {
		integer i;

		i = GetHeroTianFu(u);
		if (JJ4 && playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") {
			return;
		}
		SetUnitAbilityLevel(u, i, 3);
		DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的" + GetAbilityName(i) + "技能二阶觉醒了!");
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)));
		BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] = true;

		if (u == moqi) {
			JuexingMoqi2();
		} else if (u == seyu) {
			JuexingSeyu2();
		} else if (u == lichi) {
			IMaxHuanying = 5;
		} else if (u == chenji) {
			TriggerExecute(gg_trg_____________127);
		} else if (u == sichen) {
			SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2));
		} else if (u == xinglong && IsLong()) {
			AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), 0.2);
			AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), 0.1);
		}
	}

	// 三段觉醒
	function InitHeroJuexing3(unit u) {
		integer i;

		i = GetHeroTianFu(u);
		if (JJ4 && playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") {
			return;
		}
		SetUnitAbilityLevel(u, i, 4);
		DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的" + GetAbilityName(i) + "技能三阶觉醒了!");
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)));
		BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] = true;

		if (u == kaisa) {
			AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)), 0.5);
		} else if (u == yanmie) {
			AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)), 0.4);
		} else if (u == bajue) {
			AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)), 0.6);
		} else if (u == xiaoyue) {
			UnitAddAbility(gg_unit_h00K_0254, 'A0IN');
		} else if (u == lingxue) {
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)), 1);
		} else if (u == sheyan) {
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)), 0.4);
		} else if (u == Heiyan) {
			AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)), 1);
		} else if (u == cangling) {
			AddHP(cangling, 40000000);
		} else if (u == mengji) {
			RuohuanmengChatBack();
		} else if (u == sichen) {
			SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) + 2));
		}
	}

	// 取消觉醒
	function CancelJuexing(unit u) {
		integer i;

		i = GetHeroTianFu(u);
		if (JJ4 && playerName[GetConvertedPlayerId(GetOwningPlayer(u))] == "无心使者") {
			return;
		}
		SetUnitAbilityLevel(u, i, 1);
		DisplayTextToPlayer(GetOwningPlayer(u), 0., 0., "|cFFFF66CC【消息】|r你的" + GetAbilityName(i) + "技能觉醒失效了!");
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)));

		if (u == sichen) {
			if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sichen))]) {
				SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2));
			}
			if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))]) {
				SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2));
			}
			if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sichen))]) {
				SetPlayerStateBJ(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP, (GetPlayerState(GetOwningPlayer(sichen), PLAYER_STATE_RESOURCE_FOOD_CAP) - 2));
			}
		}

		if (u == xinglong && IsLong()) {
			if (BJuexing1[GetConvertedPlayerId(GetOwningPlayer(sichen))]) {
				AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), -0.2);
				AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), -0.1);
			}
			if (BJuexing2[GetConvertedPlayerId(GetOwningPlayer(sichen))]) {
				AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), -0.2);
				AddDefensePercent(GetConvertedPlayerId(GetOwningPlayer(xinglong)), -0.1);
			}
		}

		if (u == kaisa && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(kaisa))]) {
			AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(kaisa)), -0.5);
		} else if (u == yanmie && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(yanmie))]) {
			AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(yanmie)), -0.4);
		} else if (u == bajue && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(bajue))]) {
			AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(bajue)), -0.6);
		} else if (u == xiaoyue && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(xiaoyue))]) {
			UnitRemoveAbility(gg_unit_h00K_0254, 'A0IN');
		} else if (u == lingxue && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(lingxue))]) {
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(lingxue)), -1);
		} else if (u == sheyan && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(sheyan))]) {
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(sheyan)), -0.4);
		} else if (u == Heiyan && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Heiyan))]) {
			AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Heiyan)), -1);
		} else if (u == cangling && BJuexing3[GetConvertedPlayerId(GetOwningPlayer(cangling))]) {
			AddHP(cangling, -40000000);
		} else if (u == hanshang) {
			AddMoneyPercent(GetConvertedPlayerId(GetOwningPlayer(hanshang)), -0.25);
		}

		BJuexing1[GetConvertedPlayerId(GetOwningPlayer(u))] = false;
		BJuexing2[GetConvertedPlayerId(GetOwningPlayer(u))] = false;
		BJuexing3[GetConvertedPlayerId(GetOwningPlayer(u))] = false;

		if (u == moqi) {
			QJuexingMoqi();
		} else if (u == seyu) {
			QJuexingSeyu();
		} else if (u == chenji) {
			TriggerExecute(gg_trg_____________129);
		} else if (u == Huanyi) {
			UnitRemoveAbility(Huanyi, 'A0HX');
		} else if (u == mengji) {
			RuohuanmengChatBack();
		} else if (u == lichi) {
			UnitRemoveAbility(lichi, 'A0B9');
		}
	}

	// 大招
	function CreateEffect12Yanyanhuo(real x, real y) {
		integer i;

		i = 1;
		DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", x, y));
		while (i <= 6) {
			DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", YDWECoordinateX(x + 900 * CosBJ(i * 60)), YDWECoordinateY(y + 900 * SinBJ(i * 60))));
			i = i + 1;
		}
	}

	function YanyanhuoTimer12() {
		timer t;
		integer id;
		unit u;
		unit caster;
		integer index;

		t = GetExpiredTimer();
		id = GetHandleId(t);
		u = LoadUnitHandle(spellTable, id, 1);
		caster = LoadUnitHandle(spellTable, id, 2);
		index = LoadInteger(spellTable, id, 3);

		if (IsUnitAliveBJ(u) || index <= 80) {
			SaveInteger(spellTable, GetHandleId(t), 3, index + 1);
			if (ModuloInteger(index, 10) == 0) {
				DamageAreaMagic(caster, GetUnitX(u), GetUnitY(u), 1800, GetDamageBase(caster) * 2, null);
			}
			DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(u) + (81 - index) * 25 * CosBJ(index * 45)), YDWECoordinateY(GetUnitY(u) + (81 - index) * 25 * SinBJ(index * 45))));
			DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(u) + (81 - index) * 25 * CosBJ(index * (-45) + 180)), YDWECoordinateY(GetUnitY(u) * 25 + (81 - index) * SinBJ(index * (-45) + 180))));
		} else {
			CreateEffect12Yanyanhuo(GetUnitX(u), GetUnitY(u));
			DamageAreaMagic(caster, GetUnitX(u), GetUnitY(u), 1800, GetDamageBase(caster) * 5, null);
			RemoveUnit(u);
			PauseTimer(t);
			FlushChildHashtable(spellTable, id);
			DestroyTimer(t);
		}
		u = null;
		t = null;
	}

	function Yanyanhuo12(unit caster) {
		timer t;
		unit u;

		t = CreateTimer();
		u = CreateUnit(GetOwningPlayer(caster), 'h02I', GetUnitX(caster), GetUnitY(caster), 0);
		UnitApplyTimedLifeBJ(8, 'BHwe', u);
		UnitMakeAbilityPermanent(xinglong, true, 'A0K1');
		// 不断伤害
		ImmuteDamageInterval(caster, 8);
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(caster), GetUnitY(caster)));
		SaveUnitHandle(spellTable, GetHandleId(t), 1, u);
		SaveUnitHandle(spellTable, GetHandleId(t), 2, caster);
		SaveInteger(spellTable, GetHandleId(t), 3, 1);
		AddDamagePercent(GetConvertedPlayerId(GetOwningPlayer(caster)), 0.6);
		TimerStart(t, 0.1, true, function YanyanhuoTimer12);
		t = null;
		u = null;
	}

	// 装备灯的事件
	function TDengEquitCon() -> boolean {
		return (GetManipulatingUnit() == udg_H[GetConvertedPlayerId(GetOwningPlayer(GetManipulatingUnit()))]) && IsDeng(GetManipulatedItem());
	}

	function TDengEquitAct() {
		integer i;
		integer dengCount;

		i = 1;
		dengCount = 0;
		while (i <= 6) {
			if (IsDeng(UnitItemInSlotBJ(GetTriggerUnit(), i))) {
				dengCount = dengCount + 1;
			}
			i = i + 1;
		}

		// 如果计数君大于1则丢掉
		if (dengCount > 1) {
			DisplayTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0., 0., "|cFFFF66CC【消息】|r你只能同时装备上一个秘境至宝！");
			PolledWait(0.01);
			UnitRemoveItem(GetTriggerUnit(), GetManipulatedItem());
			return;
		} else if (dengCount == 1) {
			if (GetDeng(GetTriggerUnit()) >= 3) {
				InitHeroJuexing1(GetTriggerUnit());
			}
			if (GetDeng(GetTriggerUnit()) >= 7) {
				InitHeroJuexing2(GetTriggerUnit());
			}
			if (GetDeng(GetTriggerUnit()) >= 12) {
				InitHeroJuexing3(GetTriggerUnit());
			}
		}
	}

	function TDengDropAct() {
		integer i;
		integer dengCount;

		i = 1;
		dengCount = 0;
		while (i <= 6) {
			if (IsDeng(UnitItemInSlotBJ(GetTriggerUnit(), i))) {
				dengCount = dengCount + 1;
			}
			i = i + 1;
		}
		if (dengCount <= 1 && GetDeng(GetTriggerUnit()) >= 3) {
			CancelJuexing(GetTriggerUnit());
		}
	}

	function onInit() {
		trigger t;

		// 只能同时装备一个灯
		t = CreateTrigger();
		TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM);
		TriggerAddCondition(t, Condition(function TDengEquitCon));
		TriggerAddAction(t, function TDengEquitAct);

		// 丢弃灯事件
		t = CreateTrigger();
		TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM);
		TriggerAddCondition(t, Condition(function TDengEquitCon));
		TriggerAddAction(t, function TDengDropAct);

		t = null;
	}
}

#endif
//! endzinc

