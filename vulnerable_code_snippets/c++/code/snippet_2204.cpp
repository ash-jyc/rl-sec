#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;蜜
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