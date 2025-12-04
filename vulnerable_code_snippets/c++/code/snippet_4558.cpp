#include <iostream>
#include <string.h>

void copyString(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    char largeInput[20] = "This is a large string";
    copyString(buffer, largeInput);
    std::cout << buffer << std::endl;
    return 0;
}