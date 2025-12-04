#include <iostream>
#include <cstdio>
#include <cstring>

void print_user_input(char* input) {
    char buffer[10];
    strcpy(buffer, input);
    printf("User input: %s\n", buffer);
}

int main() {
    char large_input[20] = "This is a large input";
    print_user_input(large_input);
    return 0;
}