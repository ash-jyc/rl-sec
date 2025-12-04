#include <iostream>
#include <string.h>

void copyInput(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    char input[20] = "This is a long string";
    copyInput(buffer, input);
    std::cout << buffer;
    return 0;
}