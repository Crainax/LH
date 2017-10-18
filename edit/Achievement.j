//! import "LHBase.j"
//! import "ChallangerDZ.j"
/*
    debug模式是网易模式
*/
library_once Achievement requires LHBase,ChallangerDZ
	
	globals
		integer array achiPage
		integer array achieve
		integer array achieve2
		integer array achieve3
		integer array achieve4
		effect array achiEff
		
		/*
		    是否有彩色皮肤
		*/
		integer array spin
		integer array spin2
		integer array spin3
		string array heroCountString

		//倾雪寒晶
		integer array Greward

	endglobals


//---------------------------------------------------------------------------------------------------
	/*
	    十转2
	*/
	function Int2Bin takes integer num returns string
		local string result = ""
		local integer mod = 0
		local integer number = num
		local integer i = 1

		loop
			exitwhen i > 31
			if (number == 0) then
				set result = "0" + result
			else
				set mod = ModuloInteger(number,2)
				set result = I2S(mod) + result
				set number = number / 2
			endif
			set i = i + 1
		endloop
		if (num < 0) then
			set result = "1" + result
		else
			set result = "0" + result
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    2转十
	*/
	function Bin2Int takes string bin returns integer
		local integer i = StringLength(bin)
		local integer result = 0
		local integer mi = 0
		if (i < 1) then
			return 0
		endif

		loop
			exitwhen i == 1
			
			set result = result + R2I(Pow(2,mi)) * S2I(SubStringBJ(bin,i,i))

			set mi = mi + 1
			set i = i - 1
		endloop

		if (S2I(SubStringBJ(bin,1,1)) == 1) then
			set result = result * -1
		endif

		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    给二进制的某位设置为1
	*/
	function SetBinBit takes string bin,integer bit,boolean isOne returns string
		local string result
		local integer length = StringLength(bin)

		if (length < bit or bit <= 0) then
			return bin
		endif

		set result = SubStringBJ(bin,1,bit-1)
		if (isOne) then
			set result = result + "1"
		else
			set result = result + "0"
		endif
		return result + SubStringBJ(bin,bit+1,length)

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    给整数的某位直接设置成1
	*/
	function SetIntegerBit takes integer int,integer bit,boolean isOne returns integer
		return Bin2Int(SetBinBit(Int2Bin(int),bit,isOne))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取整数的某位
	*/
	function GetIntegerBit takes integer int,integer bit returns integer
		return S2I(SubStringBJ(Int2Bin(int),bit,bit))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取整数一共有几个1
	*/
	function GetIntegerHasOne takes integer num returns integer
		local integer result = 0
		local integer number = num
		local integer i = 1

		loop
			exitwhen i > 31
			set result = ModuloInteger(number,2) + result
			set number = number / 2
			set i = i + 1
		endloop
		if (num < 0) then
			set result = 1 + result
		endif
		return result
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    获取某个英雄使用次数
	*/
	function GetSpecifyHeroTimes takes player p,integer heroIndex returns integer
		if (heroIndex>0) then
			return S2I(SubStringBJ(heroCountString[GetConvertedPlayerId(p)],2*heroIndex -1,2*heroIndex))
		else
			return 0
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取最低使用次数英雄的次数的英雄（能使用的所有英雄）
	*/
	function GetLowerHeroCount takes player p,integer limit,integer number returns boolean
		local integer count = 0
		local integer i = 1
		loop 
			exitwhen i > HERO_COUNT
			if (GetSpecifyHeroTimes(p,i) >= limit) then
				set count = count + 1
			endif
			set i = i +1
		endloop

		return count >= number
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的类项
	*/
	private function GetAchievePage takes integer i returns integer
		return S2I(SubStringBJ(I2S(i),1,1))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取当前成就的位数
	*/
	private function GetAchieveTarget takes integer i returns integer
		return S2I(SubStringBJ(I2S(i),2,StringLength(I2S(i))))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存档皮肤数据
	*/
	private function SaveSpinData takes player p returns nothing
		if (Bdudang[GetConvertedPlayerId(p)]) then
			call DzAPI_Map_StoreInteger( p,  "spin", spin[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreInteger( p,  "spin2", spin2[GetConvertedPlayerId(p)] )
			call DzAPI_Map_StoreInteger( p,  "spin3", spin3[GetConvertedPlayerId(p)] )
		else
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r本局游戏皮肤数据读取失败,请重新开始游戏.")
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取皮肤名字
	*/
	function GetSpecifySpin takes player p, integer page,integer index returns nothing
		local integer judge = 0
		if (page == 1) then
			set judge = spin[GetConvertedPlayerId(p)]
		elseif (page == 2) then
			set judge = spin2[GetConvertedPlayerId(p)]
		elseif (page == 3) then
			set judge = spin3[GetConvertedPlayerId(p)]
		endif
		if (CType != 0) then
			return
		endif
		if (GetBit(judge,index) < 1) then
			if (page == 1) then
				set spin[GetConvertedPlayerId(p)] = spin[GetConvertedPlayerId(p)] + R2I(Pow(10,index-1))
			elseif (page == 2) then
				set spin2[GetConvertedPlayerId(p)] = spin2[GetConvertedPlayerId(p)] + R2I(Pow(10,index-1))
			elseif (page == 3) then
				set spin3[GetConvertedPlayerId(p)] = spin3[GetConvertedPlayerId(p)] + R2I(Pow(10,index-1))
			endif
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你成功获取皮肤\""+GetHeroChallenageName(index,page)+"\"！")
			call SaveSpinData(p)
		endif
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    指令获取皮肤
	*/
	function Huoquspin takes player p ,string chat returns nothing
		local integer i = 1
		local integer j = 1
		local integer result = 0
		loop
			exitwhen j > 3

			set i = 1
			loop
				exitwhen i > 10

				if (chat == I2S(GetCycleHash(playerName[GetConvertedPlayerId(p)]+"sp"+I2S(j)+I2S(i),1))) then

					call GetSpecifySpin(p,j,i)
					exitwhen true

				endif

				set i = i +1
			endloop

			set j = j +1
		endloop

		set BBuqian2 = false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨皮肤条件
	*/
	function GetSeyu1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],2)>0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    瑟雨皮肤OK了
	*/
	function SetSeyuSpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月皮肤条件
	*/
	function GetXiaoyue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],3) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    晓月皮肤OK了
	*/
	function SetXiaoyueSpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,3)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    湮灭皮肤条件
	*/
	function GetYanmie1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],4) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    湮灭皮肤OK了
	*/
	function SetYanmieSpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,4)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    巫妖皮肤条件
	*/
	function GetXuanxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],5) > 0
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    巫妖皮肤OK了
	*/
	function SetXuanxue1SpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,5)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    白虎皮肤条件
	*/
	function GetTaiya1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    白虎皮肤OK了
	*/
	function SetTaiyaSpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,6)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤条件
	*/
	function GetChenji1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤OK了
	*/
	function SetChenji1SpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,7)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寒殇皮肤条件
	*/
	function GetHanshang1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    寒殇皮肤OK了
	*/
	function SetHanshang1SpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,8)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凌雪皮肤条件
	*/
	function GetLingxue1Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    凌雪皮肤OK了
	*/
	function SetLingxueSpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,9)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤条件
	*/
	function GetChenji2Spin takes player p returns boolean
		return GetBit(spin[GetConvertedPlayerId(p)],10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    辰寂皮肤OK了
	*/
	function SetChenji2SpinOK takes player p returns nothing
		call GetSpecifySpin(p,1,10)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    莫琪皮肤条件
	*/
	function GetMoqiSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    莫琪皮肤OK了
	*/
	function SetMoqiSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,1)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    凯撒皮肤条件
	*/
	function GetKaisaSpin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    凯撒皮肤OK了
	*/
	function SetKaisaSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    玄雪皮肤条件
	*/
	function GetXuanxue2Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],3) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    玄雪皮肤OK了
	*/
	function SetXuanxue2SpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,3)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    摄焱皮肤条件
	*/
	function GetSheyan1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],4) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    摄焱皮肤OK了
	*/
	function SetSheyanSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,4)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    霸绝皮肤条件
	*/
	function GetBajue1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],5) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    霸绝皮肤OK了
	*/
	function SetBajueSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,5)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    幻逸皮肤条件
	*/
	function GetHuanyi1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],6) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    幻逸皮肤OK了
	*/
	function SetHuanyiSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,6)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    司宸皮肤条件
	*/
	function GetSichen1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],7) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    司宸皮肤OK了
	*/
	function SetSichenSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,7)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    苍凌皮肤条件
	*/
	function GetCangling1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],8) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    苍凌皮肤OK了
	*/
	function SetCanglingSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,8)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    黑阎皮肤条件
	*/
	function GetHeiyan1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],9) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    黑阎皮肤OK了
	*/
	function SetHeiyanSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,9)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    离魑皮肤条件
	*/
	function GetLichi1Spin takes player p returns boolean
		return GetBit(spin2[GetConvertedPlayerId(p)],10) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    离魑皮肤OK了
	*/
	function SetLichiSpinOK takes player p returns nothing
		call GetSpecifySpin(p,2,10)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    寒殇皮肤条件
	*/
	function GetHanshang2Spin takes player p returns boolean
		return GetBit(spin3[GetConvertedPlayerId(p)],1) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    寒殇皮肤OK了
	*/
	function SetHanshang2SpinOK takes player p returns nothing
		call GetSpecifySpin(p,3,1)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    星胧皮肤条件
	*/
	function GetXinglong1Spin takes player p returns boolean
		return GetBit(spin3[GetConvertedPlayerId(p)],2) > 0
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    星胧皮肤OK了
	*/
	function SetXinglong1SpinOK takes player p returns nothing
		call GetSpecifySpin(p,3,2)
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    获取成就索引条件是否满足了
	*/
	function IsAchieveOK takes player p,integer achieveID returns boolean
		local integer id = GetConvertedPlayerId(p)
		local integer page = GetAchievePage(achieveID)
		local integer target = GetAchieveTarget(achieveID)
		if (achieveID == 48) then
			return GetLowerHeroCount(p,99,HERO_COUNT)
		endif
		if (page == 1) then
			return (GetBit(achieve[id],target) > 0)
		elseif (page == 2) then
			return (GetIntegerBit(achieve2[id],target) >0)
		elseif (page == 3) then
			return (GetIntegerBit(achieve3[id],target) >0)
		elseif (page == 4) then
			return (GetIntegerBit(achieve4[id],target) >0)
		endif
		return false
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    是否全成就
	*/
	function IsQuanchengjiu takes player p returns boolean
		local boolean result = true
		local integer i = 11
		loop
			exitwhen i > 18
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop
		set i = 21
		loop
			exitwhen i > 29
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		set i = 210
		loop
			exitwhen i > 231
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		set i = 32
		loop
			exitwhen i > 39
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop


		set i = 310
		loop
			exitwhen i > 318
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		set i = 320
		loop
			exitwhen i > 331
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		set i = 43
		loop
			exitwhen i > 46
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		set result = result and IsAchieveOK(p,49)

		set i = 410
		loop
			exitwhen i > 417
			set result = result and IsAchieveOK(p,i)
			set i = i +1
		endloop

		return result

	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    初始成就名
	*/
	function SetAchievement takes player p,integer achieveID returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (udg_H[id] == null) then
			return
		endif
		if (IsAchieveOK(p,achieveID)) then
			set achiPage[id] = achieveID
			//彩名	
			if (IsAchieveColor(achieveID)) then
				call SetPlayerName(p, GetAchievementName(achieveID) + GetRandomColor() + playerName[id] + "|r")
			elseif (IsAchieveWhite(achieveID)) then
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id])
			else
				call SetPlayerName(p, GetAchievementName(achieveID) + playerName[id] + "|r")
			endif
			//特效
			if (IsAchieveLight(achieveID)) then
				if (achiEff[id] != null) then
					call DestroyEffect(achiEff[id])
				endif
				set achiEff[id] = AddSpecialEffectTargetUnitBJ("origin",udg_H[id],"war3mapImported\\lunhuitexiao.mdl")
			endif
			call DzAPI_Map_Stat_SetStat( p, "achi", GetAchievementWhiteName(achieveID) )
		endif	
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就指针
	*/
	function SaveAchievePointer takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "page", achiPage[GetConvertedPlayerId(p)] )
	endfunction 
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就数据1
	*/
	function SaveAchieveData1 takes player p returns nothing
		call DzAPI_Map_StoreString( p,  "achieve", I2S(achieve[GetConvertedPlayerId(p)]) )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就数据2
	*/
	function SaveAchieveData2 takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "achieve2", achieve2[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就数据3
	*/
	function SaveAchieveData3 takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "achieve3", achieve3[GetConvertedPlayerId(p)] )
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    存储成就数据3
	*/
	function SaveAchieveData4 takes player p returns nothing
		call DzAPI_Map_StoreInteger( p,  "achieve4", achieve4[GetConvertedPlayerId(p)] )
	endfunction

