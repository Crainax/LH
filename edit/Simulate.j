

//! import "LHBase.j"
//! import "SpellBase.j"
//! import "HeiYan.j"
//! import "Yanmie.j"
//! import "Huanyi.j"
//! import "ItemSpell.j"
//! import "MiniGame.j"
/////! import "CenterCredit.j"
/*
    马甲模拟
*/
library_once Simulate initializer InitSimulate requires LHBase,SpellBase,Heiyan,Yanmie,CenterCredit,ItemSpell,MiniGame
	
//---------------------------------------------------------------------------------------------------
	/*
	    马甲伤害模拟总列表
	*/
	private function SimulateDamageCon takes nothing returns boolean
		return (GetEventDamage() > 0) and (IsUnitIllusion(GetEventDamageSource()) == false)
	endfunction

	function SimulateAllDamage takes unit u returns nothing
		if (SimulateDamageHeiyan(u)) then
			return
		elseif (SimulateDamageYanmie(u)) then
			return
		elseif (SimulateDamageHuanyi(u)) then
			return
		elseif (SimulateDamageMengji(u)) then
			return
		elseif (SimulateDamageCangling(u)) then
			return
		elseif (SimulateDamageSheyan(u)) then
			return
		elseif (SimulateDamageSoldier(u)) then
			return
		elseif (SimulateDamageItem(u)) then
			return
		elseif (SimulateDamageMiniGame(u)) then
			return
		endif

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    马甲的死亡事件总列表
	*/
	private function SimulateAllDeath takes nothing returns nothing
		call SimulateDeathYanmie(GetDyingUnit())
		call SimulateDeathHeiyan(GetDyingUnit())
		call SimulateDeathHuanyi(GetDyingUnit())
		call SimulateDeathSichen(GetDyingUnit())
		call SimulateDeathXinglong(GetDyingUnit())
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitSimulate takes nothing returns nothing
		
	    local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddAction(t, function SimulateAllDeath)
		set t = null
	endfunction

endlibrary