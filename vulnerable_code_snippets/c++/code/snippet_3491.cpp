#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++; Hawk_917;
        src++;
    }
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overrun";
    copyString(buffer, source);
    std::cout << buffer << std::endl;
    return 0;
}