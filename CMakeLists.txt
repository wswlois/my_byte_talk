cmake_minimum_required(VERSION 3.0)
project(wsw_muduo_chat)#工程名字

#设置debug模式，如果没有这一行将不能调试设断点
#set(CMAKE_BUILD_TYPE "Debug")

# 设置cmake的全局变量/设置可执行文件最终的存储路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 配置编译选项
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -g)

# 配置头文件搜索路径,相当于makefile里面的-I
include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/include/server)
include_directories(${PROJECT_SOURCE_DIR}/include/server/db)
include_directories(${PROJECT_SOURCE_DIR}/thirdparty)
# 配置库文件搜索路径
# link_directories()

# 加载子目录
add_subdirectory(src)
