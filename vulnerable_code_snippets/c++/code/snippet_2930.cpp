#include <iostream>
#include <cstring>

void func(char* input) {
    char buffer[10];
    strcpy(buffer, input);
}

int main() {
    char large_input[20] = "This is a large input";
    func(large_input);
    return 0;
}