#include <iostream>
#include <string.h>

void copy_input(char* buf) {
    char input[10];
    std::cin >> input;
    strcpy(buf, input);
}

int main() {
    char buffer[5];
    copy_input(buffer);
    std::cout << buffer << std::endl;
    return 0;
}