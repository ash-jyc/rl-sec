#include <iostream>
#include <stdio.h>
#include <string.h>

void process_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    printf("Processed Input: %s\n", buffer);
}

int main() {
    char largeInput[20] = "This is a large input";
    process_input(largeInput);
    return 0;
}