function Trig_____________abFunc001Func002A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_004" )
    call SetPlayerTechResearchedSwap( 'R01K', 1, GetEnumPlayer() )
endfunction

function Trig_____________abFunc002Func003A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_005" )
    call SetPlayerTechResearchedSwap( 'R01K', 1, GetEnumPlayer() )
endfunction

function Trig_____________abFunc003Func003A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_006" )
    call SetPlayerTechResearchedSwap( 'R01K', 1, GetEnumPlayer() )
endfunction

function Trig_____________abFunc004Func003A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_007" )
    call SetPlayerTechResearchedSwap( 'R01K', 1, GetEnumPlayer() )
endfunction

function Trig_____________abFunc005Func003A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_008" )
endfunction

function Trig_____________abFunc006Func004A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_009" )
endfunction

function Trig_____________abFunc007Func005A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_010" )
endfunction

function Trig_____________abFunc008Func005A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_011" )
endfunction

function Trig_____________abFunc009Func005A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_012" )
endfunction

function Trig_____________abFunc010Func006A takes nothing returns nothing
    call DisplayTimedTextToPlayer( GetEnumPlayer(), 0, 0, 5.00, "TRIGSTR_013" )
endfunction

function Trig_____________abFunc014Func001A takes nothing returns nothing
    call SetPlayerTechResearchedSwap( 'R00I', ( NanDiff + 1 ), GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R00S', NanDiff, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R001', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R005', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R00Q', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R004', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R003', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R000', udg_Nandu, GetEnumPlayer() )
endfunction

function Trig_____________abFunc014Func003A takes nothing returns nothing
    call SetPlayerTechResearchedSwap( 'R00I', ( NanDiff + 1 ), GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R00S', NanDiff, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R001', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R005', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R00Q', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R004', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R003', udg_Nandu, GetEnumPlayer() )
    call SetPlayerTechResearchedSwap( 'R000', udg_Nandu, GetEnumPlayer() )
endfunction

function Trig_____________abFunc015A takes nothing returns nothing
    set playerName[GetConvertedPlayerId(GetEnumPlayer())] = GetPlayerName(GetEnumPlayer())
    debug call PrintCurrentPlatformLevel(GetEnumPlayer())
endfunction

function Trig_____________abActions takes nothing returns nothing
    local integer ydul_g
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[1])) then
        set udg_Nandu = 1
        call ForForce( GetPlayersAll(), function Trig_____________abFunc001Func002A )
        set udg_Nandu_JJJ = 1
        set diffculty = "天国"
        set udg_IWang = 2
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[2])) then
        set udg_Nandu = 2
        set udg_Nandu_JJJ = 2
        call ForForce( GetPlayersAll(), function Trig_____________abFunc002Func003A )
        set udg_IWang = 4
        set diffculty = "太平"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[3])) then
        set udg_Nandu = 4
        set udg_Nandu_JJJ = 3
        call ForForce( GetPlayersAll(), function Trig_____________abFunc003Func003A )
        set udg_IWang = 7
        set diffculty = "和谐"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[4])) then
        set udg_Nandu = 6
        set udg_Nandu_JJJ = 4
        call ForForce( GetPlayersAll(), function Trig_____________abFunc004Func003A )
        set udg_IWang = 8
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.80
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "战争"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[5])) then
        set udg_Nandu = 8
        set udg_Nandu_JJJ = 5
        call ForForce( GetPlayersAll(), function Trig_____________abFunc005Func003A )
        set udg_IWang = 10
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.70
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "炼狱"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[6])) then
        set udg_Nandu = 10
        set udg_Nandu_JJJ = 6
        set NanDiff = 1
        call ForForce( GetPlayersAll(), function Trig_____________abFunc006Func004A )
        set udg_IWang = 12
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.60
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "地狱"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[7])) then
        set udg_Nandu = 20
        set udg_Nandu_JJJ = 7
        set udg_Nandu_JJJ = 7
        set NanDiff = 2
        call ForForce( GetPlayersAll(), function Trig_____________abFunc007Func005A )
        set udg_IWang = 16
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.50
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "|cFFFF0000末日|r"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[8])) then
        set udg_Nandu = 40
        set udg_Nandu_JJJ = 7
        set udg_IWang = 32
        set NanDiff = 3
        call ForForce( GetPlayersAll(), function Trig_____________abFunc008Func005A )
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.50
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "|cffff00ff轮回|r"
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[9])) then
        set udg_Nandu = 40
        set udg_Nandu_JJJ = 8
        set udg_IWang = 32
        set NanDiff = 3
        call ForForce( GetPlayersAll(), function Trig_____________abFunc009Func005A )
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.50
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "|cff008000万劫|r"
        call InitWanjie()
    else
    endif
    if ((GetClickedButtonBJ() == udg_X_Nandu_Chuangkou[10])) then
        set udg_Nandu = 40
        set udg_Nandu_JJJ = 8
        set udg_IWang = 32
        set NanDiff = 3
        set IsTianyan = true
        call ForForce( GetPlayersAll(), function Trig_____________abFunc010Func006A )
        set ydul_g = 1
        loop
            exitwhen ydul_g > 6
            set udg_I_Jinqianhuodelv[ydul_g] = 0.00
            set ydul_g = ydul_g + 1
        endloop
        set diffculty = "|cff993366天魇|r"
        call InitWanjie()
        call InitTianyan()
    else
    endif
    call CinematicModeBJ( false, GetPlayersAll() )
    call PrintDifficulty()
    call InitAllVIP()
    if (             (IsTianyan)) then
        call ForForce( GetPlayersByMapControl(MAP_CONTROL_COMPUTER), function Trig_____________abFunc014Func001A )
    else
        call ForForce( GetPlayersAll(), function Trig_____________abFunc014Func003A )
    endif
    call ForForce( GetPlayersAll(), function Trig_____________abFunc015A )
    call TriggerExecute( gg_trg_D4 )
    call StartTimerBJ( udg_Time_Start[1], false, 60.00 )
    call CreateTimerDialogBJ( udg_Time_Start[1], "TRIGSTR_014" )
    set udg_Time_Monster_C[1] = GetLastCreatedTimerDialogBJ()
    call TimerDialogDisplayBJ( true, udg_Time_Monster_C[1] )
    call InitJungle()
    call CameraSetSmoothingFactor( 2.00 )
endfunction

//===========================================================================
function InitTrig_____________ab takes nothing returns nothing
    set gg_trg_____________ab = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_____________ab, "选择难度ab")
#endif
    call TriggerRegisterDialogEvent( gg_trg_____________ab, udg_X_Nandu )
    call TriggerAddAction(gg_trg_____________ab, function Trig_____________abActions)
endfunction

