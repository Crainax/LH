//! import "LHBase.j"
//! import "Diffculty.j"
//! import "SpellBase.j"
/*
    新副本，秘境挑战
*/
library_once MiJing requires LHBase,Diffculty,SpellBase,Version
	
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
        //秘境装备
        private item array IMijing
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        灯每次只扣一点血
    */
    function TDengDamageCon takes nothing returns boolean
        return GetUnitTypeId(GetTriggerUnit()) == 'n01H' and GetEventDamage() > 0
    endfunction

    function TDengDamageAct takes nothing returns nothing
        call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE) - 1)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取矩形区域，对应人数的秘境
    */
    private function GetMiJingRect takes nothing returns rect
        return gg_rct_M6
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
            return 'nmbg'
        elseif (IDeng == 3) then
            return 'nkog'
        elseif (IDeng == 4) then
            return 'nfrp'
        elseif (IDeng == 5) then
            return 'nfot'
        elseif (IDeng == 6) then
            return 'ners'
        elseif (IDeng == 7) then
            return 'nsel'
        elseif (IDeng == 8) then
            return 'ndrs'
        elseif (IDeng == 9) then
            return 'ehip'
        elseif (IDeng == 10) then
            return 'uabo'
        elseif (IDeng >= 11 and IDeng < 16) then
            return 'nmgd'
        elseif (IDeng >= 16) then
            return 'nrwm'
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
                call UnitRemoveBuffsBJ( bj_REMOVEBUFFS_ALL, l_unit )
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
        local unit temp = UDeng[GetRandomInt(1,1)]
        loop
            exitwhen i > udg_RENSHU
            set u = CreateUnit(Player(11),GetMijingMonster(),GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)),GetRandomReal(0,360))
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl", GetUnitX(u), GetUnitY(u) ))
            call GroupAddUnit(GMijing,u)
            call IssuePointOrderById(u,851983,GetUnitX(temp)+GetRandomReal(-100,100),GetUnitY(temp)+GetRandomReal(-100,100))
            if (IsWanjie()) then
                call UnitAddAbility(u,'ANbl')
                call UnitAddAbility(u,'A0IO')
            endif
            call UnitAddAbility(u,'A0IH')
            if ( IDeng <= 10) then
                call EnhanceDiffAttack(u)
            elseif ( IDeng == 11) then
                call UnitAddAbility(u,'A09V')
                call SetUnitAbilityLevel(u,'A09V',NanDiff + 1)
            elseif ( IDeng == 12) then
                call UnitAddAbility(u,'A0I6')
                call SetUnitAbilityLevel(u,'A0I6',NanDiff + 1)
            elseif ( IDeng == 13) then
                call UnitAddAbility(u,'A0I7')
                call SetUnitAbilityLevel(u,'A0I7',NanDiff + 1)
            elseif ( IDeng == 14) then
                call UnitAddAbility(u,'A0I8')
                call SetUnitAbilityLevel(u,'A0I8',NanDiff + 1)
            elseif ( IDeng == 15) then
                call UnitAddAbility(u,'A0I9')
                call SetUnitAbilityLevel(u,'A0I9',NanDiff + 1)
            elseif ( IDeng == 16) then
                call UnitAddAbility(u,'A09V')
                call SetUnitAbilityLevel(u,'A09V',NanDiff + 1)
            elseif ( IDeng == 17) then
                call UnitAddAbility(u,'A0IC')
                call SetUnitAbilityLevel(u,'A0IC',NanDiff + 1)
            elseif ( IDeng == 18) then
                call UnitAddAbility(u,'A0ID')
                call SetUnitAbilityLevel(u,'A0ID',NanDiff + 1)
            elseif ( IDeng == 19) then
                call UnitAddAbility(u,'A0IE')
                call SetUnitAbilityLevel(u,'A0IE',NanDiff + 1)
            elseif ( IDeng == 20) then
                call UnitAddAbility(u,'A0IF')
                call SetUnitAbilityLevel(u,'A0IF',NanDiff + 1)
            endif
            if (IDeng > 10 and IDeng < 16) then
                call SetUnitAbilityLevel(u,'A0I3',IDeng - 10)
            elseif (IDeng > 15) then
                call SetUnitAbilityLevel(u,'A0IA',IDeng - 10)
            endif
            set i = i +1
        endloop
        set u = null
        set r = null
        set temp = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        给装备梦霁
    */
    private function GiveMengjiMijing takes nothing returns nothing
        local timer t = GetExpiredTimer()
        set IMijing[GetConvertedPlayerId(GetOwningPlayer(mengji))] = UnitAddItemByIdSwapped(GetDengJiangli(), udg_H[GetConvertedPlayerId(GetOwningPlayer(mengji))])
        call DisplayTextToPlayer(GetOwningPlayer(mengji), 0., 0., "|cFFFF66CC【消息】|r秘境挑战第"+ I2S(IDeng) + "层挑战成功！奖励"+GetItemName(GetLastCreatedItem())+"发放到了你的身上.")
        call PingMinimapForForce( GetForceOfPlayer(GetOwningPlayer(mengji)), GetUnitX(udg_H[GetConvertedPlayerId(GetOwningPlayer(mengji))]), GetUnitY(udg_H[GetConvertedPlayerId(GetOwningPlayer(mengji))]), 5.00 )
        call PauseTimer(t)
        call DestroyTimer(t)
        set t = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        发放奖励
    */
    function Fafangmijing takes integer index returns nothing
        if (udg_H[index] != cangling) then
            if (IMijing[index] != null) then
                call RemoveItem(IMijing[index])
            endif
        endif
        //call PolledWait(0.1)
        if (udg_H[index] == mengji) then
            call TimerStart(CreateTimer(),0.1,false,function GiveMengjiMijing)
            return
        endif
        
        set IMijing[index] = UnitAddItemByIdSwapped(GetDengJiangli(), udg_H[index])
        call DisplayTextToPlayer(ConvertedPlayer(index), 0., 0., "|cFFFF66CC【消息】|r秘境挑战第"+ I2S(IDeng) + "层挑战成功！奖励"+GetItemName(GetLastCreatedItem())+"发放到了你的身上.")
        call PingMinimapForForce( GetForceOfPlayer(ConvertedPlayer(index)), GetUnitX(udg_H[index]), GetUnitY(udg_H[index]), 5.00 )

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
                call Fafangmijing(i)
            endif
            set i = i +1
        endloop
        call SetTextTagTextBJ(TDeng,"第"+ I2S(IDeng) + "层",25)
        debug call SaveMijingAchievement(IDeng)
        call PlaySoundBJ(gg_snd_v_mijing)
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
    private function RemoveAllMijingUnit takes nothing returns nothing
        if (IsUnitAliveBJ(GetEnumUnit()) and GetOwningPlayer(GetEnumUnit()) == Player(11)) then
            call RemoveUnit(GetEnumUnit())
        endif
    endfunction

    private function DestroyAllMijing takes nothing returns nothing
        local integer i = 1
        loop
            exitwhen i > 1
            call RemoveUnit(UDeng[i])
            call DestroyTextTag(TDengProcess[i])
            set UDeng[i] = null
            set TDengProcess[i] = null
            set i = i +1
        endloop
        call ForGroupBJ( GMijing, function RemoveAllMijingUnit )
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
            exitwhen i > 1
            if not(IsUnitAliveBJ(UDeng[i])) then 
                call DestroyAllMijing()
                call MijingFail()
                return
            endif
            set i = i +1
        endloop        

        //胜利条件:100%或者没有怪了
        if (IProcess >= 100 or (GetMijingMonsterCount() == 0) and ITotalMonster >= 15) then
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
        if (ITotalMonster < 15) then
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
                set temp = UDeng[GetRandomInt(1,1)]
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
        debug set BJiulun = true
        if (IDeng >= 20) then
            call BJDebugMsg("|cFFFF66CC【消息】|r秘境挑战已经达到最高的20层，20层之后敬请期待.")
            return 
        endif
        if (BMijingStart) then
            call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r请完成当前挑战再挑战新的秘境.")
            return
        endif
        if (IDeng >= 10) then
            if ((GetPlayerState(GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER) < 1000)) then
                call DisplayTextToPlayer(GetOwningPlayer(GetBuyingUnit()), 0., 0., "|cFFFF66CC【消息】|r从11层秘境开始,需要消耗1000木头.")
                return
            endif
            call AdjustPlayerStateBJ( -1000, GetOwningPlayer(GetBuyingUnit()), PLAYER_STATE_RESOURCE_LUMBER )
        endif
        set IDeng = IDeng + 1 
        //强化怪物
        if (IDeng == 12) then
            call SetPlayerTechResearchedSwap(  'R012', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R012', NanDiff + 1 , Player(11))
        elseif (IDeng == 13) then
            call SetPlayerTechResearchedSwap(  'R014', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R014', NanDiff + 1 , Player(11))
        elseif (IDeng == 14) then
            call SetPlayerTechResearchedSwap(  'R015', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R015', NanDiff + 1 , Player(11))
        elseif (IDeng == 15) then
            call SetPlayerTechResearchedSwap(  'R016', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R016', NanDiff + 1 , Player(11))
        elseif (IDeng == 17) then
            call SetPlayerTechResearchedSwap(  'R017', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R017', NanDiff + 1 , Player(11))
        elseif (IDeng == 18) then
            call SetPlayerTechResearchedSwap(  'R018', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R018', NanDiff + 1 , Player(11))
        elseif (IDeng == 19) then
            call SetPlayerTechResearchedSwap(  'R019', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R019', NanDiff + 1 , Player(11))
        elseif (IDeng == 20) then
            call SetPlayerTechResearchedSwap(  'R01A', NanDiff + 1 , Player(10))
            call SetPlayerTechResearchedSwap(  'R01A', NanDiff + 1 , Player(11))
        endif
        //获取对应的区域
        set r = GetMiJingRect()
        loop
            exitwhen i > 1
            //创建对应的灯与对应的文字
            set UDeng[i] = CreateUnit(Player(6),'n01H',GetRandomReal(GetRectMinX(r),GetRectMaxX(r)),GetRandomReal(GetRectMinY(r),GetRectMaxY(r)),0)
            set TDengProcess[i] = CreateTextTagUnitBJ( "0%", UDeng[i], 0, 20, 100, 100, 0, 0 )
            call PingMinimap(GetUnitX(UDeng[i]),GetUnitY(UDeng[i]),5)
            set i = i +1
        endloop
        set IProcess = 0
        set BMijingStart = true
        call BJDebugMsg("|cFFFF66CC【消息】|r第"+ I2S(IDeng) + "层秘境挑战将在5秒后开始！请尽量保持全员参战！")
        call PolledWait(5)
        call BJDebugMsg("|cFFFF66CC【消息】|r挑战开始！")
        call EnableTrigger(TDengUnderAttacked)
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
            set x = GetRectCenterX(gg_rct_M6)
            set y = GetRectCenterY(gg_rct_M6)
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
        秘境人数伤害加倍
    */
    private function DamageMijingCon takes nothing returns boolean
        return (IsUnitInGroup(GetTriggerUnit(),GMijing) or IsUnitInGroup(GetEventDamageSource(),GMijing)) and (GetEventDamage() >= 10.00)
    endfunction

    private function DamageMijingAct takes nothing returns nothing
        if (IsUnitInGroup(GetTriggerUnit(),GMijing) and udg_RENSHU > 1) then
            //减伤
            call SetUnitLifeBJ(GetTriggerUnit(),GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+GetEventDamage() *(1.0 - 1.0/I2R(udg_RENSHU)))
        elseif (IsUnitInGroup(GetEventDamageSource(),GMijing)) then
            //增伤
            call DisableTrigger(GetTriggeringTrigger())
            if (udg_RENSHU > 1) then
                call UnitDamageTarget( GetEventDamageSource() , GetTriggerUnit(), GetEventDamage() * (udg_RENSHU - 1), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
            endif
            if (IsWanjie()) then
                call UnitDamageTarget( GetEventDamageSource() , GetTriggerUnit(), 0.01 * udg_RENSHU * GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
            endif
            if (IsTianyan and GetTriggerUnit() != udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))] and (GetPlayerController(GetOwningPlayer(GetEventDamageSource())) == MAP_CONTROL_COMPUTER)) then
                call UnitDamageTarget( GetEventDamageSource(),GetTriggerUnit() , GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE), false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_SLOW_POISON, WEAPON_TYPE_WHOKNOWS )
            endif
            call EnableTrigger(GetTriggeringTrigger())

        endif
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        初始化秘境
    */
	function InitMiJing takes nothing returns nothing
        local trigger t = CreateTrigger()
        set TDengUnderAttacked = CreateTrigger()
        call YDWESyStemAnyUnitDamagedRegistTrigger( TDengUnderAttacked )
        call DisableTrigger(TDengUnderAttacked)
        call TriggerAddCondition(TDengUnderAttacked, Condition(function TDengDamageCon))
        call TriggerAddAction(TDengUnderAttacked, function TDengDamageAct)
        set UMijingShangdian = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01G', - 6144.0, - 10176.0, 270.000)
        set TDeng = CreateTextTagUnitBJ( "第0层", UMijingShangdian , 0, 25, 100, 0, 100, 0 )

        //秘境人数伤害的提高与伤害的减少
        call YDWESyStemAnyUnitDamagedRegistTrigger( t )
        call TriggerAddCondition(t, Condition(function DamageMijingCon))
        call TriggerAddAction(t, function DamageMijingAct)

        set t = null
	endfunction
endlibrary


