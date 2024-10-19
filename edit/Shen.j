#include  "LHBase.j"
#include  "Attr.j"

library_once Shen requires LHBase,Attr

//---------------------------------------------------------------------------------------------------
	/*
	   神器召唤精灵
	*/
	//清除精灵
	private function ClearJingling takes nothing returns nothing
		call FlushChildHashtable(YDHT,GetHandleId(GetEnumUnit()))
	    call RemoveUnit( GetEnumUnit() )
	endfunction

	function SummonJingling takes item i,unit caster returns nothing
		local integer attack = 0
		local integer defense = 0
		local integer hp = 0
		local integer unitType = 0
		local integer itemType = GetItemTypeId(i)
		local unit u = null
		local string s = null
		local group g = null

		//单位类型
		if (((itemType == 'tlum') or (itemType == 'ICS1') or (itemType == 'I04W'))) then
        	set s = "Objects\\Spawnmodels\\Undead\\UDeathMedium\\UDeath.mdl"
        	set unitType = 'nehy'
		elseif (itemType == 'I04Z' or itemType == 'nflg' or itemType == 'esaz' or itemType == 'sksh' or itemType == 'oslo' or itemType == 'grsl' or itemType == 'flag' ) then
        	set s = "Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl"
        	set unitType = 'nbal'
		elseif (itemType == 'I056' or itemType == 'spre' or itemType == 'asbl' or itemType == 'ocor' or itemType == 'blba' or itemType == 'cosl' or itemType == 'shhn') then
        	set s = "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"
        	set unitType = 'nvde'
		elseif (itemType == 'I057' or itemType == 'fwss' or itemType == 'ram4' or itemType == 'rat3' or itemType == 'pams' or itemType == 'jdrn' or itemType == 'shcw') then
        	set s = "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"
        	set unitType = 'hwat'
		elseif (itemType == 'I050' or itemType == 'uflg' or itemType == 'ram3' or itemType == 'stre' or itemType == 'shrs' or itemType == 'kgal' or itemType == 'shtm') then
        	set s = "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl"
        	set unitType = 'nlv3'
		elseif (itemType == 'I055' or itemType == 'tgxp' or itemType == 'ram2' or itemType == 'lure' or itemType == 'thdm' or itemType == 'arsh' or itemType == 'srtl') then
        	set s = "war3mapImported\\OrbitalRay.mdl"
        	set unitType = 'nsll'
		elseif (itemType == 'I03Y' or itemType == 'dust' or itemType == 'ram1' or itemType == 'rots' or itemType == 'tmmt' or itemType == 'brag' or itemType == 'olig') then
        	set s = "Abilities\\Spells\\NightElf\\Starfall\\StarfallCaster.mdl"
        	set unitType = 'ehpr'
		elseif (itemType == 'tbar') then
        	set s = "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"
        	set unitType = 'nitp'
		elseif (itemType == 'ccmd') then
        	set s = "war3mapImported\\OrbitalRay.mdl"
        	set unitType = 'nadr'
		elseif (itemType == 'iwbr') then
        	set s = "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"
        	set unitType = 'nsgg'
		elseif (itemType == 'I07F' or itemType == 'I07E') then
        	set s = "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl"
        	set unitType = 'nbzd'
		endif

		//属性
		if (itemType == 'I04Z' or itemType == 'I056' or itemType == 'I057' or itemType == 'I050' or itemType == 'I055' or itemType == 'I03Y') then
	        set attack =  10000
	    elseif (itemType == 'nflg' or itemType == 'spre' or itemType == 'fwss' or itemType == 'uflg' or itemType == 'tgxp' or itemType == 'dust') then
	        set attack =  300000
	        set defense = 200
	        set hp = 1000000
	    elseif (itemType == 'esaz' or itemType == 'asbl' or itemType == 'ram4' or itemType == 'ram3' or itemType == 'ram2' or itemType == 'ram1') then
	        set attack =  750000
	        set defense = 500
	        set hp = 2500000
	    elseif (itemType == 'sksh' or itemType == 'ocor' or itemType == 'rat3' or itemType == 'stre' or itemType == 'lure' or itemType == 'rots') then
	        set attack =  1200000
	        set defense = 750
	        set hp = 4000000
	    elseif (itemType == 'oslo' or itemType == 'blba' or itemType == 'pams' or itemType == 'shrs' or itemType == 'thdm' or itemType == 'tmmt') then
	        set attack =  1800000
	        set defense = 1000
	        set hp = 6000000
	    elseif (itemType == 'grsl' or itemType == 'cosl' or itemType == 'jdrn' or itemType == 'kgal' or itemType == 'arsh' or itemType == 'brag') then
	        set attack =  2800000
	        set defense = 1500
	        set hp = 10000000
	    elseif (itemType == 'flag' or itemType == 'shhn' or itemType == 'shcw' or itemType == 'shtm' or itemType == 'srtl' or itemType == 'olig') then
	        set attack =  5000000
	        set defense = 2000
	        set hp = 15000000
	    endif

	    //暗的等级
	    if (itemType == 'nflg') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 2 )
	    elseif (itemType == 'esaz') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 3 )
	    elseif (itemType == 'sksh') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 4 )
	    elseif (itemType == 'oslo') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 5 )
	    elseif (itemType == 'grsl') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 6 )
	    elseif (itemType == 'flag') then
	        call SetUnitAbilityLevelSwapped( 'ANpi', u, 7 )
	    endif

		if (unitType != 0) then
		    set g = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetTriggerUnit()), unitType)
		    call ForGroupBJ( g, function ClearJingling )
		    call DestroyGroup( g )
		    set u = CreateUnit(GetOwningPlayer(caster),unitType,GetUnitX(caster),GetUnitY(caster),0)
			if (s != null) then
		    	call DestroyEffect(AddSpecialEffect(s, GetUnitX(u),GetUnitY(u) ))
		    endif
		endif
		if (attack != 0) then
			call SetAttack(u,attack)
		endif
		if (defense != 0) then
			call SetDefense(u,defense)
		endif
		if (hp != 0) then
			call SetHP(u,hp)
		endif

	    set s = null
	    set u = null
	    set g = null
	endfunction


endlibrary
