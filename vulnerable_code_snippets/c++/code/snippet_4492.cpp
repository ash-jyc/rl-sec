#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;archar
        src++;
    }
}

int main() {
    char source[10] = "abcdefghijklmnopqrstuvwxyz";
    char destination[5];
    copyString(destination, source);
    std::cout << "Copied string: " << destination << std::endl;
    return 0;
}