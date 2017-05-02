
//! import "LHBase.j"
//! import "Boss.j"
//! import "PIV.j"
/////! import "Diamond.j"
/////! import "CenterCredit.j"
/*
    测试指令:
	test damage 关闭/开启伤害显示
	test part1 测试阶段1
	test tech 科技全满
	test12 测试第几波,比如12
	test kill 杀死自己
	test select 显示生命
	test credit 增加积分
	test Scredit 增加守城积分
	test invu 基地无敌
	test vu 基地不无敌
	test leval 等级上400
	test mowang 测试基地爆炸
	test mingwang 测试基地爆炸
	test vip      测试VIP
	test renshu      测试人数2
	test darenshu      测试人数6
	test lianyu1	炼狱14层
	test lianyu2	炼狱69层
	test Scredit    守家积分
	test zhuanshengxx	 转生测试
	test unitState  测试某个单位的状态,需要提前使用方法SetTestUnit去断点测试

	tes
*/
library_once Debug initializer Initdebug requires LHBase,Boss,PIV,CenterCredit,Diamond

	globals
		boolean debug_show_damage = false
		boolean debug_show_attr = false
		unit testDyingUnit = null
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

	private function ShowMajiaCount takes nothing returns integer
		local group l_group = GetUnitsInRectAll(GetPlayableMapRect())
		local unit l_unit
		local integer count = 0
		call GroupEnumUnitsInRange(l_group, 0, 0, 99999, null)
		loop
		    set l_unit = FirstOfGroup(l_group)
		    exitwhen l_unit == null
		    call GroupRemoveUnit(l_group, l_unit)
		    if (GetUnitPointValue(l_unit) == 123 or GetUnitPointValue(l_unit) == 0) then
		    	set count = count + 1
		    endif
		endloop
		call DestroyGroup(l_group)
		set l_group = null
		set l_unit =null
		return count
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

		if (chat == "test Scredit") then
			set centerCredit[1] = 50000
			call BJDebugMsg("增加了守城积分~!")
			return
		endif

		if (chat == "test majia") then
			call BJDebugMsg("马甲数量:"+I2S(ShowMajiaCount()))
			return
		endif

		if (chat == "test VIP") then
			set sPIV[1] = true
			call BJDebugMsg("测试VIP!")
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

		//等级400
		if (chat == "test level") then
			call SetHeroLevel(udg_H[1],400,true)
			return
		endif

		if (chat == "test renshu") then
			set udg_RENSHU = 2
			call BJDebugMsg("人数为2")
			return
		endif

		if (chat == "test lianyu1") then
			set udg_I_Lianyu[1] = 14
			call BJDebugMsg("炼狱14层")
			return
		endif

		if (chat == "test zhuansheng19") then
			set udg_Z[1] = 19
			call BJDebugMsg("转生19")
			return
		endif
		if (chat == "test zhuansheng39") then
			set udg_Z[1] = 39
			call BJDebugMsg("转生39")
			return
		endif
		if (chat == "test zhuansheng59") then
			set udg_Z[1] = 59
			call BJDebugMsg("转生59")
			return
		endif
		if (chat == "test zhuansheng79") then
			set udg_Z[1] = 79
			call BJDebugMsg("转生79")
			return
		endif
		if (chat == "test zhuansheng99") then
			set udg_Z[1] = 99
			call BJDebugMsg("转生99")
			return
		endif
		if (chat == "test zhuansheng119") then
			set udg_Z[1] = 119
			call BJDebugMsg("转生119")
			return
		endif
		if (chat == "test zhuansheng149") then
			set udg_Z[1] = 149
			call BJDebugMsg("转生149")
			return
		endif

		if (chat == "test lianyu2") then
			set udg_I_Lianyu[1] = 69
			call BJDebugMsg("炼狱69层")
			return
		endif

		if (chat == "test lianyu3") then
			set udg_I_Lianyu[1] = 59
			call BJDebugMsg("炼狱59层")
			return
		endif

		if (chat == "test darenshu") then
			set udg_RENSHU = 6
			call BJDebugMsg("人数调成6")
			return
		endif

		if (chat == "test baoshi") then
			call BJDebugMsg("IAtleast1:"+I2S(IAtleast1))
			call BJDebugMsg("IAtleast2:"+I2S(IAtleast2))
			return
		endif

		if (chat == "test unitState") then
			call BJDebugMsg(GetUnitName(testDyingUnit) + "的血量为:" + R2S(GetUnitState(testDyingUnit,UNIT_STATE_LIFE)))
			if (IsUnitAliveBJ(testDyingUnit)) then
				call BJDebugMsg("活着的")
			else
				call BJDebugMsg("死了的")
			endif
			return
		endif

		//魔王拆家速度
		if (chat == "test mowang") then
       		call SetPlayerTechResearchedSwap( 'R00O', 100, Player(6) )
			call CreateUnit(Player(11),'Uwar',GetUnitX(gg_unit_haro_0030),GetUnitY(gg_unit_haro_0030),0)
			return
		endif

		//冥王拆家速度
		if (chat == "test mingwang") then
            call UnitAddAbilityBJ( 'A0EG', gg_unit_haro_0030 )
			call CreateUnit(Player(11),'Nkjx',GetUnitX(gg_unit_haro_0030),GetUnitY(gg_unit_haro_0030),0)
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

//---------------------------------------------------------------------------------------------------
	/*
	    设置测试单位
	*/
	function SetTestUnit takes unit u returns nothing
		set testDyingUnit = u
	endfunction
	
//---------------------------------------------------------------------------------------------------

	/*
	    查看选中单位的属性
	*/
	private function peekAttr takes nothing returns nothing
		if (debug_show_attr) then
			call BJDebugMsg("选中单位生命:" + R2S(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())))
			call BJDebugMsg("选中单位移动速度:" + R2S(GetUnitMoveSpeed(GetTriggerUnit())))
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
		
		call initDebugTri()

	endfunction

endlibrary