//---------------------------------------------------------------------------------------------------
	/*
	    提示获取数据成功并保存数据
	*/
	function GetAchievementAndSave takes player p , integer achieveID returns nothing
		local integer id = GetConvertedPlayerId(p)
		if (udg_H[id] == null) then
			return
		endif
		//两个仅有的挑战成就
		if ((achieveID == 410 or achieveID == 411 or achieveID == 418 or achieveID == 419) and CType == 0) then
			return 
		endif

		if (achieveID != 410 and achieveID != 411 and CType > 0) then
			return 
		endif

		if (achieveID != 418 and achieveID != 419 and CType == -1) then
			return
		endif

		//两个超级成就
		if not(IsAchieveOK(p,achieveID)) then
			if (GetAchievePage(achieveID) == 1) then
				set achieve[id] = achieve[id] + R2I(Pow(10,I2R(achieveID-11)))
			elseif (GetAchievePage(achieveID) == 2) then
				set achieve2[id] = SetIntegerBit(achieve2[id],GetAchieveTarget(achieveID),true)
			elseif (GetAchievePage(achieveID) == 3) then
				set achieve3[id] = SetIntegerBit(achieve3[id],GetAchieveTarget(achieveID),true)
			elseif (GetAchievePage(achieveID) == 4) then
				set achieve4[id] = SetIntegerBit(achieve4[id],GetAchieveTarget(achieveID),true)
			endif
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r恭喜你获得成就\""+GetAchievementName(achieveID)+"|r\",该成就会显示在游戏大厅内及你的名字前面.")
		    call SetAchievement(p,achieveID)
			call SaveAchieveData1(p)
			call SaveAchieveData2(p)
			call SaveAchieveData3(p)
			call SaveAchieveData4(p)
		    call SaveAchievePointer(p)
			call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r如果你想使用其他的成就，请输入\"-cj\"来切换你的现有成就。")
		endif
	endfunction
	
