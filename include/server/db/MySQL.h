#ifndef __MYSQL_H__
#define __MYSQL_H__
#include <mysql/mysql.h>
#include <string>
using namespace std;

// 数据库操作类
class MySQL
{
public:
    // 初始化数据库连接
    MySQL();
    // 释放数据库连接资源
    ~MySQL();
    // 连接数据库
    bool connect();
    // 更新操作
    bool update(string sql);
    // 查询操作（查询操作返回结果）
    MYSQL_RES* query(string sql);
    // 判断是否连接成功
    bool isConnected();
    // 获取连接
    MYSQL* getConnection();
private:
    MYSQL *_conn;
};


#endif