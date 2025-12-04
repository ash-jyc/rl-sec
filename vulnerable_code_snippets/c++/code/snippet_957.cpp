#include <iostream>
#include <string.h>

void func(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    func(largeInput);
    return 0;
}