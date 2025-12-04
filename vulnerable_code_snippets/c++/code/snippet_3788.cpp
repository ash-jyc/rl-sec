#include <iostream>
#include <string.h>

void function1(char* input) {
    char buffer[50];
    strcpy(buffer, input);
}

int main() {
    char large_input[100] = "This is a large input that will cause a buffer overflow";
    function1(large_input);
    return 0;
}