//---------------------------------------------------------------------------------------------------
	/*
	    创建成就对话框 
	*/
	function NextPageAchievement takes player p, dialog d , integer page returns nothing
	    local integer i = 1
		if (page == 1) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 10) + S3(IsAchieveOK(p,i + 10),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
	    	call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetAchievementName(325) + S3(IsAchieveOK(p,325),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		elseif (page == 2) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 20) + S3(IsAchieveOK(p,i + 20),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
		elseif (page == 3) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(217 - i) + S3(IsAchieveOK(p,217 - i),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
	    	call SaveButtonHandle(LHTable,GetHandleId(d),8,DialogAddButtonBJ( d, GetAchievementName(29) + S3(IsAchieveOK(p,29),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		elseif (page == 4) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 216) + S3(IsAchieveOK(p,i + 216),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
		elseif (page == 5) then
		    loop
		    	exitwhen i > 7
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 224) + S3(IsAchieveOK(p,i + 224),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
	    	call SaveButtonHandle(LHTable,GetHandleId(d),8,DialogAddButtonBJ( d, GetAchievementName(310) + S3(IsAchieveOK(p,310),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		elseif (page == 6) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 31) + S3(IsAchieveOK(p,i + 31),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
		elseif (page == 7) then
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 310) + S3(IsAchieveOK(p,i + 310),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
		elseif (page == 8) then
	    	call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetAchievementName(326) + S3(IsAchieveOK(p,326),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
			set i = 2
		    loop
		    	exitwhen i > 6
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 318) + S3(IsAchieveOK(p,i + 318),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
    	    	call SaveButtonHandle(LHTable,GetHandleId(d),7,DialogAddButtonBJ( d, GetAchievementName(327) + S3(IsAchieveOK(p,327),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		elseif (page == 9) then
			set i = 1
		    loop
		    	exitwhen i > 4
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 327) + S3(IsAchieveOK(p,i + 327),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
			set i = 5
		    loop
		    	exitwhen i > 8
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 38) + S3(IsAchieveOK(p,i + 38),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop		
		elseif (page == 10) then
	    	call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetAchievementName(49) + S3(IsAchieveOK(p,49),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
			set i = 2
		    loop
		    	exitwhen i > 9
		    	call SaveButtonHandle(LHTable,GetHandleId(d),i,DialogAddButtonBJ( d, GetAchievementName(i  + 408) + S3(IsAchieveOK(p,i + 408),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r")))
		    	set i = i + 1
		    endloop
		endif

    	call SaveButtonHandle(LHTable,GetHandleId(d),17,DialogAddButtonBJ( d, "上一页"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),10,DialogAddButtonBJ( d, "下一页"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),11,DialogAddButton( d, "关闭|cffff6800(Esc)|r",512))
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建英雄挑战对话框
	*/
	function CreateHeroDialogContent takes player p, dialog d,integer page returns nothing
		if (page == 1) then
			call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetHeroChallenageName(2,1) + S3(GetSeyu1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, GetHeroChallenageName(3,1) + S3(GetXiaoyue1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, GetHeroChallenageName(4,1) + S3(GetYanmie1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),4,DialogAddButtonBJ( d, GetHeroChallenageName(5,1) + S3(GetXuanxue1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),5,DialogAddButtonBJ( d, GetHeroChallenageName(7,1) + S3(GetChenji1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),6,DialogAddButtonBJ( d, GetHeroChallenageName(6,1) + S3(GetTaiya1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),7,DialogAddButtonBJ( d, GetHeroChallenageName(8,1) + S3(GetHanshang1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),8,DialogAddButtonBJ( d, GetHeroChallenageName(10,1) + S3(GetChenji2Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),9,DialogAddButtonBJ( d, GetHeroChallenageName(9,1) + S3(GetLingxue1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		elseif (page == 2) then
			call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetHeroChallenageName(2,2) + S3(GetKaisaSpin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, GetHeroChallenageName(1,2) + S3(GetMoqiSpin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, GetHeroChallenageName(3,2) + S3(GetXuanxue2Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),4,DialogAddButtonBJ( d, GetHeroChallenageName(5,2) + S3(GetBajue1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),5,DialogAddButtonBJ( d, GetHeroChallenageName(4,2) + S3(GetSheyan1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),6,DialogAddButtonBJ( d, GetHeroChallenageName(6,2) + S3(GetHuanyi1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),7,DialogAddButtonBJ( d, GetHeroChallenageName(7,2) + S3(GetSichen1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),8,DialogAddButtonBJ( d, GetHeroChallenageName(8,2) + S3(GetCangling1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),9,DialogAddButtonBJ( d, GetHeroChallenageName(9,2) + S3(GetHeiyan1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		elseif (page == 3) then
			call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetHeroChallenageName(10,2) + S3(GetLichi1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, GetHeroChallenageName(1,3) + S3(GetHanshang2Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
			call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, GetHeroChallenageName(2,3) + S3(GetXinglong1Spin(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		endif

    	call SaveButtonHandle(LHTable,GetHandleId(d),10,DialogAddButtonBJ( d, "下一页"))
    	call SaveButtonHandle(LHTable,GetHandleId(d),11,DialogAddButton( d, "关闭|cffff6800(Esc)|r",512))

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建超级成就对话框
	*/
	function CreateSuperDialogContent takes player p,dialog d returns nothing
		
		call SaveButtonHandle(LHTable,GetHandleId(d),1,DialogAddButtonBJ( d, GetSuperChallenageName(1) + S3(IsQuanchengjiu(p),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable,GetHandleId(d),2,DialogAddButtonBJ( d, GetSuperChallenageName(2) + S3(IsAchieveOK(p,42),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable,GetHandleId(d),3,DialogAddButtonBJ( d, GetSuperChallenageName(3) + S3(IsAchieveOK(p,47),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable,GetHandleId(d),4,DialogAddButtonBJ( d, GetSuperChallenageName(4) + S3(GetLowerHeroCount(p,99,HERO_COUNT),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable,GetHandleId(d),5,DialogAddButtonBJ( d, GetSuperChallenageName(5) + S3(IsAchieveOK(p,418),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))
		call SaveButtonHandle(LHTable,GetHandleId(d),6,DialogAddButtonBJ( d, GetSuperChallenageName(6) + S3(IsAchieveOK(p,419),"|cffff9900(已完成)|r","|cff33cccc(未完成)|r")))

	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    成就对话框点击事件
	*/
	function AchievementDialogClick takes nothing returns nothing
		local dialog d = GetClickedDialogBJ()
	    local integer i = 1
	    local integer page = LoadInteger(LHTable,GetHandleId(d),12)
	    local player p = LoadPlayerHandle(LHTable,GetHandleId(d),13)
	    local integer achieveID = LoadInteger(LHTable,GetHandleId(d),14)

        //查看条件与设置
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),15)) then
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetAchievementName(achieveID) + "|r成就的获取条件如下所示:")
	    	call DisplayTextToPlayer(p, 0., 0., GetAchievementCondition(achieveID))
	    elseif (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),16)) then
	    	call SetAchievement(p,achieveID)
	    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r你成功地将成就设置成了"+GetAchievementName(achieveID)+".")
	    	//保存到服务器
	    	call SaveAchievePointer(p)
	    endif

	    //退出
	    if ((GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),11)) or (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),15)) or (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),16))) then
            call DialogClear(d)
	        call FlushChildHashtable(LHTable,GetHandleId(d))
        	call DialogDisplay( p, d, false )
	        call DialogDestroy(d)
	        set d = null
	        set p = null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //下一页
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),10)) then
            call DialogClear(d)
	    	set page = I3(page < PAGE_ACHIEVE,page + 1,1)
    		call SaveInteger(LHTable,GetHandleId(d),12,page)
	    	call DialogSetMessage( d, "我的成就|cffff6800(第"+I2S(page)+"/"+I2S(PAGE_ACHIEVE)+"页)|r
	    		收集全部成就可以自定义成就名" )
	    	call NextPageAchievement(p,d,page)
        	call DialogDisplay( p, d, true )
		    set d = null
		    set p = null
	    	return
	    endif

	    //上一页
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),17)) then
            call DialogClear(d)
	    	set page = I3(page <= 1,PAGE_ACHIEVE,page - 1)
    		call SaveInteger(LHTable,GetHandleId(d),12,page)
	    	call DialogSetMessage( d, "我的成就|cffff6800(第"+I2S(page)+"/"+I2S(PAGE_ACHIEVE)+"页)|r
	    		收集全部成就可以自定义成就名" )
	    	call NextPageAchievement(p,d,page)
        	call DialogDisplay( p, d, true )
		    set d = null
		    set p = null
	    	return
	    endif

	    //点击指定的成就
	    loop
	        exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
                call DialogClear(d)
	        	set achieveID = GetAchievementIndex(page,i)
	    		call SaveInteger(LHTable,GetHandleId(d),14,achieveID)
	    		call DialogSetMessage( d, GetAchievementName(achieveID) + S3(IsAchieveOK(p,achieveID),"|cffff9900(已解锁)|r","|cff33cccc(未解锁)|r") )
		    	call SaveButtonHandle(LHTable,GetHandleId(d),15,DialogAddButtonBJ( d, "查看获取条件"))
		    	if (IsAchieveOK(p,achieveID)) then
		    		call SaveButtonHandle(LHTable,GetHandleId(d),16,DialogAddButtonBJ( d, "使用该成就"))
		    	endif
		    	call SaveButtonHandle(LHTable,GetHandleId(d),11,DialogAddButton( d, "关闭|cffff6800(Esc)|r",512))
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

        call DialogDisplay( p, d, true )
	    set d = null
	    set p = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    英雄挑战对话框
	*/
	function HeroDialogClick takes nothing returns nothing
		local dialog d = GetClickedDialogBJ()
	    local player p = LoadPlayerHandle(LHTable,GetHandleId(d),13)
	    local integer page = LoadInteger(LHTable,GetHandleId(d),12)
		local integer i = 1

	    //退出
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),11)) then
            call DialogClear(d)
	        call FlushChildHashtable(LHTable,GetHandleId(d))
        	call DialogDisplay( p, d, false )
	        call DialogDestroy(d)
	        set d = null
	        set p = null
	        call DestroyTrigger(GetTriggeringTrigger())
	        return
	    endif

	    //下一页
	    if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),10)) then
            call DialogClear(d)
	    	set page = I3(page < PAGE_HERO_CHALLANGER,page + 1,1)
	    	call DialogSetMessage( d, "英雄挑战|cffff6800(第"+I2S(page)+"/"+I2S(PAGE_HERO_CHALLANGER)+"页)|r" )
    		call SaveInteger(LHTable,GetHandleId(d),12,page)
	    	call CreateHeroDialogContent(p,d,page)
        	call DialogDisplay( p, d, true )
		    set d = null
		    set p = null
	    	return
	    endif

	    //点击
	    loop
	        exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetHeroChallenageName(i,page) + "|r英雄挑战的条件如下所示:")
		    	call DisplayTextToPlayer(p, 0., 0., GetHeroChallenageContent(i,page))
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

        call DialogClear(d)
        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( p, d, false )
        call DialogDestroy(d)
        set d = null
        set p = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    超级成就对话框
	*/
	function SuperAchievementClick takes nothing returns nothing
		local dialog d = GetClickedDialogBJ()
	    local player p = LoadPlayerHandle(LHTable,GetHandleId(d),13)
		local integer i = 1
	    loop
	        exitwhen i > 9
	        if (GetClickedButtonBJ() == LoadButtonHandle(LHTable,GetHandleId(d),i)) then
                call DialogClear(d)
		    	call DisplayTextToPlayer(p, 0., 0., "|cFFFF66CC【消息】|r" + GetSuperChallenageName(i) + "|r超级成就的完成条件如下所示:")
		    	call DisplayTextToPlayer(p, 0., 0., GetSuperChallenageContent(i))
		    	if (i == 2) then
	    			call SetAchievement(p,42)
	    			call SaveAchievePointer(p)
		    	elseif (i == 3) then
	    			call SetAchievement(p,47)
	    			call SaveAchievePointer(p)
		    	elseif (i == 4) then
	    			call SetAchievement(p,48)
	    			call SaveAchievePointer(p)
		    	elseif (i == 5) then
	    			call SetAchievement(p,48)
	    			call SaveAchievePointer(p)
		    	elseif (i == 6) then
	    			call SetAchievement(p,48)
	    			call SaveAchievePointer(p)
		    	endif
	            exitwhen true
	        endif
	        set i = i +1
	    endloop

        call DialogClear(d)
        call FlushChildHashtable(LHTable,GetHandleId(d))
    	call DialogDisplay( p, d, false )
        call DialogDestroy(d)
        set d = null
        set p = null
        call DestroyTrigger(GetTriggeringTrigger())
	endfunction
//---------------------------------------------------------------------------------------------------

	/*
	    创建一个成就对话框给玩家
	*/
	function CreateAchievementDialog takes player p returns nothing
	    local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    call DialogSetMessage( d, "我的成就|cffff6800(第1/"+I2S(PAGE_ACHIEVE)+"页)|r
	    	收集全部成就可以自定义成就名" )
	    call NextPageAchievement(p,d,1)
    	call SaveButtonHandle(LHTable,GetHandleId(d),15,null)
    	call SaveButtonHandle(LHTable,GetHandleId(d),16,null)
    	call SaveInteger(LHTable,GetHandleId(d),12,1)
	    call SavePlayerHandle(LHTable,GetHandleId(d),13,p)
	    call SaveInteger(LHTable,GetHandleId(d),14,10)
	    call DialogDisplay( p, d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function AchievementDialogClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建一个英雄挑战对话框给玩家
	*/
	function CreateHeroChallenagerDialog takes player p returns nothing
		local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    call DialogSetMessage( d, "英雄挑战|cffff6800(第1/"+I2S(PAGE_HERO_CHALLANGER)+"页)|r" )
	    call CreateHeroDialogContent(p,d,1)
	    call SavePlayerHandle(LHTable,GetHandleId(d),13,p)
	    call SaveInteger(LHTable,GetHandleId(d),12,1)
	    call DialogDisplay( p, d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function HeroDialogClick)
	    set d = null
	    set t = null
	endfunction
//---------------------------------------------------------------------------------------------------
	/*
	    创建一个超级成就对话框给玩家
	*/
	function CreateSuperAchievementDialog takes player p returns nothing
		local trigger t  = CreateTrigger()
	    local dialog d = DialogCreate()
	    call DialogSetMessage( d, "超级成就" )
	    call CreateSuperDialogContent(p,d)
	    call SavePlayerHandle(LHTable,GetHandleId(d),13,p)
	    call DialogDisplay( p, d, true )
	    call TriggerRegisterDialogEvent( t, d )
	    call TriggerAddAction(t, function SuperAchievementClick)
	    set d = null
	    set t = null
	endfunction


endlibrary