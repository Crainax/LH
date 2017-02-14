

//! import "Test.j"
library_once LHBase requires Test

    globals
        unit learnSkillHero
    endglobals

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

	/*
	    敌人过滤器1,只能造成伤害的
	*/
   function IsEnemy takes unit u, unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false /*
        */ and IsUnitType(u, UNIT_TYPE_SLEEPING) == false     and GetUnitState(u, UNIT_STATE_LIFE) > 0.405    /*
        */ and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false    and IsUnitAliveBJ(u)	== true		              /*
        */ and IsUnitHidden(u) == false                       and IsUnitEnemy(u, GetOwningPlayer(caster))     /*
        */ and IsUnitVisible(u, GetOwningPlayer(caster))	  and GetUnitAbilityLevel(u,'Avul') < 1    		  /*
        */ and GetUnitPointValue(u) != 123					  and GetUnitPointValue(u) != 0
    endfunction

	/*
	    敌人过滤器2,只要是敌人都算
	*/
   function IsEnemy2 takes unit u, unit caster returns boolean
        return GetUnitState(u, UNIT_STATE_LIFE) > 0.405       and IsUnitAliveBJ(u)	== true		              /*
        */ and IsUnitEnemy(u, GetOwningPlayer(caster))        and GetUnitPointValue(u) != 123				  /*
        */ and GetUnitPointValue(u) != 0
    endfunction

    /*
        创建技能的漂浮文字，漂浮然后消失
    */
    function CreateSpellTextTag takes string name,unit u,real red,real green,real blue,real time returns nothing

	    local texttag t = CreateTextTagUnitBJ( name, u, 0, 20.00, red, green, blue, 0 )
	    call SetTextTagVelocityBJ( t, 64, 90.00 )
	    if time <= 0 then
	        set time = 0.01
	    endif
	    call SetTextTagPermanent(t,false)
	    call SetTextTagLifespan(t,time)
	    call SetTextTagFadepoint(t,time)
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
        创建马甲作为特效
    */
	function CreateUnitEffect takes player whichPlayer,integer unitType,real x,real y,real facing returns nothing
	    call UnitApplyTimedLifeBJ( 5, 'BHwe',CreateUnit(whichPlayer,unitType,x,y,facing))
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
endlibrary