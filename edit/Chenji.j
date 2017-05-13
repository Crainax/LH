
//! import "Printer.j"
//! import "SpellBase.j"

library_once Chenji requires SpellBase,Printer
    
    globals
        /*
            受到伤害召唤鬼魂
        */
        private trigger TSpellChenji4 = null
        private real RDamage = 0
    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        黑曜诅咒:召鬼魂
    */

    function TSpellChenji4Con takes nothing returns boolean
        return ((GetUnitStateSwap(UNIT_STATE_MANA, chenji) > 800.00) and (GetEventDamage() >= 1.) and (GetEventDamage() <= 100000000.00))
    endfunction

    function TSpellChenji4Act takes nothing returns nothing
        local unit u
        call DisableTrigger( GetTriggeringTrigger() )
        set RDamage = RDamage + GetEventDamage()
        if (RDamage >= GetUnitState(chenji,UNIT_STATE_MAX_LIFE) * 0.1) then
            set RDamage = 0
        else
            call EnableTrigger( GetTriggeringTrigger() )
            return
        endif

        set u = CreateUnit(GetOwningPlayer(chenji), 'h00P', YDWECoordinateX(( GetUnitX(chenji) + GetRandomReal(-300.00, 300.00) )), YDWECoordinateY(( GetUnitY(chenji) + GetRandomReal(-300.00, 300.00) )), 0.00)
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl", GetUnitX(u), GetUnitY(u)) )
        call UnitApplyTimedLifeBJ( 5.00, 'BTLF', u )
        set u = null
        call PolledWait(0.50)
        call EnableTrigger( GetTriggeringTrigger() )
    endfunction
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
    endfunction

endlibrary





