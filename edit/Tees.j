//HP:
function Trig_HP_____________________uActions takes nothing returns nothing
    local integer ydul_i_hp
    local integer ydul_i_hp2
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set ydul_i_hp = 1
    loop
        exitwhen ydul_i_hp > 9
        set ydul_i_hp2 = 1
        loop
            exitwhen ydul_i_hp2 > 9
            call UnitRemoveAbilityBJ( udg_HP_Jineng[S2I(( I2S(ydul_i_hp) + I2S(ydul_i_hp2) ))], udg_Unit )
            set ydul_i_hp2 = ydul_i_hp2 + 1
        endloop
        set ydul_i_hp = ydul_i_hp + 1
    endloop
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, StringLength(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9))))
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 1)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 10 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 2)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 1 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 1 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 20 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 3)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 2 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 2 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 30 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 4)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 3 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 3 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 40 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 5)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 4 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 4 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 50 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 6)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 5 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 5 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 60 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 7)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 6 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 6 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 70 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 8)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 7 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 7 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 80 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 9)) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0xFCD961C9)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 8 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 8 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 90 + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )], udg_Unit )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig_HP_____________________u takes nothing returns nothing
    set gg_trg_HP_____________________u = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_HP_____________________u, "HP要掌握在手里的")
#endif
    call TriggerAddAction(gg_trg_HP_____________________u, function Trig_HP_____________________uActions)
endfunction



//FY:
function Trig___________________4000______uActions takes nothing returns nothing
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, StringLength(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994))))
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 1)) then
        call UnitAddAbilityBJ( 'A00C', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820), YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00C', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00C', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 2)) then
        call UnitAddAbilityBJ( 'A00E', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 1 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 1 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00E', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00E', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 3)) then
        call UnitAddAbilityBJ( 'A002', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 2 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 2 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A002', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 4)) then
        call UnitAddAbilityBJ( 'A00F', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 3 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 3 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00F', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 5)) then
        call UnitAddAbilityBJ( 'A00G', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 4 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 4 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00G', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 6)) then
        call UnitAddAbilityBJ( 'A00H', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 5 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 5 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00H', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) >= 7)) then
        call UnitAddAbilityBJ( 'A00I', udg_Unit )
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615, S2I(SubStringBJ(I2S(YDTriggerGetEx(integer, YDTriggerAny2I(unit, udg_Unit), 0x81FD3994)), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 6 ), ( YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) - 6 ))))
        if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) == 0)) then
            call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00I', udg_Unit, YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x62888615) )
        endif
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 1)) then
        call UnitRemoveAbilityBJ( 'A00E', udg_Unit )
        call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 2)) then
        call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 3)) then
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 4)) then
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 5)) then
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) == 6)) then
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
endfunction

//===========================================================================
function InitTrig___________________4000______u takes nothing returns nothing
    set gg_trg___________________4000______u = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg___________________4000______u, "防御附加超过4000的哦")
#endif
    call TriggerAddAction(gg_trg___________________4000______u, function Trig___________________4000______uActions)
endfunction

