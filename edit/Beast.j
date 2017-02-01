

//! import "LHBase.j"
library_once Beast initializer InitBeast requires LHBase 
	
	globals
		/*
		    表
		    1.变色单位,2.当前红,3.当前蓝,4,当前绿,5.红方向,6.蓝方向,7.绿方向,8910是速度
		*/
		hashtable beastTable
	endglobals

//---------------------------------------------------------------------------------------------------
	/*
	    开启定时器去给一个单位不断变色,直到他死去
	*/

	private function isOutOfRange takes integer i returns boolean
		return ((i > 255) or (i < 0) )
	endfunction

	private function GetModifiedColor takes integer i returns integer
		return IMinBJ(IAbsBJ(i),255)
	endfunction

	private function DiscolorTimer takes nothing returns nothing
		local timer t = GetExpiredTimer()
		local integer id = GetHandleId(t)
		local unit u = LoadUnitHandle(beastTable,id,1)
		local integer r = LoadInteger(beastTable,id,2)
		local integer g = LoadInteger(beastTable,id,3)
		local integer b = LoadInteger(beastTable,id,4)
		local boolean dr = LoadBoolean(beastTable,id,5)
		local boolean dg = LoadBoolean(beastTable,id,6)
		local boolean db = LoadBoolean(beastTable,id,7)
		local integer sr = LoadInteger(beastTable,id,8)
		local integer sg = LoadInteger(beastTable,id,9)
		local integer sb = LoadInteger(beastTable,id,10)
		if(IsUnitAliveBJ(u) == true) then

			//! textmacro ChangeColor takes Color,Index
				
			if (d$Color$ == true) then
				set $Color$ = $Color$ + GetRandomInt(0,s$Color$)
			else
				set $Color$ = $Color$ - GetRandomInt(0,s$Color$)
			endif
			if(isOutOfRange($Color$)) then
				set $Color$ = GetModifiedColor($Color$)
				call SaveBoolean(beastTable,GetHandleId(t),$Index$ + 3, not(d$Color$))
				call SaveInteger(beastTable,GetHandleId(t),$Index$ + 6, GetRandomInt(10,70))
			endif
			call SaveInteger(beastTable,GetHandleId(t),$Index$, $Color$)
			//! endtextmacro

			//! runtextmacro ChangeColor("r","2")
			//! runtextmacro ChangeColor("g","3")
			//! runtextmacro ChangeColor("b","4")
    		call SetUnitVertexColor( u, r, g, b, 255 )

		else
			call PauseTimer(t)
			call DestroyTimer(t)
			call FlushChildHashtable(beastTable,id)
			call BJDebugMsg("删除啦")
		endif
		set t = null
		set u = null
	endfunction

	function Discolor takes unit u returns nothing
		local timer t = CreateTimer()
		call SaveUnitHandle(beastTable,GetHandleId(t),1,u)
		call SaveInteger(beastTable,GetHandleId(t),2,GetRandomInt(0,254))
		call SaveInteger(beastTable,GetHandleId(t),3,GetRandomInt(0,254))
		call SaveInteger(beastTable,GetHandleId(t),4,GetRandomInt(0,254))
		call SaveBoolean(beastTable,GetHandleId(t),5, true)
		call SaveBoolean(beastTable,GetHandleId(t),6, true)
		call SaveBoolean(beastTable,GetHandleId(t),7, true)
		call SaveInteger(beastTable,GetHandleId(t),8,GetRandomInt(10,70))
		call SaveInteger(beastTable,GetHandleId(t),9,GetRandomInt(10,70))
		call SaveInteger(beastTable,GetHandleId(t),10,GetRandomInt(10,70))

		call TimerStart(t,0.1,true,function DiscolorTimer)
		set t = null 
	endfunction
//---------------------------------------------------------------------------------------------------


	private function InitBeast takes nothing returns nothing
		set beastTable = InitHashtable()
		call Discolor(CreateUnit(Player(0),'hphx',0,0,0))
		call Discolor(CreateUnit(Player(0),'ufro',0,0,0))
	endfunction
endlibrary