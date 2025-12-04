#include <iostream>
#include <string.h>

void func(char* str) {
    char buffer[10];
    strcpy(buffer, str);
    std::cout << buffer;
}

int main() {
    char large_str[20] = "This is a large string";
    func(large_str);
    return 0;
}