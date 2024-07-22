#include "ChatServer.h"
#include <iostream>
using namespace std;

int main()
{
    EventLoop loop;
    InetAddress addr("192.268.31.136", 6000);
    ChatServer server(&loop,addr, "wsw_ChatServer");

    server.start();
    loop.loop();

}