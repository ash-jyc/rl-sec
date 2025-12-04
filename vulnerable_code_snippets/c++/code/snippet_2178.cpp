#include <cstring>
#include <iostream>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;ival
        src++;
    }
}

int main() {
    char src[10] = "HelloWorld";
    char dest[5];
    copyString(dest, src);
    std::cout << dest << std::endl;
    return 0;
}