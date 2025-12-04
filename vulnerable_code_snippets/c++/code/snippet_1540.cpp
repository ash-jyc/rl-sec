#include <iostream>
#include <string.h>

void my_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
}

int main() {
    char largeInput[20] = "This is a large input";
    my_function(largeInput);
    return 0;
}