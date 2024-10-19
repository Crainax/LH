function lh_not(x) {
	if (x < 0) {
		return Math.pow(2, 32) - 1;
	}
	else {
		return Math.pow(2, 32) - 1 - x;
	}
}

function lh_xor(x, y) {
	if (x >= 0) {
		if (y >= 0) {
			return x ^ y;
		}
		else {
			return x ^ (lh_not(-y - 1));
		}
	}
	else {
		if (y >= 0) {
			return (lh_not(-x - 1)) ^ y;
		}
		else {
			return (lh_not(-x - 1)) ^ (lh_not(-y - 1));
		}
	}
}
function fucCheckLength(strTemp) {
	var i, sum;
	sum = 0;
	for (i = 0; i < strTemp.length; i++) {
		if ((strTemp.charCodeAt(i) >= 0) && (strTemp.charCodeAt(i) <= 255))
			sum = sum + 1;
		else
			sum = sum + 3;
	}
	return sum;
}
function SH_StringChar(s, n) {
	var i, j;
	j = 0;
	var ss = new Array()
	for (i = 0; i < s.length; i++) {
		if ((s.charCodeAt(i) >= 0) && (s.charCodeAt(i) <= 255)) {
			ss[j] = s.charCodeAt(i);
			j = j + 1;
		}
		else {
			ss[j] = parseInt(encodeURI(s.substring(i, i + 1)).substring(1, 3), 16);
			ss[j + 1] = parseInt(encodeURI(s.substring(i, i + 1)).substring(4, 6), 16);
			ss[j + 2] = parseInt(encodeURI(s.substring(i, i + 1)).substring(7, 9), 16);
			j = j + 3;
		}
	}
	return ss[n];
}
//function SH_StringChar(s, n)
//	{
//		if ((strTemp.charCodeAt(i)<0) || (strTemp.charCodeAt(i)>255))
//	var ss = s.substring(n, n+1);
//	if (ss == "/")
//		{
//		ss = "\\";
//		}
//	if (ss != "%")
//		{
//		return ss.charCodeAt();
//		}
//	}
function SH_StringLong(s, n) {
	return ((SH_StringChar(s, n + 3) * 256 + SH_StringChar(s, n + 2)) * 256 + SH_StringChar(s, n + 1)) * 256 + SH_StringChar(s, n);
}
function check(A) {
	if (A > Math.pow(2, 32)) {
		A = A % (Math.pow(2, 32));
	}
	if (A > Math.pow(2, 31)) {
		A = -(lh_not(A - 1));
	}
	if (A < 0 - Math.pow(2, 31)) {
		A = lh_not(-A - 1);
	}
	return A;
}
function lh_lshift(x, y) {
	if (x < 0) {
		return check((lh_not(-x) + 1) << y);
	}
	else {
		return check(x << y);
	}
}
function lh_rshift(x, y) {
	if (x < 0) {
		return check(Math.floor((lh_not(-x) + 1) / Math.pow(2, y)));
	}
	else {
		return check(Math.floor(x / Math.pow(2, y)));
	}
}
function StringHashEx(s, len) {
	var n = 0;
	var sizt_t = len;
	var A = check(0x9E3779B9);
	var B = check(0x9E3779B9);
	var C = 0;
	while (len >= 12) {
		A = check(A + SH_StringLong(s, n));
		B = check(B + SH_StringLong(s, n + 4));
		C = check(C + SH_StringLong(s, n + 8));
		A = check(lh_xor(lh_rshift(C, 13), check(A - B - C)));
		B = check(lh_xor(lh_lshift(A, 8), check(B - C - A)));
		C = check(lh_xor(lh_rshift(B, 13), check(C - A - B)));
		A = check(lh_xor(lh_rshift(C, 12), check(A - B - C)));
		B = check(lh_xor(lh_lshift(A, 16), check(B - C - A)));
		C = check(lh_xor(lh_rshift(B, 5), check(C - A - B)));
		A = check(lh_xor(lh_rshift(C, 3), check(A - B - C)));
		B = check(lh_xor(lh_lshift(A, 10), check(B - C - A)));
		C = check(lh_xor(lh_rshift(B, 15), check(C - A - B)));
		n = n + 12;
		len = len - 12;
	}

	C = check(C + sizt_t);

	if (len == 11) {
		C = check(C + SH_StringChar(s, n + 10) * 0x01000000);
		len = len - 1;
	}
	if (len == 10) {
		C = check(C + SH_StringChar(s, n + 9) * 0x00010000);
		len = len - 1;
	}
	if (len == 9) {
		C = check(C + SH_StringChar(s, n + 8) * 0x00000100);
		len = len - 1;
	}
	if (len == 8) {
		B = check(B + SH_StringChar(s, n + 7) * 0x01000000);
		len = len - 1;
	}
	if (len == 7) {
		B = check(B + SH_StringChar(s, n + 6) * 0x00010000);
		len = len - 1;
	}
	if (len == 6) {
		B = check(B + SH_StringChar(s, n + 5) * 0x00000100);
		len = len - 1;
	}
	if (len == 5) {
		B = check(B + SH_StringChar(s, n + 4));
		len = len - 1;
	}
	if (len == 4) {
		A = check(A + SH_StringChar(s, n + 3) * 0x01000000);
		//document.write(A+"<br/>");
		len = len - 1;
	}
	if (len == 3) {
		A = check(A + SH_StringChar(s, n + 2) * 0x00010000);
		//document.write(A+"<br/>");

		len = len - 1;
	}
	if (len == 2) {
		A = check(A + SH_StringChar(s, n + 1) * 0x00000100);
		//document.write(A+"<br/>");
		len = len - 1;
	}
	if (len == 1) {
		A = check(A + SH_StringChar(s, n));
		//document.write(A+"<br/>");
		len = len - 1;
	}
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	A = check(lh_xor(lh_rshift(C, 13), check(A - B - C)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	B = check(lh_xor(lh_lshift(A, 8), check(B - C - A)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	//document.write(check(C-A-B)+"<br/>");
	//document.write(lh_rshift(B, 13)+"<br/>");
	//document.write((B>>13)+"<br/>");
	//document.write(lh_xor(lh_rshift(B, 13),check(C-A-B))+"<br/>");
	C = check(lh_xor(lh_rshift(B, 13), check(C - A - B)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	A = check(lh_xor(lh_rshift(C, 12), check(A - B - C)));
	B = check(lh_xor(lh_lshift(A, 16), check(B - C - A)));
	C = check(lh_xor(lh_rshift(B, 5), check(C - A - B)));
	A = check(lh_xor(lh_rshift(C, 3), check(A - B - C)));
	B = check(lh_xor(lh_lshift(A, 10), check(B - C - A)));
	C = check(lh_xor(lh_rshift(B, 15), check(C - A - B)));
	return C;
}
function StringHash(s) {
	return StringHashEx(s.toUpperCase(), fucCheckLength(s));
}
function NameProdVIP(s, cycle_num) {
	var udl_vip = Math.abs(StringHash(s))
	for (var i = 0; i < cycle_num; i++) {
		udl_vip = Math.abs(StringHash(udl_vip.toString()))
	}

	if (udl_vip < 1000000000) {
		udl_vip = udl_vip + 1000000000
	}
	return udl_vip
}

function GetMengjiAll(s) {
	var udl_vip = StringHash(s)

	for (var i = 0; i < 9; i++) {
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

function GetCanglingAll(s) {
	var udl_vip = StringHash(s)

	for (var i = 0; i < 14; i++) {
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}


function GetXunhuan(s, times) {
	var udl_vip = StringHash(s)

	for (var i = 0; i < times; i++) {
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

function GetDIYVIP(s) {
	var udl_vip = StringHash(s)

	for (var i = 0; i < 5; i++) {
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

var a1 = "0O/lq1O%gh\vwww.qq.comY*ΛθaedΘκXafo2@!γQ!ΔΓζΛ$αΩδOvWηκζφγη0c%τγfoγΞκ\t\t\r\r\r\r\r\r\r\r\t\t\r  \r"
var a2 = "00/lw10$fi\vwww.qq.comθ+$ΘοαeηΦQLΔeΞ&ξ2ατRμριRφΣΓφ%&eιξWK=ανRS!ΨΛτ\t\t\r\r\r\r\r\r\r\r \t\r  \r"
var a3 = "O0/lq1O%tq\vwww.qq.comιUWΞRζ0W*##foΞσΩΘd2Yο!θΛΓ%οVUΣvΠΠΣγα2p2&ρ0Pfo1\t\t\r\r\r\r\r\r\r\r  \r\t \r"
var a4 = "01/lw10#fe\vwww.qq.comνΦΟ$νfofoVκ+ΧΘ*ΓρξeYθΟΨeΓξ#ρb@Vυν9YUηUZφαλT9ρρ\t\t\r\r\r\r\r\r\r\r\t \r\t\t\r"
var a5 = "11/lqOO!sd\vwww.qq.comοφ_λΩρWιcφΟX#RΦ@1v0pfoQ2αX&Γφδι%vWθVYαλaKξβΣΧ\t\t\r\r\r\r\r\r\r\r  \r\t \r"
var a6 = "01/lhO1^qs\vwww.qq.comΔ%μLτ=νΔZνP9c1+X%υΠΨΞφΩΞΘ+&O2ρΣP&ΓαΦΦpe#UNVd\t\t\r\r\r\r\r\r\r\r\t \r\t\t\r"
var a7 = "0l/lh00^kl\vwww.qq.com2YQWΧφTSUZθN2νvKσπζηPPυfoTΟΠξονυWαιVUαοσd!τΠc\t\t\r\r\r\r\r\r\r\r\t \r\t\t\r"
var a8 = "ll/lhl0#aq\vwww.qq.comX@Lbd&υ@Χφ*UυοMηαΨ&foΨθΘ9ΧνξΩbΔ*αfoτ@ζ9RQδρ@+Ξ\t\t\r\r\r\r\r\r\r\r\t\t\r  \r"
var a9 = "OO/lw0O%fd\vwww.qq.comκUηΧΧdPK!ιμΔσV0ξΛ$RθpUOOΛΨξSPYd1eΨΞaιYττ0γ_Φ\t\t\r\r\r\r\r\r\r\r \t\r  \r"
var a10 = "Ol/lql0!en\vwww.qq.comYηζbΣ!ξbcρPS2+e=QZκλΘSv_PepΨS9=0KΛbVb&θcΞ%pξ\t\t\r\r\r\r\r\r\r\r\t \r\t \r"

function GetVIP1(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a1);
}
function GetVIP2(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a2);
}
function GetVIP3(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a3);
}
function GetVIP4(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a4);
}
function GetVIP5(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a5);
}
function GetVIP6(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a6);
}
function GetVIP7(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a7);
}
function GetVIP8(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a8);
}
function GetVIP9(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a9);
}
function GetVIP10(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a10);
}
function GetVIP11(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString());
}
function GetVIP12(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a12);
}
function GetVIP13(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a13);
}
function GetVIP14(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a14);
}
function GetVIP15(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a15);
}
function GetVIP16(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a16);
}
function GetVIP17(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a17);
}
function GetVIP18(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a18);
}
function GetVIP19(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a19);
}
function GetVIP20(s, which_vip) {
	return (NameProdVIP(s, which_vip).toString() + a20);
}

