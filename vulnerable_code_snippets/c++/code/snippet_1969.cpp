#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* string = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, string);
    std::cout << buffer << std::endl;
    return 0;
}