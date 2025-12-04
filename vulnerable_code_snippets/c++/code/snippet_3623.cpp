#include <iostream>
#include <string.h>

void copy_data(char* destination, char* source) {
    strcpy(destination, source);
}

int main() {
    char buffer[10];
    char large_source[20] = "This is a large string";
    copy_data(buffer, large_source);
    std::cout << buffer << std::endl;
    return 0;
}