#include <iostream>
#include <string.h>

void function1(char* input_buffer) {
    char local_buffer[50];
    strcpy(local_buffer, input_buffer);
}

int main() {
    char large_input[100] = "This is a large input that will cause a buffer overflow";
    function1(large_input);
    return 0;
}