

/////! import "Test.j"
//! import "Constant.j"
//! import "JBase.j"

library_once LHBase initializer InitLHBase requires Constant,JBase//,Test

    globals
        unit learnSkillHero = null
        /*
            仓库
        */
        unit array UDepot
        string array playerName
        /*
            万劫封帝录
        */
        unit Uwanjie
        hashtable itemTable = InitHashtable()
        hashtable LHTable = InitHashtable()
    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        仙器使用技能进行禁止丢弃判断
    */
    function IsXianSpell takes integer spell returns boolean
        return (spell == 'Acht') or (spell =='A03A') or (spell =='A0BM') /*
            */or (spell =='A07Z') or (spell =='A07T') or (spell =='A05Z')/*
            */or (spell =='ACro') or (spell =='Acht') or (spell =='A07X') or (spell =='A05Y')/*
            */or (spell =='AChv') or (spell =='A07V') or (spell =='Awrg') or (spell =='A05X')/*  
            */or (spell =='A07C') or (spell =='A07D') or (spell =='Awrh') or (spell =='A075')/*
            */or (spell =='A06W') or (spell =='A06Y') or (spell =='A06Q') or (spell =='A07R')/*
            */or (spell =='ACcl') or (spell =='AOhw') or (spell =='AIin') or (spell =='AIil')/*
            */or (spell =='A07S') or (spell =='AChx')
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        元素之灵过滤器
    */
    function IsYuansu takes unit u returns boolean
        return GetUnitTypeId(u) == 'nlv3' or GetUnitTypeId(u) == 'hwat' or GetUnitTypeId(u) == 'nbal' or GetUnitTypeId(u) == 'nvde' or GetUnitTypeId(u) == 'ehpr' or GetUnitTypeId(u) == 'nsll' or GetUnitTypeId(u) == 'nadr' or GetUnitTypeId(u) == 'nitp' or GetUnitTypeId(u) == 'nsgg' or GetUnitTypeId(u) == 'nehy'
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        友军过滤器
    */
    function IsAlly takes unit u,unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405 and IsUnitAliveBJ(u) and IsUnitAlly(u, GetOwningPlayer(caster))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        禁止复制的装备
    */
    function IsCanCopy takes item i returns boolean
        return ((GetItemTypeId(i) != 'mgtk') and (GetItemTypeId(i) != 'k3m1') and (GetItemTypeId(i) != 'pomn') and (GetItemTypeId(i) != 'wild') and (GetItemTypeId(i) != 'hlst') and (GetItemTypeId(i) != 'totw') and (GetItemTypeId(i) != 'sror') and (GetItemTypeId(i) != 'fgrg') and (GetItemTypeId(i) != 'wshs') and (GetItemTypeId(i) != 'IXU1') and (GetItemTypeId(i) != 'I049') and (GetItemTypeId(i) != 'I04A') and (GetItemTypeId(i) != 'I000') and (GetItemTypeId(i) != 'I001') and (GetItemTypeId(i) != 'I002') and (GetItemTypeId(i) != 'I01D') and (GetItemTypeId(i) != 'I02W'))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        戒指过滤器
    */
    function GetRing takes unit u returns item
        if (UnitHasItemOfTypeBJ(u,'rat9')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'rat9'))
        elseif (UnitHasItemOfTypeBJ(u,'rlif')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'rlif'))
        elseif (UnitHasItemOfTypeBJ(u,'lgdh')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'lgdh'))
        elseif (UnitHasItemOfTypeBJ(u,'clfm')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'clfm'))
        elseif (UnitHasItemOfTypeBJ(u,'bgst')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'bgst'))
        elseif (UnitHasItemOfTypeBJ(u,'belv')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'belv'))
        elseif (UnitHasItemOfTypeBJ(u,'hcun')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'hcun'))
        elseif (UnitHasItemOfTypeBJ(u,'rag1')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'rag1'))
        elseif (UnitHasItemOfTypeBJ(u,'penr')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'penr'))
        elseif (UnitHasItemOfTypeBJ(u,'fgdg')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'fgdg'))
        elseif (UnitHasItemOfTypeBJ(u,'lhst')) then
            return GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'lhst'))
        endif
            return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        敌人过滤器,判断玩家的,包含魔免
    */
    function IsEnemyMP takes unit u, player p returns boolean
        return IsUnitType(u, UNIT_TYPE_SLEEPING) == false     and GetUnitState(u, UNIT_STATE_LIFE) > 0.405    /*
        */ and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false    and IsUnitAliveBJ(u)  == true                   /*
        */ and IsUnitHidden(u) == false                       and IsUnitEnemy(u, p)                           /*
        */ and IsUnitVisible(u, p)                            and GetUnitAbilityLevel(u,'Avul') < 1           /*
        */ and GetUnitPointValue(u) != 123                    and GetUnitPointValue(u) != 0
    endfunction   
