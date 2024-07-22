#include "ChatServer.h"
#include "json.hpp"
#include "ChatService.h"
#include <functional>
#include <string.h>
using namespace std;
using namespace placeholders;
using json = nlohmann::json;
ChatServer::ChatServer(EventLoop *loop,
                       const InetAddress &listenAddr,
                       const string &nameArg)
    : _server(loop, listenAddr, nameArg), _loop(loop)
{
    // 注册连接回调
    _server.setConnectionCallback(std::bind(&ChatServer::onConnection, this, _1));
    // 注册消息回调
    _server.setMessageCallback(std::bind(&ChatServer::onMessage, this, _1, _2, _3));
    // 设置线程数量
    _server.setThreadNum(4);
}
// 启动服务
void ChatServer::start()
{
    _server.start();
}

// 上报链接相关信息的回调函数，连接建立连接断开
void ChatServer::onConnection(const TcpConnectionPtr &conn)
{
    // 客户端断开连接（muduo本身会打印断开信息）
    if(conn->connected()) 
    {
        conn->shutdown();
    }
}
// 上报读写事件相关信息的回调函数
void ChatServer::onMessage(const TcpConnectionPtr &conn,
                           Buffer *buffer,
                           Timestamp time)
{
    string buf = buffer->retrieveAllAsString();
    // 数据的反序列化
    json js = json::parse(buf);
    // 希望解耦，所以不在这里直接进行switch
    // 达到的目的：完全解耦网络模块的代码和业务模块的代码
    // 通过js["msgid"]获取到=> 业务handler => conn js time传给业务模块
    // 注意json["msgid"]虽然是个整型，但是仍然是json类型的整型，要使用get<int>()方法转成真的整型
    auto msgHandler = ChatService::getInstance()->getHandler(js["msgid"].get<int>());
    // 换着玩试试究竟行不行哇
    //ChatService::getInstance()->getHandler(js["msgid"]);
    // 这个地方是一个三个参数的成员函数
    msgHandler(conn, js, time);
}