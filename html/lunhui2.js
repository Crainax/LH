function lh_not(x) {
	if (x<0)
	{
		return Math.pow(2, 32)-1;
	}
	else
	{
		return Math.pow(2, 32)-1-x;
	}
}

function lh_xor(x, y)
	{
	if (x >= 0)
		{
        if (y >= 0)
            {
	        return x ^ y;
	        }
        else
            {
	        return x ^ (lh_not(-y-1));
	        }
    	}
    else
    	{
        if (y >= 0)
            {
	        return (lh_not(-x-1)) ^ y;
        	}
        else
        	{
            return (lh_not(-x-1)) ^ (lh_not(-y-1));
    		}
    	}
	}
function fucCheckLength(strTemp) 
	{ 
	var i,sum; 
	sum=0; 
	for(i=0;i<strTemp.length;i++) 
		{ 
		if ((strTemp.charCodeAt(i)>=0) && (strTemp.charCodeAt(i)<=255)) 
			sum=sum+1; 
		else 
			sum=sum+3; 
		} 
	return sum; 
	}
function SH_StringChar(s, n)
	{
	var i, j;
	j = 0;
	var ss = new Array()
	for(i=0; i<s.length; i++) 
		{
		if ((s.charCodeAt(i)>=0) && (s.charCodeAt(i)<=255))
			{
			ss[j] = s.charCodeAt(i);
			j = j + 1;
			}
		else
			{
			ss[j] = parseInt(encodeURI(s.substring(i, i+1)).substring(1, 3), 16);
			ss[j+1] = parseInt(encodeURI(s.substring(i, i+1)).substring(4, 6), 16);
			ss[j+2] = parseInt(encodeURI(s.substring(i, i+1)).substring(7, 9), 16);
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
function SH_StringLong(s, n)
	{
	return ((SH_StringChar(s, n+3)*256+SH_StringChar(s, n+2))*256+SH_StringChar(s, n+1))*256+SH_StringChar(s, n);
	}
function check(A)
	{
	if (A > Math.pow(2, 32))
		{
		A = A % (Math.pow(2, 32));
		}
	if (A > Math.pow(2, 31))
		{
		A = -(lh_not(A-1));
		}
	if (A < 0 - Math.pow(2, 31)) 
		{
		A = lh_not(-A-1);
		}
	return A;
	}
function lh_lshift(x, y)
	{
	if (x<0)
		{
		return check((lh_not(-x)+1) << y);
		}
	else
		{
		return check(x << y);
		}
	}
function lh_rshift(x, y)
	{
	if (x<0)
		{
		return check(Math.floor((lh_not(-x)+1)/Math.pow(2,y)));
		}
	else
		{
		return check(Math.floor(x /Math.pow(2,y)));
		}
	}
function StringHashEx(s, len)
	{
	var n = 0;
	var sizt_t = len;
    var A = check(0x9E3779B9);
    var B = check(0x9E3779B9);
    var C = 0;
	while (len >= 12)
		{
		A = check(A + SH_StringLong(s, n));
		B = check(B + SH_StringLong(s, n+4));
		C = check(C + SH_StringLong(s, n+8));
        A = check(lh_xor(lh_rshift(C, 13), check(A-B-C)));
		B = check(lh_xor(lh_lshift(A,  8), check(B-C-A)));
		C = check(lh_xor(lh_rshift(B, 13), check(C-A-B)));
		A = check(lh_xor(lh_rshift(C, 12), check(A-B-C)));
		B = check(lh_xor(lh_lshift(A, 16), check(B-C-A)));
		C = check(lh_xor(lh_rshift(B,  5), check(C-A-B)));
		A = check(lh_xor(lh_rshift(C,  3), check(A-B-C)));
		B = check(lh_xor(lh_lshift(A, 10), check(B-C-A)));
		C = check(lh_xor(lh_rshift(B, 15), check(C-A-B)));
		n = n + 12;
		len = len - 12;
		}

    C = check(C + sizt_t);

	if (len == 11)
		{
        C = check(C + SH_StringChar(s, n+10)*0x01000000);
		len = len - 1;
		}
	if (len == 10)
		{
        C = check(C + SH_StringChar(s, n+9)*0x00010000);
		len = len - 1;
		}
	if (len == 9)
		{
        C = check(C + SH_StringChar(s, n+8)*0x00000100);
		len = len - 1;
		}
	if (len == 8)
		{
        B = check(B + SH_StringChar(s, n+7)*0x01000000);
		len = len - 1;
		}
	if (len == 7)
		{
        B = check(B + SH_StringChar(s, n+6)*0x00010000);
		len = len - 1;
		}
	if (len == 6)
		{
        B = check(B + SH_StringChar(s, n+5)*0x00000100);
		len = len - 1;
		}
	if (len == 5) 
		{
        B = check(B + SH_StringChar(s, n+4));
		len = len - 1;
		}
	if (len == 4)
		{
        A = check(A + SH_StringChar(s, n+3)*0x01000000);
        //document.write(A+"<br/>");
		len = len - 1;
		}
	if (len == 3) 
		{
        A = check(A + SH_StringChar(s, n+2)*0x00010000);
        //document.write(A+"<br/>");
       
		len = len - 1;
		}
	if (len == 2)
		{
        A = check(A + SH_StringChar(s, n+1)*0x00000100);
        //document.write(A+"<br/>");
		len = len - 1;
		}
	if (len == 1)
		{
        A = check(A + SH_StringChar(s, n));
        //document.write(A+"<br/>");
		len = len - 1;
		}
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	A = check(lh_xor(lh_rshift(C, 13), check(A-B-C)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	B = check(lh_xor(lh_lshift(A,  8), check(B-C-A)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	//document.write(check(C-A-B)+"<br/>");
	//document.write(lh_rshift(B, 13)+"<br/>");
	//document.write((B>>13)+"<br/>");
	//document.write(lh_xor(lh_rshift(B, 13),check(C-A-B))+"<br/>");
	C = check(lh_xor(lh_rshift(B, 13), check(C-A-B)));
	//document.write(A+'\n'+B+'\n'+C+"<br/>");
	A = check(lh_xor(lh_rshift(C, 12), check(A-B-C)));
	B = check(lh_xor(lh_lshift(A, 16), check(B-C-A)));
	C = check(lh_xor(lh_rshift(B,  5), check(C-A-B)));
	A = check(lh_xor(lh_rshift(C,  3), check(A-B-C)));
	B = check(lh_xor(lh_lshift(A, 10), check(B-C-A)));
	C = check(lh_xor(lh_rshift(B, 15), check(C-A-B)));
	return C;
	}
function StringHash(s)
	{
	return StringHashEx(s.toUpperCase(), fucCheckLength(s));
	}
function NameProdVIP(s, cycle_num) {
	var udl_vip = Math.abs(StringHash(s))
	for (var i=0; i<cycle_num; i++){
		udl_vip = Math.abs(StringHash(udl_vip.toString()))
	}
	
	if (udl_vip < 1000000000){
		udl_vip = udl_vip + 1000000000
	}
	return udl_vip
}

function GetMengjiAll(s) {
	var udl_vip = StringHash(s)

	for (var i=0; i<9; i++){
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

function GetCanglingAll(s) {
	var udl_vip = StringHash(s)

	for (var i=0; i<14; i++){
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}


function GetXunhuan(s,times) {
	var udl_vip = StringHash(s)

	for (var i=0; i<times; i++){
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

function GetDIYVIP(s) {
	var udl_vip = StringHash(s)

	for (var i=0; i<5; i++){
		udl_vip = StringHash(udl_vip.toString())
	}

	return udl_vip
}

function OutVIP()
	{
	var sss = document.getElementById("input").value;
	var achi1 = document.getElementById("achi1").value;
	var achi2 = document.getElementById("achi2").value;
	var boxType = document.getElementById("boxType").value;
	var spinType = document.getElementById("spinType").value;
	document.getElementById("output1").value = sss +"名字对应的仓库,必须是单人模式下,先输入-ckhq,再以下指令:" + GetXunhuan(sss + boxType,0);
	document.getElementById("output2").value = sss +"名字对应的皮肤,必须是单人模式下,先输入-sphq,再输入以下指令:" + GetXunhuan(sss + spinType,0);
	document.getElementById("output3").value = sss +"名字对应的天魇成就,必须是单人模式下,先输入-ac4,再以下指令:" + GetXunhuan(sss + "ac" + achi1 +achi2,0) + document.getElementById("input").innerHTML;	
	// document.getElementById("output1").value = GetXunhuan(sss + boxType,0);
	// document.getElementById("output2").value = GetXunhuan(sss + spinType,0);
	// document.getElementById("output3").value = GetXunhuan(sss + "ac" + achi1 +achi2,0);
	}
	
