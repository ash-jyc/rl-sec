#include <iostream>
#include <cstring>

void processInput(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a larger string";
    processInput(largeInput);
    return 0;
}