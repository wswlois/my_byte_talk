# 定义额一个SRC_LIST变量，包含了该目录下所有的源文件
aux_source_directory(. SRC_LIST)
aux_source_directory(./db DB_LIST)
# 生成指定的可执行程序
add_executable(wsw_ChatServer ${SRC_LIST} ${DB_LIST})
# 指定可执行文件链接时需要的库文件
target_link_libraries(wsw_ChatServer muduo_net muduo_base mysqlclient pthread)