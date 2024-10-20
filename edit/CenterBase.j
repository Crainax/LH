#ifndef CenterBaseIncluded
#define CenterBaseIncluded

#include  "edit/LHBase.j"
/*
    基地有关,不能A队友
*/
library_once CenterBase initializer InitCenterBase requires LHBase,Version

	globals
		trigger TCenterBaseDeath = null
	endglobals
//---------------------------------------------------------------------------------------------------
	/*
		A基地的处死
	*/
	private function TAttackCenterBaseCon takes nothing returns boolean
		return ((IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == true) and (GetOwningPlayer(GetAttackedUnitBJ()) == Player(6)) and (IsUnitAlly(GetAttacker(), Player(6)) == true))
	endfunction

	private function TAttackCenterBaseAct takes nothing returns nothing
			call IssueImmediateOrder(GetAttacker(),"stop")
			call KillSelf(GetAttacker())
			call DisplayTimedTextToForce( GetPlayersAll(), 30, "|cFFFF66CC【提示】|r有人企图攻打自己的基地，被伟大的Crainax处死了。" )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    基础爆了的触发
	*/

	//开启防护罩
	private function Kaiqifanghuzhao takes nothing returns nothing
		local real x = GetUnitX(gg_unit_haro_0030)
		local real y = GetUnitY(gg_unit_haro_0030)
		debug local player p = GetSuperLiujiewang()
	    set udg_I_Er_diansi[1] = ( udg_I_Er_diansi[1] - 1 )
	    debug if (p == null) then
		    call DisplayTextToForce( GetPlayersAll(),  "|cFFFF66CC【提示】|r防护罩开启，还剩下" + I2S(udg_I_Er_diansi[1]) + "次的防护罩。"   )
		    call DisplayTextToForce( GetPlayersAll(),  "|cFFFF66CC【提示】|r防护罩开启，还剩下" + I2S(udg_I_Er_diansi[1]) + "次的防护罩。"   )
		    call DisplayTextToForce( GetPlayersAll(),  "|cFFFF66CC【提示】|r防护罩开启，还剩下" + I2S(udg_I_Er_diansi[1]) + "次的防护罩。"   )
		    call DisplayTextToForce( GetPlayersAll(),  "|cFFFF66CC【提示】|r防护罩开启，还剩下" + I2S(udg_I_Er_diansi[1]) + "次的防护罩。"   )
		    call DisplayTextToForce( GetPlayersAll(),  "|cFFFF66CC【提示】|r防护罩开启，还剩下" + I2S(udg_I_Er_diansi[1]) + "次的防护罩。"   )
		debug else
		debug     call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【提示】|r" + GetPlayerName(p) + "你作为一个超级六界王竟然让防护罩开启了!仅剩" + ( I2S(udg_I_Er_diansi[1]) + "次防护罩!!!" ) ) )
		debug     call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【提示】|r" + GetPlayerName(p) + "你作为一个超级六界王竟然让防护罩开启了!仅剩" + ( I2S(udg_I_Er_diansi[1]) + "次防护罩!!!" ) ) )
		debug     call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【提示】|r" + GetPlayerName(p) + "你作为一个超级六界王竟然让防护罩开启了!仅剩" + ( I2S(udg_I_Er_diansi[1]) + "次防护罩!!!" ) ) )
		debug     call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【提示】|r" + GetPlayerName(p) + "你作为一个超级六界王竟然让防护罩开启了!仅剩" + ( I2S(udg_I_Er_diansi[1]) + "次防护罩!!!" ) ) )
		debug     call DisplayTextToForce( GetPlayersAll(), ( "|cFFFF66CC【提示】|r" + GetPlayerName(p) + "你作为一个超级六界王竟然让防护罩开启了!仅剩" + ( I2S(udg_I_Er_diansi[1]) + "次防护罩!!!" ) ) )
	    debug endif

	    call PlaySoundBJ( gg_snd_kill_boss )
	    call RemoveUnit(gg_unit_haro_0030)
	    set gg_unit_haro_0030 = CreateUnit(Player(6),'haro',x,y,270)
	    call TriggerRegisterUnitEvent( TCenterBaseDeath, gg_unit_haro_0030, EVENT_UNIT_DEATH )
    	call TriggerRegisterUnitEvent( gg_trg____________________035, gg_unit_haro_0030, EVENT_UNIT_DAMAGED )
	    call UnitAddAbility(gg_unit_haro_0030,'Avul')
	    call PolledWait(30.00)
	    call UnitRemoveAbility(gg_unit_haro_0030,'Avul')
	    call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【提示】|r防护罩消失。" )
	    call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【提示】|r防护罩消失。" )
	    call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【提示】|r防护罩消失。" )
	    call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【提示】|r防护罩消失。" )
	    call DisplayTextToForce( GetPlayersAll(), "|cFFFF66CC【提示】|r防护罩消失。" )
	endfunction

	function TCenterBaseDeathAct takes nothing returns nothing

	    if (udg_I_Er_diansi[1] > 0) then
	    	//开启防护罩
	    	call Kaiqifanghuzhao()
	    else
	    	//游戏失败
			call Jidibaozha("
	    		圣光宝石破碎，五界坠入了深渊……
				轮回之狱玩家交流群:413359254
				(开黑、攻略，一应俱全)
")
	    endif

	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitCenterBase takes nothing returns nothing

		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
		call TriggerAddCondition(t, Condition(function TAttackCenterBaseCon))
		call TriggerAddAction(t, function TAttackCenterBaseAct)

	    set TCenterBaseDeath = CreateTrigger()
	    call TriggerRegisterUnitEvent( TCenterBaseDeath, gg_unit_haro_0030, EVENT_UNIT_DEATH )
	    call TriggerAddAction(TCenterBaseDeath, function TCenterBaseDeathAct)

		set t = null
	endfunction



endlibrary

#endif
