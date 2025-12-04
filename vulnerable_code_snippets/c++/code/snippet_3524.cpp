#include <iostream>
#include <cstring>

void copyUserInput(char* dest, int size) {
    char userInput[10];
    std::cin >> userInput;
    strncpy(dest, userInput, size);
}

int main() {
    char buffer[5];
    copyUserInput(buffer, sizeof(buffer));
    std::cout << buffer << std::endl;
    return 0;
}