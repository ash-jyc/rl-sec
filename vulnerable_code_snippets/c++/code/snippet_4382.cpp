#include <iostream>
#include <string.h>

void function1(char* input) {
    char buffer[5];
    strcpy(buffer, input);
}

int main() {
    char large_input[] = "This is a much larger string than the buffer can handle!";
    function1(large_input);
    return 0;
}