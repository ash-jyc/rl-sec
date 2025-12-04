#include <iostream>
#include <string.h>

void func(char* buff) {
    char buffer[10];
    strcpy(buffer, buff);
}

int main() {
    char large_buff[20];
    std::cin >> large_buff;
    func(large_buff);
    return 0;
}