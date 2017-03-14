
//! import "Printer.j"
//! import "SpellBase.j"

library_once Chenji requires SpellBase,Printer
    
    globals
        unit chenji = null
        /*
            受到伤害召唤鬼魂
        */
        private trigger TSpellChenji4 = null
    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        第四个技能
    */
//---------------------------------------------------------------------------------------------------
    /*
        英雄学习技能
    */

    //按照12345来判断
    function LearnSkillChenjiI takes unit learner,integer whichSpell returns nothing
        local integer i
        if (learner == chenji) then
            if (whichSpell == 4 and IsFourthSpellOK(chenji) == true and GetUnitAbilityLevel(chenji,'A0F8') == 1) then
                set TSpellChenji4 = CreateTrigger()
                call TriggerRegisterUnitEvent( TSpellChenji4, chenji, EVENT_UNIT_DAMAGED )
                call TriggerAddCondition(TSpellChenji4, Condition(function TSpellChenji4Con))
                call TriggerAddAction(TSpellChenji4, function TSpellChenji4Act)
            endif
        endif
    endfunction

    function LearnSkillChenji takes unit learner,integer learnSpellID returns nothing
        if (learner == chenji) then
            if (learnSpellID == 'A0F8') then
                call LearnSkillChenjiI(learner,4)
            endif
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    function InitChenji takes unit u returns nothing

        set chenji = u
        local trigger  TSpellChenji4 = CreateTrigger()
        call TriggerRegisterUnitEvent( TSpellChenji4, chenji, EVENT_UNIT_DAMAGED )
        call TriggerAddCondition(TSpellChenji4, Condition(function TSpellChenji4Con))
        call TriggerAddAction(TSpellChenji4, function TSpellChenji4Act)
        set TSpellChenji4 = null 
    endfunction

endlibrary

function TSpellChenji4Con takes nothing returns boolean
    return ((GetUnitStateSwap(UNIT_STATE_MANA, gg_unit_Harf_0262) > 800.00) and (IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetEventDamage() >= ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.10 )) and (GetPlayerTechCountSimple('R008', GetOwningPlayer(gg_unit_Harf_0262)) == 1) and (GetEventDamage() <= 100000000.00))
endfunction

function TSpellChenji4Act takes nothing returns nothing
    local integer ydul_i
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call DisableTrigger( GetTriggeringTrigger() )
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, R2I(( GetEventDamage() / ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.10 ) )))
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) > R2I(( ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) / ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.10 ) ) / 1 )))) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, R2I(( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) / ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.10 ) )))
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 0)) then
        call DoNothing(  )
    else
        set ydul_i = 1
        loop
            exitwhen ydul_i > YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820)
            call YDTriggerSetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D, CreateUnit(GetOwningPlayer(gg_unit_Harf_0262), 'h00P', YDWECoordinateX(( GetUnitX(GetTriggerUnit()) + GetRandomReal(-300.00, 300.00) )), YDWECoordinateY(( GetUnitY(GetTriggerUnit()) + GetRandomReal(-300.00, 300.00) )), 0.00))
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D)), GetUnitY(YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D))) )
            call UnitApplyTimedLifeBJ( 5.00, 'BTLF', YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D) )
            if ((GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) <= ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.30 ))) then
                call UnitAddAbilityBJ( 'A0FA', YDTriggerGetEx(unit, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xC303079D) )
            else
            endif
            set ydul_i = ydul_i + 1
        endloop
    endif
    call PolledWait(0.50)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call EnableTrigger( GetTriggeringTrigger() )
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction


