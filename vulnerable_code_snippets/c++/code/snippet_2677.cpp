#include <string.h>
#include <stdio.h>

void copyData(char* src) {
    char dest[10];
    strcpy(dest, src);
}

int main() {
    char large_string[] = "This is a large string that will cause a buffer overflow";
    copyData(large_string);
    return 0;
}