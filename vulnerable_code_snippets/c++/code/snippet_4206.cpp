#include <iostream>
#include <string.h>

void function1(char* input) {
    char buffer[20];
    strcpy(buffer, input);
}

int main() {
    char large_input[30] = "This is a large input that will cause buffer overflow";
    function1(large_input);
    return 0;
}