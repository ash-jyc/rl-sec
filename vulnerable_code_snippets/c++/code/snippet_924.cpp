#include <iostream>
#include <string.h>

void copy_data(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Copied data: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a large string that will cause a buffer overflow!";
    copy_data(large_input);
    return 0;
}