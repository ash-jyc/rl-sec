#include <iostream>
#include <string.h>

void copy_string(char* str) {
    char buffer[10];
    strcpy(buffer, str);
    std::cout << "Copied string: " << buffer << std::endl;
}

int main() {
    char large_str[20] = "This is a large string";
    copy_string(large_str);
    return 0;
}