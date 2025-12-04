#include <iostream>
#include <string.h>

void copyData(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char largeBuffer[8];
    char smallBuffer[4];
    strcpy(smallBuffer, "12345");
    copyData(largeBuffer, smallBuffer);
    std::cout << largeBuffer << std::endl;
    return 0;
}