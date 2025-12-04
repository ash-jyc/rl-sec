#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This string is longer than buffer.";
    
    copyString(buffer, source);
    
    std::cout << "Buffer content: " << buffer << std::endl;
    
    return 0;
}