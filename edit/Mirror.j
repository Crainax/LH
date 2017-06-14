
//! import "LHBase.j"
/*
    转生
*/
library_once Mirror requires LHBase 

    globals
        timer TiMirror
        timerdialog TiDiaMirror
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        转生限制1分钟
    */
    private function MirrorTimeOut takes nothing returns nothing
        //移动单位回基地
        call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cFFFF66CC【消息】|r你未能在限定时间内通过转生！")
        call SetUnitPositionLoc(udg_U_Zhuansheng_Dantiao[1],udg_Point_Fuhuo)
    endfunction

    function DestroyMirrorTimer takes nothing returns nothing
        call TimerDialogDisplay(TiDiaMirror,false)
        call DestroyTimerDialog(TiDiaMirror)
        call PauseTimer(TiMirror)
        call DestroyTimer(TiMirror)
        set TiMirror = null
        set TiDiaMirror = null
    endfunction

    function CreateMirrorTimer takes nothing returns nothing
        set TiMirror = CreateTimer()
        set TiDiaMirror = CreateTimerDialogBJ(TiMirror,"转生时间")
        call TimerStart(TiMirror,60,false,function MirrorTimeOut)
        call TimerDialogDisplay(TiDiaMirror,true)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        根据难度给转生加上技能与提示
    */
    function AddMirrorSpell takes nothing returns nothing
        local unit mirror = udg_U_Zhuansheng_Dantiao[2]
        local unit defier = udg_U_Zhuansheng_Dantiao[1]
        local integer count = udg_Z[GetConvertedPlayerId(GetOwningPlayer(defier))]
        if (count == 20) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得33%30倍攻击与破隐技能。")
        elseif (count == 40) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得神圣护甲技能。")
        elseif (count == 60) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得10%回血技能。")
        elseif (count == 80) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得15秒重生技能。")
        elseif (count == 100) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得秒杀献祭技能。")
        elseif (count == 120) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得破防10万技能。")
        elseif (count == 150) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得急速破魔技能。")
        elseif (count == 160) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得减少99%魔法伤害技能。")
        endif

        if (count >= 20) then
            call UnitAddAbility(mirror,'A0GL')
            call UnitAddAbility(mirror,'Adtg')
        endif
        if (count >= 40) then
            call UnitAddAbility(mirror,'A0F1')
        endif
        if (count >= 60) then
            call UnitAddAbility(mirror,'A0GM')
        endif
        if (count >= 80) then
            call UnitAddAbility(mirror,'A0GN')
        endif
        if (count >= 100) then
            call UnitAddAbility(mirror,'A0GO')
        endif
        if (count >= 120) then
            call UnitAddAbility(mirror,'A0GP')
        endif
        if (count >= 150) then
            call UnitAddAbility(mirror,'A0GQ')
        endif
        if (count >= 160) then
            call UnitAddAbility(mirror,'A0DS')
        endif
    endfunction

endlibrary