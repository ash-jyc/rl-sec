#include <iostream>
#include <cstring>

void process_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed Input: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    process_input(largeInput);
    return 0;
}