
#ifndef ChatCommandIncluded
#define ChatCommandIncluded

#include  "edit/LHBase.j"
#include  "edit/VIP.j"
///#include  "edit/Continous.j"
#include  "edit/Diffculty.j"
#include  "edit/Xuanxue.j"
#include  "edit/Huanyi.j"
#include  "edit/Hanshang.j"
#include  "edit/Bajue.j"
#include  "edit/Juexing.j"
#include  "edit/BaseVersion.j"

//! zinc
library ChatCommand requires LHBase,VIP,Version,Diffculty,Xuanxue,Huanyi,Bajue,Juexing,Hanshang,BaseVersion {

	item  IBox[];
	integer IBoxSucceed = 0;
	integer IBoxCount = 0;

	public boolean BShengli = false;

	// 合成宝箱 - CombineBoxE
	function CombineBoxE() {
		if ((GetItemTypeId(GetEnumItem()) == 'hlst')) {
			if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) && (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423))) {
				return;
			}
			IBox[IBoxCount] = GetEnumItem();
			IBoxCount = IBoxCount + 1;
		}

		if (IBoxCount >= 3) {
			if (IBox[0] == null || IBox[1] == null || IBox[2] == null) {
				IBoxCount = 0;
				return;
			}
			RemoveItem(IBox[0]);
			RemoveItem(IBox[1]);
			RemoveItem(IBox[2]);
			CreateItem('wshs', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]));
			IBox[0] = null;
			IBox[1] = null;
			IBox[2] = null;
			IBoxCount = 0;
			IBoxSucceed = IBoxSucceed + 3;
		}
	}

	// 合成宝箱 - CombineBoxD
	function CombineBoxD() {
		if ((GetItemTypeId(GetEnumItem()) == 'wshs')) {
			if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) && (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423))) {
				return;
			}
			IBox[IBoxCount] = GetEnumItem();
			IBoxCount = IBoxCount + 1;
		}

		if (IBoxCount >= 3) {
			if (IBox[0] == null || IBox[1] == null || IBox[2] == null) {
				IBoxCount = 0;
				return;
			}
			RemoveItem(IBox[0]);
			RemoveItem(IBox[1]);
			RemoveItem(IBox[2]);
			CreateItem('wild', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]));
			IBox[0] = null;
			IBox[1] = null;
			IBox[2] = null;
			IBoxCount = 0;
			IBoxSucceed = IBoxSucceed + 3;
		}
	}

	// 合成宝箱 - CombineBoxC
	function CombineBoxC() {
		if ((GetItemTypeId(GetEnumItem()) == 'wild')) {
			if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) && (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423))) {
				return;
			}
			IBox[IBoxCount] = GetEnumItem();
			IBoxCount = IBoxCount + 1;
		}

		if (IBoxCount >= 3) {
			if (IBox[0] == null || IBox[1] == null || IBox[2] == null) {
				IBoxCount = 0;
				return;
			}
			RemoveItem(IBox[0]);
			RemoveItem(IBox[1]);
			RemoveItem(IBox[2]);
			CreateItem('totw', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]));
			IBox[0] = null;
			IBox[1] = null;
			IBox[2] = null;
			IBoxCount = 0;
			IBoxSucceed = IBoxSucceed + 3;
		}
	}

	// 合成宝箱 - CombineBoxB
	function CombineBoxB() {
		if ((GetItemTypeId(GetEnumItem()) == 'totw')) {
			if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) && (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423))) {
				return;
			}
			IBox[IBoxCount] = GetEnumItem();
			IBoxCount = IBoxCount + 1;
		}

		if (IBoxCount >= 3) {
			if (IBox[0] == null || IBox[1] == null || IBox[2] == null) {
				IBoxCount = 0;
				return;
			}
			RemoveItem(IBox[0]);
			RemoveItem(IBox[1]);
			RemoveItem(IBox[2]);
			CreateItem('sror', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]));
			IBox[0] = null;
			IBox[1] = null;
			IBox[2] = null;
			IBoxCount = 0;
			IBoxSucceed = IBoxSucceed + 3;
		}
	}

	// 合成宝箱 - CombineBoxA
	function CombineBoxA() {
		if ((GetItemTypeId(GetEnumItem()) == 'sror')) {
			if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) && (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) != LoadInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423))) {
				return;
			}
			IBox[IBoxCount] = GetEnumItem();
			IBoxCount = IBoxCount + 1;
		}

		if (IBoxCount >= 3) {
			if (IBox[0] == null || IBox[1] == null || IBox[2] == null) {
				IBoxCount = 0;
				return;
			}
			RemoveItem(IBox[0]);
			RemoveItem(IBox[1]);
			RemoveItem(IBox[2]);
			CreateItem('fgrg', GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]));
			IBox[0] = null;
			IBox[1] = null;
			IBox[2] = null;
			IBoxCount = 0;
			IBoxSucceed = IBoxSucceed + 3;
		}
	}

	public function CombineBox() {
		if (!vip.is(GetTriggerPlayer())) {
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r需要成为永久赞助才能使用此指令!");
			return;
		}

		BJDebugMsg("|cFFFF66CC【消息】|r" + GetUnitName(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]) + "使用指令-hc成功将地上的所有宝箱融合成为更高级的宝箱，列表如下：");
		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;
		IBoxSucceed = 0;

		EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxE);
		if (IBoxSucceed != 0) {
			BJDebugMsg(I2S(IBoxSucceed) + "个E级宝箱→→→" + I2S(IBoxSucceed / 3) + "个D级宝箱。");
			IBoxSucceed = 0;
		}

		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;

		EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxD);
		if (IBoxSucceed != 0) {
			BJDebugMsg(I2S(IBoxSucceed) + "个D级宝箱→→→" + I2S(IBoxSucceed / 3) + "个C级宝箱。");
			IBoxSucceed = 0;
		}

		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;

		EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxC);
		if (IBoxSucceed != 0) {
			BJDebugMsg(I2S(IBoxSucceed) + "个C级宝箱→→→" + I2S(IBoxSucceed / 3) + "个B级宝箱。");
			IBoxSucceed = 0;
		}

		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;

		EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxB);
		if (IBoxSucceed != 0) {
			BJDebugMsg(I2S(IBoxSucceed) + "个B级宝箱→→→" + I2S(IBoxSucceed / 3) + "个A级宝箱。");
			IBoxSucceed = 0;
		}

		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;

		EnumItemsInRectBJ(GetPlayableMapRect(), function CombineBoxA);
		if (IBoxSucceed != 0) {
			BJDebugMsg(I2S(IBoxSucceed) + "个A级宝箱→→→" + I2S(IBoxSucceed / 3) + "个S级宝箱。");
			IBoxSucceed = 0;
		}

		IBox[0] = null;
		IBox[1] = null;
		IBox[2] = null;
		IBoxCount = 0;
	}

	// 清除地上的所有宝石
	function ClearDiamondFunc() {
		if (IsDiamond(GetEnumItem()) && IsItemVisible(GetEnumItem())) {
			RemoveItem(GetEnumItem());
		}
	}

	function ClearDiamond() {
		EnumItemsInRectBJ(GetPlayableMapRect(), function ClearDiamondFunc);
	}


	// -fh指令
	public function ReviveBUG (player p) {
		timer t = CreateTimer();
		DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r英雄死亡,你的英雄将在21秒后复活...");
		KillSelf(udg_H[GetConvertedPlayerId(p)]);
		HG(udg_H[GetConvertedPlayerId(p)]);
		SavePlayerHandle(LHTable,GetHandleId(t),1,p);
		TimerStart(t,21,false,function (){
			timer t = GetExpiredTimer();
			integer id = GetHandleId(t);
			player p = LoadPlayerHandle(LHTable,GetHandleId(t),1);
			integer index = GetConvertedPlayerId(p);
			ReviveHeroLoc(udg_H[index], udg_Point_Fuhuo, true);
			ShowUnitShow(udg_H[index]);
			DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r复活成功！");
			PauseTimer(t);
			FlushChildHashtable(LHTable,id);
			DestroyTimer(t);
			t = null;
			p = null;
		});
		t = null;
	}

	// 聊天信息"-"指令
	public function ChatCommandAct() {
		string str; unit u;

		str = GetEventPlayerChatString();
		u = udg_H[GetConvertedPlayerId(GetTriggerPlayer())];

		// 自杀
		if (str == "-kill" && (!RectContainsUnit(gg_rct_Game1, udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))) {
			KillSelf(u);
			DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r自杀成功!");
			return;
		} else if (str == "-hc") {
			CombineBox();
		} else if (str == "-bs") {
			ClearDiamond();
		} else if (str == "-hs1") {
			Jiance1(u);
		} else if (str == "-hs2" && u != bajue) {
			Jiance2(u);
		} else if (str == "-hs3") {
			Jiance3(u);
		} else if (str == "-fh") {
			ReviveBUG(GetTriggerPlayer());
		} else if (str == "-chenji" && u == chenji) {
			ChenjiJiance();
		} else if (str == "-qxpf") {
			BCancelSpin[GetConvertedPlayerId(GetTriggerPlayer())] = true;
			BJDebugMsg("|cFFFF66CC【消息】|r成功取消皮肤效果.");
		} else if (str == "-dm") {
			MultiboardDisplayBJ(true, udg_D);
			BJDebugMsg("|cFFFF66CC【消息】|r开启显示多面板.");
		} else if (str == "-ck") {
			if (GetUnitTypeId(UDepot[GetConvertedPlayerId(GetTriggerPlayer())]) != 'nmgv') {
				BBoxName[GetConvertedPlayerId(GetTriggerPlayer())] = true;
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r现在请输入你要自定义的仓库头衔吧（注意不要掺杂有英文与数字）!");
			} else {
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r默认箱子皮肤不能使用该指令，如要使用请解锁任意箱子皮肤再使用!");
			}
		} else if (str == "-mm1" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "信哲大人") {
			BX1 = !BX1;
		} else if (str == "-mm2" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "信哲大人") {
			BX2 = !BX2;
			SetDIYName(GetTriggerPlayer(), "信手哲天富可敌国");
		} else if (str == "-wx1" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "无心使者") {
			JJ1 = !JJ1;
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r1");
		} else if (str == "-wx2" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "无心使者") {
			JJ2 = !JJ2;
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r2");
		} else if (str == "-wx3" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "无心使者" && (!JJ3)) {
			JJ3 = true;
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r3");
			AddDamagePercent(GetConvertedPlayerId(GetTriggerPlayer()), 1.5);
			UnitAddAbility(u, 'A0MU');
			SetPlayerAbilityAvailable(GetOwningPlayer(u), 'A0MU', false);
			UnitMakeAbilityPermanent(u, true, 'A0MU');
			UnitMakeAbilityPermanent(u, true, 'A0MG');
		} else if (str == "-wx4" && playerName[GetConvertedPlayerId(GetTriggerPlayer())] == "无心使者" && (!JJ4) && (u == kaisa || u == hanshang)) {
			InitHeroJuexing1(u);
			InitHeroJuexing2(u);
			InitHeroJuexing3(u);
			JJ4 = true;
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r4");
			// 玄雪皮肤
		} else if (str == "-xx" && GetOwningPlayer(xuanxue) == GetTriggerPlayer()) {
			InitHongdeng();
			DisplayTextToPlayer(GetOwningPlayer(xuanxue), 0., 0., "|cFFFF66CC【消息】|r开启玄雪英雄挑战.");
			// 炼金皮肤
		} else if (str == "-lj" && GetOwningPlayer(hanshang) == GetTriggerPlayer()) {
			InitDuxin();
			DisplayTextToPlayer(GetOwningPlayer(hanshang), 0., 0., "|cFFFF66CC【消息】|r开启寒殇英雄挑战.");
			// 玄雪皮肤
		} else if (str == "-bj" && GetOwningPlayer(bajue) == GetTriggerPlayer()) {
			InitFengshuang();
			DisplayTextToPlayer(GetOwningPlayer(bajue), 0., 0., "|cFFFF66CC【消息】|r开启霸绝英雄挑战.");
			// 幻逸皮肤
		} else if (str == "-hy" && GetOwningPlayer(Huanyi) == GetTriggerPlayer()) {
			InitHuanyiTiaozhan();
			DisplayTextToPlayer(GetOwningPlayer(bajue), 0., 0., "|cFFFF66CC【消息】|r开启幻逸英雄挑战.");
		} else if (str == "-bq" && renshu == 1) {
			Buqian1(GetTriggerPlayer());
		} else if (str == "-sh") {
			BHideDamage[GetConvertedPlayerId(GetTriggerPlayer())] = !(BHideDamage[GetConvertedPlayerId(GetTriggerPlayer())]);
			DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r成功显示/隐藏伤害.");
		} else if (str == "-yxjs" && GetTriggerPlayer() == GetFirstPlayer() && BShengli) {
			ForForce(GetPlayersAll(), function ShengliAll);
		} else if (str == "-qm") {
			if (IsQuanchengjiu(GetTriggerPlayer())) {
				BDIYName[GetConvertedPlayerId(GetTriggerPlayer())] = true;
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r现在请输入你要自定义的成就名吧!");
			} else {
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r你未解锁所有成就.");
			}
		} else if (str == "-qc") {
			if (TBianse[GetConvertedPlayerId(GetTriggerPlayer())] != null) {
				SetUnitVertexColor(udg_H[GetConvertedPlayerId(GetTriggerPlayer())], 255, 255, 255, 255);
				PauseTimer(TBianse[GetConvertedPlayerId(GetTriggerPlayer())]);
				DestroyTimer(TBianse[GetConvertedPlayerId(GetTriggerPlayer())]);
				FlushChildHashtable(itemTable, GetHandleId(TBianse[GetConvertedPlayerId(GetTriggerPlayer())]));
			}
		} else if (str == "-ms") {
			BMoshou[GetConvertedPlayerId(GetTriggerPlayer())] = !(BMoshou[GetConvertedPlayerId(GetTriggerPlayer())]);
			if (BMoshou[GetConvertedPlayerId(GetTriggerPlayer())]) {
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r重新装备魔兽后，魔兽将不会被点中，主动技能也会主动释放。");
			} else {
				DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r重新装备魔兽后，魔兽可以被点中，主动技能也能手动释放。");
			}
		}

		str = null;
		u = null;
	}

	// 小提示
	function ShowHint() {
		string s; integer i;

		s = null;
		i = GetRandomInt(1, 59);

		if (i == 1) {
			s = "炼狱所爆的魔兽可以提高英雄的生命恢复速度还有魔法恢复速度哦~";
		} else if (i == 2) {
			s = "战魂升级到了高等级时,复活只需要3秒哦~";
		} else if (i == 3) {
			s = "顶级法魂可以一次性召唤3个强大的地狱火哦~";
		} else if (i == 4) {
			s = "魔法上限的来源：1.合成仙器法魂.2.天庭处打魔法上限和回复增益。";
		} else if (i == 5) {
			s = "鬼器|cffffff00追魂夺魄戒|r是一件打怪升级型装备，由千年孤魂处获得，越早打越好哦！";
		} else if (i == 6) {
			s = "3个宝箱可以合成一个更高级的宝箱哦!";
		} else if (i == 7) {
			s = "想快速清怪请在基地上方的\"战斗调整\"处调成1-3s，想稳定守家请在基地上方的\"战斗调整\"调成4-6s。";
		} else if (i == 8) {
			s = "尽量不要让上下两波怪融合，他们的战斗力会因此提高很多倍。";
		} else if (i == 9) {
			s = "神器只需要合到+6就可以了，而人器需要合到+9。";
		} else if (i == 10) {
			s = "炼狱所爆的魔兽是可以一直守护着英雄.";
		} else if (i == 11) {
			s = "10转以后的镜像会主动对你发动进攻,20转后镜像将会逐步解锁一定的技能.";
		} else if (i == 12) {
			s = "前来进攻的BOSS都具有\"秒杀之刃\"技能，能对非英雄造成" + I2S(udg_Nandu_JJJ) + "%的生命伤害。";
		} else if (i == 13) {
			s = "各个英雄都对应五界中的一界，得到相应界域中的装备，会获得专属技能。";
		} else if (i == 14) {
			s = "木头在基地中用钱换。";
		} else if (i == 15) {
			s = "地图采用的是伤害人头获取金币系统，击杀怪物的玩家可以获取所有金币.";
		} else if (i == 16) {
			s = "难度越高，天庭中能同时增益的数量也越多。";
		} else if (i == 17) {
			s = "中期觉得钱没用了，可以用来合成仙器。";
		} else if (i == 18) {
			s = "一个怪若全由炮塔杀，玩家将不会得到金币.";
		} else if (i == 19) {
			s = "虚界怪物具有闪电链技能.";
		} else if (i == 20) {
			s = "每波炼狱都拥有不同的技能， 弄清他们的技能，就很容易突破。";
		} else if (i == 21) {
			s = "妖族英雄在获取第三双翅膀后解锁专属技能,神人仙鬼英雄也类似获得相应界域的装备.";
		} else if (i == 22) {
			s = "炼狱每打过2个BOSS就可以获得对应的魔兽.";
		} else if (i == 23) {
			s = "顶级宝石：巨能融合石在每次击杀后能力会提高20%，所以请做好准备再去。";
		} else if (i == 24) {
			s = "转生的难度随着能力的提高，等级越高越难转，所以趁着等级低去转吧。";
		} else if (i == 25) {
			s = "炼狱挑战获取的魔兽可以大幅度提高英雄的生命,不过对于属性的加成比较少.";
		} else if (i == 26) {
			s = "|cffff9900幽冥项链|r是一件提高百分比属性的装备，任意时期都可以挑战获得。";
		} else if (i == 27) {
			s = "擂台的所有英雄都有干扰之刃技能，能对非挑战目标造成3%的生命伤害。";
		} else if (i == 28) {
			s = "输入\"-ym\"可以清除地上所有的羽毛，防止游戏过卡哦。";
		} else if (i == 29) {
			s = "若出现了英雄死亡不复活的BUG，可以输入\"-fh\"来解决。";
		} else if (i == 30) {
			s = "基地右边的仙器可以升级，满级战魂复活只需要4秒，满级法魂能减少80%的魔法伤害哦，赶紧试试吧！";
		} else if (i == 31) {
			s = "基地右边的仙器在对付后期的怪物时有强大的防守功效，强烈建议合成一个！";
		} else if (i == 32) {
			s = "宝石区的怪物来自虚界，拥有强大的魔法伤害，而仙器法魂能有效减少这些伤害！";
		} else if (i == 33) {
			s = "如果感觉有时不明白为什么就死了，那有可能因为怪物的魔法伤害过于高，而你的魔法抗性过低，可以合成法魂有效阻抗该伤害，或者合成战魂快速复活";
		} else if (i == 34) {
			s = "最后的BOSS的技能是需要躲避的,不要小看了这些技能的威力!";
		} else if (i == 35) {
			s = "法魂召唤出的地狱火可以放到刷钱房中去帮你自动刷钱,也可以在炼狱中帮你承担一定的伤害!";
		} else if (i == 36) {
			s = "注意保持自己的护甲处于正数!当护甲低于0时怪物将对你造成接近于2倍攻击的伤害!";
		} else if (i == 37) {
			s = "翅膀能每间隔一定的时间对周围一个敌人射出一道火焰造成伤害,不过宠物携带无效.";
		} else if (i == 38) {
			s = "快速升级|cffffff00追魂夺魄戒|r的方法是让召唤物/雇佣兵在练功房帮你刷怪!";
		} else if (i == 39) {
			s = "神器上的多重攻击其实是有效的,为了防止后期卡顿才不显示弹道效果.";
		} else if (i == 40) {
			s = "|cffff00ff琉璃璞玉|r能让宝石升级装备时的成功率达到100%.";
		} else if (i == 41) {
			s = "到了后期,你可以使用杀怪积分在左边的\"好东西\"商店兑换基地防护罩等好东西哦!";
		} else if (i == 42) {
			s = "每个英雄都有独特的光环对全地图的队友提供增益,因此人多时增益也会增多,更容易通关.";
		} else if (i == 43) {
			s = "擂台是每位玩家独立挑战获取装备的地方哦!";
		} else if (i == 44) {
			s = "不要用低级的宠物去打BOSS或者高级的宠物,可能会被反控或者受到巨大伤害.";
		} else if (i == 45) {
			s = "击败4级野区怪物可以让所有玩家获取1000木头哦!";
		} else if (i == 46) {
			s = "有关于永久赞助的内容,请前往复活点礼包处或者在F9任务处了解.";
		} else if (i == 47) {
			s = "如果你通关|cff008000万劫难度|r的话.还会解锁下一个隐藏难度哦!";
		} else if (i == 48) {
			s = "挑战巨能融合石时请利用走位躲开会秒杀的骷髅海技能!";
		} else if (i == 49) {
			s = "每个英雄都拥有对全地图队友增益的光环效果,人多力量更大!";
		} else if (i == 50) {
			s = "轮回之狱主群欢迎你的加入:群号413359254。";
		} else if (i == 51) {
			s = "输入-cj可以更换你的成就哦,还可以查询你拥有的所有成就,也可以查询所有成就的获取条件.";
		} else if (i == 52) {
			s = "秘境中成功通过某一层有2种方法，一种是将灯在60秒内成功点亮，另一种方法则是直接消灭所有怪物。";
		} else if (i == 53) {
			s = "英雄可以通过明灯对天赋技能进行一阶/二阶/三阶觉醒，明灯可从秘境中获取，总共有25层挑战～";
		} else if (i == 54) {
			s = "某些英雄有特定的皮肤，这些皮肤可以通过英雄挑战来永久获取。（在基地左侧查看条件）";
		} else if (i == 55) {
			s = "当前在线的玩家越多，秘境中怪物伤害越高也越强。";
		} else if (i == 56) {
			s = "秘境中的明灯可以抵挡20次攻击，你可以通过治疗的方式令其恢复生命，而只要灯被摧毁，则挑战失败。";
		} else if (i == 57) {
			s = "你可以通过滚轮滚动来提高视角。";
		} else if (i == 58) {
			s = "如果你想让魔兽自动施法，你可以输入-ms来令魔兽进入不可选定状态。";
		} else if (i == 59) {
			s = "你可以输入-bs来清除地上的所有宝石.";
		}

		BJDebugMsg("※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※");
		BJDebugMsg("|cFFFF66CC【小提示】|r" + s);
		BJDebugMsg("※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※");
	}

	function onInit() {
		trigger t;

		t = CreateTrigger();
		TriggerRegisterPlayerChatEvent(t, Player(0), "-", false);
		TriggerRegisterPlayerChatEvent(t, Player(1), "-", false);
		TriggerRegisterPlayerChatEvent(t, Player(2), "-", false);
		TriggerRegisterPlayerChatEvent(t, Player(3), "-", false);
		TriggerRegisterPlayerChatEvent(t, Player(4), "-", false);
		TriggerRegisterPlayerChatEvent(t, Player(5), "-", false);
		TriggerAddAction(t, function ChatCommandAct);

		// 小提示
		TimerStart(CreateTimer(), 120, true, function ShowHint);

		t = null;
	}
}
//! endzinc

#endif

