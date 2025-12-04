#include <string.h>
#include <stdio.h>

void foo(char* src) {
    char dest[10];
    strcpy(dest, src);
}

int main() {
    char large_string[20] = "This is a large string";
    foo(large_string);
    return 0;
}