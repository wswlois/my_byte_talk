#include "ChatService.h"
#include "public.hpp"
#include <muduo/base/Logging.h>
#include <iostream>
using namespace muduo;
using json = nlohmann::json;
// 获取单例对象的接口函数
ChatService *ChatService::getInstance()
{
    static ChatService service;
    return &service;
}
// 注册消息以及对应的回调操作
ChatService::ChatService()
{
    // 这是一个unordered_map，主要是把id和对应的事件绑定放入表中
    _msgHandlerMap.insert({LOGIN_MSG, std::bind(&ChatService::login,this,_1,_2,_3)});
    _msgHandlerMap.insert({REG_MSG, std::bind(&ChatService::reg,this,_1,_2,_3)});
}
// 获取消息对应的处理器
MsgHandler ChatService::getHandler(int msgid)
{
    // 记录错误日志，msgid没有对应的事件处理回调
    auto it = _msgHandlerMap.find(msgid);
    if(it == _msgHandlerMap.end())
    {
        // 返回一个默认的处理器, 空操作
        return [=](const TcpConnectionPtr &conn, json &js, Timestamp time) {
            // 直接使用muduo库的日志
            LOG_ERROR << "msgid: " << msgid << "can not find handler!";
        };
    }
    else
    {
        return _msgHandlerMap[msgid];
    }
    
}
// 处理登录业务   ORM Object Relation Map 业务层操作的都是对象，没有任何sql语句 DAO才是sql操作
// id pwd pwd
void ChatService::login(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    int id = js["id"];
    string pwd = js["password"];
    User user = _userModel.query(id);
    if(user.getId() == id && user.getPwd() == pwd) {
        if(user.getState() == "online")
        {
            // 该用户已经登录，不允许重复登录
            json responjs;
            responjs["msgid"] = LOGIN_MSG_ACK;
            responjs["errno"] = 2;
            responjs["errmsg"] = "该账号已登录，请重新输入新账号！";
            LOG_INFO << responjs.dump();
            conn->send(responjs.dump());
        }
        else
        {
            // 对_userConnMap的处理一定要记得线程安全
            {
                lock_guard<mutex> lock(_connMutex);
                // 登录成功，记录用户连接信息
                _userConnMap.insert({id,conn});
            }
            // 登陆成功，更新用户状态信息 state: offline=> online
            user.setState("online");
            _userModel.updateState(user);

            json responjs;
            responjs["msgid"] = LOGIN_MSG_ACK;
            responjs["errno"] = 0;
            responjs["id"] = user.getId();
            responjs["name"] = user.getName();
            LOG_INFO << responjs.dump();
            conn->send(responjs.dump());
        }
       
    }

    else {
        // 该用户不存在，或密码错误，登录失败
        json responjs;
        responjs["msgid"] = LOGIN_MSG_ACK;
        responjs["errno"] = 1;
        responjs["errmsg"] = "用户名或密码错误！";
        LOG_INFO << responjs.dump();
        conn->send(responjs.dump());

    }
    LOG_INFO << "do login service!!!" ;
}
// 处理注册业务 name 和 password
void ChatService::reg(const TcpConnectionPtr &conn, json &js, Timestamp time)
{
    string name = js["name"];
    string pwd = js["password"];

    User user;
    user.setName(name);
    user.setPwd(pwd);
    bool state = _userModel.insert(user);
    if(state) 
    {
        // 注册成功
        json responjs;
        responjs["msgid"] = REG_MSG_ACK;
        responjs["errno"] = 0;
        responjs["id"] = user.getId();
        LOG_INFO << responjs.dump();
        // 注意：netcat没法直接接到，还是要单独设计客户端才能验证最后这句
        conn->send(responjs.dump());
    }
    else 
    {
        // 注册失败
        json responjs;
        responjs["msgid"] = REG_MSG_ACK;
        responjs["errno"] = 1;
        LOG_INFO << responjs.dump();
        conn->send(responjs.dump());

    }
}