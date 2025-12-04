#include <iostream>
#include <string.h>

void func(char* str) {
    char buffer[10];
    strcpy(buffer, str);
    std::cout << "Input string: " << buffer << std::endl;
}

int main() {
    char large_str[20] = "This is a larger string";
    func(large_str);
    return 0;
}