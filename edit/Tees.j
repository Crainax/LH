//HP:
function Trig_HP_____________________uActions takes nothing returns nothing
    local integer ydul_i_hp
    local integer ydul_i_hp2
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    set i1 = 1
    loop
        exitwhen i1 > 9
        set i2 = 1
        loop
            exitwhen i2 > 9
            call UnitRemoveAbilityBJ( udg_HP_Jineng[S2I(( I2S(i1) + I2S(i2) ))], udg_Unit )
            set i2 = i2 + 1
        endloop
        set i1 = i1 + 1
    endloop
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, StringLength(I2S(hp)))
    if ((length >= 1)) then
        set temp =  S2I(SubStringBJ(I2S(hp), length, length)))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 10 + temp )], udg_Unit )
    else
    endif
    if ((length >= 2)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 1 ), ( length - 1 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 20 + temp )], udg_Unit )
    else
    endif
    if ((length >= 3)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 2 ), ( length - 2 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 30 + temp )], udg_Unit )
    else
    endif
    if ((length >= 4)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 3 ), ( length - 3 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 40 + temp )], udg_Unit )
    else
    endif
    if ((length >= 5)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 4 ), ( length - 4 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 50 + temp )], udg_Unit )
    else
    endif
    if ((length >= 6)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 5 ), ( length - 5 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 60 + temp )], udg_Unit )
    else
    endif
    if ((length >= 7)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 6 ), ( length - 6 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 70 + temp )], udg_Unit )
    else
    endif
    if ((length >= 8)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 7 ), ( length - 7 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 80 + temp )], udg_Unit )
    else
    endif
    if ((length >= 9)) then
        set temp =  S2I(SubStringBJ(I2S(hp), ( length - 8 ), ( length - 8 ))))
        call UnitAddAbilityBJ( udg_HP_Jineng[( 90 + temp )], udg_Unit )
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
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, StringLength(I2S(fy)))
    if ((length >= 1)) then
        call UnitAddAbilityBJ( 'A00C', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), length, length)))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00C', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00C', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 2)) then
        call UnitAddAbilityBJ( 'A00E', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 1 ), ( length - 1 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00E', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00E', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 3)) then
        call UnitAddAbilityBJ( 'A002', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 2 ), ( length - 2 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A002', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 4)) then
        call UnitAddAbilityBJ( 'A00F', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 3 ), ( length - 3 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00F', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 5)) then
        call UnitAddAbilityBJ( 'A00G', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 4 ), ( length - 4 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00G', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 6)) then
        call UnitAddAbilityBJ( 'A00H', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 5 ), ( length - 5 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00H', udg_Unit, temp )
        endif
    else
    endif
    if ((length >= 7)) then
        call UnitAddAbilityBJ( 'A00I', udg_Unit )
        set temp =  S2I(SubStringBJ(I2S(fy), ( length - 6 ), ( length - 6 ))))
        if ((temp == 0)) then
            call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
        else
            call SetUnitAbilityLevelSwapped( 'A00I', udg_Unit, temp )
        endif
    else
    endif
    if ((length == 1)) then
        call UnitRemoveAbilityBJ( 'A00E', udg_Unit )
        call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((length == 2)) then
        call UnitRemoveAbilityBJ( 'A002', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((length == 3)) then
        call UnitRemoveAbilityBJ( 'A00F', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((length == 4)) then
        call UnitRemoveAbilityBJ( 'A00G', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((length == 5)) then
        call UnitRemoveAbilityBJ( 'A00H', udg_Unit )
        call UnitRemoveAbilityBJ( 'A00I', udg_Unit )
    else
    endif
    if ((length == 6)) then
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

