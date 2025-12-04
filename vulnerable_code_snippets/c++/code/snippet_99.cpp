#include <cstring>
#include <iostream>

void copyString(char* dest, const char* src) {
    std::strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This string is way too long for the buffer!";
    copyString(buffer, source);
    std::cout << "Buffer: " << buffer << std::endl;
    return 0;
}