#include <iostream>
#include <string.h>

void func(char* str) {
    char buffer[10];
    strcpy(buffer, str);
    std::cout << "Input: " << buffer << std::endl;
}

int main() {
    char large_input[20] = "This is a large input";
    func(large_input);
    return 0;
}