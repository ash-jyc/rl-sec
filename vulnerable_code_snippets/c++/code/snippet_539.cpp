#include <iostream>
#include <cstring>

void vulnerableFunction(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "The input was: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    vulnerableFunction(largeInput);
    return 0;
}