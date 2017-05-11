//!import "LHBase.j"

library_once MiJing requires LHBase 
	

//---------------------------------------------------------------------------------------------------
	private function InitMiJing takes nothing returns nothing
			if (renshu == 1) then
    			call AddWeatherEffectSaveLast( gg_rct_M1, 'MEds' )
    		elseif (renshu == 2) then
    			call AddWeatherEffectSaveLast( gg_rct_M2, 'MEds' )
    		elseif (renshu == 3) then
    			call AddWeatherEffectSaveLast( gg_rct_M3, 'MEds' )
    		elseif (renshu == 4) then
    			call AddWeatherEffectSaveLast( gg_rct_M4, 'MEds' )
    		elseif (renshu == 5) then
    			call AddWeatherEffectSaveLast( gg_rct_M5, 'MEds' )
    		elseif (renshu == 6) then
    			call AddWeatherEffectSaveLast( gg_rct_M6, 'MEds' )
			endif
	endfunction
endlibrary