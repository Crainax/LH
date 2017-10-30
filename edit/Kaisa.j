

//! import "SpellBase.j"
//! import "Printer.j"
//! import "Spin.j"

library_once Kaisa requires SpellBase,Printer,Spin
	
	globals
		private trigger TSpellKaisa = null
		private integer INiuSpinCount = 0

		boolean BFanzhuanKS = false

		//天地裂变
		private boolean BLiebian = false
		private timer TLiebian = null
		private real ILiebian = 0
		private real RLiebianX = 0.
		private real RLiebianY = 0.
		private effect ELiebian = null
		private real RDistanceLiebian = 0.
		private TextTagBind TTBLiebian = 0

		//图腾

	endglobals
//---------------------------------------------------------------------------------------------------
	/*
	    天地裂变
	*/
	private function DestroyLiebianTimer takes nothing returns nothing
		call PauseTimer(TLiebian)
		call DestroyTimer(TLiebian)
		set TLiebian = null
		call SetUnitScalePercent( kaisa,  100.00  , 100.00, 100.00 )
		call TTBLiebian.destroy()
		set ILiebian = 0
		set BLiebian = false
		set RLiebianX = 0.
		set RLiebianY = 0.
		set RDistanceLiebian = 0.
		call DestroyEffect(ELiebian)
	endfunction

	private function TiandiliebianTimer takes nothing returns nothing
		if (IsUnitAliveBJ(kaisa) and BLiebian) then
			//todo :死亡处加上BLiebian变化 
    		set ILiebian = IMinBJ(100,ILiebian + 1)
			call TTBLiebian.setContent(I2S(ILiebian)+"%")
    		call SetUnitScalePercent( kaisa,  100.00 +  2 * ILiebian  , 100.00 +  2 * ILiebian, 100.00 +  2 * ILiebian )
    		if (RLiebianX != GetUnitX(kaisa) or RLiebianY != GetUnitY(kaisa)) then
	    		set RDistanceLiebian = RDistanceLiebian + GetDistance(RLiebianX,RLiebianY,GetUnitX(kaisa),GetUnitY(kaisa))
	    		set RLiebianX = GetUnitX(kaisa)
	    		set RLiebianY = GetUnitY(kaisa)
	    		if (RDistanceLiebian >= 250.0) then
	    			call DamageArea(kaisa,GetUnitX(kaisa),GetUnitY(kaisa),450.0,GetDamageStr(kaisa)*0.01*ILiebian)
	    			call DestroyEffect(AddSpecialEffect("war3mapImported\\longj2.mdl",GetUnitX(kaisa),GetUnitY(kaisa) ))
	    			set RDistanceLiebian = 0.0
	    		endif
    		endif
    	else
    		call DestroyLiebianTimer()
		endif
	endfunction

	function Tiandiliebian takes nothing returns nothing
		set TLiebian = CreateTimer()
		call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl", GetUnitX(kaisa),GetUnitY(kaisa)))
		call TimerStart(TLiebian,0.1,true,function TiandiliebianTimer)
		set ILiebian = 0
		set BLiebian = true 
		set TTBLiebian = TextTagBind.create(kaisa,35,35)
		//todo : 指示特效。
		set ELiebian = AddSpecialEffectTargetUnitBJ("overhead",kaisa,"war3mapImported\\blackbird.mdx")
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    天灵冲撞
	*/
	private function CreateEffect1 takes real x,real y returns nothing
		local integer i = 1
		loop
		    exitwhen i > 6
		    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", YDWECoordinateX(x + 300 * CosBJ(i*360.0/(6))), YDWECoordinateY(y + 300 * SinBJ(i*360.0/(6))) ))
		    set i = i +1
		endloop
	endfunction

	private function ChongzhuangTimer takes nothing returns nothing
	    local timer t = GetExpiredTimer()
	    local integer id = GetHandleId(t)
	    //i是速度
	    local integer i = LoadInteger(spellTable,id,1)
		local real facing = LoadReal(spellTable,GetHandleId(t),2)
		local group temp = GetEnemyGroup(GetOwningPlayer(kaisa),GetUnitX(kaisa),GetUnitY(kaisa),400)
		local real xp = GetUnitX(kaisa)+ CosBJ(facing) * I2R(i)
		local real yp = GetUnitY(kaisa)+ SinBJ(facing) * I2R(i)
		//判断数量
	    if (CountUnitsInGroup(temp) == 0 or xp > yd_MapMaxX or xp < yd_MapMinX or yp > yd_MapMaxY or yp < yd_MapMinY) then
	    	//速度加快
	        set i = i + 5
	        call SaveInteger(spellTable,GetHandleId(t),1,i)
			call SetUnitX(kaisa,xp)
			call SetUnitY(kaisa,yp)
			if (ModuloInteger(i,100) == 0) then
				//todo:0.5秒一次的尘土特效
				call DestroyEffect(AddSpecialEffect("Abilities\Spells\Human\MassTeleport\MassTeleportCaster.mdl", GetUnitX(kaisa),GetUnitY(kaisa) ))
    		    call SetUnitAnimation( kaisa, "move" ) 
			endif
	    else
	    	//伤害：每2秒加100%？
	    	call DamageArea(kaisa,GetUnitX(kaisa),GetUnitY(kaisa),600,GetDamageStr(kaisa)*(i/200))
	    	call CreateEffect1(GetUnitX(kaisa),GetUnitY(kaisa))
	    	//todo：技能显示
	    	call PrintSpell(GetOwningPlayer(kaisa),GetAbilityName('aaaa'),GetDamageStr(kaisa)*(i/200))
	    	//todo:眩晕效果

	    	call PauseUnit(kaisa,false)
	    	call UnitRemoveAbility(kaisa,'Avul')
	        call PauseTimer(t)
	        call FlushChildHashtable(spellTable,id)
	        call DestroyTimer(t)
	    endif
	    call DestroyGroup(temp)
	    set temp = null
	    set t = null 
	endfunction

	function Tianlingchongzhuang takes nothing returns nothing
		local real facing = GetFacingBetweenXY(GetUnitX(u),GetUnitY(u),GetSpellTargetX(),GetSpellTargetY())
		local timer t = CreateTimer()
		call PauseUnit(kaisa,true)
		call UnitAddAbility(kaisa,'Avul')
		call SetUnitFacing(facing)
		call SaveInteger(spellTable,GetHandleId(t),1,20)
		call SaveReal(spellTable,GetHandleId(t),2,facing)
		call TimerStart(t,0.05,true,function ChongzhuangTimer)
		set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    万荒图腾
	    todo:加到死亡处
	*/
	function Tuteng takes nothing returns nothing
		//Todo:bbbb改成大招序号
		if (BFanzhuanKS and IsFifthSpellOK(kaisa) and GetUnitAbilityLevel(kaisa,'bbbb') == 1) then
			
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    皮肤条件
	*/
	function CountKaisa takes unit u returns nothing
		if not (GetKaisaSpin(GetOwningPlayer(kaisa))) then
			if not(IsUnitAliveBJ(u)) then
				set INiuSpinCount = INiuSpinCount + 1
				if (ModuloInteger(INiuSpinCount,100) == 0) then
					call DisplayTextToPlayer(GetOwningPlayer(kaisa), 0., 0., "【|cFF6699FF熔日煌世|r】完成进度"+I2S(INiuSpinCount)+"/2500.")
				endif
				debug if (INiuSpinCount >= 2500) then
					debug call SetKaisaSpinOK(GetOwningPlayer(kaisa))
				debug endif
			endif
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    三阶觉醒
	*/
	function KaisaSanjiejuxing takes nothing returns nothing
		if (BJuexing3[GetConvertedPlayerId(GetOwningPlayer(kaisa))]) then
			call SetUnitManaPercentBJ(kaisa,100)
			call ImmuteDamageInterval(kaisa,3)
			call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", GetUnitX(seyu), GetUnitY(seyu) ))
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    炼血一击
	*/
	private function Lianxueyiji takes nothing returns nothing
		local unit target = GetSpellTargetUnit()
	    local real facing = Atan2BJ(GetUnitY(target)-GetUnitY(kaisa),GetUnitX(target)-GetUnitX(kaisa))
		local real damage = (GetUnitState(kaisa,UNIT_STATE_LIFE ) / 500.0) * SquareRoot(I2R(GetHeroLevel(kaisa))) * GetUnitState(kaisa,UNIT_STATE_MANA )
	    local integer i = 1
	    call PrintSpell(GetOwningPlayer(kaisa),GetAbilityName(GetSpellAbilityId()),damage)
	    loop
	    	exitwhen i > 6
       		call DestroyEffect( AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl", YDWECoordinateX(GetUnitX(kaisa) + 300.00 *  I2R(i) * CosBJ(facing) ), YDWECoordinateY(GetUnitY(kaisa) + 300.00 *  I2R(i) * SinBJ(facing) )) )
	    	set i = i +1
	    endloop
	    call UnitDamageTarget( kaisa, target, damage, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
	    call SetUnitManaPercentBJ(kaisa,1)
	    call SetUnitLifePercentBJ(kaisa,1)
	    set target = null
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    主英雄技能判断
	*/

	private function TSpellKaisaAct takes nothing returns nothing
		if (GetSpellAbilityId() == 'AOhx') then
			call Lianxueyiji()
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化反转形态
	*/
	function InitFanzhuanKaisa takes nothing returns nothing
		call UnitAddAbility(moqi,'A0NL')
		call SetPlayerAbilityAvailable(GetOwningPlayer(moqi),'A0NL',false)
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		call BJDebugMsg("|cFFFF66CC【消息】|r"+GetPlayerName(GetOwningPlayer(moqi))+"变化了英雄|cFF999900莫琪|r的技能形态!")
		set BFanzhuanMQ = true
		call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 3.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 0, 0, 0 )
		call PlaySoundBJ( gg_snd_fanzhuan )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凯撒皮肤
	*/
	private function InitKaisaSpin takes unit u returns unit
		if (IsKaisaSpin1(GetOwningPlayer(u))) then
			set udg_H[GetConvertedPlayerId(GetOwningPlayer(u))] = CreateUnit(GetOwningPlayer(u),'O002',GetUnitX(u),GetUnitY(u),0)
			set gg_unit_Ocbh_0251 = udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
			call UnitAddItemByIdSwapped('I006', udg_H[GetConvertedPlayerId(GetOwningPlayer(u))])
			call SetUnitManaPercentBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(u))],1000)
			call RemoveUnit(u)
			return udg_H[GetConvertedPlayerId(GetOwningPlayer(u))]
		else
			return u
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    初始化牛头
	*/
	function InitKaisa takes unit u returns nothing
		set kaisa = InitKaisaSpin(u)

		//主英雄技能
		set TSpellKaisa = CreateTrigger()
	    call TriggerRegisterUnitEvent(TSpellKaisa,kaisa,EVENT_UNIT_SPELL_EFFECT)
	    call TriggerAddAction(TSpellKaisa, function TSpellKaisaAct)

		call TriggerRegisterUnitEvent( gg_trg_____________7, kaisa, EVENT_UNIT_DAMAGED )

	endfunction

endlibrary