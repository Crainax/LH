
library_once LHBase

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
	    敌人过滤器
	*/
   function IsEnemy takes unit u, unit caster returns boolean
        return IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_RESISTANT) == false /*
        */ and IsUnitType(u, UNIT_TYPE_SLEEPING) == false     and GetUnitState(u, UNIT_STATE_LIFE) > 0.405    /*
        */ and IsUnitType(u, UNIT_TYPE_STRUCTURE) == false    and IsUnitIllusion(u) == false                  /*
        */ and IsUnitHidden(u) == false                       and IsUnitEnemy(u, GetOwningPlayer(caster))     /*
        */ and IsUnitVisible(u, GetOwningPlayer(caster))
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
        购买者的判断，防止是假分身
    */
	function BuyerFilter takes unit buyer returns boolean
		return (GetUnitTypeId(buyer) != 'N018')
	endfunction
endlibrary