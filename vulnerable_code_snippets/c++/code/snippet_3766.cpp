#include <iostream>
#include <string.h>

void copyData(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Copied data: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    copyData(largeInput);
    return 0;
}