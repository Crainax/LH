#ifndef XYweuiYBXTdmbxtIncluded
#define XYweuiYBXTdmbxtIncluded

#include "XYwebase.j"
#include "AntiBJLeak\detail\MultiboardSetItemColorBJ.j"
#include "AntiBJLeak\detail\MultiboardSetItemIconBJ.j"
#include "AntiBJLeak\detail\MultiboardSetItemStyleBJ.j"
#include "AntiBJLeak\detail\MultiboardSetItemValueBJ.j"
#include "AntiBJLeak\detail\MultiboardSetItemWidthBJ.j"

library XYweuiYBXTdmbxt requires XYwebase

function XYweuiYBXTdmbxta takes player XYweui0,integer XYweui1,integer XYweui2,integer XYweui3,string XYweui4 returns nothing
    set XYweuiYBXTdmbxt_wj[XYweui1] = XYweui0
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call CreateMultiboardBJ(XYweui2,XYweui3,XYweui4)
        set XYweuiYBXTdmbxt_dmb[XYweui1] = bj_lastCreatedMultiboard
    endif
endfunction

function XYweuiYBXTdmbxtb takes integer XYweui1 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call DestroyMultiboard(XYweuiYBXTdmbxt_dmb[XYweui1])
        set XYweuiYBXTdmbxt_dmb[XYweui1] = null
        set XYweuiYBXTdmbxt_wj[XYweui1] = null
    endif
endfunction

function XYweuiYBXTdmbxtc takes integer XYweui1,boolean XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardDisplay(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtd takes player XYweui1,boolean XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweui1 == GetLocalPlayer()) then
        call MultiboardSuppressDisplay(XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxte takes integer XYweui1,boolean XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardMinimize(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtf takes integer XYweui1 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardClear(XYweuiYBXTdmbxt_dmb[XYweui1])
    endif
endfunction

function XYweuiYBXTdmbxtg takes integer XYweui1,string XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetTitleText(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxth takes integer XYweui1,integer XYweui2,integer XYweui3,integer XYweui4,integer XYweui5 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetTitleTextColor(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4,XYweui5)
    endif
endfunction

function XYweuiYBXTdmbxti takes integer XYweui1,real XYweui2,real XYweui3,real XYweui4,real XYweui5 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetTitleTextColorBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4,XYweui5)
    endif
endfunction

function XYweuiYBXTdmbxtj takes integer XYweui1,integer XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetRowCount(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtk takes integer XYweui1,integer XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetColumnCount(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtl takes integer XYweui1,boolean XYweui2,boolean XYweui3 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemsStyle(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3)
    endif
endfunction

function XYweuiYBXTdmbxtm takes integer XYweui1,string XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemsValue(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtn takes integer XYweui1,integer XYweui2,integer XYweui3,integer XYweui4,integer XYweui5 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemsValueColor(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4,XYweui5)
    endif
endfunction

function XYweuiYBXTdmbxto takes integer XYweui1,real XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemsWidth(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtp takes integer XYweui1,string XYweui2 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemsIcon(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2)
    endif
endfunction

function XYweuiYBXTdmbxtq takes integer XYweui1,integer XYweui2,integer XYweui3,boolean XYweui4,boolean XYweui5 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemStyleBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4,XYweui5)
    endif
endfunction

function XYweuiYBXTdmbxtr takes integer XYweui1,integer XYweui2,integer XYweui3,string XYweui4 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemValueBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4)
    endif
endfunction

function XYweuiYBXTdmbxts takes integer XYweui1,integer XYweui2,integer XYweui3,real XYweui4,real XYweui5,real XYweui6,real XYweui7 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemColorBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4,XYweui5,XYweui6,XYweui7)
    endif
endfunction

function XYweuiYBXTdmbxtt takes integer XYweui1,integer XYweui2,integer XYweui3,real XYweui4 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemWidthBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4)
    endif
endfunction

function XYweuiYBXTdmbxtu takes integer XYweui1,integer XYweui2,integer XYweui3,string XYweui4 returns nothing
    call XYweuiOpenAll2()
    if (XYweuiYBXTdmbxt_wj[XYweui1] == GetLocalPlayer()) then
        call MultiboardSetItemIconBJ(XYweuiYBXTdmbxt_dmb[XYweui1],XYweui2,XYweui3,XYweui4)
    endif
endfunction

endlibrary 

#endif /// XYweuiYBXTdmbxtIncluded
