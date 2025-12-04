#include <iostream>
#include <string.h>

void copy_input(char* dest, int size) {
    std::cin >> dest;
}

int main() {
    char buffer[10];
    copy_input(buffer, sizeof(buffer));
    std::cout << buffer << std::endl;
    return 0;
}