// 用原始地图测试
#define OriginMapUnitTestMode
// 用空地图测试
#undef EmptyMapUnitTestMode

#include "edit/LHBase.j"
#include "edit/NetVersion.j"
#include "edit/BaseVersion.j"
#include "edit/Box.j"

#include "edit/item.j"
#include "edit/Arena.j"
#include "edit/Boss.j"
#include "edit/Revive.j"
#include "edit/Purgatory.j"
#include "edit/UseItem.j"
#include "edit/Juexing.j"

// 基础
#include "edit/LHOther.j"

// 高难系数
#include "edit/Diffculty.j"

// 装备属性初始化
#include "edit/ItemAttr.j"
// VIP
#include "edit/PIV.j"
// 多面板
#include "edit/Multiboard.j"
// 转生
#include "edit/Mirror.j"
// 黑店
#include "edit/TouristTrap.j"
// 宠物有关
#include "edit/Pet.j"
// 合成装备
#include "edit/Combine.j"
#include "edit/Hundun.j"
// 宝石升级
#include "edit/Diamond.j"
// 属性加成
#include "edit/Attr.j"
// 导入基地有关
#include "edit/CenterBase.j"
// 物品技能
#include "edit/ItemSpell.j"
// 翅膀
#include "edit/Wing.j"
// 戒指
#include "edit/Ring.j"
// 同类型物品
#include "edit/SameItem.j"

// 皮肤
#include "edit/Spin.j"
// 导入英雄
#include "edit/HeiYan.j"
#include "edit/Yanmie.j"
#include "edit/Kaisa.j"
#include "edit/Lingxue.j"
#include "edit/Seyu.j"
#include "edit/Moqi.j"
#include "edit/Sheyan.j"
#include "edit/Hanshang.j"
#include "edit/Huanyi.j"
#include "edit/Chenji.j"
#include "edit/Mengji.j"
#include "edit/CangLing.j"
#include "edit/Xiaoyue.j"
#include "edit/Sichen.j"
#include "edit/Xuanxue.j"
#include "edit/Taiya.j"
#include "edit/Xinglong.j"
#include "edit/Xiaoting.j"
#include "edit/Bajue.j"
#include "edit/Lichi.j"

// 战斗调整
#include "edit/Battle.j"
// 野区
#include "edit/Jungle.j"
// 秘境
#include "edit/MiJing.j"
// 传承试练
#include "edit/Shilian.j"

// 马甲模拟
#include "edit/Simulate.j"

// 导入指令
#include "edit/ChatCommand.j"

// 学习技能
#include "edit/HeroSpellBase.j"

// 金币系统
#include "edit/GoldSystem.j"

// 怪物技能
#include "edit/MonsterSpell.j"

// 魔兽技能
#include "edit/Beast.j"

// 练级场
#include "edit/Exercise.j"
#include "edit/CenterCredit.j"

// 迷你游戏
#include "edit/MiniGame.j"
// 随机英雄
#include "edit/RandomHero.j"

// 狂欢活动
#include "edit/Kuanghuan.j"

// 连续登录
#include "edit/Continous.j"

// 测试文件
#if (defined(VERSION_ALPHA) || defined(VERSION_BETA))
    #include "edit/TestCommand.j"
    #include "edit/NotPublic.j"
    #include "edit/DebugNet.j"
#endif

#if defined(OriginMapUnitTestMode)

// lua_print: 正式地图

#else

// lua_print: 空白地图

#endif //
