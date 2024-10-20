#include  "edit/LHBase.j"

/*
    巨能与混沌的减伤法则
*/
library_once BigBoss initializer InitBigBoss

	globals
		group GBigBoss = null
	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    新版的巨能，与你当前的装备有关
	*/
	private function TJuNengDamageCon takes nothing returns boolean
        return (IsUnitInGroup(GetTriggerUnit(),GBigBoss) or IsUnitInGroup(GetEventDamageSource(),GBigBoss)) and (GetEventDamage() >= 10.00)
	endfunction

	private function TJuNengDamageAct takes nothing returns nothing
        if (IsUnitInGroup(GetTriggerUnit(),GBigBoss) and udg_RENSHU > 1) then
            //减伤
            call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetEventDamage() *(1.0 - 1.0/I2R(udg_RENSHU)))
        elseif (IsUnitInGroup(GetEventDamageSource(),GBigBoss)) then
            //增伤
            call DisableTrigger(GetTriggeringTrigger())
            if (GetEventDamageSource() == yexi) then
                call UnitDamageTarget( GetEventDamageSource() , GetTriggerUnit(), 0.01 * udg_Nandu_JJJ * GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
            else
                if (udg_RENSHU > 1) then
                    call UnitDamageTarget( GetEventDamageSource() , GetTriggerUnit(), GetEventDamage() * (udg_RENSHU - 1), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
                endif
                if (IsWanjie()) then
                    call UnitDamageTarget( GetEventDamageSource() , GetTriggerUnit(), 0.01 * udg_RENSHU * GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
                endif
            endif
            if (IsTianyan and GetTriggerUnit() != udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] and (GetPlayerController(GetOwningPlayer(GetEventDamageSource())) == MAP_CONTROL_COMPUTER)) then
                call UnitDamageTarget( GetEventDamageSource(),GetTriggerUnit() , GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
            endif
            call EnableTrigger(GetTriggeringTrigger())

        endif
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    初始化
	*/
	private function InitBigBoss takes nothing returns nothing
		local trigger t = CreateTrigger()
		call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNITDAM)
		call TriggerAddCondition(t, Condition(function TJuNengDamageCon))
		call TriggerAddAction(t, function TJuNengDamageAct)
		set t = null
	endfunction
endlibrary