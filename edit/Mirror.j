
//! import "LHBase.j"
//! import "Attr.j"
/*
    转生
*/
library_once Mirror requires LHBase ,Attr

    globals
        timer TiMirror
        timerdialog TiDiaMirror

    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        设置某个单位和另一个单位一样,镜像
    */
    function SetUnitMirror takes unit mirror,unit u1,integer times returns nothing
        local integer i = 1
        loop
            exitwhen i > 6
            call UnitAddItemByIdSwapped(GetItemTypeId(UnitItemInSlotBJ(u1,i)), mirror)
            set i = i +1
        endloop
        call SetHeroInt(mirror,GetLimit( GetHeroInt( u1, true) *  times ),true)
        call SetHeroAgi(mirror,GetLimit( GetHeroAgi( u1, true) *  times ),true)
        call SetHeroStr(mirror,GetLimit( GetHeroStr( u1, true) *  times ),true)
        call SetAttack(mirror,GetAttack(u1)*times)
        call SetDefense(mirror,GetDefense(u1)*times)
        call SetHP(mirror,GetHP(u1)*times)
        if (u1 == kaisa) then
            call UnitRemoveAbility(mirror,'AOre')
        elseif (u1 == taiya) then
            call SetUnitAcquireRange( mirror, 600.00 )
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        显示进度
    */
    function ShowLiuliProcess takes nothing returns nothing
        if (udg_Z[GetConvertedPlayerId(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]))] < 42) then
            call DisplayTextToPlayer(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]), 0., 0., "|cffff00ff【虚】琉璃璞玉|r"+I2S(udg_Z[GetConvertedPlayerId(GetOwningPlayer(udg_U_Zhuansheng_Dantiao[1]))])+"/42.")
        endif
    endfunction
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
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将获得减少50%魔法伤害技能。")
        elseif (count == 170) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将出生于英雄周围。")
        elseif (count == 180) then
            call DisplayTextToPlayer(GetOwningPlayer(defier), 0., 0., "|cFFFF66CC【消息】|r从"+I2S(count)+"转开始镜像将更加厉害的破魔。")
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
            call UnitAddAbility(mirror,'A052')
        endif
        if (count >= 170) then
            call SetUnitX(mirror,GetUnitX(defier))
            call SetUnitY(mirror,GetUnitY(defier))
        endif
        if (count >= 180) then
            call SetUnitAbilityLevel(mirror,'A0GQ',2)
        endif
    endfunction

endlibrary