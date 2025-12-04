#include <iostream>
#include <string.h>

void copy_input(char* buf) {
    char input[10];
    std::cin >> input;
    strcpy(buf, input);
}

int main() {
    char buf[5];
    copy_input(buf);
    return 0;
}