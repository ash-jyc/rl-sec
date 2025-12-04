#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* src = "This string is too long for the buffer!";
    copyString(buffer, src);
    std::cout << buffer << std::endl;
    return 0;
}