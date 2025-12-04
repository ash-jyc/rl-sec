#include <iostream>
#include <string.h>

void copyString(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Copied string: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large string";
    copyString(largeInput);
    return 0;
}