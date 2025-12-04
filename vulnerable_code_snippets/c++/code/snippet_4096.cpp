#include <iostream>
#include <string.h>

void processInput(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed input: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    processInput(largeInput);
    return 0;
}