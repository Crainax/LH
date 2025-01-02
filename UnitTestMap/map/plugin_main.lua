-- 初始化一个空的路径变量
local path = ''

-- 尝试加载'path'模块，使用pcall防止加载失败时抛出错误
-- bool: 加载是否成功
-- res: 如果成功，包含加载的模块；如果失败，包含错误信息
local bool, res = pcall(require, 'path')

-- 导入控制台模块，用于输出信息
console = require 'jass.console'

-- 重定向print函数到console.write，确保正确处理编码
print = console.write

-- 根据path模块加载结果决定运行环境
if res then
    -- 如果成功加载path模块，说明是在本地开发环境
    console.enable = true  -- 启用控制台输出
    print('[plugin_main]本地路径')
else
    -- 如果加载失败，说明是在地图内运行
    print('[plugin_main]地图内路径')
end

print('[plugin_main]初始化:新版')

-- 使用xpcall安全地加载主脚本
-- 第一个参数是要执行的函数
-- 第二个参数是错误处理函数
xpcall(function ()
    require 'script'  -- 加载主要的游戏脚本(因为path里定义了默认名字是init.lua,所以这里可以省略init,默认调用script里面的init.lua)
end, function (msg)
    -- 错误处理函数，当前被注释掉了
    --print(msg, '\n', debug.traceback())
end)

-- 导入JAPI（Jass API）模块，用于与魔兽争霸3引擎交互
local japi = require 'jass.japi'

-- 设置地图作者信息
xpcall(function ()
    japi.SetOwner('问号')
end, function (msg)
    print("当前不是内置japi")
end)
