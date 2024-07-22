#ifndef __PUBLIC_H__
#define __PUBLIC_H__

/*
server和client的公共文件
*/
enum EnMsgType {
    LOGIN_MSG = 1,  // 登录消息
    LOGIN_MSG_ACK,  // 登录响应
    REG_MSG,        // 注册消息
    REG_MSG_ACK     // 确认消息
};

#endif
