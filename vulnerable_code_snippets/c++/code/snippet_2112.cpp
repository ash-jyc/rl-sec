#include <iostream>
#include <string.h>

void copyData(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    char largeData[] = "This is a large string that will cause a buffer overflow!";

    copyData(buffer, largeData);

    std::cout << "Buffer content: " << buffer << std::endl;

    return 0;
}