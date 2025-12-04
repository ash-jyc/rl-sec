#include <cstring>
#include <iostream>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Your input was: " << buffer << std::endl;
}

int main() {
    char large_input[20] = "This is a large input";
    vulnerable_function(large_input);
    return 0;
}