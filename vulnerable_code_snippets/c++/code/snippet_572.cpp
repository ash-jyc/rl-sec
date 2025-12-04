#include <iostream>
#include <string.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    char largeString[] = "This is a very large string that will cause a buffer overflow!";
    copyString(buffer, largeString);
    std::cout << "Buffer content: " << buffer << std::endl;
    return 0;
}