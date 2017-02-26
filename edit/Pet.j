//! import "LHBase.j"

/*
    宠物系统
*/
library_once Pet initializer InitPet requires LHBase 

    globals
        group array GPet
    endglobals
    
//---------------------------------------------------------------------------------------------------
    /*
        创建宠物
    */
    private function CreatePet takes player owner,unit pet returns nothing
        local unit u = pet

        call PlaySoundBJ( gg_snd_GoodJob )
        call DestroyEffect( AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(pet), GetUnitY(pet)) )

        //删除原有的宠物并清空缓存
        call SetUnitOwner( pet, owner, true )
        /*call KillUnit( pet )
        call FlushChildHashtable(YDHT,GetHandleId(pet))
        call YDWEFlushMissionByInteger( YDWEH2I(pet) )
        call RemoveUnit( pet )*/

        //添加技能
        call UnitAddAbilityBJ( 'AInv', u )
        call UnitAddAbilityBJ( 'A06E', u )
        call UnitAddAbilityBJ( 'A06F', u )
        call UnitAddAbilityBJ( 'A0P0', u )
        call UnitAddType( u, UNIT_TYPE_PEON )
        call SetUnitAcquireRange( u, 600.00 )
        call UnitAddAbilityBJ( 'A08M', u )
        call GroupAddUnitSimple( u, GPet[GetConvertedPlayerId(owner)] )
        call UnitAddAbilityBJ( 'Avul', u )
        call DisplayTextToPlayer( owner, 0, 0, "|cFFFF66CC【消息】|r捕捉成功！" )
        call SetPlayerStateBJ( owner, PLAYER_STATE_RESOURCE_FOOD_USED, ( GetPlayerState(owner, PLAYER_STATE_RESOURCE_FOOD_USED) + 1 ) )
        set u = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        抓宠物技能
    */
    function TCatchPetAct takes nothing returns nothing

        //! textmacro CatchPet takes Spell,Net,Limit
            //忠诚单位
            if (GetSpellAbilityId() == '$Spell$') then
                //忠诚单位无效:
                if (IsLoyalUnit(GetSpellTargetUnit())) then
                    call UnitAddItemByIdSwapped( '$Net$', GetTriggerUnit() )
                    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r不能抓忠诚单位。" )
                    return
                endif
                if (GetUnitLevel(GetSpellTargetUnit()) > 50 and GetUnitLevel(GetSpellTargetUnit()) > GetHeroLevel(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])) then
                    call PlaySoundBJ( gg_snd_Jidibeida )
                    call UnitAddItemByIdSwapped( '$Net$', GetTriggerUnit() )
                    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的英雄需要"+I2S(GetUnitLevel(GetSpellTargetUnit()))+"级你才能捕捉该单位." )
                    return
                endif
                if ((GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_USED) >= ( GetPlayerState(GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_FOOD_CAP) - 0 ))) then
                    call PlaySoundBJ( gg_snd_Jidibeida )
                    call UnitAddItemByIdSwapped( '$Net$', GetTriggerUnit() )
                    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r你的人口已满,请通过炼狱提升你的人口数." )
                    return
                endif
                if ((GetUnitStateSwap(UNIT_STATE_LIFE, GetSpellTargetUnit()) >= $Limit$)) then
                    call UnitAddItemByIdSwapped( '$Net$', GetTriggerUnit() )
                    call DisplayTextToPlayer( GetOwningPlayer(GetTriggerUnit()), 0, 0, "|cFFFF66CC【消息】|r目标生物HP为"+I2S(R2I(GetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE)/10000))+"万血,超过了网的"+I2S($Limit$)+"HP捕捉上限!" )
                    call PlaySoundBJ( gg_snd_Jidibeida )
                    return
                endif
                call CreatePet(GetOwningPlayer(GetTriggerUnit()),GetSpellTargetUnit())
                return
            endif
        //! endtextmacro

        //! runtextmacro CatchPet("A06D","I073","10000")
        //! runtextmacro CatchPet("A04P","I074","100000")
        //! runtextmacro CatchPet("A04Q","I075","500000")
        //! runtextmacro CatchPet("A04R","I072","2000000")
        //! runtextmacro CatchPet("A0E1","I071","2000000")


    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        宠物没切换形态时,不能攻击
    */
    function TAttackForbitCon takes nothing returns boolean
        return ((GetUnitAbilityLevelSwapped('A06F', GetAttacker()) == 1) and IsUnitInGroup(GetAttacker(),GPet[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))]) == true)
    endfunction

    function TAttackForbitAct takes nothing returns nothing
        call DisplayTextToPlayer( GetOwningPlayer(GetAttacker()), 0, 0, "|cFFFF66CC【消息】|r想攻击的话使用技能“切换形态”。" )
        //停止命令
        call IssueImmediateOrderById( GetAttacker(), 851972 )
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        宠物切换形态
    */
    private function TPetChangeForm takes nothing returns nothing
        //切换形态1:
        if (GetSpellAbilityId() == 'A06G') then
            call UnitAddType( GetTriggerUnit(), UNIT_TYPE_PEON )
            call UnitAddAbilityBJ( 'A06F', GetTriggerUnit() )
            call UnitRemoveAbilityBJ( 'A06G', GetTriggerUnit() )
            call UnitAddAbilityBJ( 'Avul', GetTriggerUnit() )
        endif

        //切换形态2:
        if (GetSpellAbilityId() == 'A06F') then
            call UnitRemoveType( GetTriggerUnit(), UNIT_TYPE_PEON )
            call UnitRemoveAbilityBJ( 'Avul', GetTriggerUnit() )
            call UnitAddAbilityBJ( 'A06G', GetTriggerUnit() )
            call UnitRemoveAbilityBJ( 'A06F', GetTriggerUnit() )
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        宠物死亡事件
    */

    private function TPetDeathCon takes nothing returns boolean
        return (IsUnitIllusionBJ(GetDyingUnit()) == false and ((IsUnitInGroup(GetDyingUnit(),GPet[1]) == true) or (IsUnitInGroup(GetDyingUnit(),GPet[2]) == true) or (IsUnitInGroup(GetDyingUnit(),GPet[3]) == true) or (IsUnitInGroup(GetDyingUnit(),GPet[4]) == true) or (IsUnitInGroup(GetDyingUnit(),GPet[5]) == true) or (IsUnitInGroup(GetDyingUnit(),GPet[6]) == true)))
    endfunction

    private function TPetDeathAct takes nothing returns nothing
        local integer index = -1
        local integer i = 1
        local integer ii = 1

        loop
            exitwhen ii > 6
            if (IsUnitInGroup(GetDyingUnit(),GPet[ii]) == true) then
                set index = ii
            endif
            set ii = ii +1
        endloop

        if (index == -1) then
            return
        endif

        call SetPlayerStateBJ( ConvertedPlayer(index), PLAYER_STATE_RESOURCE_FOOD_USED, ( GetPlayerState(ConvertedPlayer(index), PLAYER_STATE_RESOURCE_FOOD_USED) - 1 ) )
        //物品给仓库
        loop
            exitwhen i > 6
            call UnitAddItemSwapped( UnitItemInSlotBJ(GetDyingUnit(), i), UDepot[index] )
            set i = i +1
        endloop
        call PingMinimapForForce(GetForceOfPlayer(ConvertedPlayer(index)), GetUnitX(UDepot[index]),GetUnitY(UDepot[index]), 10.00)
        call DisplayTextToPlayer( ConvertedPlayer(index), 0, 0, ( "|cFFFF66CC【消息】|r你的宠物“" + ( GetUnitName(GetDyingUnit()) + "”已阵亡，物品存放于你的仓库。" ) ) )
        call FlushChildHashtable(YDHT,GetHandleId(GetDyingUnit()))
        call GroupRemoveUnit(GPet[index],GetDyingUnit())
        call RemoveUnit( GetDyingUnit() )

    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        宠物物品得到丢弃事件
    */

    function TPetItemCon takes nothing returns boolean
        return ((IsUnitIllusionBJ(GetTriggerUnit()) != true))
    endfunction

    //得到物品
    function TPetItemPickAct takes nothing returns nothing
        if ((GetItemTypeId(GetManipulatedItem()) == 'sbch') and (GetUnitAbilityLevelSwapped('A06R', GetTriggerUnit()) != 1)) then
            call UnitAddAbilityBJ( 'A06R', GetTriggerUnit() )
        endif
        if ((GetItemTypeId(GetManipulatedItem()) == 'gcel') and (GetUnitAbilityLevelSwapped('A0B9', GetTriggerUnit()) != 1)) then
            call UnitAddAbilityBJ( 'A0B9', GetTriggerUnit() )
        endif
        if ((GetItemTypeId(GetManipulatedItem()) == 'crys') and (GetUnitAbilityLevelSwapped('A0CG', GetTriggerUnit()) != 1)) then
            call UnitAddAbilityBJ( 'A0CG', GetTriggerUnit() )
        endif
    endfunction

    //丢弃物品
    function TPetItemDropAct takes nothing returns nothing
        if ((GetItemTypeId(GetManipulatedItem()) == 'sbch') and (GetUnitAbilityLevelSwapped('A06R', GetTriggerUnit()) == 1)) then
            call UnitRemoveAbility( GetTriggerUnit(), 'A06R' )
        else
        endif
        if ((GetItemTypeId(GetManipulatedItem()) == 'gcel') and (GetUnitAbilityLevelSwapped('A0B9', GetTriggerUnit()) == 1)) then
            call UnitRemoveAbility( GetTriggerUnit(), 'A0B9' )
        else
        endif
        if ((GetItemTypeId(GetManipulatedItem()) == 'crys') and (GetUnitAbilityLevelSwapped('A0CG', GetTriggerUnit()) == 1)) then
            call UnitRemoveAbility( GetTriggerUnit(), 'A0CG' )
        else
        endif
    endfunction
//---------------------------------------------------------------------------------------------------

    private function InitPet takes nothing returns nothing
        local trigger t = CreateTrigger()
        local integer i = 1
        loop
            exitwhen i > 6
            set GPet[i] = CreateGroup()
            set i = i +1
        endloop

        //抓宠物与宠物切换形态
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
        call TriggerAddAction(t, function TCatchPetAct)
        call TriggerAddAction(t, function TPetChangeForm)

        //没切换攻击形态时
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
        call TriggerAddCondition(t, Condition(function TAttackForbitCon))
        call TriggerAddAction(t, function TAttackForbitAct)

        //宠物死亡事件
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
        call TriggerAddCondition(t, Condition(function TPetDeathCon))
        call TriggerAddAction(t, function TPetDeathAct)

        //宠物获得物品事件
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_PICKUP_ITEM )
        call TriggerAddCondition(t, Condition(function TPetItemCon))
        call TriggerAddAction(t, function TPetItemPickAct)

        //宠物丢弃物品事件
        set t = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DROP_ITEM )
        call TriggerAddCondition(t, Condition(function TPetItemCon))
        call TriggerAddAction(t, function TPetItemDropAct)

        set t = null
    endfunction

endlibrary

