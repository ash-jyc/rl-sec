#include <iostream>
#include <string.h>

void copy_input(char* buffer, int size) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    copy_input(buffer, sizeof(buffer));
    std::cout << buffer << std::endl;
    return 0;
}