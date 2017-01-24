
//===========================================================================  
//===========================================================================  
//自定义事件 
//===========================================================================
//===========================================================================   

library YDWETriggerEvent 

globals
    private trigger array DamageEventQueue
    private integer DamageEventNumber = 0
	
    item bj_lastMovedItemInItemSlot = null
	
    private trigger MoveItemEventTrigger = null
    private trigger array MoveItemEventQueue
    private integer MoveItemEventNumber = 0
endglobals
	function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean     
    return false
endfunction

function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing   
endfunction
    
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing

endfunction
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
endfunction

function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
        return
endfunction

function GetLastMovedItemInItemSlot takes nothing returns item
    return  bj_lastMovedItemInItemSlot
endfunction
endlibrary 
