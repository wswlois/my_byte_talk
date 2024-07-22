#include "MySQL.h"
#include <muduo/base/Logging.h>

// 数据库配置信息
static string server = "127.0.0.1";
static string user = "root";
static string password = "123";
static string dbname = "chat";
// 初始化数据库连接
MySQL::MySQL()
{
    // 开辟了一块儿存储连接资源的资源空间
    _conn = mysql_init(nullptr);
}
// 释放数据库连接资源
MySQL::~MySQL()
{
    if (_conn != nullptr)
        // 析构函数会把这个资源空间释放掉
        mysql_close(_conn);
}
// 连接数据库
bool MySQL::connect()
{
    MYSQL *p = mysql_real_connect(_conn, server.c_str(), user.c_str(),
                                  password.c_str(), dbname.c_str(), 3306, nullptr, 0);
    if (p != nullptr)
    {
        // 允许代码上支持中文(C和C++默认的编码字符是ASCII，如果不设置，从MySQL
        // 上拉取的中文是？)
        mysql_query(_conn, "set names gbk");
        LOG_INFO << "connect mysql success!";
    }
    else{
        LOG_INFO << "connect mysql fail!";
    }
    return p;
}
bool MySQL::isConnected() {
    return mysql_ping(_conn) == 0;
}
// 更新操作
bool MySQL::update(string sql)
{
    if (mysql_query(_conn, sql.c_str()))
    {
        LOG_INFO << __FILE__ << ":" << __LINE__ << ":" << sql << "更新失败!";
        return false;
    }
    return true;
}
// 查询操作（查询操作返回结果）
MYSQL_RES *MySQL::query(string sql)
{
    if (mysql_query(_conn, sql.c_str()))
    {
        LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                 << sql << "查询失败!"<< mysql_error(_conn);
        return nullptr;
    }
    MYSQL_RES* result = mysql_store_result(_conn);
    if (!result) {
        LOG_INFO << __FILE__ << ":" << __LINE__ << ":"
                 << " 获取结果集失败! 错误信息: " << mysql_error(_conn);
    }
    return result;
}
// 获取连接
MYSQL* MySQL::getConnection()
{
    return _conn;
}