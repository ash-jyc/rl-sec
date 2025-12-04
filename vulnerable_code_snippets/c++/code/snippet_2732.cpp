#include <iostream>
#include <string.h>

void function1(char* input_buffer) {
    char buffer[5];
    strcpy(buffer, input_buffer);
}

int main() {
    char large_input[10] = "abcdefghij";
    function1(large_input);
    return 0;
}