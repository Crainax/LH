#include  "edit/LHBase.j"

library_once Box requires LHBase

	function ChangeSpinDialog takes player p returns nothing
		if (Get11()) then
			return
		endif
		call ShowGameHint(p,"
			使用魔兽争霸官方对战平台
			进行游戏才能使用该功能.")
	endfunction



endlibrary

