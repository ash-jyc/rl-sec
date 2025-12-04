#include <iostream>
#include <string.h>

void func(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Input copied into buffer: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a large string that will cause a buffer overflow!";
    func(large_input);
    return 0;
}