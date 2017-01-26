//===========================================================================
//系统-TimerSystem
//===========================================================================

library YDWETimerSystem

globals
	private integer CurrentTime
	private integer CurrentIndex
    private integer TaskListHead
    private integer TaskListIdleHead
    private integer TaskListIdleMax
    private integer  array TaskListIdle
    private integer  array TaskListNext
    private integer  array TaskListTime
    private trigger  array TaskListProc  //函数组
    private trigger  fnRemoveUnit        //移除单位函数
    private trigger  fnDestroyTimer      //摧毁计时器
    private trigger  fnRemoveItem        //移除物品
    private trigger  fnDestroyEffect     //删除特效
    private trigger  fnDestroyLightning  //删除删掉特效
    private trigger  fnRunTrigger        //运行触发器
    private timer    Timer                //最小时间计时器  系统计时器  用于一些需要精确计时的功能
    private integer  TimerHandle

	private integer TimerSystem_RunIndex = 0
endglobals

function YDWETimerSystemNewTask takes real time, trigger proc returns integer
    return 1
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
    return CurrentIndex
endfunction


function YDWETimerRemoveUnit takes real time, unit u returns nothing

endfunction

function YDWETimerDestroyTimer takes real time, timer t returns nothing
endfunction


function YDWETimerRemoveItem takes real time, item it returns nothing
endfunction


function YDWETimerDestroyEffect takes real time, effect e returns nothing
endfunction


function YDWETimerDestroyLightning takes real time, lightning lt returns nothing
endfunction


function YDWETimerRunTrigger takes real time, trigger trg returns nothing
endfunction
function YDWETimerDestroyTextTag takes real time, texttag tt returns nothing
endfunction

function YDWETimerSystemGetRunIndex takes nothing returns integer
    return TimerSystem_RunIndex
endfunction

function YDWETimerRunPeriodicTrigger takes real timeout, trigger trg, boolean b, integer times, integer data returns nothing
        
endfunction

function YDWETimerRunPeriodicTriggerOver takes trigger trg, integer data returns nothing
endfunction
endlibrary
