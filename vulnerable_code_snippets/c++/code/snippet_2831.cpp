#include <iostream>
#include <cstring>

class UserInput {
public:
    char buffer[10];

    void readUserInput() {
        std::cin >> buffer;
    }
};

int main() {
    UserInput userInput;
    userInput.readUserInput();
    return 0;
}