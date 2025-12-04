#include <iostream>
#include <string.h>

class User {
public:
    char *name;
};

int main() {
    User *user = new User();
    char buffer[10];
    std::cin >> buffer;
    user->name = buffer;
    std::cout << "User name: " << user->name << std::endl;
    delete user;
    return 0;
}