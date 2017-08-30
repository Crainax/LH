library_once DzAPI  
	

 function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
        return false
    endfunction
  function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
        return 0
    endfunction
    function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
    endfunction
    function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
        return 0.
    endfunction
    function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
    endfunction
    function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
        return false
    endfunction
    function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
    endfunction
    function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
        return null
    endfunction
 function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
        return 0
    endfunction
 function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
        return 0
    endfunction
    function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
    endfunction
    function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
    endfunction

endlibrary