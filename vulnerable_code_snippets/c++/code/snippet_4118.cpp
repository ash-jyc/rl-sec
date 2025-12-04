#include <iostream>
#include <string.h>

void function1(char* str) {
    char buffer[5];
    strcpy(buffer, str);
}

int main() {
    char large_str[] = "This is a large string that will cause a buffer overflow";
    function1(large_str);
    return 0;
}