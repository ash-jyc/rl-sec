#include <iostream>
#include <string.h>

void copyString(char* str) {
    char buffer[10];
    strcpy(buffer, str);
}

int main() {
    char largeStr[20] = "This is a large string";
    copyString(largeStr);
    return 0;
}