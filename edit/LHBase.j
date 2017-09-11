

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
            魔兽显示
        */
        boolean array BMoshou
        /*
            万劫封帝录
        */
        
        unit Uwanjie = null
        hashtable itemTable = InitHashtable()
        hashtable LHTable = InitHashtable()
        hashtable spellTable = InitHashtable()
        /*
            全局变量 英雄
        */
        unit kaisa = null
        unit yanmie = null
        unit moqi = null
        unit lingxue = null
        unit bajue = null
        unit seyu = null
        unit xiaoyue = null
        unit xuanxue = null
        unit chenji = null
        unit hanshang = null
        unit taiya = null
        unit sheyan = null
        unit Heiyan = null
        unit cangling = null
        unit mengji = null
        unit Huanyi = null
        unit sichen = null
        unit xinglong = null
        unit xiaoting = null
        unit lichi = null
        /*
            觉醒
        */ 
        boolean array BJuexing1
        boolean array BJuexing2
        boolean array BJuexing3
        //是否变色
        timer array TBianse

        //是否正在禁用天赋
        boolean BTianfu = false

        boolean array BYeguaiFirst

        //是否显示伤害
        boolean array BHideDamage

        //是否可以跳关
        //boolean BSkipKuilei = false

        //英雄死了
        boolean array BHeroDeath

        //轮流玩家指针
        integer INextPlayerID = 0
        
        //京剧
        boolean JJ1 = false
        boolean JJ2 = false
    endglobals
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是力量英雄
    */
    function IsStrHero takes unit u returns boolean
        return u == kaisa or u == chenji or u ==bajue or u == Heiyan or u == xinglong
    endfunction
    
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是敏捷英雄
    */
    function IsAgiHero takes unit u returns boolean
        return u == taiya or u == xiaoyue or u == mengji or u == moqi or u == hanshang or u == cangling or u == seyu or u == yanmie or u == sichen or u == xiaoting
    endfunction
    
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是智力英雄
    */
    function IsIntHero takes unit u returns boolean
        return u == lingxue or u == xuanxue or u == sheyan or u == Huanyi or u == lichi
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是魔界英雄
    */
    function IsMo takes unit u returns boolean
        return u == lichi
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取一个字符串的几段循环
    */
    function GetCycleHash takes string s,integer times returns integer
        local string result = s
        local integer i = 1
        loop
            exitwhen i > times
            set result = I2S(StringHash(result))
            set i = i +1
        endloop
        return S2I(result)
    endfunction
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
        return ((GetItemTypeId(i) != 'mgtk') and (GetItemTypeId(i) != 'k3m1') and (GetItemTypeId(i) != 'pomn') and (GetItemTypeId(i) != 'wild') and (GetItemTypeId(i) != 'hlst') and (GetItemTypeId(i) != 'totw') and (GetItemTypeId(i) != 'sror') and (GetItemTypeId(i) != 'fgrg') and (GetItemTypeId(i) != 'wshs') and (GetItemTypeId(i) != 'IXU1') and (GetItemTypeId(i) != 'I049') and (GetItemTypeId(i) != 'I04A') and (GetItemTypeId(i) != 'I000') and (GetItemTypeId(i) != 'I001') and (GetItemTypeId(i) != 'I002') and (GetItemTypeId(i) != 'I01D') and (GetItemTypeId(i) != 'I02W') and (GetItemTypeId(i) != 'sres') and (GetItemTypeId(i) != 'I06A') and (GetItemTypeId(i) != 'I06B') and (GetItemTypeId(i) != 'I06C') and (GetItemTypeId(i) != 'I06J') and (GetItemTypeId(i) != 'I062') and (GetItemTypeId(i) != 'ICS1') and (GetItemTypeId(i) != 'I04W') and (GetItemTypeId(i) != 'I04Y') and (GetItemTypeId(i) != 'I05T') and (GetItemTypeId(i) != 'I05W') and (GetItemTypeId(i) != 'I05V') and (GetItemTypeId(i) != 'ICY1') and (GetItemTypeId(i) != 'I05X') and (GetItemTypeId(i) != 'IB0A') and (GetItemTypeId(i) != 'I04X') and (GetItemTypeId(i) != 'ICX1') and (GetItemTypeId(i) != 'I05Y') and (GetItemTypeId(i) != 'I05Z') and (GetItemTypeId(i) != 'I060') and (GetItemTypeId(i) != 'I06N'))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是1-9宝石或者3种组合石
    */
    function IsDiamond takes item i returns boolean
        return  GetItemTypeId(i) == 'I02N' or GetItemTypeId(i) == 'I04S' or GetItemTypeId(i) == 'azhr' or GetItemTypeId(i) == 'gmfr' or GetItemTypeId(i) == 'jpnt' or GetItemTypeId(i) == 'glsk' or GetItemTypeId(i) == 'kygh' or GetItemTypeId(i) == 'sehr' or GetItemTypeId(i) == 'bzbf' or GetItemTypeId(i) == 'phlt' or GetItemTypeId(i) == 'dkfw' or GetItemTypeId(i) == 'thle'
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        20个全体的单位
    */
    function Is20Unit takes unit u returns boolean
        return (((GetUnitTypeId(u) == 'nanw') or (GetUnitTypeId(u) == 'nbld') or (GetUnitTypeId(u) == 'nbdo') or (GetUnitTypeId(u) == 'ncnk') or (GetUnitTypeId(u) == 'nenc') or (GetUnitTypeId(u) == 'ngnw')))
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        10个全体的单位
    */
    function Is10Unit takes unit u returns boolean
        return (((GetUnitTypeId(u) == 'nano') or (GetUnitTypeId(u) == 'nenf') or (GetUnitTypeId(u) == 'nbda') or (GetUnitTypeId(u) == 'ncim') or (GetUnitTypeId(u) == 'ngns') or (GetUnitTypeId(u) == 'nhfp')))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取某个单位应该对应的杀敌数
    */

    function GetKillCount takes unit u returns integer
        if (Is10Unit(u)) then
            return 10 * CModeH(1,2)
        elseif (Is20Unit(u)) then
            return 20 * CModeH(1,2)
        else
            return 1 * CModeH(1,2)
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断一个单位是否无敌
    */
    function IsWudi takes unit u returns boolean
        return GetUnitAbilityLevel(u,'Avul') > 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        戒指1-9过滤器
    */
    function GetBasicRing takes unit u returns item
        if (UnitHasItemOfTypeBJ(u,'rat9'))then
            return GetItemOfTypeFromUnitBJ(u, 'rat9')
        elseif (UnitHasItemOfTypeBJ(u,'rlif'))then
            return GetItemOfTypeFromUnitBJ(u, 'rlif')
        elseif (UnitHasItemOfTypeBJ(u,'lgdh'))then
            return GetItemOfTypeFromUnitBJ(u, 'lgdh')
        elseif (UnitHasItemOfTypeBJ(u,'clfm'))then
            return GetItemOfTypeFromUnitBJ(u, 'clfm')
        elseif (UnitHasItemOfTypeBJ(u,'bgst'))then
            return GetItemOfTypeFromUnitBJ(u, 'bgst')
        elseif (UnitHasItemOfTypeBJ(u,'belv'))then
            return GetItemOfTypeFromUnitBJ(u, 'belv')
        elseif (UnitHasItemOfTypeBJ(u,'hcun'))then
            return GetItemOfTypeFromUnitBJ(u, 'hcun')
        elseif (UnitHasItemOfTypeBJ(u,'rag1'))then
            return GetItemOfTypeFromUnitBJ(u, 'rag1')
        elseif (UnitHasItemOfTypeBJ(u,'penr'))then
            return GetItemOfTypeFromUnitBJ(u, 'penr')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        戒指max和超鬼过滤器
    */
    function GetMaxRing takes unit u returns item
        if (UnitHasItemOfTypeBJ(u,'brac')) then
            return GetItemOfTypeFromUnitBJ(u, 'brac')
        elseif (UnitHasItemOfTypeBJ(u,'lhst'))then
            return GetItemOfTypeFromUnitBJ(u, 'lhst')
        elseif (UnitHasItemOfTypeBJ(u,'I05W'))then
            return GetItemOfTypeFromUnitBJ(u, 'I05W')
        elseif (UnitHasItemOfTypeBJ(u,'I05V'))then
            return GetItemOfTypeFromUnitBJ(u, 'I05V')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是鬼戒指Max或者超鬼
    */
    function IsMaxRing takes item i returns boolean
        return GetItemTypeId(i) == 'brac' or GetItemTypeId(i) == 'lhst' or GetItemTypeId(i) == 'I05W' or GetItemTypeId(i) == 'I05V'
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        戒指过滤器
    */
    function GetRing takes unit u returns item
        if (UnitHasItemOfTypeBJ(u,'rat9')) then
            return GetItemOfTypeFromUnitBJ(u, 'rat9')
        elseif (UnitHasItemOfTypeBJ(u,'rlif')) then
            return GetItemOfTypeFromUnitBJ(u, 'rlif')
        elseif (UnitHasItemOfTypeBJ(u,'lgdh')) then
            return GetItemOfTypeFromUnitBJ(u, 'lgdh')
        elseif (UnitHasItemOfTypeBJ(u,'clfm')) then
            return GetItemOfTypeFromUnitBJ(u, 'clfm')
        elseif (UnitHasItemOfTypeBJ(u,'bgst')) then
            return GetItemOfTypeFromUnitBJ(u, 'bgst')
        elseif (UnitHasItemOfTypeBJ(u,'belv')) then
            return GetItemOfTypeFromUnitBJ(u, 'belv')
        elseif (UnitHasItemOfTypeBJ(u,'hcun')) then
            return GetItemOfTypeFromUnitBJ(u, 'hcun')
        elseif (UnitHasItemOfTypeBJ(u,'rag1')) then
            return GetItemOfTypeFromUnitBJ(u, 'rag1')
        elseif (UnitHasItemOfTypeBJ(u,'penr')) then
            return GetItemOfTypeFromUnitBJ(u, 'penr')
        elseif (UnitHasItemOfTypeBJ(u,'brac')) then
            return GetItemOfTypeFromUnitBJ(u, 'brac')
        elseif (UnitHasItemOfTypeBJ(u,'lhst')) then
            return GetItemOfTypeFromUnitBJ(u, 'lhst')
        elseif (UnitHasItemOfTypeBJ(u,'I05W')) then
            return GetItemOfTypeFromUnitBJ(u, 'I05W')
        elseif (UnitHasItemOfTypeBJ(u,'I05V')) then
            return GetItemOfTypeFromUnitBJ(u, 'I05V')
        endif
        return null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        获取英雄身上的是什么灯
    */
    function GetDeng takes unit u returns integer
        if (UnitHasItemOfTypeBJ(u,'ILI1')) then
            return 1
        elseif (UnitHasItemOfTypeBJ(u,'ILI2')) then
            return 2
        elseif (UnitHasItemOfTypeBJ(u,'ILI3')) then
            return 3
        elseif (UnitHasItemOfTypeBJ(u,'ILI4')) then
            return 4
        elseif (UnitHasItemOfTypeBJ(u,'ILI5')) then
            return 5
        elseif (UnitHasItemOfTypeBJ(u,'ILI6')) then
            return 6
        elseif (UnitHasItemOfTypeBJ(u,'ILI7')) then
            return 7
        elseif (UnitHasItemOfTypeBJ(u,'ILI8')) then
            return 8
        elseif (UnitHasItemOfTypeBJ(u,'ILI9')) then
            return 9
        elseif (UnitHasItemOfTypeBJ(u,'ILIA')) then
            return 10
        elseif (UnitHasItemOfTypeBJ(u,'ILIB')) then
            return 11
        elseif (UnitHasItemOfTypeBJ(u,'ILIC')) then
            return 12
        elseif (UnitHasItemOfTypeBJ(u,'ILID')) then
            return 13
        elseif (UnitHasItemOfTypeBJ(u,'ILIE')) then
            return 14
        elseif (UnitHasItemOfTypeBJ(u,'ILIF')) then
            return 15
        elseif (UnitHasItemOfTypeBJ(u,'ILIG')) then
            return 16
        elseif (UnitHasItemOfTypeBJ(u,'ILIH')) then
            return 17
        elseif (UnitHasItemOfTypeBJ(u,'ILII')) then
            return 18
        elseif (UnitHasItemOfTypeBJ(u,'ILIJ')) then
            return 19
        elseif (UnitHasItemOfTypeBJ(u,'ILIK')) then
            return 20
        endif
        return 0
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断是否是战魂与死亡勋章
    */
    function IsZhanfahun takes item i returns boolean
        local integer id = GetItemTypeId(i)
        return id == 'I01U' or id == 'rde2' or id == 'vamp' or id == 'skul' or id == 'tsct' or id == 'tcas' or id == 'plcl' or id == 'tgrh' or id == 'rst1' or id == 'rnec' or id == 'shas' or id == 'spro' or id == 'phea' or id == 'rin1' or id == 'ward' or id == 'rde1' or id == 'ICX1'
    endfunction

