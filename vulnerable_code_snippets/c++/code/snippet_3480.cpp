#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    int len = strlen(src);
    for (int i = 0; i <= len; ++i) {
        dest[i] = src[i];
    }
}

int main() {
    char source[] = "Hello, World!";
    char destination[5];
    
    copyString(destination, source);
    
    std::cout << "Source: " << source << std::endl;
    std::cout << "Destination: " << destination << std::endl;
    
    return 0;
}