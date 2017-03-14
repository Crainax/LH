    function IsEnemyM takes unit u, unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_SLEEPING) == false     and GetUnitState(u, UNIT_STATE_LIFE) > 0.405    /*
        */ and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false    and IsUnitAliveBJ(u)  == true                   /*
        */ and IsUnitHidden(u) == false                       and IsUnitEnemy(u, GetOwningPlayer(caster))     /*
        */ and IsUnitVisible(u, GetOwningPlayer(caster))      and GetUnitAbilityLevel(u,'Avul') < 1           /*
        */ and GetUnitPointValue(u) != 123                    and GetUnitPointValue(u) != 0
    endfunction 

    function test takes unit u returns nothing
    	if (IsEnemyM(gg_unit_ninf_0006,gg_unit_ninf_0005)) then
    		call BJDebugMsg("true")
    	else
    		call BJDebugMsg("false")
    	endif
    endfunction