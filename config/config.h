#define VERSION "3.435"
#define MAX_PLAYER_COUNT 6

// 原生UI的大小
#define SIZE_ORIGIN_UI_SPELL 0.038
#define SIZE_ORIGIN_UI_ITEM 0.032

#define GetVersion() VERSION

// 马甲判断器
#define DUMMY_UNIT_JUDGE_NOT(u) (GetUnitPointValue(u) != 0 && GetUnitPointValue(u) != 123)
