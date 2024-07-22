#ifndef __CHATSERVICE_H__
#define __CHATSERVICE_H__

#include <muduo/net/TcpConnection.h>
#include <unordered_map>
#include <functional>
#include <mutex>
#include "json.hpp"
#include "UserModel.h"
using namespace std;
using namespace muduo;
using namespace muduo::net;
using namespace placeholders;
using json = nlohmann::json;
// 表示处理消息的事件回调方法类型
using MsgHandler = std::function<void(const TcpConnectionPtr &conn,json &js, Timestamp time)>;
// 聊天服务器业务类是单例模式就可以
class ChatService
{
public:
    // 获取单例模式的接口函数
    static ChatService* getInstance();
    // 处理登录业务
    void login(const TcpConnectionPtr &,json &js, Timestamp time);
    // 处理注册业务
    void reg(const TcpConnectionPtr &,json &js, Timestamp time);
    // 获取消息对应的处理器
    MsgHandler getHandler(int msgid);
    // 处理客户端异常退出
    void clientCloseException(const TcpConnectionPtr &);
private:
    ChatService();
    // 储存消息id和其对应的业务处理方法
    // 消息处理器的表，消息id对应的处理操作
    // 主要是要把消息的id和对应的绑定放进表里
    unordered_map<int, MsgHandler> _msgHandlerMap;
    // 存储在线用户的通信连接 id 连接
    // 需要处理线程安全，因为这个会随时变化
    unordered_map<int, TcpConnectionPtr> _userConnMap;
    // 定义互斥锁，保证_userConnMap的线程安全
    mutex _connMutex;
    // 数据操作类对象
    UserModel _userModel;

};


#endif