//! zinc
#ifndef HuanyiIncluded
#define HuanyiIncluded

#include  "edit/SpellBase.j"
#include  "edit/Printer.j"
#include  "edit/Attr.j"
#include  "edit/Aura.j"
#include  "edit/Diffculty.j"
#include  "edit/Skin.j"

/*
英雄幻逸的技能
*/

library Huanyi requires SpellBase, Printer, Attr, Diffculty, Aura, Diamond, Spin {

	// 技能触发
	trigger TSpellHuanyi = null;

	// 伤害
	real RDamageHuanyi = 0.;

	// 元素状态
	boolean IsFire = false;
	boolean IsWater = false;
	boolean IsLumber = false;
	boolean IsWind = false;
	public integer ICurrentSpell = 0;

	// 魔能数
	integer IMoneng = 0;

	// 提升智力倍数
	key kNoneIntTimes;
	// 泉水
	key kUHuanyiQuan;
	// 古参
	key kIGuCan;
	timer TGuCan = null;
	// 寰宇
	key kHuanyuTimes;

	// 魔能
	texttag TTMoneng;
	effect ELowMoneng = null;

	unit UGucan = null;

	// 开始挑战的计时器
	timer TiHuanyiTiaozhan = null;
	timerdialog TiDiaHuanyiTiaozhan = null;
	integer HuanyiTiaozhanCount = 0;
	integer HuanyiTiaozhanCurrent = 0;
	integer HuanyiWrongTimes = 0;

	// 开始挑战
	function RandomSetHuanyiTiaozhan() {
		integer i;

		i = GetRandomInt(1, 16);
		if (i == 1) {
			HuanyiTiaozhanCurrent = 'AHH5';
		} else if (i == 2) {
			HuanyiTiaozhanCurrent = 'AHH6';
		} else if (i == 3) {
			HuanyiTiaozhanCurrent = 'AHH7';
		} else if (i == 4) {
			HuanyiTiaozhanCurrent = 'AHH8';
		} else if (i == 5) {
			HuanyiTiaozhanCurrent = 'AHH9';
		} else if (i == 6) {
			HuanyiTiaozhanCurrent = 'AHHA';
		} else if (i == 7) {
			HuanyiTiaozhanCurrent = 'AHHB';
		} else if (i == 8) {
			HuanyiTiaozhanCurrent = 'AHHC';
		} else if (i == 9) {
			HuanyiTiaozhanCurrent = 'AHHD';
		} else if (i == 10) {
			HuanyiTiaozhanCurrent = 'AHHE';
		} else if (i == 11) {
			HuanyiTiaozhanCurrent = 'AHHF';
		} else if (i == 12) {
			HuanyiTiaozhanCurrent = 'AHHG';
		} else if (i == 13) {
			HuanyiTiaozhanCurrent = 'AHHH';
		} else if (i == 14) {
			HuanyiTiaozhanCurrent = 'AHHI';
		} else if (i == 15) {
			HuanyiTiaozhanCurrent = 'AHHJ';
		} else {
			HuanyiTiaozhanCurrent = 'AHHK';
		}
		DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r你的" + I2S(HuanyiTiaozhanCount) + "次技能挑战为" + GetAbilityName(HuanyiTiaozhanCurrent) + ".");
	}

	function HuanyiTiaozhanPanding() {
		if (ICurrentSpell == HuanyiTiaozhanCurrent) {
			HuanyiTiaozhanCount = HuanyiTiaozhanCount + 1;
			RandomSetHuanyiTiaozhan();
			HuanyiWrongTimes = 0;
		} else {
			HuanyiWrongTimes = HuanyiWrongTimes + 1;
			if (HuanyiWrongTimes >= 7) {
				HuanyiTiaozhanCount = 0;
				HuanyiWrongTimes = 0;
				DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r7次按键不能正确切换,清空挑战值.");
			}
		}
	}

	public function InitHuanyiTiaozhan() {
		if (TiHuanyiTiaozhan != null) {
			DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r请完成目前挑战再重新输入!");
			return;
		}
		TiHuanyiTiaozhan = CreateTimer();
		TiDiaHuanyiTiaozhan = CreateTimerDialogBJ(TiHuanyiTiaozhan, "幻逸挑战");
		TimerStart(TiHuanyiTiaozhan, 30, false, function () {
			DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r你成功在30秒内完成了" + I2S(HuanyiTiaozhanCount) + "个技能.");
			if (HuanyiTiaozhanCount >= 25) {
				debug SetHuanyiSpinOK(GetOwningPlayer(Huanyi));
			}
			TimerDialogDisplay(TiDiaHuanyiTiaozhan, false);
			DestroyTimerDialog(TiDiaHuanyiTiaozhan);
			PauseTimer(TiHuanyiTiaozhan);
			DestroyTimer(TiHuanyiTiaozhan);
			TiHuanyiTiaozhan = null;
			TiDiaHuanyiTiaozhan = null;
			HuanyiWrongTimes = 0;
			HuanyiTiaozhanCount = 0;
		});
		TimerDialogDisplay(TiDiaHuanyiTiaozhan, true);
		HuanyiTiaozhanCount = 1;
		RandomSetHuanyiTiaozhan();
	}

	// 马甲的攻击伤害
	public function SimulateDamageHuanyi(unit u) -> boolean {
		// 风
		if (GetUnitTypeId(u) == 'hhh3') {
			UnitDamageTarget(Huanyi, GetTriggerUnit(), RDamageHuanyi * 0.3, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
			return true;
		}
		// 冰火
		if (GetUnitTypeId(u) == 'h01B' && udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] == Huanyi) {
			UnitDamageTarget(Huanyi, GetTriggerUnit(), RDamageHuanyi * 0.4, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
			return true;
		}
		return false;
	}

	// 马甲的死亡触发效果
	public function SimulateDeathHuanyi(unit u) {
		if (GetUnitTypeId(u) == 'hhh7') {
			DamageAreaMagic(Huanyi, GetUnitX(u), GetUnitY(u), 300, RDamageHuanyi * 1.5, null);
			DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", GetUnitX(u), GetUnitY(u)));
		}
	}

	// 获取多重施法的重数:1-5
	function GetMultiSpell() -> integer {
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(Huanyi))]) {
			return 6;
		}

		if (!(IsThirdSpellOK(Huanyi) && GetUnitAbilityLevel(Huanyi, 'AHH2') == 1)) {
			return 1 + IJ2(Huanyi, 1, 0);
		}

		return IMaxBJ(IMinBJ(IMoneng / 2, 5), 1) + IJ2(Huanyi, 1, 0);
	}

	// 幻元伏心，加20%的智力
	function None() {
		integer times;
		real intTimes;
		real time;
		timer t;

		times = GetMultiSpell();
		intTimes = times * 0.2;
		time = times * 10;
		t = CreateTimer();
		SaveReal(spellTable, GetHandleId(t), kNoneIntTimes, intTimes);
		TimerStart(t, time, false, function () {
			timer t;
			real intTimes;

			t = GetExpiredTimer();
			intTimes = LoadReal(spellTable, GetHandleId(t), kNoneIntTimes);
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), -1 * intTimes);
			FlushChildHashtable(spellTable, GetHandleId(t));
			PauseTimer(t);
			DestroyTimer(t);
			t = null;
		});
		AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), intTimes);
		YDWETimerDestroyEffect(time, AddSpecialEffectTargetUnitBJ("overhead", Huanyi, "war3mapImported\\music.mdx"));
		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH5'), "成功增加" + I2S(times * 20) + "%的智力，持续" + I2S(times * 10) + "秒。");
		t = null;
	}

	// 七炎焚狱
	function Fire(real x, real y) {
		integer times;
		real damage;
		integer i;

		times = GetMultiSpell();
		damage = RDamageHuanyi;
		i = 1;

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpell(GetOwningPlayer(Huanyi), GetAbilityName('AHH6'), damage);

		while (times > 0) {
			times = times - 1;
			CreateUnitEffect(GetOwningPlayer(Huanyi), 'hhh1', x, y, 0);
			i = 1;
			while (i <= 6) {
				CreateUnitEffect(GetOwningPlayer(Huanyi), 'hhh1', x + 400 * CosBJ(i * 60), y + 400 * SinBJ(i * 60), 0);
				i = i + 1;
			}
			DamageAreaMagic(Huanyi, x, y, 600, damage, null);
			if (times <= 0) break;
			PolledWait(0.5);
		}
	}

	// 天古木精
	function Lumber() {
		integer times;
		integer attack;
		integer defense;
		integer hp;
		unit u;
		integer i;

		times = GetMultiSpell();
		attack = GetHeroInt(Huanyi, true) + GetAttack(Huanyi);
		defense = GetHeroAgi(Huanyi, true) / 100 + GetDefense(Huanyi);
		hp = GetHeroStr(Huanyi, true) * 10 + GetHP(Huanyi);
		i = 1;

		while (i <= times) {
			u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh2', GetUnitX(Huanyi), GetUnitY(Huanyi), 0);
			SetUnitAnimation(u, "birth");
			UnitApplyTimedLifeBJ(180.00, 'BHwe', u);
			SetAttack(u, attack);
			SetDefense(u, defense);
			SetHP(u, hp);
			i = i + 1;
		}

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellName(GetOwningPlayer(Huanyi), GetAbilityName('AHH8'));
		u = null;
	}

	// 幻化残卷
	function Wind() {
		integer times;
		unit u;
		integer i;

		times = GetMultiSpell();
		i = 1;

		while (i <= times) {
			u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh3', YDWECoordinateX(GetUnitX(Huanyi) + GetRandomInt(-100, 100)), YDWECoordinateY(GetUnitY(Huanyi) + GetRandomInt(-100, 100)), 0);
			UnitApplyTimedLifeBJ(15.00, 'BHwe', u);
			i = i + 1;
		}

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellName(GetOwningPlayer(Huanyi), GetAbilityName('AHH9'));
		u = null;
	}

	// 冰火双绝，h01B
	function FireWater() {
		integer times;
		real damage;
		integer i;

		times = GetMultiSpell();
		damage = RDamageHuanyi * 0.6;
		i = 6 * times;

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpell(GetOwningPlayer(Huanyi), GetAbilityName('AHHA'), damage);

		while (i > 0) {
			i = i - 1;
			SimulateSpell4(Huanyi, YDWECoordinateX(GetUnitX(Huanyi) + GetRandomReal(-600, 600)), YDWECoordinateY(GetUnitY(Huanyi) + GetRandomReal(-600, 600)), 'A05S', 1, 6, "blizzard");
			SimulateSpell4(Huanyi, YDWECoordinateX(GetUnitX(Huanyi) + GetRandomReal(-600, 600)), YDWECoordinateY(GetUnitY(Huanyi) + GetRandomReal(-600, 600)), 'A00U', 1, 6, "blizzard");
			if (i <= 0) break;
			PolledWait(0.5 / times);
		}
	}

	// 万象归影
	function FireLumber(real x, real y) {
		integer times;
		real damage;
		integer i;
		integer ii;
		real range;

		times = GetMultiSpell();
		damage = RDamageHuanyi * 0.15;
		i = 1;
		ii = 1;
		range = 150 * times;

		if (IsInForbitRegion(x, y, Huanyi)) {
			DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0, 0, "|cFFFF66CC【消息】|r此处禁止瞬移到达.");
			return;
		}

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}

		SetUnitManaBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_MANA) - 75);
		PrintSpell(GetOwningPlayer(Huanyi), GetAbilityName('AHHB'), damage);
		SetUnitX(Huanyi, x);
		SetUnitY(Huanyi, y);
		IssueImmediateOrder(Huanyi, "stop");
		DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y));

		while (i <= times - 1) {
			ii = 1;
			while (ii <= i * 1 + 4) {
				DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", YDWECoordinateX(x + 150 * i * CosBJ(360 * ii / (i * 1 + 4))), YDWECoordinateY(y + 150 * i * SinBJ(360 * ii / (i * 1 + 4)))));
				ii = ii + 1;
			}
			i = i + 1;
		}
		DamageAreaMagic(Huanyi, x, y, range, damage, null);
	}

	// 火轮烁日
	function FireWind(real x2, real y2) {
		integer times;
		real damage;
		integer i;
		real x1;
		real y1;
		real facing;
		unit u;

		times = GetMultiSpell();
		damage = RDamageHuanyi;
		i = 1;

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpell(GetOwningPlayer(Huanyi), GetAbilityName('AHHC'), damage);

		while (times > 0) {
			times = times - 1;
			x1 = GetUnitX(Huanyi);
			y1 = GetUnitY(Huanyi);
			facing = Atan2BJ(y2 - y1, x2 - x1);
			u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh4', x1, y1, facing);
			UnitApplyTimedLifeBJ(2, 'BHwe', u);
			YDWETimerPatternRushSlide(u, facing, 1400, 2, 0.05, damage, 300., false, true, true, "origin", "", "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl");
			if (times <= 0) break;
			PolledWait(0.5);
		}
		u = null;
	}

	// 幻冥天泉
	function WaterWind(real x, real y) {
		integer times;
		timer t;
		unit u;

		times = GetMultiSpell();
		t = CreateTimer();
		u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh5', x, y, 0);

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		UnitApplyTimedLifeBJ(15 * times, 'BHwe', u);
		SaveUnitHandle(spellTable, GetHandleId(t), kUHuanyiQuan, u);
		TimerStart(t, 1, true, function () {
			timer t;
			integer id;
			unit u;
			group l_group;
			unit l_unit;

			t = GetExpiredTimer();
			id = GetHandleId(t);
			u = LoadUnitHandle(spellTable, id, kUHuanyiQuan);
			l_group = CreateGroup();

			if (IsUnitAliveBJ(u)) {
				GroupEnumUnitsInRange(l_group, GetUnitX(u), GetUnitY(u), 600, null);
				while (true) {
					l_unit = FirstOfGroup(l_group);
					if (l_unit == null) break;
					GroupRemoveUnit(l_group, l_unit);
					if (IsAllyUnit(l_unit, Huanyi) && IsUnitAliveBJ(l_unit)) {
						RecoverUnitHP(l_unit, 0.3);
						RecoverUnitMP(l_unit, 20);
						DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", GetUnitX(l_unit), GetUnitY(l_unit)));
					}
				}
				DestroyGroup(l_group);
				l_group = null;
				l_unit = null;
			} else {
				RemoveUnit(u);
				FlushChildHashtable(spellTable, id);
				PauseTimer(t);
				DestroyTimer(t);
			}
			u = null;
			t = null;
			DestroyGroup(l_group);
			l_unit = null;
			l_group = null;
		});
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHHE'), "持续" + I2S(15 * times) + "秒。");
		t = null;
		u = null;
	}

	// 沧怒古参
	function WaterLumberWind(real x, real y) {
		integer times;

		times = GetMultiSpell();
		if (UGucan != null) {
			RemoveUnit(UGucan);
		}
		if (TGuCan != null) {
			PauseTimer(TGuCan);
			DestroyTimer(TGuCan);
		}
		TGuCan = CreateTimer();
		UGucan = CreateUnit(GetOwningPlayer(Huanyi), 'hhh6', x, y, 270);

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		SetUnitScalePercent(UGucan, 100.00 + times * 20.00, 100.00 + times * 20.00, 100.00 + times * 20.00);
		SetUnitAnimation(UGucan, "stand birth alternate work upgrade");
		SaveInteger(spellTable, GetHandleId(TGuCan), kIGuCan, times);
		TimerStart(TGuCan, 1, true, function () {
			integer id;
			integer times;
			integer i;
			integer ii;

			id = GetHandleId(TGuCan);
			times = LoadInteger(spellTable, id, kIGuCan);
			i = 1;
			ii = 1;

			if (IsUnitAliveBJ(Huanyi)) {
				DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", GetUnitX(UGucan), GetUnitY(UGucan)));
				while (i <= times - 1) {
					ii = 1;
					while (ii <= i * 1 + 2) {
						DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl", YDWECoordinateX(GetUnitX(UGucan) + 150 * i * CosBJ(360 * ii / (i * 1 + 2))), YDWECoordinateY(GetUnitY(UGucan) + 150 * i * SinBJ(360 * ii / (i * 1 + 2)))));
						ii = ii + 1;
					}
					i = i + 1;
				}
				DamageAreaMirror(Huanyi, GetUnitX(UGucan), GetUnitY(UGucan), times * 150, RDamageHuanyi * 0.15);
			} else {
				RemoveUnit(UGucan);
				UGucan = null;
				FlushChildHashtable(spellTable, id);
				PauseTimer(TGuCan);
				DestroyTimer(TGuCan);
				TGuCan = null;
			}
		});
		PrintSpellName(GetOwningPlayer(Huanyi), GetAbilityName('AHHG'));
	}

	// 雨玥千里
	function FireLumberWind() {
		integer times;

		times = GetMultiSpell();
		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHHH'), ",眩晕" + I2S(times * 2) + "秒。");
		SimulateSpell(Huanyi, Huanyi, 'A0BI', times, 6, "stomp", false, true, false);
	}

	// 残月流星
	function FireWaterWind(real x, real y) {
		integer times;
		real damage;
		unit u;
		integer i;

		times = GetMultiSpell();
		damage = RDamageHuanyi * 1.5;
		i = 1;

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpell(GetOwningPlayer(Huanyi), GetAbilityName('AHHI'), damage);

		while (times > 0) {
			times = times - 1;
			u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh7', x, y, 0);
			SetUnitFlyHeight(u, 0.00, 333.00);
			if (times <= 0) break;
			PolledWait(0.5);
		}
		u = null;
	}

	// 引力界场
	function FireWaterLumber(real x, real y) {
		integer times;
		integer i;
		unit u;
		Attract attract;

		times = GetMultiSpell();
		i = 1;

		if (IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY)) {
			DisplayTextToPlayer(GetOwningPlayer(Huanyi), 0., 0., "|cFFFF66CC【消息】|r目标地点不能通行,技能施法无效！");
			return;
		}
		u = CreateUnit(GetOwningPlayer(Huanyi), 'hhh8', x, y, 0);
		attract = Attract.create(u, I3(IsInDiamondRegion(x, y), 1200, 900 * times), 0.05, 50 * times);

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHHJ'), "范围" + I2S(900 * times) + "s.");
		UnitApplyTimedLifeBJ(3, 'BHwe', u);
		attract.SetForbitHero();
		attract.start();
		u = null;
	}

	// 寰宇归一
	function FireWaterLumberWind() {
		integer times;
		real attrTimes;
		real time;
		timer t;

		times = GetMultiSpell();
		attrTimes = times * 0.2;
		time = times * 10;
		t = CreateTimer();
		SaveReal(spellTable, GetHandleId(t), kHuanyuTimes, attrTimes);
		TimerStart(t, time, false, function () {
			timer t;
			real attrTimes;

			t = GetExpiredTimer();
			attrTimes = LoadReal(spellTable, GetHandleId(t), kHuanyuTimes);
			AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), -1 * attrTimes);
			AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), -1 * attrTimes);
			AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), -1 * attrTimes);
			FlushChildHashtable(spellTable, GetHandleId(t));
			PauseTimer(t);
			DestroyTimer(t);
			t = null;
		});
		AddIntPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), attrTimes);
		AddAgiPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), attrTimes);
		AddStrPercentImme(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), attrTimes);
		YDWETimerDestroyEffect(time, AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\blackbird.mdx"));

		if (times > 1) {
			CreateSpellTextTag(I2S(times) + "重施法", Huanyi, 0, 100, 0, 4);
		}
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHHK'), "成功增加" + I2S(times * 20) + "%的三围属性，持续" + I2S(times * 10) + "秒。");
		t = null;
	}

	// 复苏
	function Fusu() {
		real x;
		real y;

		x = GetSpellTargetX();
		y = GetSpellTargetY();
		PlaySoundBJ(gg_snd_huanyi_5);

		// 幻元伏心
		None();
		PolledWait(1);

		// 七炎焚狱
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 100) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -100);
		Fire(x, y);
		PolledWait(1);

		// 冰芯之铠
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 15) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -15);
		SimulateSpell(Huanyi, Huanyi, 'AHH7', GetHeroLevel(Huanyi) / 2, 5, "frostarmoron", false, false, true);
		PrintSpellName(GetOwningPlayer(Huanyi), GetAbilityName('AHH7'));
		PolledWait(1);

		// 天古木精
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 100) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -100);
		Lumber();
		PolledWait(1);

		// 幻化残卷
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 200) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -200);
		Wind();
		PolledWait(1);

		// 冰火双绝
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 150) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -150);
		FireWater();
		PolledWait(1);

		// 万象归影
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 100) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -100);
		FireLumber(x, y);
		PolledWait(1);

		// 火轮烁日
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 150) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -150);
		FireWind(x, y);
		PolledWait(1);

		// 幻冥天泉
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 300) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -300);
		WaterWind(x, y);
		PolledWait(1);

		// 沧怒古参
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 1500) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -1500);
		WaterLumberWind(x, y);
		PolledWait(1);

		// 雨玥千里
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 200) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -200);
		FireLumberWind();
		PolledWait(1);

		// 残月流星
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 100) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -100);
		FireWaterWind(x, y);
		PolledWait(1);

		// 引力界场
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 360) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -360);
		FireWaterLumber(x, y);
		PolledWait(1);

		// 寰宇归一
		if (GetUnitState(Huanyi, UNIT_STATE_MANA) < 800) {
			PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
			return;
		}
		RecoverUnitMP(Huanyi, -800);
		FireWaterLumberWind();
		PrintSpellContent(GetOwningPlayer(Huanyi), GetAbilityName('AHH4'), ",施法结束.");
	}

	// 幻逸升级后刷新冰甲的等级
	function TSpellHuanyi2Act() {
		SetUnitAbilityLevel(Huanyi, 'AHH7', IMinBJ(100, GetHeroLevel(Huanyi) / 2));
	}

	// 幻逸魔能等级减少受到的伤害
	function TSpellHuanyi3Con() -> boolean {
		return IsFourthSpellOK(Huanyi) && GetUnitAbilityLevel(Huanyi, 'AHH3') == 1 && IMoneng <= 5 && GetRandomInt(1, 2) == 1;
	}

	function TSpellHuanyi3Act() {
		SetUnitLifeBJ(Huanyi, GetUnitState(Huanyi, UNIT_STATE_LIFE) + GetEventDamage());
	}

	// 刷新魔能
	function InitPower() {
		timer ti;

		ti = CreateTimer();
		IMoneng = 0;
		TTMoneng = CreateTextTagUnitBJ("0级魔能", Huanyi, 0, 20, 0, 50, 100, 0);
		TimerStart(ti, 0.05, true, function () {
			SetTextTagPosUnitBJ(TTMoneng, Huanyi, 20);

			if ((GetUnitState(Huanyi, UNIT_STATE_MANA) >= GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.9) && IMoneng < 10) {
				SetUnitManaPercentBJ(Huanyi, 30);
				DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Avatar\\AvatarCaster.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)));
				IMoneng = IMoneng + 1;
				AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), 0.1);
				if (ELowMoneng != null && IMoneng > 5) {
					DestroyEffect(ELowMoneng);
					ELowMoneng = null;
				}
			} else if ((GetUnitState(Huanyi, UNIT_STATE_MANA) < GetUnitState(Huanyi, UNIT_STATE_MAX_MANA) * 0.2) && IMoneng > 0) {
				SetUnitManaPercentBJ(Huanyi, 80);
				IMoneng = IMoneng - 1;
				DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl", GetUnitX(Huanyi), GetUnitY(Huanyi)));
				AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(Huanyi)), -0.1);
				if (ELowMoneng == null && IMoneng <= 5) {
					ELowMoneng = AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl");
				}
			} else {
				return;
			}

			SetTextTagTextBJ(TTMoneng, I2S(IMoneng) + "级魔能", 20);

		});
		ELowMoneng = AddSpecialEffectTargetUnitBJ("origin", Huanyi, "Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster.mdl");
		ti = null;
	}

	// 根据元素激活与否去设置相应的技能
	function SetHuanyiSpell() {
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), ICurrentSpell, false);
		if (ICurrentSpell == 'AHHF') {
			UnitRemoveAbility(Huanyi, 'AHHF');
		}

		// 0排列
		if (!IsFire && !IsWater && !IsLumber && !IsWind) {
			ICurrentSpell = 'AHH5';
			// 1排列
		} else if (IsFire && !IsWater && !IsLumber && !IsWind) {
			ICurrentSpell = 'AHH6';
		} else if (!IsFire && IsWater && !IsLumber && !IsWind) {
			ICurrentSpell = 'AHH7';
		} else if (!IsFire && !IsWater && IsLumber && !IsWind) {
			ICurrentSpell = 'AHH8';
		} else if (!IsFire && !IsWater && !IsLumber && IsWind) {
			ICurrentSpell = 'AHH9';
			// 2排列
		} else if (IsFire && IsWater && !IsLumber && !IsWind) {
			ICurrentSpell = 'AHHA';
		} else if (IsFire && !IsWater && IsLumber && !IsWind) {
			ICurrentSpell = 'AHHB';
		} else if (IsFire && !IsWater && !IsLumber && IsWind) {
			ICurrentSpell = 'AHHC';
		} else if (!IsFire && IsWater && IsLumber && !IsWind) {
			ICurrentSpell = 'AHHD';
		} else if (!IsFire && IsWater && !IsLumber && IsWind) {
			ICurrentSpell = 'AHHE';
		} else if (!IsFire && !IsWater && IsLumber && IsWind) {
			ICurrentSpell = 'AHHF';
			UnitAddAbility(Huanyi, 'AHHF');
			// 3排列
		} else if (!IsFire && IsWater && IsLumber && IsWind) {
			ICurrentSpell = 'AHHG';
		} else if (IsFire && !IsWater && IsLumber && IsWind) {
			ICurrentSpell = 'AHHH';
		} else if (IsFire && IsWater && !IsLumber && IsWind) {
			ICurrentSpell = 'AHHI';
		} else if (IsFire && IsWater && IsLumber && !IsWind) {
			ICurrentSpell = 'AHHJ';
			// 4排列
		} else {
			ICurrentSpell = 'AHHK';
		}

		if (!BTianfu) {
			SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), ICurrentSpell, true);
		}

		if (TiHuanyiTiaozhan != null) {
			HuanyiTiaozhanPanding();
		}
	}

	// 主英雄技能判断
	function TSpellHuanyiAct() {
		// 四相
		if (GetSpellAbilityId() == 'AHH0') {
			IsFire = !IsFire;
			SetHuanyiSpell();
		} else if (GetSpellAbilityId() == 'AHH1') {
			IsWater = !IsWater;
			SetHuanyiSpell();
		} else if (GetSpellAbilityId() == 'AHH2') {
			IsLumber = !IsLumber;
			SetHuanyiSpell();
		} else if (GetSpellAbilityId() == 'AHH3') {
			IsWind = !IsWind;
			SetHuanyiSpell();
			// 复苏
		} else if (GetSpellAbilityId() == 'AHH4') {
			Fusu();
			// 幻元伏心
		} else if (GetSpellAbilityId() == 'AHH5') {
			None();
			// 七炎焚狱
		} else if (GetSpellAbilityId() == 'AHH6') {
			Fire(GetSpellTargetX(), GetSpellTargetY());
			// 天古木精
		} else if (GetSpellAbilityId() == 'AHH8') {
			Lumber();
			// 幻化残卷
		} else if (GetSpellAbilityId() == 'AHH9') {
			Wind();
			// 冰火双绝
		} else if (GetSpellAbilityId() == 'AHHA') {
			FireWater();
			// 万象归影
		} else if (GetSpellAbilityId() == 'AHHB') {
			FireLumber(GetSpellTargetX(), GetSpellTargetY());
			// 火轮烁日
		} else if (GetSpellAbilityId() == 'AHHC') {
			FireWind(GetSpellTargetX(), GetSpellTargetY());
			// 幻冥天泉
		} else if (GetSpellAbilityId() == 'AHHE') {
			WaterWind(GetSpellTargetX(), GetSpellTargetY());
			// 沧怒古参
		} else if (GetSpellAbilityId() == 'AHHG') {
			WaterLumberWind(GetSpellTargetX(), GetSpellTargetY());
			// 雨玥千里
		} else if (GetSpellAbilityId() == 'AHHH') {
			FireLumberWind();
			// 残月流星
		} else if (GetSpellAbilityId() == 'AHHI') {
			FireWaterWind(GetSpellTargetX(), GetSpellTargetY());
			// 引力界场
		} else if (GetSpellAbilityId() == 'AHHJ') {
			FireWaterLumber(GetSpellTargetX(), GetSpellTargetY());
			// 寰宇归一
		} else if (GetSpellAbilityId() == 'AHHK') {
			FireWaterLumberWind();
		}
	}

	// 英雄学习技能
	public function LearnSkillHuanyiI(unit learner, integer whichSpell) {
		integer i;

		if (learner == Huanyi) {
			if (whichSpell == 2 && IsSecondSpellOK(Huanyi) && GetUnitAbilityLevel(Huanyi, 'AHH1') == 1) {
				// 技能2初始化
				InitPower();
			} else if (whichSpell == 4 && IsFourthSpellOK(Huanyi) && GetUnitAbilityLevel(Huanyi, 'AHH3') == 1) {
				InitHuanyiAura();
				AddSpecialEffectTargetUnitBJ("origin", Huanyi, "war3mapImported\\sichongjiejie_b.mdx");
			}
		}
	}

	public function LearnSkillHuanyi(unit learner, integer learnSpellID) {
		if (learner == Huanyi) {
			if (learnSpellID == 'AHH0') {
				LearnSkillHuanyiI(learner, 1);
			} else if (learnSpellID == 'AHH1') {
				LearnSkillHuanyiI(learner, 2);
			} else if (learnSpellID == 'AHH2') {
				LearnSkillHuanyiI(learner, 3);
			} else if (learnSpellID == 'AHH3') {
				LearnSkillHuanyiI(learner, 4);
			} else if (learnSpellID == 'AHH4') {
				LearnSkillHuanyiI(learner, 5);
			}
		}
	}

	// 幻逸皮肤
	function InitHuanyiSpin(unit u) -> unit {
		if (IsHuanyiSpin1(GetOwningPlayer(u))) {
			udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u), 'H026', GetUnitX(u), GetUnitY(u), 0);
			gg_unit_Hant_0205 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))];
			UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]);
			AddSpellPercent(GetConvertedPlayerId(GetOwningPlayer(u)), 0.1);
			SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))], 1000);
			RemoveUnit(u);
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))];
		} else {
			return u;
		}
	}

	// 初始化新英雄,选取时调用
	public function InitHuanyi(unit u) {
		trigger t;

		t = CreateTrigger();
		Huanyi = InitHuanyiSpin(u);
		ICurrentSpell = 'AHH5';

		// 主英雄技能
		TSpellHuanyi = CreateTrigger();
		TriggerRegisterUnitEvent(TSpellHuanyi, Huanyi, EVENT_UNIT_SPELL_EFFECT);
		TriggerAddAction(TSpellHuanyi, function TSpellHuanyiAct);

		// 魔能等级低于5则减少受到的50%伤害
		TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_DAMAGED);
		TriggerAddCondition(t, Condition(function TSpellHuanyi3Con));
		TriggerAddAction(t, function TSpellHuanyi3Act);


		// 刷新伤害
		TimerStart(CreateTimer(), 1, true, function () {
			RDamageHuanyi = GetDamageInt(Huanyi);
		});

		// 冰甲的等级刷新
		t = CreateTrigger();
		TriggerRegisterUnitEvent(t, Huanyi, EVENT_UNIT_HERO_LEVEL);
		TriggerAddAction(t, function TSpellHuanyi2Act);
		t = null;

		// 初始化技能状态
		UnitAddAbility(Huanyi, 'AHH6');
		UnitAddAbility(Huanyi, 'AHH7');
		UnitAddAbility(Huanyi, 'AHH8');
		UnitAddAbility(Huanyi, 'AHH9');
		UnitAddAbility(Huanyi, 'AHHA');
		UnitAddAbility(Huanyi, 'AHHB');
		UnitAddAbility(Huanyi, 'AHHC');
		UnitAddAbility(Huanyi, 'AHHD');
		UnitAddAbility(Huanyi, 'AHHE');
		UnitAddAbility(Huanyi, 'AHHG');
		UnitAddAbility(Huanyi, 'AHHH');
		UnitAddAbility(Huanyi, 'AHHI');
		UnitAddAbility(Huanyi, 'AHHJ');
		UnitAddAbility(Huanyi, 'AHHK');

		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH6', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH7', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH8', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHH9', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHA', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHB', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHC', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHD', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHE', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHF', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHG', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHH', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHI', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHJ', false);
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'AHHK', false);

		// 幻逸回魔
		SetPlayerAbilityAvailable(GetOwningPlayer(Huanyi), 'A0HX', false);
	}

	function onInit() {
		// 初始化函数留空
	}
}

#endif
//! endzinc
