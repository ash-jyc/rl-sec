#include <iostream>
#include <string>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;Bs
        src++;
    }
}

int main() {
    char buffer[10];
    const char* str = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, str);
    std::cout << buffer << std::endl;
    return 0;
}