
library_once LHBase

	/*
	    仙器使用技能进行禁止丢弃判断
	*/
	function IsXianSpell takes integer spell returns boolean
		return (spell == 'Acht') or (spell =='A03A') or (spell =='A0BM') /*
*/or (spell =='A07Z') or (spell =='A07T') or (spell =='A05Z')/*
*/or (spell =='ACro') or (spell =='Acht') or (spell =='A07X') or (spell =='A05Y')/*
*/or (spell =='AChv') or (spell =='A07V') or (spell =='Awrg') or (spell =='A05X')/*  
*/or (spell =='A07C') or (spell =='A07D') or (spell =='Awrh') or (spell =='A075')/*
*/or (spell =='A06W') or (spell =='A06Y') or (spell =='A06Q') or (spell =='A07R')/*
*/or (spell =='ACcl') or (spell =='AOhw') or (spell =='AIin') or (spell =='AIil')/*
*/or (spell =='A07S') or (spell =='AChx')
	endfunction
endlibrary