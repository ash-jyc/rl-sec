#include <stdio.h>
#include <string.h>

void copy_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
}

int main() {
    char large_input[20] = "This is a large input";
    copy_input(large_input);
    return 0;
}