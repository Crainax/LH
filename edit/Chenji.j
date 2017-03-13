function Trig_____________126Conditions takes nothing returns boolean
    return ((GetUnitStateSwap(UNIT_STATE_MANA, gg_unit_Harf_0262) > 800.00) and (IsUnitIllusionBJ(GetTriggerUnit()) != true) and (GetEventDamage() >= ( GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) * 0.10 )) and (GetPlayerTechCountSimple('R008', GetOwningPlayer(gg_unit_Harf_0262)) == 1) and (GetEventDamage() <= 100000000.00))
endfunction

function Trig_____________126Actions takes nothing returns nothing
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

//===========================================================================
function InitTrig_____________126 takes nothing returns nothing
    set gg_trg_____________126 = CreateTrigger()
    call DisableTrigger(gg_trg_____________126)
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________126, "黑曜诅咒126")
#endif
    call TriggerRegisterUnitEvent( gg_trg_____________126, gg_unit_Harf_0262, EVENT_UNIT_DAMAGED )
    call TriggerAddCondition(gg_trg_____________126, Condition(function Trig_____________126Conditions))
    call TriggerAddAction(gg_trg_____________126, function Trig_____________126Actions)
endfunction




//元素技能:

function Trig______________8aConditions takes nothing returns boolean
    return ((GetRandomInt(1, 20) == 1) and (GetUnitAbilityLevelSwapped('Amim', GetAttackedUnitBJ()) != 1) and (IsUnitIllusionBJ(GetAttacker()) != true) and (GetPlayerController(GetOwningPlayer(GetAttacker())) == MAP_CONTROL_USER))
endfunction

function Trig______________8aFunc006Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc006Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc015Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc015Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc016Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc016Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UDeathSmall\\UDeathSmall.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc017Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc017Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc018Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc018Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc019Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc019Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc020Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc020Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc021Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc021Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc022Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc022Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc023Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc023Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc024Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc024Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc025Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc025Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc026Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc026Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc027Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc027Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc028Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc028Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc029Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc029Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc030Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc030Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc031Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc031Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc032Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc032Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc033Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc033Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc034Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc034Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc035Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc035Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc036Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc036Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc037Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc037Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aFunc038Func004002003 takes nothing returns boolean
    return (((IsUnitAliveBJ(GetFilterUnit()) == true) and (IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetAttacker())) != true)))
endfunction

function Trig______________8aFunc038Func005A takes nothing returns nothing
    call UnitDamageTarget( udg_Unit, GetEnumUnit(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", YDWECoordinateX(GetUnitX(GetEnumUnit())), YDWECoordinateY(GetUnitY(GetEnumUnit()))) )
endfunction

function Trig______________8aActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set udg_Unit = GetAttacker()
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'tlum')) == 'tlum')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 400000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc006Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc006Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_4778", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ccmd')) == 'ccmd')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 80000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_6760", udg_Unit, 0, 16.00, 100.00, 0.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I04Z')) == 'I04Z')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'nflg')) == 'nflg')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'esaz')) == 'esaz')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'sksh')) == 'sksh')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 9000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'oslo')) == 'oslo')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'grsl')) == 'grsl')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'flag')) == 'flag')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_1763", udg_Unit, 0, 16.00, 0.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'iwbr')) == 'iwbr')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 80000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc015Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc015Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_6762", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'tbar')) == 'tbar')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 110000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc016Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc016Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_6763", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I056')) == 'I056')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc017Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc017Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'spre')) == 'spre')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc018Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc018Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'asbl')) == 'asbl')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc019Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc019Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ocor')) == 'ocor')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 8000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc020Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc020Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'blba')) == 'blba')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc021Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc021Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'cosl')) == 'cosl')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc022Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc022Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'shhn')) == 'shhn')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc023Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc023Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1764", udg_Unit, 0, 16.00, 0.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I03E')) == 'I03E')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 75000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc024Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc024Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3312", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I057')) == 'I057')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc025Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc025Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'fwss')) == 'fwss')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc026Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc026Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ram4')) == 'ram4')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc027Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc027Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'rat3')) == 'rat3')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 8000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc028Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc028Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'pams')) == 'pams')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc029Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc029Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'jdrn')) == 'jdrn')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc030Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc030Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'shcw')) == 'shcw')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc031Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc031Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_1765", udg_Unit, 0, 16.00, 80.00, 20.00, 100.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I050')) == 'I050')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc032Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc032Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'uflg')) == 'uflg')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc033Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc033Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ram3')) == 'ram3')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc034Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc034Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'stre')) == 'stre')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 8000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc035Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc035Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'shrs')) == 'shrs')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc036Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc036Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'kgal')) == 'kgal')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc037Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc037Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'shtm')) == 'shtm')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        set udg_Point = GetUnitLoc(GetAttackedUnitBJ())
        set udg_Group = GetUnitsInRangeOfLocMatching(400.00, udg_Point, Condition(function Trig______________8aFunc038Func004002003))
        call ForGroupBJ( udg_Group, function Trig______________8aFunc038Func005A )
        call RemoveLocation( udg_Point )
        call DestroyGroup( udg_Group )
        call CreateTextTagUnitBJ( "TRIGSTR_3006", udg_Unit, 0, 16.00, 100.00, 0.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I055')) == 'I055')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'tgxp')) == 'tgxp')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ram2')) == 'ram2')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'lure')) == 'lure')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 8000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'thdm')) == 'thdm')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'arsh')) == 'arsh')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'srtl')) == 'srtl')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("war3mapImported\\OrbitalRay.mdx", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_3474", udg_Unit, 0, 16.00, 100.00, 100.00, 0.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'I03Y')) == 'I03Y')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 150000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'dust')) == 'dust')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 2000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'ram1')) == 'ram1')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 5000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'rots')) == 'rots')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 8000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'tmmt')) == 'tmmt')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 15000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'brag')) == 'brag')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 25000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_Unit, 'olig')) == 'olig')) then
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 35000000.00)
        call YDTriggerSetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, ( YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) * udg_I_Jinengjiacheng[GetConvertedPlayerId(GetOwningPlayer(udg_Unit))] ))
        call UnitDamageTarget( udg_Unit, GetAttackedUnitBJ(), YDTriggerGetEx(real, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", YDWECoordinateX(GetUnitX(GetAttackedUnitBJ())), YDWECoordinateY(GetUnitY(GetAttackedUnitBJ()))) )
        call CreateTextTagUnitBJ( "TRIGSTR_2987", udg_Unit, 0, 16.00, 100.00, 20.00, 30.00, 0 )
        call SetTextTagVelocityBJ( GetLastCreatedTextTag(), 64, 90.00 )
        call YDWETimerDestroyTextTag( 2, GetLastCreatedTextTag() )
    else
    endif
    set udg_Unit = null
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig______________8a takes nothing returns nothing
    set gg_trg______________8a = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________8a, "元素技能_8a")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg______________8a, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddCondition(gg_trg______________8a, Condition(function Trig______________8aConditions))
    call TriggerAddAction(gg_trg______________8a, function Trig______________8aActions)
endfunction

