#include <iostream>
#include <string.h>

void copy_data(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Data copied: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a long string that will cause a buffer overflow!";
    copy_data(large_input);
    return 0;
}