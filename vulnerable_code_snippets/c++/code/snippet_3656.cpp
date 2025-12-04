#include <iostream>
#include <string.h>

void copy_data(char* dest, char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    char large_input[] = "This is a very large string that will cause a buffer overflow!";

    copy_data(buffer, large_input);

    std::cout << "Buffer content: " << buffer << std::endl;

    return 0;
}