function OutVIP() {
	var sss = document.getElementById("input").value;
	var st = GetDIYVIP(sss).toString()
	document.getElementById("output1").value = GetVIP1(sss, 121);
	document.getElementById("output2").value = GetVIP2(sss, 64);
	document.getElementById("output3").value = GetVIP3(sss, 149);
	document.getElementById("output4").value = GetVIP4(sss, 41);
	document.getElementById("output5").value = GetVIP5(sss, 107);
	document.getElementById("output6").value = GetVIP6(sss, 98);
	document.getElementById("output7").value = GetVIP7(sss, 114);
	document.getElementById("output8").value = GetVIP8(sss, 37);
	document.getElementById("output9").value = GetVIP9(sss, 36);
	document.getElementById("output10").value = GetVIP10(sss, 52);
	document.getElementById("output11").value = "开局在选英雄前输入\"##\", 然后会出现对话框,跟着对话框提示走,依次输入激活码" + parseInt(st.substring(1)).toString() + "        即可激活.\n上面那个激活码绑定你的名字“" + sss + "”，如果有什么问题或者出现什么问题的话都可以私聊我。";
	document.getElementById("output12").value = GetMengjiAll(sss);
	document.getElementById("output13").value = GetCanglingAll(sss);
	document.getElementById("output14").value = GetXunhuan(sss, 19);
	document.getElementById("output15").value = GetXunhuan(sss, 24);
	document.getElementById("output16").value = GetXunhuan(sss, 21);
	document.getElementById("output17").value = GetXunhuan(sss, 0);
}

