

#include  "edit/LHBase.j"
#include  "edit/SpellBase.j"
#include  "edit/HeiYan.j"
#include  "edit/Yanmie.j"
#include  "edit/Huanyi.j"
#include  "edit/ItemSpell.j"
#include  "edit/MiniGame.j"
#include  "edit/Boss.j"
#include  "edit/MiJing.j"
///#include  "edit/CenterCredit.j"
/*
    马甲模拟
*/
library_once Simulate initializer InitSimulate requires LHBase,SpellBase,Heiyan,Yanmie,CenterCredit,ItemSpell,MiniGame,Boss,MiJing

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
		elseif (SimulateDamageMoqi(u)) then
			return
		elseif (SimulateDamageKaisa(u)) then
			return
		elseif (SimulateDamageHuanyi(u)) then
			return
		elseif (SimulateDamageMengji(u)) then
			return
		elseif (SimulateDamageCangling(u)) then
			return
		elseif (SimulateDamageXiaoting(u)) then
			return
		elseif (SimulateDamageLichi(u)) then
			return
		elseif (SimulateDamageSoldier(u)) then
			return
		elseif (SimulateDamageItem(u)) then
			return
		elseif (SimulateDamageMiniGame(u)) then
			return
		elseif (SimulateDamageBoss(u)) then
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
		call SimulateDeathLichi(GetDyingUnit())
		call SimulateDeathMijing(GetDyingUnit())
		call SimulateDeathMoqi(GetDyingUnit())
		call SimulateDeathKaisa(GetDyingUnit())
	endfunction
//---------------------------------------------------------------------------------------------------

	private function InitSimulate takes nothing returns nothing

	    local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
		call TriggerAddAction(t, function SimulateAllDeath)
		set t = null
	endfunction

endlibrary