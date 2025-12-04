#include <iostream>
#include <string.h>

void foo(char* str) {
    char buffer[10];
    strcpy(buffer, str);
}

int main() {
    char large_str[20] = "This is a large string";
    foo(large_str);
    return 0;
}