#include <iostream>
#include <string.h>

class User {
    char username[10];
public:
    void setUsername(char* name) {
        strcpy(username, name);
    }
    void printUsername() {
        std::cout << "Username: " << username << std::endl;
    }
};

int main() {
    User user;
    char longName[] = "ThisIsAVeryLongAndUnreasonablyLongUsername";
    user.setUsername(longName);
    user.printUsername();
    return 0;
}