//---------------------------------------------------------------------------------------------------
    /*
        判断是否是灯
    */
    function IsDeng takes item i returns boolean
        local integer t = GetItemTypeId(i)
        return ( t == 'ILI1') or ( t == 'ILI2') or ( t == 'ILI3') or ( t == 'ILI4') or ( t == 'ILI5') or ( t == 'ILI6') or ( t == 'ILI7') or ( t == 'ILI8') or ( t == 'ILI9') or ( t == 'ILIA') or ( t == 'ILIB') or ( t == 'ILIC') or ( t == 'ILID') or ( t == 'ILIE') or ( t == 'ILIF') or ( t == 'ILIG') or ( t == 'ILIH') or ( t == 'ILII') or ( t == 'ILIJ') or ( t == 'ILIK')
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
        雇佣兵过滤器
    */
    function IsSolider takes unit u returns boolean
        return (GetUnitTypeId(u) == 'uG01') or (GetUnitTypeId(u) == 'uG02') or (GetUnitTypeId(u) == 'uG03') or (GetUnitTypeId(u) == 'uG04') or (GetUnitTypeId(u) == 'uG05') or (GetUnitTypeId(u) == 'uG06')
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
        return ((GetUnitTypeId(u) == 'owyv') or (GetUnitTypeId(u) == 'nzom') or (GetUnitTypeId(u) == 'nsog') or (GetUnitTypeId(u) == 'nsoc') or (GetUnitTypeId(u) == 'ninc') or (GetUnitTypeId(u) == 'ninm') or (GetUnitTypeId(u) == 'nsrn') or (GetUnitTypeId(u) == 'nsrh') or (GetUnitTypeId(u) == 'nmit'))
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
        移动回基地
    */
    function HG takes unit u returns nothing
        call SetUnitPositionLoc(u,udg_Point_Fuhuo)
    endfunction
    
