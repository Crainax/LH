
/*
    碎星来刷新技能
*/
function FlashJianluo takes nothing returns nothing
    if (BFanzhuanMQ) then
        call UnitRemoveAbility(moqi,'hehe')
        call UnitAddAbility(moqi,'hehe')
    endif
endfunction

/*
    创建星落
*/
private function XingluoDamageTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local real x = LoadReal(spellTable,GetHandleId(t),1)
    local real y = LoadReal(spellTable,GetHandleId(t),2)
    call DamageArea(moqi,x,y,900,GetDamageAgi(moqi))
    call PauseTimer(t)
    call FlushChildHashtable(spellTable,id)
    call DestroyTimer(t)
    set t = null 
endfunction

function Xingluo takes nothing returns nothing
    local timer t = CreateTimer()
    call CreateEffect1(GetUnitX(moqi),GetUnitY(moqi))
    call SaveReal(spellTable,GetHandleId(t),1,GetUnitX(moqi))
    call SaveReal(spellTable,GetHandleId(t),2,GetUnitY(moqi))
    call TimerStart(t,1,false,function XingluoDamageTimer)
    set t = null
endfunction