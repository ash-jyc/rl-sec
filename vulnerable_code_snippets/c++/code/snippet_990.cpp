#include <string.h>
#include <stdio.h>

void unsafe_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    printf("%s\n", buffer);
}

int main() {
    char large_input[20] = "This is a large string";
    unsafe_function(large_input);
    return 0;
}