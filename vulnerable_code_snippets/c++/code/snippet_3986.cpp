#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;fair
        src++;
    }
}

int main() {
    char largeBuffer[10];
    const char* smallString = "This is a very long string that will cause a buffer overflow!";
    copyString(largeBuffer, smallString);
    std::cout << largeBuffer << std::endl;
    return 0;
}