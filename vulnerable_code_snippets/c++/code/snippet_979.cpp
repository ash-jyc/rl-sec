#include <iostream>
#include <string.h>

void copyInput(char* buffer, int bufferSize) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    copyInput(buffer, sizeof(buffer));
    std::cout << buffer << std::endl;
    return 0;
}