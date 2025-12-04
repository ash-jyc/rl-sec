#include <iostream>
#include <string.h>

void copy_input(char* buffer) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    copy_input(buffer);
    return 0;
}