//---------------------------------------------------------------------------------------------------

    /*
        敌人过滤器，包含魔免单位
    */
    function IsEnemyM takes unit u, unit caster returns boolean
        return IsEnemyMP(u,GetOwningPlayer(caster))
    endfunction   
//---------------------------------------------------------------------------------------------------

    /*
        敌人过滤器1,只能造成伤害的
    */
   function IsEnemy takes unit u, unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsEnemyM(u,caster) and IsUnitType(u, UNIT_TYPE_RESISTANT) == false
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        敌人过滤器2,只要是敌人都算
    */
   function IsEnemy2 takes unit u, unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405       and IsUnitAliveBJ(u)  == true                   /*
        */ and IsUnitEnemy(u, GetOwningPlayer(caster))        and GetUnitPointValue(u) != 123                 /*
        */ and GetUnitPointValue(u) != 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        忠诚单位过滤器
    */
    function IsLoyalUnit takes unit u returns boolean
        return ((GetUnitTypeId(u) == 'owyv') or (GetUnitTypeId(u) == 'nzom') or (GetUnitTypeId(u) == 'nsog') or (GetUnitTypeId(u) == 'nsoc') or (GetUnitTypeId(u) == 'ninc') or (GetUnitTypeId(u) == 'ninm') or (GetUnitTypeId(u) == 'nsrn') or (GetUnitTypeId(u) == 'nsrh') or (GetUnitTypeId(u) == 'nmit') or (GetUnitTypeId(u) == 'I049') or (GetUnitTypeId(u) == 'I04A'))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        与敌人过滤器2一致，但匹配的是玩家
    */
   function IsEnemy3 takes unit u, player p returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405       and IsUnitAliveBJ(u)  == true                   /*
        */ and IsUnitEnemy(u, p)                              and GetUnitPointValue(u) != 123                 /*
        */ and GetUnitPointValue(u) != 0
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        删除单位组里面的所有单位并清空自定义数据
    */
    function DeleteGroup takes group g returns nothing
        
        local unit l_unit
        loop
            set l_unit = FirstOfGroup(g)
            exitwhen l_unit == null
            call GroupRemoveUnit(g, l_unit)
            call FlushChildHashtable(YDHT,GetHandleId(l_unit))
            call RemoveUnit( l_unit )
        endloop
        set l_unit = null
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        创建漂浮文字，漂浮然后消失
    */
    function CreateTextTagA takes string name,unit u,real red,real green,real blue,real time,real size returns nothing

        local texttag t = CreateTextTagUnitBJ( name, u, 0, size, red, green, blue, 0 )
        call SetTextTagVelocityBJ( t, 64, 90.00 )
        if time <= 0 then
            set time = 0.01
        endif
        call SetTextTagPermanent(t,false)
        call SetTextTagLifespan(t,time)
        call SetTextTagFadepoint(t,time)
    endfunction

    /*
        创建技能的漂浮文字，漂浮然后消失
    */
    function CreateSpellTextTag takes string name,unit u,real red,real green,real blue,real time returns nothing
        call CreateTextTagA(name,u,red,green,blue,time,16)
    endfunction

    /*
            召唤马甲然后施放技能
    */  
    function SimulateSpell takes unit caster,unit target,integer spellId,integer spellLevel,real lifeTime ,string orderId,boolean isPoint,boolean isImmediate,boolean isTarget returns nothing
        local unit  u = CreateUnit(GetOwningPlayer(caster),'h000',GetUnitX(target),GetUnitY(target),0)
        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( spellId,u )
        call SetUnitAbilityLevel(u,spellId,spellLevel)
        if (isPoint) then
            call IssuePointOrder(u,orderId,GetUnitX(target),GetUnitY(target))
        elseif (isImmediate) then
            call IssueImmediateOrder( u, orderId )
        elseif (isTarget) then
            call IssueTargetOrder( u, orderId, target )
        endif
        set u = null

    endfunction

    /*
        技能4的马甲，点目标，限定使用
    */
    function SimulateSpell4 takes unit caster,real x,real y,integer spellId,integer spellLevel,real lifeTime,string orderId returns nothing
        local unit  u = CreateUnit(GetOwningPlayer(caster),'h01B',x,y,0)
        call UnitApplyTimedLifeBJ( 5.00, 'BHwe',u )
        call UnitAddAbilityBJ( spellId,u )
        call SetUnitAbilityLevel(u,spellId,spellLevel)
        call IssuePointOrder(u,orderId,x,y)
        set u = null

    endfunction

    /*
        创建马甲作为特效(有无时间参数)
    */

    function CreateUnitEffectSpecifyTime takes player whichPlayer,integer unitType,real x,real y,real facing,real time returns nothing
        call UnitApplyTimedLifeBJ( time, 'BHwe',CreateUnit(whichPlayer,unitType,x,y,facing))
    endfunction

    function CreateUnitEffect takes player whichPlayer,integer unitType,real x,real y,real facing returns nothing
        call CreateUnitEffectSpecifyTime(whichPlayer,unitType,x,y,facing,5)
    endfunction

    /*
        伤害一个区域
    */
    function DamageArea takes unit attacker,real x,real y,real radius,real damage returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,attacker)) then
                call UnitDamageTarget( attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
    endfunction

    /*
        购买者的判断，防止是假分身
    */
    function BuyerFilter takes unit buyer returns boolean
        return (GetUnitTypeId(buyer) != 'N018')
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断是否有琉璃璞玉
    */
    function HasLiuli takes unit u returns boolean
        return (GetItemTypeId(GetItemOfTypeFromUnitBJ(u, 'IXU1')) == 'IXU1')
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        回血,小数表示
    */
    function RecoverUnitHP takes unit u,real volume returns nothing
        call SetUnitLifeBJ(u,GetUnitState(u,UNIT_STATE_LIFE)+GetUnitState(u,UNIT_STATE_MAX_LIFE)*volume)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        回魔,量表示
    */
    function RecoverUnitMP takes unit u,real volume returns nothing
        call SetUnitManaBJ(u,GetUnitState(u,UNIT_STATE_MANA)+volume)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        自杀
    */
    function KillSelf takes unit u returns nothing
        call UnitDamageTarget( u, u, GetUnitState(u,UNIT_STATE_MAX_LIFE)*2, false, true, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_POISON, WEAPON_TYPE_WHOKNOWS )
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        单位是否有空物品栏
    */
    function IsUnitHasSlot takes unit u returns boolean
        local integer i = 1
        loop
            exitwhen i > 6
            if (GetItemTypeId(UnitItemInSlotBJ(u,i)) == null) then
                return true
            endif
            set i = i +1
        endloop

        return false
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断坐标是否在区域内
    */
    function IsInRect takes real x, real y,rect reg returns boolean
        return (GetRectMaxX(reg) >= x and GetRectMinX(reg) <= x and GetRectMaxY(reg) >= y and GetRectMinY(reg) <= y )
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        判断是否在闪烁禁区内
    */
    function IsInForbitRegion takes real x,real y,unit u returns boolean
        return (IsInRect(x,y,gg_rct_______a3) and (not(RectContainsUnit(gg_rct_______a3, u)))) or (IsInRect(x,y,gg_rct_Arena_forbit) and (not(RectContainsUnit(gg_rct_Arena_forbit, u))))
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        开始定时刷万劫录
    */
    private function StartWanjieTimer takes nothing returns nothing
        local timer t = GetExpiredTimer()
        local integer id = GetHandleId(t)
        local integer value = LoadInteger(LHTable,id,1)
        local texttag tt = null
        local location point = null
        if (value <= 200) then
            call SaveInteger(LHTable,GetHandleId(t),1,value + 1)
            set point = Location(GetUnitX(Uwanjie) - 100, GetUnitY(Uwanjie) )
            set tt = CreateTextTagLocBJ( "|cffFFD700【万劫录】"+GetWanjieluName(), point, 50.00, 12, 100, 100, 100, 0 )
            call SetTextTagVelocityBJ( tt, 64, 90.00 )
            call SetTextTagPermanent(tt,false)
            call SetTextTagLifespan(tt,5)
            call SetTextTagFadepoint(tt,5)
            call RemoveLocation(point)
            set point = null
            set tt = null
        else
            call PauseTimer(t)
            call FlushChildHashtable(LHTable,id)
            call DestroyTimer(t)
        endif
        set t = null 
    endfunction

//---------------------------------------------------------------------------------------------------
    private function InitLHBase takes nothing returns nothing

        local timer t = CreateTimer()
        /*
            仓库初始化
        */
        set UDepot[1] = CreateUnit(Player(0), 'nmgv', 7424.0, - 1984.0, 270.000)
        set UDepot[2] = CreateUnit(Player(1), 'nmgv', 6656.0, - 1920.0, 270.000)
        set UDepot[3] = CreateUnit(Player(2), 'nmgv', 6656.0, 1216.0, 270.000)
        set UDepot[4] = CreateUnit(Player(3), 'nmgv', 8960.0, - 1984.0, 270.000)
        set UDepot[5] = CreateUnit(Player(4), 'nmgv', 9728.0, - 1856.0, 270.000)
        set UDepot[6] = CreateUnit(Player(5), 'nmgv', 9728.0, 1216.0, 270.000)

        set Uwanjie = CreateUnit(Player(6), 'n01F', - 14464.0, - 15552.0, 270.000)

        call SaveInteger(LHTable,GetHandleId(t),1,0)
        call TimerStart(t,2,true,function StartWanjieTimer)
        
        set t = null
    endfunction
endlibrary