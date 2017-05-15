//! import "LHBase.j"
//! import "Diffculty.j"
//! import "SpellBase.j"
/*
    新副本，秘境挑战
*/
library_once MiJing requires LHBase,Diffculty,SpellBase
	
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
        private timer TMijingBound = null
        //刷怪
        private integer ITotalMonster = 0
        private group GMijing = null
        //判断是否正在挑战
        private boolean BMijingStart = false

        private trigger TDengUnderAttacked = null
        unit UMijingShangdian = null
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        灯每次只扣一点血
    */
    function TDengDamageCon takes nothing returns boolean
        return GetUnitTypeId(GetTriggerUnit()) == 'n01H' and GetEventDamage() > 1
    endfunction

    function TDengDamageAct takes nothing returns nothing
        call ImmuteDamage(GetTriggerUnit())
        call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE) - 1)
    endfunction
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
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        灯的奖励
    */
    private function GetDengJiangli takes nothing returns integer
        if (IDeng == 1) then
            return 'ILI1'
        elseif (IDeng == 2) then
            return 'ILI2'
        elseif (IDeng == 3) then
            return 'ILI3'
        elseif (IDeng == 4) then
            return 'ILI4'
        elseif (IDeng == 5) then
            return 'ILI5'
        elseif (IDeng == 6) then
            return 'ILI6'
        elseif (IDeng == 7) then
            return 'ILI7'
        elseif (IDeng == 8) then
            return 'ILI8'
        elseif (IDeng == 9) then
            return 'ILI9'
        elseif (IDeng == 10) then
            return 'ILIA'
        elseif (IDeng == 11) then
            return 'ILIB'
        elseif (IDeng == 12) then
            return 'ILIC'
        elseif (IDeng == 13) then
            return 'ILID'
        elseif (IDeng == 14) then
            return 'ILIE'
        elseif (IDeng == 15) then
            return 'ILIF'
        elseif (IDeng == 16) then
            return 'ILIG'
        elseif (IDeng == 17) then
            return 'ILIH'
        elseif (IDeng == 18) then
            return 'ILII'
        elseif (IDeng == 19) then
            return 'ILIJ'
        elseif (IDeng == 20) then
            return 'ILIK'
        endif
        return 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        秘境怪物判断
    */
    private function GetMijingMonster takes nothing returns integer
        if (IDeng == 1) then
            return 'nogr'
        elseif (IDeng == 2) then
            return 'nogr'
        elseif (IDeng == 3) then
            return 'nogr'
        elseif (IDeng == 4) then
            return 'nogr'
        elseif (IDeng == 5) then
            return 'nogr'
        elseif (IDeng == 6) then
            return 'nogr'
        elseif (IDeng == 7) then
            return 'nogr'
        elseif (IDeng == 8) then
            return 'nogr'
        elseif (IDeng == 9) then
            return 'nogr'
        elseif (IDeng == 10) then
            return 'nogr'
        elseif (IDeng == 11) then
            return 'nogr'
        elseif (IDeng == 12) then
            return 'nogr'
        elseif (IDeng == 13) then
            return 'nogr'
        elseif (IDeng == 14) then
            return 'nogr'
        elseif (IDeng == 15) then
            return 'nogr'
        elseif (IDeng == 16) then
            return 'nogr'
        elseif (IDeng == 17) then
            return 'nogr'
        elseif (IDeng == 18) then
            return 'nogr'
        elseif (IDeng == 19) then
            return 'nogr'
        elseif (IDeng == 20) then
            return 'nogr'
        endif
        return 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断怪物的数量
    */
    private function GetMijingMonsterCount takes nothing returns integer
        local group l_group = CreateGroup()
        local unit l_unit
        local integer count = 0
        call GroupAddGroup(GMijing,l_group)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsUnitAliveBJ(l_unit) and GetOwningPlayer(l_unit) == Player(11)) then
                set count = count + 1
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
        return count 
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        创建怪物
    */
    private function CreateMijingMonster takes nothing returns nothing
        local integer i = 1
        local unit u = null
        local rect r = GetMiJingRect()
        local unit temp = UDeng[GetRandomInt(1,IDeng)]
        loop
            exitwhen i > udg_RENSHU
            set u = CreateUnit(Player(11),GetMijingMonster(),GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)),GetRandomReal(0,360))
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl", GetUnitX(u), GetUnitY(u) ))
            call GroupAddUnit(GMijing,u)
            call IssuePointOrderById(u,851983,GetUnitX(temp)+GetRandomReal(-100,100),GetUnitY(temp)+GetRandomReal(-100,100))
            set i = i +1
        endloop
        set u = null
        set r = null
        set temp = null
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
                call PingMinimapForForce( GetForceOfPlayer(ConvertedPlayer(i)), GetUnitX(UDepot[i]), GetUnitY(UDepot[i]), 5.00 )
                call UnitAddItemByIdSwapped(GetDengJiangli(), UDepot[i])
            endif
            set i = i +1
        endloop
        call BJDebugMsg("|cFFFF66CC【消息】|r秘境挑战第"+ I2S(IDeng) + "层挑战成功！奖励"+GetItemName(GetLastCreatedItem())+"发放到了你的仓库,输入-h可以召唤仓库.")
        call SetTextTagTextBJ(TDeng,"第"+ I2S(IDeng) + "层",25)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        挑战失败的结算
    */
    private function MijingFail takes nothing returns nothing
        call BJDebugMsg("|cFFFF66CC【消息】|r秘境挑战第"+ I2S(IDeng) + "层挑战失败!")
        set IDeng = IDeng - 1
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        清除所有秘境相关的数据
    */
    private function DestroyAllMijing takes nothing returns nothing
        local unit l_unit =null
        local integer i = 1
        loop
            exitwhen i > IDeng
            call RemoveUnit(UDeng[i])
            call DestroyTextTag(TDengProcess[i])
            set UDeng[i] = null
            set TDengProcess[i] = null
            set i = i +1
        endloop
        call BJDebugMsg("数量:"+I2S(CountUnitsInGroup(GMijing)))
        loop
            set l_unit = FirstOfGroup(GMijing)
            exitwhen l_unit == null
            call GroupRemoveUnit(GMijing, l_unit)
            if (IsUnitAliveBJ(l_unit) and GetOwningPlayer(l_unit) == Player(11)) then
                call RemoveUnit(l_unit)
            endif
        endloop
        call DisableTrigger(TDengUnderAttacked)
        set BMijingStart = false
        set IProcess = 0 
        set ITotalMonster = 0
        call PauseTimer(TMijingJudge)
        call DestroyTimer(TMijingJudge)
        set TMijingJudge = null
        call PauseTimer(TMijingBound)
        call DestroyTimer(TMijingBound)
        set TMijingBound = null
        if (TMijingFlash != null) then
            call PauseTimer(TMijingFlash)
            call DestroyTimer(TMijingFlash)
            set TMijingFlash = null
        endif
        call DestroyGroup(GMijing)
        set GMijing = null
        set l_unit = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        秘境挑战的成功与失败判断
    */
    private function JudgeDengTimer takes nothing returns nothing
        local integer i = 1
        set IProcess = IProcess + 1

        //失败条件:任一灯爆了
        loop
            exitwhen i > IDeng
            if not(IsUnitAliveBJ(UDeng[i])) then 
                call DestroyAllMijing()
                call MijingFail()
                return
            endif
            set i = i +1
        endloop        

        call BJDebugMsg("数量:"+I2S(CountUnitsInGroup(GMijing)))
        //胜利条件:100%或者没有怪了
        if (IProcess >= 100 or (GetMijingMonsterCount() == 0) and ITotalMonster >= udg_RENSHU * 20) then
            call MijingSucceed()
            call DestroyAllMijing()
            return
        endif

        set i = 1
        loop
            exitwhen i > IDeng
            call SetTextTagTextBJ(TDengProcess[i],I2S(IProcess) + "%",20)
            set i = i +1
        endloop
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        刷怪计时器
    */
    private function FlashMonsterTimer takes nothing returns nothing
        set ITotalMonster = ITotalMonster + udg_RENSHU
        if (ITotalMonster < udg_RENSHU * 20) then
            //创建怪物
            call CreateMijingMonster()
        else
            call PauseTimer(TMijingFlash)
            call DestroyTimer(TMijingFlash)
            set TMijingFlash = null
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        检测怪物是否在地图外面,并去A灯
    */
    private function JudgeBoundTimer takes nothing returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        local integer count = 0
        local unit temp = null
        local rect r = GetMiJingRect()
        call GroupAddGroup(GMijing,l_group)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsUnitAliveBJ(l_unit) and GetOwningPlayer(l_unit) == Player(11)) then
                set temp = UDeng[GetRandomInt(1,IDeng)]
                if not(RectContainsUnit(r, l_unit)) then
                    call SetUnitPosition(l_unit,GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)))
                endif
                call IssuePointOrderById(l_unit,851983,GetUnitX(temp)+GetRandomReal(-100,100),GetUnitY(temp)+GetRandomReal(-100,100))
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
        set temp = null
        set r = null
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
        if (BMijingStart) then
            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r请完成当前挑战再挑战新的秘境.")
            return
        endif
        set IDeng = IDeng + 1
        if (IDeng >= 11) then
            if ((GetPlayerState(GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER) < 1000)) then
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r从11层秘境开始,需要消耗1000木头.")
                return
            endif
            call AdjustPlayerStateBJ( -1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
        endif

        //获取对应的区域
        set r = GetMiJingRect()
        loop
            exitwhen i > IDeng
            //创建对应的灯与对应的文字
            set UDeng[i] = CreateUnit(Player(6),'n01H',GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)),0)
            set TDengProcess[i] = CreateTextTagUnitBJ( "0%", UDeng[i], 0, 20, 100, 100, 0, 0 )
            call PingMinimap(GetUnitX(UDeng[i]),GetUnitY(UDeng[i]),5)
            set i = i +1
        endloop
        //todo 音效的添加
        set IProcess = 0
        set BMijingStart = true
        call BJDebugMsg("|cFFFF66CC【消息】|r第"+ I2S(IDeng) + "层秘境挑战将在5秒后开始！请尽量保持全员参战！")
        call PolledWait(5)
        call BJDebugMsg("|cFFFF66CC【消息】|r挑战开始！")
        call EnableTrigger(TDengUnderAttacked)
        //todo 音效的添加
        set TMijingJudge = CreateTimer()
        set TMijingFlash = CreateTimer()
        set TMijingBound = CreateTimer()
        set GMijing = CreateGroup()
        //检测计时器
        call TimerStart(TMijingJudge,0.6,true,function JudgeDengTimer)
        //刷怪计时器
        call TimerStart(TMijingFlash,1,true,function FlashMonsterTimer)
        //进攻与检测吸怪计时器
        call TimerStart(TMijingBound,4,true,function JudgeBoundTimer)
        set r = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        进入秘境
    */
    function EnterMijing takes nothing returns nothing
        local real x
        local real y
        if ((GetItemTypeId(GetSoldItem()) == 'I02T')) then
            set x = GetRectCenterX(gg_rct_M1)
            set y = GetRectCenterY(gg_rct_M1)
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

        set TDengUnderAttacked = CreateTrigger()
        call YDWESyStemAnyUnitDamagedRegistTrigger( TDengUnderAttacked )
        call DisableTrigger(TDengUnderAttacked)
        call TriggerAddCondition(TDengUnderAttacked, Condition(function TDengDamageCon))
        call TriggerAddAction(TDengUnderAttacked, function TDengDamageAct)

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
        set UMijingShangdian = CreateUnit(Player(6), 'n01G', - 6144.0, - 10176.0, 270.000)
        set TDeng = CreateTextTagUnitBJ( "第0层", UMijingShangdian , 0, 25, 100, 0, 100, 0 )

	endfunction
endlibrary


