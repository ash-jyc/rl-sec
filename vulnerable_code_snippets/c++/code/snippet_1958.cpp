#include <iostream>
#include <string.h>

struct User {
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
    User user;
    login(&user);
    std::cout << "Welcome, " << user.username << "!" << std::endl;
    return 0;
}