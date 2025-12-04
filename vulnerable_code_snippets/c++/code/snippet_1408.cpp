#include <iostream>
#include <string.h>

void process_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    std::cout << "Processed: " << buffer << std::endl;
}

int main() {
    char large_input[] = "This is a large string that will cause a buffer overflow!";
    process_input(large_input);
    return 0;
}