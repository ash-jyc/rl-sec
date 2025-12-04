#include <iostream>
#include <string.h>

void copyInput(char* buffer, int size) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    copyInput(buffer, 20);
    std::cout << buffer << std::endl;
    return 0;
}