//!import "LHBase.j"

library_once MiJing requires LHBase 
	
    globals
        rect RMijing = null

        integer
    endglobals

//---------------------------------------------------------------------------------------------------
    /*
        开始秘境挑战
    */
    private function StartMijing takes nothing returns nothing
        
        call BJDebugMsg("|cFFFF66CC【消息】|r第")
        call PolledWait(5)
    endfunction
//---------------------------------------------------------------------------------------------------
    /*
        进入秘境
    */
    function EnterMijing takes nothing returns nothing
        local real x
        local real y
        if ((GetItemTypeId(GetSoldItem()) == 'I02T')) then
            set x = GetRectCenterX(RMijing)
            set y = GetRectCenterY(RMijing)
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
			if (renshu == 1) then
                set RMijing = gg_rct_M1
    		elseif (renshu == 2) then
                set RMijing = gg_rct_M2
    		elseif (renshu == 3) then
                set RMijing = gg_rct_M3
    		elseif (renshu == 4) then
                set RMijing = gg_rct_M4
    		elseif (renshu == 5) then
                set RMijing = gg_rct_M5
    		elseif (renshu == 6) then
                set RMijing = gg_rct_M6
			endif
            call AddWeatherEffectSaveLast( RMijing, 'MEds' )
	endfunction
endlibrary