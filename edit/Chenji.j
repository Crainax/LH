
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
        获取英雄身上的夜之哀伤
    */
    function GetYeai takes nothing returns item
        if (UnitHasItemOfTypeBJ(chenji,'stel')) then
            return GetItemOfTypeFromUnitBJ(chenji, 'stel')
        elseif (UnitHasItemOfTypeBJ(chenji,'I04M')) then
            return GetItemOfTypeFromUnitBJ(chenji, 'I04M')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        给英雄小无敌
    */
    /*function Yeaiwudi takes nothing returns nothing
        if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(chenji))]) then
            
            call ImmuteDamageInterval(chenji,3)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(chenji), GetUnitY(chenji) ))
        endif
    endfunction*/

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
        120剑灵大招:冥河
    */
    private function MingheTimer takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local integer id = GetHandleId(t)
        local integer times = LoadInteger(spellTable,id,1)
        local real x = LoadReal(spellTable,id,2)
        local real y = LoadReal(spellTable,id,3)
        local integer i = 1
        local integer random = GetRandomInt(8,18)
        local unit u = null
        if (times <= 10) then
            call SaveInteger(spellTable,GetHandleId(t),1,times + 1)
            call DamageArea(chenji,x,y,600,GetDamageChenji(chenji)*8)
            call CreateUnitEffect(GetOwningPlayer(chenji),'h014',x,y,0)
            loop
                exitwhen i > random
                set u = CreateUnit(GetOwningPlayer(chenji),'h00J',x,y,i* (360 / random) )
                call UnitApplyTimedLifeBJ( 5, 'BHwe', u)
                set i = i +1
            endloop
        else
            call PauseTimer(t)
            call FlushChildHashtable(spellTable,id)
            call DestroyTimer(t)
        endif
        set t = null 
        set u = null
    endfunction

    function ChenjiMinghe takes nothing returns nothing
        local timer t = CreateTimer()
        call SaveInteger(spellTable,GetHandleId(t),1,0)
        call SaveReal(spellTable,GetHandleId(t),2,GetSpellTargetX())
        call SaveReal(spellTable,GetHandleId(t),3,GetSpellTargetY())
        call TimerStart(t,1,true,function MingheTimer)
        call PrintSpellContent(GetOwningPlayer(chenji),GetAbilityName('A0G3'),I2S(R2I(GetDamageChenji(chenji)*0.8*RJ3(chenji,2,1)/100))+"万总伤害.")
        set t = null
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





