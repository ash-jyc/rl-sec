#include <iostream>
#include <string.h>

void print_name(char* name) {
    char buffer[10];
    strcpy(buffer, name);
    std::cout << "Hello, " << buffer << "!\n";
}

int main() {
    char long_name[] = "ThisIsAVeryLongNameThatWillOverflowTheBuffer";
    print_name(long_name);
    return 0;
}