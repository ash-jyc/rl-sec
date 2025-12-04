#include <iostream>
#include <string.h>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Input copied to buffer: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a large string that will cause a buffer overflow!";
    vulnerable_function(large_input);
    return 0;
}