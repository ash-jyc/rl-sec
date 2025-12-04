#include <iostream>
#include <string.h>

void function1(char* buffer) {
    char array[5];
    strcpy(array, buffer);
}

int main() {
    char large_buffer[10] = "This is a large buffer";
    function1(large_buffer);
    return 0;
}