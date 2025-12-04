#include <iostream>
#include <cstring>

void unsafe_function(char* input) {
    char buffer[10];
    std::strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
}

int main() {
    char large_input[20] = "This is a large input";
    unsafe_function(large_input);
    return 0;
}