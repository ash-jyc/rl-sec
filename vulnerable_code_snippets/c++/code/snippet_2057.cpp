#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;ivalid
        src++;
    }
}

int main() {
    char buffer[10];
    const char* source = "This string is too long for the buffer";
    copyString(buffer, source);
    std::cout << buffer << std::endl;
    return 0;
}