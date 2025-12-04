#include <iostream>
#include <string.h>

class User {
public:
    char username[10];
    char password[10];
};

void login(User* user) {
    std::cout << "Enter your username: ";
    std::cin >> user->username;
    std::cout << "Enter your password: ";
    std::cin >> user->password;
}

int main() {
    User* user = new User();
    login(user);
    std::cout << "Hello, " << user->username << "!" << std::endl;
    delete user;
    return 0;
}