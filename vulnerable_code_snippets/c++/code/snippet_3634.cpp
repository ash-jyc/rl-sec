#include <iostream>
#include <cstring>

void copy_input(char* dest, int size) {
    std::cin >> dest;
}

int main() {
    char buffer[10];
    copy_input(buffer, sizeof(buffer));
    std::cout << "Buffer content: " << buffer << std::endl;
    return 0;
}