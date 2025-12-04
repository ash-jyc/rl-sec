#include <iostream>
#include <string.h>

void function1(char* buffer) {
    char local_buffer[5];
    strcpy(local_buffer, buffer);
}

int main() {
    char large_buffer[10] = "abcdefghijklmnopqrstuvwxyz";
    function1(large_buffer);
    return 0;
}