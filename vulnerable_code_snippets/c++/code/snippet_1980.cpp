#include <iostream>
#include <string.h>

void getUserInput(char* buffer) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    getUserInput(buffer);
    std::cout << "User Input: " << buffer << std::endl;
    return 0;
}