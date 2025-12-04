#include <iostream>
#include <string>

class User {
public:
    char name[10];
};

int main() {
    User u;
    std::cin >> u.name;
    std::cout << "Hello, " << u.name << "!\n";
    return 0;
}