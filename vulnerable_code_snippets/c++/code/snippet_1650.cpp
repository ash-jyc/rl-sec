#include <iostream>
#include <string.h>

void func(char* str) {
    char buffer[10];
    strcpy(buffer, str);
}

int main() {
    char large_string[20] = "This is a big string";
    func(large_string);
    return 0;
}