#include <iostream>
#include <string.h>

void copy_name(char* name) {
    char buffer[10];
    strcpy(buffer, name);
    std::cout << "Your name is: " << buffer << std::endl;
}

int main() {
    char long_name[] = "ThisIsAVeryLongNameThatWillOverflowTheBuffer";
    copy_name(long_name);
    return 0;
}