#include <iostream>
#include <string.h>

void vulnerableFunction(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Input copied into buffer: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    vulnerableFunction(largeInput);
    return 0;
}