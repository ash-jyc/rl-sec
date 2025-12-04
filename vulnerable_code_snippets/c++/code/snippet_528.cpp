#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    std::strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, source);
    std::cout << "Copied string: " << buffer << std::endl;
    return 0;
}