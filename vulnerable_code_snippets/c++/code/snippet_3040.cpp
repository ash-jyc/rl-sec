#include <iostream>
#include <cstring>

void copyLargeInput(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Copied input: " << buffer << std::endl;
}

int main() {
    char largeInput[] = "This is a large input that will cause a buffer overflow.";
    copyLargeInput(largeInput);
    return 0;
}