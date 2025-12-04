#include <iostream>
#include <string.h>

void storeUserInput(char* buffer, int bufferSize) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    storeUserInput(buffer, sizeof(buffer));
    std::cout << "You entered: " << buffer << std::endl;
    return 0;
}