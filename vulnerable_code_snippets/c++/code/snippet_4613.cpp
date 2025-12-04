#include <iostream>
#include <cstring>

void unsafe_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Buffer content: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a very large string that will cause a buffer overflow!";
    unsafe_function(large_input);
    return 0;
}