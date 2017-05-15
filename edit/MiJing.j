//!import "LHBase.j"
/*
    新副本，秘境挑战
*/
library_once MiJing requires LHBase 
	
    globals
        //当前层数
        private integer IDeng = 0
        //显示当前层数的漂浮文字
        private texttag TDeng = null
        //灯与进度显示器
        private unit array UDeng
        private texttag array TDengProcess
        //当前进度
        private integer IProcess = 0
        //计时器
        private timer TMijingJudge = null
        private timer TMijingFlash = null
    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        获取矩形区域，对应人数的秘境
    */
    private function GetMiJingRect takes nothing returns rect
        if (udg_RENSHU == 6 ) then
            return gg_rct_M6
        endif
        if (udg_RENSHU == 5 ) then
            if (IDeng > 5) then
                return gg_rct_M6
            endif
            return gg_rct_M5
        endif
        if (udg_RENSHU == 4) then
            if (IDeng > 5) then
                return gg_rct_M5
            elseif (IDeng > 10) then
                return gg_rct_M6
            endif
            return gg_rct_M4
        endif
        if (udg_RENSHU == 3 ) then
            if (IDeng > 5) then
                return gg_rct_M4
            elseif (IDeng > 10) then
                return gg_rct_M5
            elseif (IDeng > 15) then
                return gg_rct_M6
            endif
            return gg_rct_M3
        endif
        if (udg_RENSHU == 2) then
            if (IDeng > 5) then
                return gg_rct_M3
            elseif (IDeng > 10) then
                return gg_rct_M4
            elseif (IDeng > 15) then
                return gg_rct_M5
            endif
            return gg_rct_M2
        endif
        if (udg_RENSHU == 1) then
            if (IDeng > 5) then
                return gg_rct_M2
            elseif (IDeng > 10) then
                return gg_rct_M3
            elseif (IDeng > 15) then
                return gg_rct_M4
            endif
            return gg_rct_M1
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        挑战成功的奖励与结算
    */
    private function MijingSucceed takes nothing returns nothing
        local integer i = 1
        loop
            exitwhen i > 6
            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
            endif
            set i = i +1
        endloop
        call BJDebugMsg("|cFFFF66CC【消息】|r第"+ I2S(IDeng) + "层秘境挑战通过了，请到秘境之灵处领取对应的奖励吧～")
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        挑战失败的结算
    */
    private function MijingFail takes nothing returns nothing

    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        清除所有秘境相关的数据
    */
    private function DestroyAllMijing takes nothing returns nothing
        set IProcess = 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        秘境挑战的成功与失败判断
    */
    private function JudgeDengTimer takes nothing returns nothing
        local integer i = 1
        set IProcess = IProcess + 1
        if (IProcess < 99) then
            loop
                exitwhen i > IDeng
                call SetTextTagTextBJ(TDengProcess[i],I2S(IProcess) + "%",20)
                set i = i +1
            endloop
        else
            call MijingSucceed()
            call DestroyAllMijing()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        刷怪计时器
    */
    private function FlashMonsterTimer takes nothing returns nothing
        if (true) then
            
        else
            call DestroyAllMijing()
        endif
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        开始秘境挑战
    */
    private function StartMijing takes nothing returns nothing
        local integer i = 1
        local rect r = null
        if (IDeng >= 20) then
            call BJDebugMsg("|cFFFF66CC【消息】|r秘境挑战已经达到最高的20层，20层之后敬请期待.")
            return 
        endif
        set IDeng = IDeng + 1
        //获取对应的区域
        set rect r = GetMiJingRect()
        loop
            exitwhen i > IDeng
            //创建对应的灯与对应的文字
            set UDeng[i] = CreateUnit(Player(6),'deng',GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)))
            set TDengProcess[i] = CreateTextTagUnitBJ( "0%", UDeng[i], 0, 20, 100, 100, 0, 0 )
            call PingMinimap(GetUnitX(UDeng[i]),GetUnitY(UDeng[i]),5)
            set i = i +1
        endloop
        //todo 音效的添加
        call PlaySoundBJ( gg )
        set IProcess = 0
        call BJDebugMsg("|cFFFF66CC【消息】|r第"+ I2S(IDeng) + "层秘境挑战将在5秒后开始！请尽量保持全员参战！")text
        call PolledWait(5)
        call BJDebugMsg("|cFFFF66CC【消息】|r挑战开始！")
        //todo 音效的添加
        call PlaySoundBJ( gg )
        set TMijingJudge = CreateTimer()
        set TMijingFlash = CreateTimer()
        //检测计时器
        call TimerStart(TMijingJudge,0.6,true,function JudgeDengTimer)
        //刷怪计时器
        call TimerStart(TMijingFlash,0.2,true,function FlashMonsterTimer)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        进入秘境
    */
    function EnterMijing takes nothing returns nothing
        local real x
        local real y
        if ((GetItemTypeId(GetSoldItem()) == 'I02T')) then
            set x = GetRectCenterX(RMijing)
            set y = GetRectCenterY(RMijing)
            call SetUnitX(GetBuyingUnit(),x)
            call SetUnitY(GetBuyingUnit(),y)
            call PanCameraToTimedForPlayer(GetOwningPlayer(GetBuyingUnit()),x,y,0.2)
            call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl", x, y))
            call DisplayTextToPlayer( GetOwningPlayer(GetBuyingUnit()), 0, 0, "|cFFFF66CC【消息】|r回去输入“HG”。" )
        elseif ((GetItemTypeId(GetSoldItem()) == 'I048')) then
            call StartMijing()
        endif        

    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        初始化秘境
    */
	function InitMiJing takes nothing returns nothing
			if (renshu == 1) then
            call AddWeatherEffectSaveLast( gg_rct_M1, 'MEds' )
    		elseif (renshu == 2) then
            call AddWeatherEffectSaveLast( gg_rct_M2, 'MEds' )
    		elseif (renshu == 3) then
            call AddWeatherEffectSaveLast( gg_rct_M3, 'MEds' )
    		elseif (renshu == 4) then
            call AddWeatherEffectSaveLast( gg_rct_M4, 'MEds' )
    		elseif (renshu == 5) then
            call AddWeatherEffectSaveLast( gg_rct_M5, 'MEds' )
    		elseif (renshu == 6) then
            call AddWeatherEffectSaveLast( gg_rct_M6, 'MEds' )
			endif
	endfunction
endlibrary