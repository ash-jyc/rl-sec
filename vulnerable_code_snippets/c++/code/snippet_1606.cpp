#include <iostream>
#include <string.h>

void readInput(char* buffer) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    readInput(buffer);
    std::cout << "You entered: " << buffer << std::endl;
    return 0;
}