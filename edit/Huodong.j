
#ifndef HuodongIncluded
#define HuodongIncluded

#include  "edit/LHBase.j"
#include  "edit/Achievement.j"

//! zinc
library Huodong requires LHBase,Achievement,VIPInterface {

    public integer IKuanghuan = 0;

    // 限时活动6:12-23
    public function IsHuodong7() -> boolean {
        //return true
        return ((DzAPI_Map_GetGameStartTime()/10) > 149978880) && ((DzAPI_Map_GetGameStartTime()/10) < 150315840);
    }

    // 嘉年华活动:
    public function IsJianianhua() -> boolean {
        return true;
    }

    // 狂欢模式活动:
    public function IsKuanghuanTime() -> boolean {
        return IKuanghuan == 1 || hasVIP();
    }

    // 天魇难度的开启条件
    public function IsTianyanOK() -> boolean {
        return IsAchieveOK(Player(0), 325);
    }
}
//! endzinc
#endif
