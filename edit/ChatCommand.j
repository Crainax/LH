
//! import "LHBase.j"
//! import "PIV.j"
/*
    游戏指令
    -kill自杀
*/
library_once ChatCommand initializer InitChatCommand requires LHBase,PIV,Version
	
	globals
		private item array IBox
		private integer IBoxSucceed = 0
		private integer IBoxCount = 0
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    合成宝箱
	*/

	//! textmacro CombineBox takes Level,Itemtype,NewItem
		function CombineBox$Level$ takes nothing returns nothing

		    if ((GetItemTypeId(GetEnumItem()) == '$Itemtype$')) then
				if (HaveSavedInteger(YDHT, GetHandleId(GetEnumItem()), 0xA75AD423) and (GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit())) !=  LoadInteger(YDHT,GetHandleId(GetEnumItem()),0xA75AD423))) then
						return
				endif
		    	set IBox[IBoxCount] = GetEnumItem()
		    	set IBoxCount = IBoxCount + 1
		    endif

		    if (IBoxCount >= 3) then
		    	if (IBox[0] == null or IBox[1] == null or IBox[2] == null) then
			    	set IBoxCount = 0
		    		return
		    	endif
		    	call RemoveItem(IBox[0])
		    	call RemoveItem(IBox[1])
		    	call RemoveItem(IBox[2])
		    	call CreateItem('$NewItem$',GetUnitX(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]),GetUnitY(udg_H[GetConvertedPlayerId(GetTriggerPlayer())]))
		    	set IBox[0] = null
		    	set IBox[1] = null
		    	set IBox[2] = null
		    	set IBoxCount = 0
		    	set IBoxSucceed = IBoxSucceed + 3
		    endif
		endfunction
	//! endtextmacro

	//! runtextmacro CombineBox("E","hlst","wshs")
	//! runtextmacro CombineBox("D","wshs","wild")
	//! runtextmacro CombineBox("C","wild","totw")
	//! runtextmacro CombineBox("B","totw","sror")
	//! runtextmacro CombineBox("A","sror","fgrg")

	function CombineBox takes nothing returns nothing
		if not(IsPIV(GetTriggerPlayer())) then
			call DisplayTextToPlayer( GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r需要成为永久赞助才能使用此指令!" )
			return
		endif

		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetUnitName(udg_H[GetConvertedPlayerId(GetTriggerPlayer())])+"使用指令-hc成功将地上的所有宝箱融合成为更高级的宝箱，列表如下：")
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
    	set IBoxSucceed = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxE )
   		if (IBoxSucceed != 0) then
	   		call BJDebugMsg(I2S(IBoxSucceed)+"个E级宝箱→→→"+I2S(IBoxSucceed/3)+"个D级宝箱。")
	    	set IBoxSucceed = 0
   		endif
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxD )
   		if (IBoxSucceed != 0) then
	   		call BJDebugMsg(I2S(IBoxSucceed)+"个D级宝箱→→→"+I2S(IBoxSucceed/3)+"个C级宝箱。")
	    	set IBoxSucceed = 0
   		endif
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxC )
   		if (IBoxSucceed != 0) then
	   		call BJDebugMsg(I2S(IBoxSucceed)+"个C级宝箱→→→"+I2S(IBoxSucceed/3)+"个B级宝箱。")
	    	set IBoxSucceed = 0
   		endif
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxB )
   		if (IBoxSucceed != 0) then
	   		call BJDebugMsg(I2S(IBoxSucceed)+"个B级宝箱→→→"+I2S(IBoxSucceed/3)+"个A级宝箱。")
	    	set IBoxSucceed = 0
   		endif
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		call EnumItemsInRectBJ( GetPlayableMapRect(), function CombineBoxA )
   		if (IBoxSucceed != 0) then
	   		call BJDebugMsg(I2S(IBoxSucceed)+"个A级宝箱→→→"+I2S(IBoxSucceed/3)+"个S级宝箱。")
	    	set IBoxSucceed = 0
   		endif
    	set IBox[0] = null
    	set IBox[1] = null
    	set IBox[2] = null
    	set IBoxCount = 0
   		endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    调视角
	*/
	function FixView takes boolean higher returns nothing
		if (higher) then
			call SetCameraFieldForPlayer( GetTriggerPlayer(), CAMERA_FIELD_ZOFFSET, ( GetCameraTargetPositionZ() + 200.00 ), 0 )
		else
			call SetCameraFieldForPlayer( GetTriggerPlayer(), CAMERA_FIELD_ZOFFSET, ( GetCameraTargetPositionZ() - 200.00 ), 0 )
		endif
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    聊天信息"-"指令
	*/
	function ChatCommandAct takes nothing returns nothing
		local string str = GetEventPlayerChatString()
		local unit u = udg_H[GetConvertedPlayerId(GetTriggerPlayer())]
		//自杀
		if (str == "-kill") then
			call KillSelf(u)
		    call DisplayTextToPlayer( GetTriggerPlayer(), 0, 0, "|cFFFF66CC【消息】|r自杀成功!" )
		    return
		elseif (str == "-hc") then
			call CombineBox()
		elseif (str == "-+") then
			call FixView(true)
		elseif (str == "--") then
			call FixView(false)
		elseif (str == "-ms") then
			set BMoshou[GetConvertedPlayerId(GetTriggerPlayer())] = not (BMoshou[GetConvertedPlayerId(GetTriggerPlayer())])
			if (BMoshou[GetConvertedPlayerId(GetTriggerPlayer())]) then
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r重新装备魔兽后，魔兽将不会被点中，主动技能也会主动释放。")
			else
				call DisplayTextToPlayer(GetTriggerPlayer(), 0., 0., "|cFFFF66CC【消息】|r重新装备魔兽后，魔兽可以被点中，主动技能也能手动释放。")
			endif
		debug elseif (str == "-cj") then
			debug call CreateAchievementDialog(GetTriggerPlayer())
		endif
		set str = null
		set u = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    小提示
	*/
	private function ShowHint takes nothing returns nothing
		local string s = null
		local integer i = GetRandomInt(1,51)
		if(i == 1 ) then
			set s = "炼狱所爆的魔兽可以提高英雄的生命恢复速度还有魔法恢复速度哦~"
		elseif(i == 2 ) then
			set s = "战魂升级到了高等级时,复活只需要3秒哦~"
		elseif(i == 3 ) then
			set s = "顶级法魂可以一次性召唤3个强大的地狱火哦~"
		elseif(i == 4 ) then
			set s = "魔法上限的来源：1.合成仙器法魂.2.天庭处打魔法上限和回复增益。"
		elseif(i == 5 ) then
			set s = "鬼器|cffffff00追魂夺魄戒|r是一件打怪升级型装备，由千年孤魂处获得，越早打越好哦！"
		elseif(i == 6 ) then
			set s = "3个宝箱可以合成一个更高级的宝箱哦!"
		elseif(i == 7 ) then
			set s = "想快速清怪请在基地上方的“战斗调整”处调成1-3s，想稳定守家请在基地上方的“战斗调整”调成4-6s。"
		elseif(i == 8 ) then
			set s = "尽量不要让上下两波怪融合，他们的战斗力会因此提高很多倍。"
		elseif(i == 9 ) then
			set s = "神器只需要合到+6就可以了，而人器需要合到+9。"
		elseif(i == 10) then
			set s = "炼狱所爆的魔兽是可以一直守护着英雄."
		elseif(i == 11) then
			set s = "10转以后的镜像会主动对你发动进攻,20转后镜像将会逐步解锁一定的技能."
		elseif(i == 12) then
			set s = "前来进攻的BOSS都具有“秒杀之刃”技能，能对非英雄造成"+I2S(udg_Nandu_JJJ)+"%的生命伤害。"
		elseif(i == 13) then
			set s = "各个英雄都对应五界中的一界，得到相应界域中的装备，会获得专属技能。"
		elseif(i == 14) then
			set s = "木头在基地中用钱换。"
		elseif(i == 15) then
			set s = "地图采用的是伤害人头获取金币系统，击杀怪物的玩家可以获取所有金币."
		elseif(i == 16) then
			set s = "难度越高，天庭中能同时增益的数量也越多。"
		elseif(i == 17) then
			set s = "中期觉得钱没用了，可以用来合成仙器。"
		elseif(i == 18) then
			set s = "一个怪若全由炮塔杀，玩家将不会得到金币."
		elseif(i == 19) then
			set s = "虚界怪物具有闪电链技能."
		elseif(i == 20) then
			set s = "每波炼狱都拥有不同的技能， 弄清他们的技能，就很容易突破。"
		elseif(i == 21) then
			set s = "妖族英雄在获取第三双翅膀后解锁专属技能,神人仙鬼英雄也类似获得相应界域的装备."
		elseif(i == 22) then
			set s = "炼狱每打过2个BOSS就可以获得对应的魔兽."
		elseif(i == 23) then
			set s = "顶级宝石：巨能融合石在每次击杀后能力会提高20%，所以请做好准备再去。"
		elseif(i == 24) then
			set s = "转生的难度随着能力的提高，等级越高越难转，所以趁着等级低去转吧。"
		elseif(i == 25) then
			set s = "炼狱挑战获取的魔兽可以大幅度提高英雄的生命,不过对于属性的加成比较少."
		elseif(i == 26) then
			set s = "|cffff9900幽冥项链|r是一件提高百分比属性的装备，任意时期都可以挑战获得。"
		elseif(i == 27) then
			set s = "擂台的所有英雄都有干扰之刃技能，能对非挑战目标造成3%的生命伤害。"
		elseif(i == 28) then
			set s = "输入“-ym”可以清除地上所有的羽毛，防止游戏过卡哦。"
		elseif(i == 29) then
			set s = "若出现了英雄死亡不复活的BUG，可以输入“-fh”来解决。"
		elseif(i == 30) then
			set s = "基地右边的仙器可以升级，满级战魂复活只需要4秒，满级法魂能减少80%的魔法伤害哦，赶紧试试吧！"
		elseif(i == 31) then
			set s = "基地右边的仙器在对付后期的怪物时有强大的防守功效，强烈建议合成一个！"
		elseif(i == 32) then
			set s = "宝石区的怪物来自虚界，拥有强大的魔法伤害，而仙器法魂能有效减少这些伤害！"
		elseif(i == 33) then
			set s = "如果感觉有时不明白为什么就死了，那有可能因为怪物的魔法伤害过于高，而你的魔法抗性过低，可以合成法魂有效阻抗该伤害，或者合成战魂快速复活"
		elseif(i == 34) then
			set s = "最后的BOSS的技能是需要躲避的,不要小看了这些技能的威力!"
		elseif(i == 35) then
			set s = "法魂召唤出的地狱火可以放到刷钱房中去帮你自动刷钱,也可以在炼狱中帮你承担一定的伤害!"
		elseif(i == 36) then
			set s = "注意保持自己的护甲处于正数!当护甲低于0时怪物将对你造成接近于2倍攻击的伤害!"
		elseif(i == 37) then
			set s = "翅膀能每2秒对周围一个敌人射出一道火焰造成伤害,不过宠物携带无效."
		elseif(i == 38) then
			set s = "快速升级|cffffff00追魂夺魄戒|r的方法是让召唤物/雇佣兵在练功房帮你刷怪!"
		elseif(i == 39) then
			set s = "神器上的多重攻击其实是有效的,为了防止后期卡顿才不显示弹道效果."
		elseif(i == 40) then
			set s = "|cffff00ff琉璃璞玉|r能让宝石升级装备时的成功率达到100%."
		elseif(i == 41) then
			set s = "到了后期,你可以使用杀怪积分在左边的\"好东西\"商店兑换基地防护罩等好东西哦!"
		elseif(i == 42) then
			set s = "每个英雄都有独特的光环对全地图的队友提供增益,因此人多时增益也会增多,更容易通关."
		elseif(i == 43) then
			set s = "擂台是每位玩家独立挑战获取装备的地方哦!"
		elseif(i == 44) then
			set s = "不要用低级的宠物去打BOSS或者高级的宠物,可能会被反控或者受到巨大伤害."
		elseif(i == 45) then
			set s = "击败4级野区怪物可以让所有玩家获取1000木头哦!"
		elseif(i == 46) then
			set s = "有关于永久赞助的内容,请前往复活点礼包处或者在F9任务处了解."
		elseif(i == 47) then
			set s = "如果你通关|cff008000万劫难度|r的话.|cffffff00你的名字|r将可以在本地图永久性地荣登于|cff008000\"封帝万劫录\"|r中哦!"
		elseif(i == 48) then
			set s = "挑战巨能融合石时请利用走位躲开会秒杀的骷髅海技能!"
		elseif(i == 49) then
			set s = "每个英雄都拥有对全地图队友增益的光环效果,人多力量更大!"
		elseif(i == 50) then
			set s = "轮回之狱主群欢迎你的加入:1群:148199145(满).....2群:413359254....."
		elseif(i == 51) then
			set s = "输入-cj可以更换你的成就哦,还可以查询你拥有的所有成就,也可以查询所有成就的获取条件."
		endif
		call BJDebugMsg("※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※")
		call BJDebugMsg("|cFFFF66CC【小提示】|r"+s)
		call BJDebugMsg("※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※※")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    永久赞助的任务
	*/
	private function ShowZanzhuHint takes nothing returns nothing
	    call PlaySoundBJ( gg_snd_Renwu )
	    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "永久赞助", "做图不易,你的如果你喜欢本图,也愿意赞助本图,那么你将获得以下功能:

	    	|cffff68001.可以直接选取英雄|r|cff00ccff\"黑阎\"|r|cffff6800、|r|cff00ccff\"幻逸\"|r|cffff6600、|r|cff00ccff\"梦霁\"|r|cffff6600。|r|cffff6800|n2.英雄将获得七彩皮肤效果|n3.开局金币10000(不与平台等级叠加)|n4.开局立即获得\"|r|cffff00ff琉璃璞玉|r|cffff6800\",任意宝石升级装备成功率100%|n5.选择所有难度(包括前3个)均能体验24+5波进攻.|n6.专属指令(-hc)可以把地面上的宝箱一键合成高级宝箱|r|cffff00ff.|r|cffff6800|n7.可以雇佣第5第6号雇佣兵.|n8.基地将获得3次防护罩效果.

	    	|r|cffffff00赞助后续版本永久有效,永久赞助请百度搜索\"17玩吧\"进入轮回专区自助获取,请加QQ群413359254获取,还可以添加作者微信号\"a19f12\"获取.|r", "ReplaceableTextures\\CommandButtons\\BTNMGExchange.blp" )
	    call QuestSetEnabledBJ( true, GetLastCreatedQuestBJ() )
	    call QuestMessageBJ( GetPlayersAll(), bj_QUESTMESSAGE_DISCOVERED, "发现新任务 - |cFFCCFF00永久赞助|r
|cFFFF9900点击左上角“任务”查看。|r" )
	    call DestroyTimer( GetExpiredTimer() )
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitChatCommand takes nothing returns nothing
		
	    local trigger t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent( t, Player(0), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(1), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(2), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(3), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(4), "-", false )
		call TriggerRegisterPlayerChatEvent( t, Player(5), "-", false )
	    call TriggerAddAction(t, function ChatCommandAct)

	    //小提示
	    call TimerStart(CreateTimer(),120,true,function ShowHint)

	    //永久赞助的任务
	    call TimerStart(CreateTimer(),1400,true,function ShowZanzhuHint)

	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------

endlibrary
