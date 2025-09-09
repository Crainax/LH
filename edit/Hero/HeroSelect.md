function Trig______________________uConditions takes nothing returns boolean
    return (((GetTriggerUnit() == UChengjiu) or ((GetOwningPlayer(GetTriggerUnit()) == Player(PLAYER_NEUTRAL_PASSIVE)) and (IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true) and (udg_T1[GetConvertedPlayerId(GetTriggerPlayer())] == false))))
endfunction

function Trig______________________uFunc003Func028Func003T takes nothing returns nothing
    if ((GetUnitUserData(gg_unit_nmre_0234) != 1)) then
        call DisplayTimedTextToPlayer( GetOwningPlayer(gg_unit_Eevi_0020), 0, 0, 30, "TRIGSTR_019" )
    else
        call YDWEFlushMissionByInteger( YDWEGetTimerID(GetExpiredTimer()) )
        call DestroyTimer( GetExpiredTimer() )
    endif
endfunction

function Trig______________________uFunc003Func039Func005T takes nothing returns nothing
    if ((GetUnitUserData(gg_unit_ncp3_0238) != 1)) then
        call DisplayTimedTextToPlayer( GetOwningPlayer(gg_unit_Etyr_0017), 0, 0, 30, "TRIGSTR_021" )
    else
        call YDWEFlushMissionByInteger( YDWEGetTimerID(GetExpiredTimer()) )
        call DestroyTimer( GetExpiredTimer() )
    endif
endfunction

