#include <string>
#include <iostream>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;archar
        src++;
    }
}

int main() {
    char buffer[10];
    const char* string = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, string);
    std::cout << buffer << std::endl;
    return 0;
}