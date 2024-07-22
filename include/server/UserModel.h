#ifndef __USERMODEL_H__
#define __USERMODEL_H__
#include "User.hpp"
// 添加一个ORM层，解耦数据库的操作和业务的操作
// 刚才的User.h是映射表字段的，这个才是提供方法的
class UserModel {
public:
    // 往表写东西首先要增加一个新的用户
    // User表的增加方法
    bool insert(User &user);
    // 根据用户号码查询用户信息
    User query(int id);
    // 更新用户的状态信息
    bool updateState(User user);

private:

};

#endif