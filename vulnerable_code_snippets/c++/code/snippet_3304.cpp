#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char smallBuffer[10];
    const char* largeString = "This is a very long string that will cause a buffer overflow!";
    
    copyString(smallBuffer, largeString);
    
    std::cout << "Copied String: " << smallBuffer << std::endl;
    
    return 0;
}