#include <iostream>
#include <string.h>

void copy_input(char* buf) {
    std::cin >> buf;
}

int main() {
    char buf[10];
    copy_input(buf);
    return 0;
}