
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
        call DisplayTextToPlayer(GetOwningPlayer(/**/), 0., 0., "|cFFFF66CC【消息】|r你未能在限定时间内通过转生！")
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
    function AddMirrorSpell takes unit mirror,unit defier,integer count returns nothing
        if (count == 20) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得33%几率30倍攻击技能。")
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
        endif

        if (count >= 20) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 40) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 60) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 80) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 100) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 120) then
            call UnitAddAbility(mirror,'aaaa')
        elseif (count >= 150) then
            call UnitAddAbility(mirror,'aaaa')
        endif
    endfunction

endlibrary