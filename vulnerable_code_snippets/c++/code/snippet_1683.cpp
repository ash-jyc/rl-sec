#include <iostream>
#include <string.h>

void get_input(char* buffer) {
    std::cin >> buffer;
}

int main() {
    char buffer[10];
    get_input(buffer);
    return 0;
}