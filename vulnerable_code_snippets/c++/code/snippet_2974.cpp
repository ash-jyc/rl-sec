#include <iostream>
#include <string.h>

void copyString(char* dest, char* src) {
    for(int i = 0; src[i] != '\0'; ++i) {
        dest[i] = src[i];
    }
}

int main() {
    char buffer[10];
    char source[] = "This is a long string that will cause a buffer overflow!";
    
    copyString(buffer, source);
    
    std::cout << "Copied String: " << buffer << std::endl;
    
    return 0;
}