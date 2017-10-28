
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
function CreateEffect1 takes real x,real y returns nothing
    local integer i = 1
    local integer j = 1
    local unit u = null
    loop
        exitwhen j > 6
        set i = 1
        loop
            exitwhen i > 6 + 2 * j
            set u = CreateUnit(GetOwningPlayer(moqi),'h02P',YDWECoordinateX(x + 150 * j * CosBJ(i*360.0/(6 + 2 * j))), YDWECoordinateY(y + 150 * j * SinBJ(i*360.0/(6 + 2 * j))),0)
            call SetUnitFlyHeight( u, 0.00, 2000.00 )
            set i = i +1
        endloop
        set j = j +1
    endloop
    set u = null
endfunction

private function XingluoDamageTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local real x = LoadReal(${1},GetHandleId(t),1)
    local real y = LoadReal(spellTable,GetHandleId(t),2)
    call DamageArea(moqi,x,y,900,GetDamageAgi(moqi))
    call PauseTimer(t)
    call FlushChildHashtable(spellTable,id)
    call DestroyTimer(t)
    set t = null 
endfunction

function CreateXingluo takes nothing returns nothing
    local timer t = CreateTimer()
    call CreateEffect1(GetUnitX(moqi),GetUnitY(moqi))
    call SaveReal(spellTable,GetHandleId(t),1,GetUnitX(moqi))
    call SaveReal(spellTable,GetHandleId(t),2,GetUnitY(moqi))
    call TimerStart(t,1,false,function XingluoDamageTimer)
    set t = null
endfunction

private function ${1:TimerName} takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local integer i = LoadInteger(${2:spellTable},id,1)
    if (i <= ${3:10}) then
        set i = i + 1
        call SaveInteger(${2},GetHandleId(t),1,i)
    else
        call PauseTimer(t)
        call FlushChildHashtable(${2},id)
        call DestroyTimer(t)
    endif
    set t = null 
endfunction

local timer t = CreateTimer()
call SaveInteger(${2},GetHandleId(t),1,1)
call TimerStart(t,${4:0.5},true,function ${1:TimerName})
set t = null

private function ${1:TimerName} takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    call PauseTimer(t)
    call FlushChildHashtable(${2:spellTable},id)
    call DestroyTimer(t)
    set t = null 
endfunction

local timer t = CreateTimer()
call TimerStart(t,${3:0.5},false,function ${1})
set t = null