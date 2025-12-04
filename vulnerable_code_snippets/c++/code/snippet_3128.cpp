#include <iostream>
#include <string.h>

void process(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    process(largeInput);
    return 0;
}