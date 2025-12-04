#include <iostream>
#include <string.h>

void vuln_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
}

int main() {
    char large_input[20] = "This is a large input";
    vuln_function(large_input);
    return 0;
}