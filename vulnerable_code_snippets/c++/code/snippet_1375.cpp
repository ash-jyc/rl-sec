#include <iostream>
#include <string.h>

void process_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed Input: " << buffer << std::endl;
}

int main() {
    char largeInput[] = "This is a very large input that will cause a buffer overflow!";
    process_input(largeInput);
    return 0;
}