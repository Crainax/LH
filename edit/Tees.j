
function Trig____________________008Conditions takes nothing returns boolean
    return (GetSpellAbilityId() == 'AOsh')
endfunction

function Trig____________________008Actions takes nothing returns nothing

    local real x1 = GetUnitX(GetSpellAbilityUnit())
    local real y1 = GetUnitY(GetSpellAbilityUnit())
    local real x2 = GetSpellTargetX()
    local real y2 = GetSpellTargetY()
    local real facing = Atan2(y2-y1,x2-x1)
    local unit u = CreateUnit(Player(0),'hpea',x1,y1,facing)
    call CreateBoom(u,facing,SquareRoot((y2-y1)*(y2-y1)+(x2-x1)*(x2-x1)),900,0.1,100,450,"Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl")
    call BJDebugMsg("技能")
endfunction

//===========================================================================
function InitTrig____________________008 takes nothing returns nothing
    set gg_trg____________________008 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg____________________008, "未命名触发器 008")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg____________________008, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddCondition(gg_trg____________________008, Condition(function Trig____________________008Conditions))
    call TriggerAddAction(gg_trg____________________008, function Trig____________________008Actions)
endfunction

