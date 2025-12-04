#include <string.h>
#include <stdio.h>

void func(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    printf("%s\n", buffer);
}

int main() {
    char large_input[20] = "This is a large string";
    func(large_input);
    return 0;
}