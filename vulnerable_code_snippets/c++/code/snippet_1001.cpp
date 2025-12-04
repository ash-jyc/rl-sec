#include <iostream>
#include <string.h>

void vulnerable_function(char* user_input) {
    char buffer[10];
    strcpy(buffer, user_input);
}

int main() {
    char large_input[20] = "This is a large input";
    vulnerable_function(large_input);
    return 0;
}