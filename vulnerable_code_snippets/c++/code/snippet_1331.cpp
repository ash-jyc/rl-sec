#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;ellow
        src++;
    }
}

int main() {
    char dest[10];
    const char* src = "This is a very long string that will cause a buffer overflow!";
    copyString(dest, src);
    std::cout << "Copied string: " << dest << std::endl;
    return 0;
}