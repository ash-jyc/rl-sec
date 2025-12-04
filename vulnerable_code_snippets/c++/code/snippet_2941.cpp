#include <iostream>
#include <string.h>

void print_name(char* name) {
    char buffer[10];
    strcpy(buffer, name);
    std::cout << "Your name is: " << buffer << std::endl;
}

int main() {
    char large_name[20] = "ThisIsAVeryLargeName";
    print_name(large_name);
    return 0;
}