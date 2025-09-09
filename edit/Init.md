function Trig_aa6Func005A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, ( "|cFF99FF00【消息】|r" + "等待玩家1选择难度" ) )
    call SetPlayerStateBJ( GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 2000 )
    call SetCameraFieldForPlayer( GetEnumPlayer(), CAMERA_FIELD_ZOFFSET, ( GetCameraTargetPositionZ() + 400.00 ), 0 )
endfunction

function Trig_aa6Func011A takes nothing returns nothing
    if (             (	Get11() and IsUnitIsSpin(GetEnumUnit()))) then
        call RemoveUnit( GetEnumUnit() )
    else
        call SetUnitInvulnerable( GetEnumUnit(), true )
    endif
endfunction

function Trig_aa6Actions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    call CameraSetSmoothingFactor( 2.00 )
    debug call InitAllAchievement()
    call InitMiJing()
    call CinematicModeBJ( true, GetPlayersByMapControl(MAP_CONTROL_USER) )
    call ForForce( GetPlayersAll(), function Trig_aa6Func005A )
    call TransmissionFromUnitWithNameBJ( GetPlayersAll(), gg_unit_H01W_0207, "TRIGSTR_002", null, "TRIGSTR_003", bj_TIMETYPE_ADD, 5.00, true )
    call TriggerSleepAction(2.00)
    call CinematicModeBJ( false, bj_FORCE_PLAYER[0] )
    call ChooseGameMode()
    set udg_Group = GetUnitsInRectAll(gg_rct_______c1)
    call ForGroupBJ( udg_Group, function Trig_aa6Func011A )
    call DestroyGroup( udg_Group )
    debug call JudgeCundang()
    call ShowUnitHide( gg_unit_H01W_0207 )
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig_aa6 takes nothing returns nothing
    set gg_trg_aa6 = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_aa6, "aa6")
#endif
    call TriggerRegisterTimerEventSingle( gg_trg_aa6, 0.00 )
    call TriggerAddAction(gg_trg_aa6, function Trig_aa6Actions)
endfunction

