#define CRNL <?='\n'?>

#define VERSION_ALPHA     1 //内测版
#define VERSION_BETA      2 //公测版
#define VERSION_RELEASE   3 //正式版
#define VERSION_UNITTEST  4 //单元测试
#define VERSION_MODELTEST 5 //模型测试

#define PLATFORM_DZ 1 //网易平台渠道
#define PLATFORM_11 2 //11平台渠道

// 当前构建版本
#define CURRENT_BUILD_VERSION VERSION_RELEASE
// 当前的平台分包
#define CURRENT_BUILD_PLATFORM PLATFORM_DZ

#if (CURRENT_BUILD_VERSION == VERSION_ALPHA)
    // 内测版
    #define TestMode
    #define GongceMode
    #define LOG_PRINT_LEVEL 6
    // lua_print: 内测版本
#elif (CURRENT_BUILD_VERSION == VERSION_BETA)
    // 公测版
    #undef TestMode
    #define GongceMode
    #define LOG_PRINT_LEVEL 4
    // lua_print: 公测版本
#elif (CURRENT_BUILD_VERSION == VERSION_UNITTEST)
    // 单元测试
    #define TestMode
    #undef GongceMode
    #define LOG_PRINT_LEVEL 6
    // lua_print: 单元测试
#elif (CURRENT_BUILD_VERSION == VERSION_MODELTEST)
    // 模型测试
    #define TestMode
    #undef GongceMode
    #define LOG_PRINT_LEVEL 6
    // lua_print: 模型测试
#else
    // 正式版
    #undef TestMode
    #undef GongceMode
    #define LOG_PRINT_LEVEL 2
    // lua_print: 正式版本
#endif

#include "Crainax/config/Log.h" // 输出日志配置
#include "Crainax/config/SharedMethod.h" // 结构体共用方法
#include "config/config.h" // 配置
// #define StructMode // todo:结构体数量查看模式:用条件编译直接全部搞定

//函数入口
#if (CURRENT_BUILD_VERSION == VERSION_UNITTEST) // 单元测试
    #include "config/UnitTest.h"
#elif (CURRENT_BUILD_VERSION == VERSION_MODELTEST) // 模型测试
    #include "config/ModelTest.h"
#else // 地图项目
    #include "config/Main.h"
#endif

#if defined(TestMode) && ((CURRENT_BUILD_VERSION == VERSION_BETA) || (CURRENT_BUILD_VERSION == VERSION_RELEASE))
    // lua_print: 有测试指令!
#endif
