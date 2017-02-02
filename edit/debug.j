
/////! import "Boss.j"
/*
    测试指令:
	test damage 关闭/开启伤害显示
	test part1 测试阶段1
	test tech 科技全满
	test12 测试第几波,比如12
	test kill 杀死自己
	test select 显示生命
	test credit 增加积分
	test invu 基地无敌
	test vu 基地不无敌

*/
library_once Debug initializer Initdebug requires YDWETriggerEvent,Boss

	globals
		/*
		    需要注释的代码
		*/
		/*integer udg_Bo
		unit array udg_H
		integer array udg_Paihangbang
		unit gg_unit_haro_0030*/

		boolean debug_show_damage = false
		boolean debug_show_attr = false
	endglobals


	/*
		增加英雄属性
	*/
	private function addHeroAttr takes integer attr,integer level returns nothing
		call SetHeroInt(udg_H[1],attr,false)
		call SetHeroAgi(udg_H[1],attr,false)
		call SetHeroStr(udg_H[1],attr,false)
		call SetHeroLevel(udg_H[1],level,true)
	endfunction

	/*
	    显示伤害值的T
	*/
	private function debugDamage takes nothing returns nothing
		if (debug_show_damage) then
			call BJDebugMsg(GetUnitName(GetEventDamageSource())+"对"+ /*
				*/GetUnitName(GetTriggerUnit())+"造成了"/*
				*/+R2S(GetEventDamage())+"伤害.")
		endif
	endfunction

	/*
	    聊天DEBUG
	*/
	private function debugChat takes nothing returns nothing
		//关闭伤害显示
		local string chat = GetEventPlayerChatString()
		local integer bo 
		local unit u
		if(chat == "test damage") then
			set debug_show_damage = not(debug_show_damage)
			call BJDebugMsg("成功关闭伤害显示")
			return
		endif

		if (chat == "test tech") then
			call SetPlayerTechResearchedSwap('R007',1,Player(0))
			call SetPlayerTechResearchedSwap('R00A',1,Player(0))
			call SetPlayerTechResearchedSwap('R00B',1,Player(0))
			call SetPlayerTechResearchedSwap('R008',1,Player(0))
			call SetPlayerTechResearchedSwap('R009',1,Player(0))
			call SetPlayerTechResearchedSwap('R006',1,Player(0))
			call SetPlayerTechResearchedSwap('R00D',1,Player(0))
			call BJDebugMsg("科技研究完成")
			return
		endif

		if (chat == "test part1") then
			call addHeroAttr(20000,80)

			//鬼3
			call UnitAddItemByIdSwapped('lgdh',udg_H[1])
			//星3
			call UnitAddItemByIdSwapped('ram1',udg_H[1])
			//冰封翅膀
			call UnitAddItemByIdSwapped('I041',udg_H[1])
			//法魂3
			call UnitAddItemByIdSwapped('phea',udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3',udg_H[1])
			//人3
			call UnitAddItemByIdSwapped('oven',udg_H[1])

			call BJDebugMsg("测试阶段1")
			return
		endif

		if (chat == "test part0") then
			
			call addHeroAttr(10000,60)

			//鬼1
			call UnitAddItemByIdSwapped('rat9',udg_H[1])
			//星0
			call UnitAddItemByIdSwapped('I03Y',udg_H[1])
			//五彩翅膀
			call UnitAddItemByIdSwapped('I045',udg_H[1])
			//法魂2
			call UnitAddItemByIdSwapped('rin1',udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3',udg_H[1])
			//人0
			call UnitAddItemByIdSwapped('rej4',udg_H[1])

			call BJDebugMsg("测试阶段0")

			return
		endif

		if (chat == "test part2") then
			
			call addHeroAttr(40000,120)

			//鬼5
			call UnitAddItemByIdSwapped('bgst',udg_H[1])
			//星MAX
			call UnitAddItemByIdSwapped('olig',udg_H[1])
			//妖皇翅膀
			call UnitAddItemByIdSwapped('I04R',udg_H[1])
			//法魂5
			call UnitAddItemByIdSwapped('shas',udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3',udg_H[1])
			//人6
			call UnitAddItemByIdSwapped('oli2',udg_H[1])

			call BJDebugMsg("测试阶段2")

			return
		endif

		if (chat == "test part3") then
			
			call addHeroAttr(80000,140)

			//鬼8
			call UnitAddItemByIdSwapped('rag1',udg_H[1])
			//雷星
			call UnitAddItemByIdSwapped('ccmd',udg_H[1])
			//5翅膀
			call UnitAddItemByIdSwapped('I05B',udg_H[1])
			//法魂5
			call UnitAddItemByIdSwapped('shas',udg_H[1])
			//项链
			call UnitAddItemByIdSwapped('rde3',udg_H[1])
			//人7
			call UnitAddItemByIdSwapped('shdt',udg_H[1])

			call BJDebugMsg("测试阶段3")

			return
		endif

		if (chat == "test part4") then
			
			call addHeroAttr(150000,170)

			//超鬼
			call UnitAddItemByIdSwapped('lhst',udg_H[1])
			//超神
			call UnitAddItemByIdSwapped('tlum',udg_H[1])
			//超妖
			call UnitAddItemByIdSwapped('I05F',udg_H[1])
			//超仙
			call UnitAddItemByIdSwapped('rst1',udg_H[1])
			//超圣
			call UnitAddItemByIdSwapped('ssil',udg_H[1])
			//超人
			call UnitAddItemByIdSwapped('tfar',udg_H[1])

			call BJDebugMsg("测试阶段4,神装")

			return
		endif

		if(chat == "test fangka") then
			set u = CreateUnit(Player(0),'hpea',5790.6,4445.8,0)
			call StartFangKa(u)
			set u = null
			return
		endif

		if (chat == "test credit") then
			set udg_Paihangbang[1] = 50000
			call BJDebugMsg("增加了积分~!")
			return
		endif

		//对自己造成伤害
		if (chat == "test kill") then
		//gg_unit_Otch_0001   gg_unit_nubr_0093
			call UnitDamageTargetBJ( CreateUnit(Player(0),'hpea',0.,0.,0.), udg_H[1], ( 1.00 * 10000000.00 ), ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC )
			return
		endif

		//关闭选中显示属性
		if (chat == "test select") then
			set debug_show_attr = not (debug_show_attr)
			return
		endif


		//基地无敌
		if (chat == "test invu") then
		call SetUnitInvulnerable(gg_unit_haro_0030,true)
			return
		endif

		//基地不无敌
		if (chat == "test vu") then
		call SetUnitInvulnerable(gg_unit_haro_0030,false)
			return
		endif

		//调整当前波数
		set bo = S2I(SubStringBJ(chat,StringLength(chat)-1,StringLength(chat)))
		if (bo < 30) then
			set udg_Bo = bo
			call BJDebugMsg("当前波数:"+"="+I2S(udg_Bo))
			return
		endif

	endfunction

	/*
	    查看选中单位的属性
	*/
	private function peekAttr takes nothing returns nothing
		if (debug_show_attr) then
			call BJDebugMsg("选中单位生命:" + R2S(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())))
		endif
	endfunction

	private function initDebugTri takes nothing returns nothing
		//显示伤害值
		local trigger t = CreateTrigger()
		call YDWESyStemAnyUnitDamagedRegistTrigger(t)
		call TriggerAddAction(t,function debugDamage)

		//聊天打开开关进行测试
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t,Player(0),"test",false)
		call TriggerAddAction(t,function debugChat)

		//选择人物看数据
		set t = CreateTrigger()
		call TriggerRegisterPlayerSelectionEventBJ(t,Player(0),true)
		call TriggerAddAction(t,function peekAttr)
		set t = null

		call SetPlayerState(Player(0),PLAYER_STATE_RESOURCE_GOLD,300000)
		call SetPlayerState(Player(0),PLAYER_STATE_RESOURCE_LUMBER,1000000)
	endfunction

	private function Initdebug takes nothing returns nothing
		
		debug call initDebugTri()

	endfunction

endlibrary