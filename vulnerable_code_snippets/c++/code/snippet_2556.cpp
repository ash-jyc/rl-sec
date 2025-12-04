#include <iostream>
#include <string.h>

void function1(char* input) {
    char buffer[5];
    strcpy(buffer, input);
}

int main() {
    char large_input[10] = "ThisIsAVeryLargeInput";
    function1(large_input);
    return 0;
}