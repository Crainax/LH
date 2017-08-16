//! import "LHBase.j"

library_once GoldSystem initializer InitGoldSystem requires LHBase,Version
	
//---------------------------------------------------------------------------------------------------
	/*
	    怪物死亡事件
	*/
	function TGoldDeathCon takes nothing returns boolean
	    return ((HaveSavedInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395) == true) and (IsUnitIllusionBJ(GetDyingUnit()) != true) and (GetPlayerController(GetOwningPlayer(GetKillingUnitBJ())) == MAP_CONTROL_USER) and (GetPlayerSlotState(GetOwningPlayer(GetKillingUnitBJ())) == PLAYER_SLOT_STATE_PLAYING))
	endfunction

	function TGoldDeathAct takes nothing returns nothing
		local integer index = GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))
		local integer rate = 1
		if (IsHighSpeed()) then
			if not (IsUnitType(GetDyingUnit(),UNIT_TYPE_HERO)) then
				set rate = 2
			endif
		endif
	    set udg_gold[index] = (R2I(I2R(LoadInteger(YDHT, GetUnitTypeId(GetDyingUnit()), 0x9DA51395)) * udg_I_Jinqianhuodelv[index])) * rate + udg_gold[index] + udg_gold[index + 6] 
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    每秒加黄金
	*/
	function AddGoldForPlayerTimer takes nothing returns nothing
		local integer i = 1
		loop
			exitwhen i > 6

			if ((udg_gold[i] != 0)) then
				if (BTiaozhan2) then
		        	call AdjustPlayerStateBJ( R2I(I2R(udg_gold[i])*0.01), ConvertedPlayer(i), PLAYER_STATE_RESOURCE_GOLD )
	    			call CreateSpellTextTag("黄金+"+ I2S(R2I(I2R(udg_gold[i])*0.01)),udg_H[i],255,255,0,2)
				else
		        	call AdjustPlayerStateBJ( udg_gold[i], ConvertedPlayer(i), PLAYER_STATE_RESOURCE_GOLD )
	    			call CreateSpellTextTag("黄金+"+ I2S(udg_gold[i]),udg_H[i],255,255,0,2)
				endif
		        set udg_gold[i] = 0
		    endif

			set i = i +1
		endloop

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    金币初始化
	*/
	private function InitAllMonsterGoldSystem takes nothing returns nothing
		call SaveInteger(YDHT , 'nitr' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nitw' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nith' , 0x9DA51395, 125)
	    call SaveInteger(YDHT , 'nits' , 0x9DA51395, 125)
	    call SaveInteger(YDHT , 'nmrl' , 0x9DA51395, 150)
	    call SaveInteger(YDHT , 'nmrm' , 0x9DA51395, 150)
	    call SaveInteger(YDHT , 'hfoo' , 0x9DA51395, 175)
	    call SaveInteger(YDHT , 'hmpr' , 0x9DA51395, 175)
	    call SaveInteger(YDHT , 'hsor' , 0x9DA51395, 200)
	    call SaveInteger(YDHT , 'hspt' , 0x9DA51395, 200)
	    call SaveInteger(YDHT , 'uban' , 0x9DA51395, 225)
	    call SaveInteger(YDHT , 'unec' , 0x9DA51395, 225)
	    call SaveInteger(YDHT , 'ugho' , 0x9DA51395, 250)
	    call SaveInteger(YDHT , 'ucry' , 0x9DA51395, 250)
	    call SaveInteger(YDHT , 'earc' , 0x9DA51395, 275)
	    call SaveInteger(YDHT , 'esen' , 0x9DA51395, 275)
	    call SaveInteger(YDHT , 'ogru' , 0x9DA51395, 300)
	    call SaveInteger(YDHT , 'orai' , 0x9DA51395, 300)
	    call SaveInteger(YDHT , 'hkni' , 0x9DA51395, 325)
	    call SaveInteger(YDHT , 'hrif' , 0x9DA51395, 325)
	    call SaveInteger(YDHT , 'ohun' , 0x9DA51395, 350)
	    call SaveInteger(YDHT , 'odoc' , 0x9DA51395, 350)
	    call SaveInteger(YDHT , 'njks' , 0x9DA51395, 375)
	    call SaveInteger(YDHT , 'hhes' , 0x9DA51395, 375)
	    call SaveInteger(YDHT , 'nchr' , 0x9DA51395, 400)
	    call SaveInteger(YDHT , 'nchw' , 0x9DA51395, 400)
	    call SaveInteger(YDHT , 'okod' , 0x9DA51395, 425)
	    call SaveInteger(YDHT , 'oshm' , 0x9DA51395, 425)
	    call SaveInteger(YDHT , 'nzom' , 0x9DA51395, 450)
	    call SaveInteger(YDHT , 'uswb' , 0x9DA51395, 450)
	    call SaveInteger(YDHT , 'hgry' , 0x9DA51395, 475)
	    call SaveInteger(YDHT , 'hdhw' , 0x9DA51395, 475)
	    call SaveInteger(YDHT , 'otau' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'ospw' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'edry' , 0x9DA51395, 525)
	    call SaveInteger(YDHT , 'edot' , 0x9DA51395, 525)
	    call SaveInteger(YDHT , 'hgyr' , 0x9DA51395, 550)
	    call SaveInteger(YDHT , 'hmtm' , 0x9DA51395, 550)
	    call SaveInteger(YDHT , 'efdr' , 0x9DA51395, 575)
	    call SaveInteger(YDHT , 'edoc' , 0x9DA51395, 575)
	    call SaveInteger(YDHT , 'uobs' , 0x9DA51395, 600)
	    call SaveInteger(YDHT , 'umtw' , 0x9DA51395, 600)
	    call SaveInteger(YDHT , 'otbr' , 0x9DA51395, 625)
	    call SaveInteger(YDHT , 'owyv' , 0x9DA51395, 625)
	    call SaveInteger(YDHT , 'owar' , 0x9DA51395, 650)
	    call SaveInteger(YDHT , 'oswy' , 0x9DA51395, 650)
	    call SaveInteger(YDHT , 'emtg' , 0x9DA51395, 700)
	    call SaveInteger(YDHT , 'ebal' , 0x9DA51395, 700)
	    call SaveInteger(YDHT , 'nfgb' , 0x9DA51395, 5000)
	    call SaveInteger(YDHT , 'nsgb' , 0x9DA51395, 5000)
	    call SaveInteger(YDHT , 'nwrg' , 0x9DA51395, 6000)
	    call SaveInteger(YDHT , 'nlkl' , 0x9DA51395, 6000)
	    call SaveInteger(YDHT , 'nltc' , 0x9DA51395, 7000)
	    call SaveInteger(YDHT , 'nltc' , 0x9DA51395, 7000)
	    call SaveInteger(YDHT , 'nmsc' , 0x9DA51395, 8000)
	    call SaveInteger(YDHT , 'nplg' , 0x9DA51395, 8000)
	    call SaveInteger(YDHT , 'nlrv' , 0x9DA51395, 9000)
	    call SaveInteger(YDHT , 'nvdg' , 0x9DA51395, 9000)
	    call SaveInteger(YDHT , 'nano' , 0x9DA51395, 200)
	    call SaveInteger(YDHT , 'nanw' , 0x9DA51395, 400)
	    call SaveInteger(YDHT , 'nenf' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nbld' , 0x9DA51395, 1000)
	    call SaveInteger(YDHT , 'nbda' , 0x9DA51395, 1000)
	    call SaveInteger(YDHT , 'nbdo' , 0x9DA51395, 2000)
	    call SaveInteger(YDHT , 'ncim' , 0x9DA51395, 2500)
	    call SaveInteger(YDHT , 'ncnk' , 0x9DA51395, 5000)
	    call SaveInteger(YDHT , 'ngnw' , 0x9DA51395, 10000)
	    call SaveInteger(YDHT , 'ngns' , 0x9DA51395, 5000)
	    call SaveInteger(YDHT , 'ngna' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nhhr' , 0x9DA51395, 1000)
	    call SaveInteger(YDHT , 'nhfp' , 0x9DA51395, 10000)
	    call SaveInteger(YDHT , 'nenc' , 0x9DA51395, 20000)
	    call SaveInteger(YDHT , 'Nbst' , 0x9DA51395, 20000)
	    call SaveInteger(YDHT , 'Hblm' , 0x9DA51395, 50000)
	    call SaveInteger(YDHT , 'Obla' , 0x9DA51395, 150000)
	    call SaveInteger(YDHT , 'Npbm' , 0x9DA51395, 250000)
	    call SaveInteger(YDHT , 'Hamg' , 0x9DA51395, 400000)
	    call SaveInteger(YDHT , 'nltl' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nthl' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nstw' , 0x9DA51395, 1500)
	    call SaveInteger(YDHT , 'nslm' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nslf' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nsln' , 0x9DA51395, 1500)
	    call SaveInteger(YDHT , 'nspd' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nnwa' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nnwl' , 0x9DA51395, 1500)
	    call SaveInteger(YDHT , 'nubk' , 0x9DA51395, 100)
	    call SaveInteger(YDHT , 'nubr' , 0x9DA51395, 500)
	    call SaveInteger(YDHT , 'nubw' , 0x9DA51395, 1500)
	endfunction
//---------------------------------------------------------------------------------------------------
	private function InitGoldSystem takes nothing returns nothing

		//怪物死亡事件
	    local trigger t = CreateTrigger()
	    local timer ti = CreateTimer()
	    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
	    call TriggerAddCondition(t, Condition(function TGoldDeathCon))
	    call TriggerAddAction(t, function TGoldDeathAct)

	    call InitAllMonsterGoldSystem()

	    //每秒增加黄金
	    call TimerStart(ti,1,true,function AddGoldForPlayerTimer)
	    set t = null
	    set ti = null
	endfunction

endlibrary

