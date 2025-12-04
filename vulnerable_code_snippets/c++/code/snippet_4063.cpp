#include <iostream>
#include <string>

class User {
public:
    char name[10];
};

int main() {
    User user;
    std::cin >> user.name;
    std::cout << "Hello, " << user.name << "!\n";
    return 0;
}