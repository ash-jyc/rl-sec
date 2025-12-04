#include <iostream>
#include <string.h>

class User {
    char* name;
public:
    User(char* n) {
        name = new char[strlen(n) + 1];
        strcpy(name, n);
    }
    ~User() {
        delete[] name;
    }
    void setName(char* n) {
        delete[] name;
        name = new char[strlen(n) + 1];
        strcpy(name, n);
    }
    char* getName() {
        return name;
    }
};

int main() {
    User user("John Doe");
    std::cout << "User's name: " << user.getName() << std::endl;
    user.setName("A very long string that will cause a buffer overflow because it exceeds the allocated memory size.");
    std::cout << "User's name: " << user.getName() << std::endl;
    return 0;
}