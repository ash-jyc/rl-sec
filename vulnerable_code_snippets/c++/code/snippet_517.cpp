#include <iostream>
#include <string.h>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
}

int main() {
    char large_input[20] = "This is a large input";
    vulnerable_function(large_input);
    return 0;
}