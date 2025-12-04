#include <cstring>
#include <iostream>

void function1(char* input) {
    char buffer[50];
    strcpy(buffer, input);
}

int main() {
    char large_input[100] = "This is a large string that will cause a buffer overflow";
    function1(large_input);
    return 0;
}