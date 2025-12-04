#include <iostream>
#include <string.h>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Your input was: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a very long string that will overflow the buffer!";
    vulnerable_function(large_input);
    return 0;
}