#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++; far
        src++;
    }
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overflow";
    copyString(buffer, source);
    std::cout << buffer << std::endl;
    return 0;
}