//---------------------------------------------------------------------------------------------------
    /*
        全部胜利
    */
    function ShengliAll takes nothing returns nothing
        call CustomVictoryBJ( GetEnumPlayer(), true, true )
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        4个坐标的角度,前面是人的位置，后面是点的位置
    */
    function GetFacingBetweenXY takes real x1,real y1,real x2,real y2 returns real
        return Atan2BJ(y2-y1,x2-x1)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        4个坐标的距离
    */
    function GetDistance takes real x1,real y1,real x2,real y2 returns real
        local real dx = x2-x1
        local real dy = y2-y1
        return SquareRoot(dx*dx+dy*dy)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        4个坐标的距离
    */
    function GetUnitDistance takes unit u1,unit u2 returns real
        return GetDistance(GetUnitX(u1),GetUnitY(u1),GetUnitX(u2),GetUnitY(u2))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        判断背刺,u1是判断的单位,u2是背后的单位
    */
    function IsUnitInUnitBack takes unit u1,unit u2,real angle returns boolean
        return CosBJ(GetUnitFacing(u1) - YDWEAngleBetweenUnits(u2, u1)) >= CosBJ(angle)
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
//---------------------------------------------------------------------------------------------------
    /*
        伤害一个区域，非转生单位无效
    */
    function DamageAreaMirror takes unit attacker,real x,real y,real radius,real damage returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,attacker) and (udg_U_Zhuansheng_Dantiao[2] != l_unit or  udg_U_Zhuansheng_Dantiao[1] == attacker) ) then
                call UnitDamageTarget( attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
    endfunction
//---------------------------------------------------------------------------------------------------

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
//---------------------------------------------------------------------------------------------------

    /*
        伤害一个区域，附带特效
    */
    function DamageAreaEff takes unit attacker,real x,real y,real radius,real damage,string eff returns nothing
        local group l_group = CreateGroup()
        local unit l_unit
        call GroupEnumUnitsInRange(l_group, x, y, radius, null)
        loop
            set l_unit = FirstOfGroup(l_group)
            exitwhen l_unit == null
            call GroupRemoveUnit(l_group, l_unit)
            if (IsEnemy(l_unit,attacker)) then
                call UnitDamageTarget( attacker, l_unit, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
                call DestroyEffect(AddSpecialEffect(eff, GetUnitX(l_unit), GetUnitY(l_unit) ))
            endif
        endloop
        call DestroyGroup(l_group)
        set l_group = null
        set l_unit =null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        添加3W
    */
    function AddHero3W takes unit u, integer value returns nothing
        local unit hero = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
        if (hero == chenji) then
            call SetHeroStr(hero,GetHeroStr(hero,true) + value * 3 ,true)
        else
            call SetHeroInt(hero,GetHeroInt(hero,true) + value ,true)
            call SetHeroAgi(hero,GetHeroAgi(hero,true) + value ,true)
            call SetHeroStr(hero,GetHeroStr(hero,true) + value ,true)
        endif
        set hero = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        溢出属性的处理
    */
    function GetLimit takes integer i returns integer
        if (i < 0 or i > 2100000000) then
            return 2100000000
        else
            return i
        endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        弹对话框
    */
    function ShowGameHint takes player p,string content returns nothing
        local dialog d = DialogCreate()
        local string s = "
            " + content
        call DialogSetMessage( d, s )
        call DialogAddButton( d, "我知道了|cffff6800(Esc)|r",512)
        call DialogDisplay( p, d, true )
        set d = null
    endfunction
//---------------------------------------------------------------------------------------------------
    
    /*
        输出选英雄皮肤的提示
    */
    function ChooseSpinHero takes player p,unit u returns  nothing
        call ShowGameHint(p,"该英雄是"+GetUnitName(u)+"英雄的皮肤"+GetHeroProperName(u)+"。"+S3(DEBUG_MODE,"
        使用英雄"+GetUnitName(u)+"完成对应的英雄挑战即可获取该皮肤。
        前往基地左边商店处可以查看该挑战的详细内容。","
        使用魔兽争霸官方对战平台(dz.163.com)进行游戏
        完成挑战即可获取该皮肤。"))
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        弹对话框(全体玩家)
    */
    function ShowGameHintAll takes string content returns nothing
        local integer i = 1
        local dialog d = DialogCreate()
        local string s = "
            " + content
        call DialogSetMessage( d, s )
        call DialogAddButton( d, "我知道了|cffff6800(Esc)|r",512)
        loop
            exitwhen i > 6
            call DialogDisplay( ConvertedPlayer(i), d, true )
            set i = i +1
        endloop
        set d = null
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        玩家轮流转
    */
    function GetNextPlayerID takes nothing returns integer
        local integer i = 1
        loop
            exitwhen i > 6
            set INextPlayerID = I3(INextPlayerID >= 6, 1, INextPlayerID + 1)
            if ((GetPlayerSlotState(ConvertedPlayer(INextPlayerID)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(INextPlayerID)) == MAP_CONTROL_USER) and udg_H[INextPlayerID] != null) then
                exitwhen true
            endif
            set i = i +1
        endloop
        return INextPlayerID
    endfunction
//---------------------------------------------------------------------------------------------------

    /*
        购买者的判断，防止是假分身
    */
    function BuyerFilter takes unit buyer returns boolean
        return (GetUnitTypeId(buyer) != 'N018') and (GetUnitTypeId(buyer) != 'N01X') and (GetUnitTypeId(buyer) != 'N01Y')
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
        给英雄加技能,如果是星胧则加永久性
    */
    function UnitAddAbilityP takes unit u,integer i returns nothing
            call UnitAddAbility(u,i)
            if (u == xinglong) then
                call UnitMakeAbilityPermanent(u,true,i)
            endif
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        单位是否有空物品栏
    */
    function IsUnitHasSlot takes unit u returns boolean
        local integer i = 1
        loop
            exitwhen i > 6
            if ( UnitItemInSlotBJ(u,i) == null) then
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
        获取第一个玩家
    */
    function GetFirstPlayer takes nothing returns player
        local integer i = 1
        loop
            exitwhen i > 6
            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
                return ConvertedPlayer(i)
            endif
            set i = i +1
        endloop
        return ConvertedPlayer(1)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        基地爆炸
    */
    function Jidibaozha takes string s returns nothing
        local integer i = 1
        loop
            exitwhen i > 6
            call CustomDefeatBJ( ConvertedPlayer(i), s )
            set i = i +1
        endloop
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
        local integer i = 1

        loop
            exitwhen i > 6
            if ((GetPlayerSlotState(ConvertedPlayer(i)) == PLAYER_SLOT_STATE_PLAYING) and (GetPlayerController(ConvertedPlayer(i)) == MAP_CONTROL_USER)) then
                set BMoshou[i] = false
            endif
            set i = i +1
        endloop
        /*
            仓库初始化
        */
        set UDepot[1] = CreateUnit(Player(0), 'nmgv', 10175.0, - 691.0, 270.000)
        set UDepot[2] = CreateUnit(Player(1), 'nmgv', 10307.0, - 691.0, 270.000)
        set UDepot[3] = CreateUnit(Player(2), 'nmgv', 10431.0, - 691.0, 270.000)
        set UDepot[4] = CreateUnit(Player(3), 'nmgv', 10175.0, - 60.6, 270.000)
        set UDepot[5] = CreateUnit(Player(4), 'nmgv', 10307.0, - 60.6, 270.000)
        set UDepot[6] = CreateUnit(Player(5), 'nmgv', 10431.0, - 60.6, 270.000)

        set Uwanjie = CreateUnit(Player(PLAYER_NEUTRAL_PASSIVE), 'n01F', - 14394.0, - 15446.0, 270.000)

        call SaveInteger(LHTable,GetHandleId(t),1,0)
        call TimerStart(t,2,true,function StartWanjieTimer)


        set t = null
    endfunction
endlibrary
