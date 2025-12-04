#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* largeString = "This is a very long string that will cause a buffer overflow!";
    
    copyString(buffer, largeString);
    
    std::cout << "Buffer content: " << buffer << std::endl;
    
    return 0;
}