function Trig______________________uActions takes nothing returns nothing
    local integer ydul_g
    local timer ydl_timer
    if ((GetTriggerUnit() == UChengjiu)) then
        	debug call CreateHeroChallenagerDialog(GetTriggerPlayer())
        set ydl_timer = null
        return
    else
    endif
    if ((udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] == true) and ((GetTriggerUnit() != gg_unit_Hapm_0255) or              (IsPIV(GetTriggerPlayer())) or              (GetXinglongSelectedCon(GetTriggerPlayer()))) and ((GetTriggerUnit() != gg_unit_Hant_0205) or              (IsPIV(GetTriggerPlayer())) or              (GetHuanyiSelectedCon(GetTriggerPlayer()))) and ((GetTriggerUnit() != gg_unit_Hkal_0208) or              (IsPIV(GetTriggerPlayer())) or              (GetMengjiSelectedCon(GetTriggerPlayer())) or              (BSuiji[GetConvertedPlayerId(GetTriggerPlayer())])) and ((GetTriggerUnit() != gg_unit_Nsjs_0209) or              (IsPIV(GetTriggerPlayer())) or              (GetCanglingSelectedCon(GetTriggerPlayer()))) and ((GetTriggerUnit() != gg_unit_H01Y_0286) or              (IsPIV(GetTriggerPlayer())) or              (GetXiaotingSelectedCon(GetTriggerPlayer())))) then
        if (             (IsUnitIsSpin(GetTriggerUnit()))) then
                call ChooseSpinHero(GetTriggerPlayer(),GetTriggerUnit())
            set ydl_timer = null
            return
        else
        endif
        if (             (CT6()) and              (not(BSuiji[GetConvertedPlayerId(GetTriggerPlayer())]))) then
            set udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] = false
            call RandomPick(GetTriggerPlayer())
            set ydl_timer = null
            return
        else
        endif
        if ((GetTriggerUnit() == gg_unit_H02B_0293)) then
            set udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] = false
            call RandomPick(GetTriggerPlayer())
            set ydl_timer = null
            return
        else
            if (             (IChooseAura != 0 and udg_H[GetConvertedPlayerId(GetTriggerPlayer())] == xinglong)) then
                call ChooseAura(GetTriggerUnit())
                set udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] = false
                set ydl_timer = null
                return
            else
            endif
        endif
        set udg_T1[GetConvertedPlayerId(GetTriggerPlayer())] = true
        set udg_Point = GetRandomLocInRect(gg_rct________1)
        call SetUnitPositionLoc( GetTriggerUnit(), udg_Point )
        call SetUnitOwner( GetTriggerUnit(), GetTriggerPlayer(), true )
        call PanCameraToTimedLocForPlayer( GetTriggerPlayer(), udg_Point, 0.20 )
        call RemoveLocation( udg_Point )
        set udg_RENSHU = ( udg_RENSHU + 1 )
        set udg_H[GetConvertedPlayerId(GetTriggerPlayer())] = GetTriggerUnit()
        call SetPlayerStateBJ( GetTriggerPlayer(), PLAYER_STATE_RESOURCE_FOOD_CAP, 1 )
        call MultiboardSetItemValueBJ( udg_D, 1, ( GetConvertedPlayerId(GetTriggerPlayer()) + 1 ), GetUnitName(GetTriggerUnit()) )
        call MultiboardSetItemValueBJ( udg_D, 7, ( GetConvertedPlayerId(GetTriggerPlayer()) + 1 ), "TRIGSTR_016" )
        call MultiboardSetItemValueBJ( udg_D, 6, ( GetConvertedPlayerId(GetTriggerPlayer()) + 1 ), "TRIGSTR_017" )
        if ((udg_I_Jinqianhuodelv[GetConvertedPlayerId(GetTriggerPlayer())] < 1.00)) then
            set ydul_g = 1
            loop
                exitwhen ydul_g > 6
                set udg_I_Jinqianhuodelv[ydul_g] = ( udg_I_Jinqianhuodelv[ydul_g] + 0.10 )
                set ydul_g = ydul_g + 1
            endloop
        else
        endif
        call DisplayTimedTextToForce( GetPlayersAll(), 30, ( "|cFFFF66CC【提示】|r当前金钱获得率为" + ( I2S(R2I(( udg_I_Jinqianhuodelv[GetConvertedPlayerId(GetTriggerPlayer())] * 100.00 ))) + "%。" ) ) )
        set udg_Point = GetRectCenter(udg_Ju_Lianyu[GetConvertedPlayerId(GetTriggerPlayer())])
        call CreateTextTagLocBJ( "TRIGSTR_018", udg_Point, 0, 25.00, 100.00, 100, 0.00, 25.00 )
        set udg_Piaofu_Lianyu[GetConvertedPlayerId(GetTriggerPlayer())] = GetLastCreatedTextTag()
        call RemoveLocation( udg_Point )
        call LeaderboardSetLabel( udg_Paihang[GetConvertedPlayerId(GetTriggerPlayer())], ( GetUnitName(GetTriggerUnit()) + "属性（输入\"-yc\"隐藏）" ) )
        call PlayerSetLeaderboard( GetTriggerPlayer(), udg_Paihang[GetConvertedPlayerId(GetTriggerPlayer())] )
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 10
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            set udg_Point = GetRandomLocInRect(udg_Ju_Lianyu[( GetConvertedPlayerId(GetTriggerPlayer()) + 6 )])
            call CreateNUnitsAtLoc( 1, 'nspr', Player(11), udg_Point, GetRandomDirectionDeg() )
            call UnitAddAbilityBJ( 'A04A', GetLastCreatedUnit() )
            call UnitAddAbilityBJ( 'A04B', GetLastCreatedUnit() )
            call GroupAddUnitSimple( GetLastCreatedUnit(), udg_Lianyu_Group[GetConvertedPlayerId(GetTriggerPlayer())] )
            call RemoveLocation( udg_Point )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        debug call InitAchievementName(GetTriggerUnit())
        if ((GetTriggerUnit() == gg_unit_Hvwd_0016)) then
            call InitMoqi(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNSylvanusWindrunner.blp" )
            set udg_Unit_Qixing[1] = CreateUnit(GetTriggerPlayer(), 'ewsp', YDWECoordinateX(( GetUnitX(moqi) + 400.00 )), YDWECoordinateY(GetUnitY(moqi)), 90.00)
            set udg_Unit_Qixing[2] = CreateUnit(GetTriggerPlayer(), 'e006', YDWECoordinateX(( GetUnitX(moqi) + 249.39 )), YDWECoordinateY(( GetUnitY(moqi) + 312.73 )), 141.42)
            set udg_Unit_Qixing[3] = CreateUnit(GetTriggerPlayer(), 'e008', YDWECoordinateX(( GetUnitX(moqi) - 89.00 )), YDWECoordinateY(( GetUnitY(moqi) + 389.97 )), 192.84)
            set udg_Unit_Qixing[4] = CreateUnit(GetTriggerPlayer(), 'e009', YDWECoordinateX(( GetUnitX(moqi) - 360.38 )), YDWECoordinateY(( GetUnitY(moqi) + 173.55 )), 244.27)
            set udg_Unit_Qixing[5] = CreateUnit(GetTriggerPlayer(), 'e00A', YDWECoordinateX(( GetUnitX(moqi) - 360.38 )), YDWECoordinateY(( GetUnitY(moqi) - 173.55 )), 295.71)
            set udg_Unit_Qixing[6] = CreateUnit(GetTriggerPlayer(), 'e007', YDWECoordinateX(( GetUnitX(moqi) - 89.00 )), YDWECoordinateY(( GetUnitY(moqi) - 389.97 )), 347.14)
            set udg_Unit_Qixing[7] = CreateUnit(GetTriggerPlayer(), 'e005', YDWECoordinateX(( GetUnitX(moqi) + 249.39 )), YDWECoordinateY(( GetUnitY(moqi) - 312.73 )), 398.57)
            call UnitAddAbilityBJ( 'A066', gg_unit_Hvwd_0016 )
            call EnableTrigger( gg_trg_______13 )
            call EnableTrigger( gg_trg_______17 )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 6 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 6 )] + 0.20 )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 12 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 12 )] + 0.20 )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 0 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 0 )] + 0.20 )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 24 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 24 )] + 0.50 )
            set udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 30 )] = ( udg_I_Xianglian[( GetConvertedPlayerId(GetTriggerPlayer()) + 30 )] + 0.20 )
            set udg_I_Jinengjiacheng[GetConvertedPlayerId(GetTriggerPlayer())] = ( udg_I_Jinengjiacheng[GetConvertedPlayerId(GetTriggerPlayer())] + 0.20 )
            call TriggerExecute( gg_trg_papa10____________u )
            call TriggerExecute( gg_trg_papa9____________u )
            call TriggerExecute( gg_trg_papa8____________u )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Hjai_0014)) then
            call InitLingxue(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNJaina.blp" )
            call EnableTrigger( gg_trg_____________11 )
            call EnableTrigger( gg_trg_____________23 )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Eevi_0020)) then
            call InitYanmie(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNHeroDemonHunter.blp" )
            set ydl_timer = CreateTimer()
            call TimerStart(ydl_timer, 5.00, true, function Trig______________________uFunc003Func028Func003T)
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Ocbh_0251)) then
            call InitKaisa(GetTriggerUnit())
            call EnableTrigger( gg_trg_____________7 )
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNHeroTaurenChieftain.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Udea_0279)) then
            call InitHeiyan(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNHeroDeathKnight.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Hant_0205)) then
            call InitHuanyi(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Hkal_0208)) then
            call InitMengji(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNwenlei.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Usyl_0215)) then
            call InitXiaoyue(GetTriggerUnit())
            call EnableTrigger( gg_trg_____________65 )
            call EnableTrigger( gg_trg_____________66 )
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNBansheeRanger.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_E00D_0210)) then
            call InitSeyu(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNWarden2.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Uktl_0018)) then
            call InitXuanxue(GetTriggerUnit())
            call EnableTrigger( gg_trg_____________35 )
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNLichVersion2.blp" )
            if ((GetUnitUserData(gg_unit_n00W_0038) != 1)) then
                call DisplayTimedTextToPlayer( GetOwningPlayer(gg_unit_Uktl_0018), 0, 0, 30, "TRIGSTR_020" )
            else
                call YDWEFlushMissionByInteger( YDWEGetTimerID(GetExpiredTimer()) )
                call DestroyTimer( GetExpiredTimer() )
            endif
        else
        endif
        call ShowUnitHide( gg_unit_h006_0252 )
        if ((GetTriggerUnit() == gg_unit_Harf_0262)) then
            call InitChenji(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNArthas.blp" )
            call EnableTrigger( gg_trg_____________122 )
            call EnableTrigger( gg_trg_____________128 )
            call EnableTrigger( gg_trg_____________132 )
            call SetPlayerAbilityAvailableBJ( false, 'A0FJ', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FQ', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FP', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FL', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FM', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FK', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FI', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FO', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0FN', GetTriggerPlayer() )
            call SetPlayerAbilityAvailableBJ( false, 'A0G4', GetTriggerPlayer() )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Othr_0256)) then
            call InitSheyan(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNThrall.blp" )
            call EnableTrigger( gg_trg_____________108 )
            call EnableTrigger( gg_trg_____________116 )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Etyr_0017)) then
            call InitTaiya(GetTriggerUnit())
            call SetUnitUserData( gg_unit_h006_0252, 0 )
            call EnableTrigger( gg_trg_______CD )
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNPriestessOfTheMoon.blp" )
            set ydl_timer = CreateTimer()
            call TimerStart(ydl_timer, 5.00, true, function Trig______________________uFunc003Func039Func005T)
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Nbbc_0235)) then
            call InitBajue(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNChaosBlademaster.blp" )
            set udg_Jiansheng = 3
            call EnableTrigger( gg_trg_______62 )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_E00C_0217)) then
            call InitHanshang(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNHeroAlchemist.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Hhkl_0218)) then
            call InitSichen(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNKnightOfTheEbonBlade.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Hapm_0255)) then
            call InitXinglong(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNXinglong.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_H01Y_0286)) then
            call InitXiaoting(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNRagnarFlamebeard.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_Nsjs_0209)) then
            call InitCangling(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNEarthBrewmaster.blp" )
        else
        endif
        if ((GetTriggerUnit() == gg_unit_H027_0292)) then
            call InitLichi(GetTriggerUnit())
            call MultiboardSetItemIcon( MultiboardGetItem(udg_D, GetConvertedPlayerId(GetTriggerPlayer()), 0), "ReplaceableTextures\\CommandButtons\\BTNlichi2.blp" )
        else
        endif
        call TriggerExecute( gg_trg_D7 )
        call SetUnitInvulnerable(       (udg_H[GetConvertedPlayerId(GetTriggerPlayer())]), false )
        call UnitAddItemByIdSwapped('spsh', udg_H[GetConvertedPlayerId(GetTriggerPlayer())])
        call InitPIVHero(udg_H[GetConvertedPlayerId(GetTriggerPlayer())])
        debug call SetDenglu(GetTriggerPlayer())
        debug if (IsJianianhua()) then
        	debug call UnitAddItemByIdSwapped('I06N', udg_H[GetConvertedPlayerId(GetTriggerPlayer())])
        debug call SaveInteger(YDHT,GetHandleId(GetLastCreatedItem()),0xA75AD423,GetConvertedPlayerId(GetTriggerPlayer()))
        debug endif
        	call InitChallanger1Hero(udg_H[GetConvertedPlayerId(GetTriggerPlayer())])
        	call InitChallanger2Hero(udg_H[GetConvertedPlayerId(GetTriggerPlayer())])
            call ShowChallangerDialog(GetTriggerPlayer())
        if (             (CT3())) then
            			call UnitRemoveAbility(udg_H[GetConvertedPlayerId(GetTriggerPlayer())],'A0B9')
        else
        endif
        if (             (CT6())) then
            call AdjustPlayerStateBJ( 5000, GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD )
        else
        endif
        if (             (IsKuanghuan())) then
            	call GiveRandomEggs(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
        else
        endif
        if (             (BSuiji[GetConvertedPlayerId(GetTriggerPlayer())])) then
            call UnitAddItemByIdSwapped( GetRandomPotion(),       (	udg_H[GetConvertedPlayerId(GetTriggerPlayer())]) )
        else
        endif
        	set BSuiji[GetConvertedPlayerId(GetTriggerPlayer())] = false
    else
        set udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] = true
        call TriggerSleepAction(0.30)
        set udg_T2[GetConvertedPlayerId(GetTriggerPlayer())] = false
    endif
    set ydl_timer = null
endfunction

//===========================================================================
function InitTrig______________________u takes nothing returns nothing
    set gg_trg______________________u = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg______________________u, "选择英雄　　　")
#endif
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(0), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(1), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(2), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(3), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(4), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(5), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(6), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(7), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(8), true )
    call TriggerRegisterPlayerSelectionEventBJ( gg_trg______________________u, Player(9), true )
    call TriggerAddCondition(gg_trg______________________u, Condition(function Trig______________________uConditions))
    call TriggerAddAction(gg_trg______________________u, function Trig______________________uActions)
endfunction

