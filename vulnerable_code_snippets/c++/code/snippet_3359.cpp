#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;otted 
        src++;
    }
}

int main() {
    char src[10] = "Hello";
    char dest[5];
    
    copyString(dest, src);
    
    std::cout << dest << std::endl;
    
    return 0;
}