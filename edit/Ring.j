//! import "LHBase.j"

library_once Ring initializer InitRing requires LHBase 
	
	
//---------------------------------------------------------------------------------------------------
	/*
	    初始化戒指
	*/
	private function InitRing takes nothing returns nothing
		
	endfunction

endlibrary


function Trig________10bConditions takes nothing returns boolean
    return ((IsUnitEnemy(GetDyingUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true) and (IsUnitAliveBJ(GetKillingUnitBJ()) == true) and ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rat9')) == 'rat9') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rlif')) == 'rlif') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'lgdh')) == 'lgdh') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'clfm')) == 'clfm') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'bgst')) == 'bgst') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'belv')) == 'belv') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'hcun')) == 'hcun') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rag1')) == 'rag1') or (GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'penr')) == 'penr')))
endfunction

function Trig________10bFunc002Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "|cFFFF66CC【鬼器】|r由于你处于死亡状态，你成功升级的鬼器转移到了你的仓库里，输入"-H"来召唤仓库。" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_1436" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_1571" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_3172" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_3173" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_4348" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_4382" )
endfunction

function Trig________10bFunc003Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5446" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5447" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5458" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5459" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5460" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5463" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5464" )
endfunction

function Trig________10bFunc004Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5471" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5480" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5481" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5482" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5483" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5484" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5485" )
endfunction

function Trig________10bFunc005Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5486" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5487" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5488" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5757" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5760" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5761" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5764" )
endfunction

function Trig________10bFunc006Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5765" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5768" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5769" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5772" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5773" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5776" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5777" )
endfunction

function Trig________10bFunc007Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5780" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5781" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5784" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5785" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5788" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5831" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5832" )
endfunction

function Trig________10bFunc008Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_5873" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6010" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6011" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6012" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6013" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6014" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6015" )
endfunction

function Trig________10bFunc009Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6016" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6017" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6018" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6019" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6020" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6021" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6022" )
endfunction

function Trig________10bFunc010Func004Func003Func002A takes nothing returns nothing
    call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x9C0F555E), GetEnumUnit() )
    call YDTriggerSetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F, GetUnitLoc(GetEnumUnit()))
    call PingMinimapLocForForce( GetForceOfPlayer(GetOwningPlayer(GetKillingUnitBJ())), YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F), 5.00 )
    call RemoveLocation( YDTriggerGetEx(location, YDTriggerH2I(GetTriggeringTrigger())*YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7), 0x5E83114F) )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6023" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6024" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6025" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6026" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6027" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6028" )
    call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, "TRIGSTR_6029" )
endfunction

function Trig________10bActions takes nothing returns nothing
    local group ydl_group
    local unit ydl_unit
    local integer ydl_localvar_step = YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xCFDE6C76, ydl_localvar_step)
    call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
    if (((GetUnitTypeId(GetDyingUnit()) == 'nanw') or (GetUnitTypeId(GetDyingUnit()) == 'nbld') or (GetUnitTypeId(GetDyingUnit()) == 'nbdo') or (GetUnitTypeId(GetDyingUnit()) == 'ncnk') or (GetUnitTypeId(GetDyingUnit()) == 'nkol') or (GetUnitTypeId(GetDyingUnit()) == 'nenc') or (GetUnitTypeId(GetDyingUnit()) == 'nogl') or (GetUnitTypeId(GetDyingUnit()) == 'ngnw'))) then
        call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 20)
    else
        if (((GetUnitTypeId(GetDyingUnit()) == 'nano') or (GetUnitTypeId(GetDyingUnit()) == 'nenf') or (GetUnitTypeId(GetDyingUnit()) == 'nbda') or (GetUnitTypeId(GetDyingUnit()) == 'ncim') or (GetUnitTypeId(GetDyingUnit()) == 'nkot') or (GetUnitTypeId(GetDyingUnit()) == 'nomg') or (GetUnitTypeId(GetDyingUnit()) == 'ngns') or (GetUnitTypeId(GetDyingUnit()) == 'nhfp'))) then
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 10)
        else
            call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820, 1)
        endif
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rat9')) == 'rat9')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rat9'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'rlif')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 1000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc002Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/1000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rlif')) == 'rlif')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rlif'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'lgdh')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 2000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc003Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/2000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'lgdh')) == 'lgdh')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'lgdh'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'clfm')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 3000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc004Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/3000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'clfm')) == 'clfm')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'clfm'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'bgst')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 4000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc005Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/4000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'bgst')) == 'bgst')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'bgst'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'belv')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 5000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc006Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/5000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'belv')) == 'belv')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'belv'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'hcun')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 6000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc007Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/6000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'hcun')) == 'hcun')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'hcun'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'rag1')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 7000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc008Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/7000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rag1')) == 'rag1')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'rag1'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'penr')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 8000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc009Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/8000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    if ((GetItemTypeId(GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'penr')) == 'penr')) then
        call YDTriggerSetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D, GetItemOfTypeFromUnitBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 'penr'))
        call YDTriggerSetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E, 'brac')
        call SetItemUserData( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D), ( GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) + YDTriggerGetEx(integer, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x25DAB820) ) )
        if ((GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D)) >= 9000)) then
            call RemoveItem( YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D) )
            if ((IsUnitAliveBJ(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) == true)) then
                call UnitAddItemByIdSwapped( YDTriggerGetEx(itemcode, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0x9C0F555E), udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))] )
            else
                set udg_Group = GetUnitsOfPlayerAndTypeId(GetOwningPlayer(GetKillingUnitBJ()), 'nmgv')
                call ForGroupBJ( udg_Group, function Trig________10bFunc010Func004Func003Func002A )
                call DestroyGroup( udg_Group )
            endif
        else
            if ((GetUnitUserData(udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))]) != 1)) then
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 1 )
                call DisplayTextToPlayer( GetOwningPlayer(GetKillingUnitBJ()), 0, 0, ( "|cFFFF66CC【鬼器】|r" + ( I2S(GetItemUserData(YDTriggerGetEx(item, YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step, 0xA1614B4D))) + "/9000。" ) ) )
                call PolledWait(1.00)
                call YDTriggerSetEx(integer, YDTriggerH2I(GetTriggeringTrigger()), 0xECE825E7, ydl_localvar_step)
                call SetUnitUserData( udg_H[GetConvertedPlayerId(GetOwningPlayer(GetKillingUnitBJ()))], 0 )
            else
            endif
        endif
        call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
        set ydl_group = null
        set ydl_unit = null
        return
    else
    endif
    call YDTriggerClearTable(YDTriggerH2I(GetTriggeringTrigger())*ydl_localvar_step)
    set ydl_group = null
    set ydl_unit = null
endfunction

//===========================================================================
function InitTrig________10b takes nothing returns nothing
    set gg_trg________10b = CreateTrigger()
#ifdef DEBUG
    call YDWESaveTriggerName(gg_trg________10b, "升级_10b")
#endif
    call TriggerRegisterAnyUnitEventBJ( gg_trg________10b, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddCondition(gg_trg________10b, Condition(function Trig________10bConditions))
    call TriggerAddAction(gg_trg________10b, function Trig________10bActions)
endfunction

