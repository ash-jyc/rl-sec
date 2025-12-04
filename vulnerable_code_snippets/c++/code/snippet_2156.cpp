#include <iostream>
#include <string.h>

void vulnerable_function(char* input) {
    char buffer[10];
    strcpy(buffer, input);
}

int main() {
    char input[20];
    std::cin >> input;
    vulnerable_function(input);
    return 0;
}