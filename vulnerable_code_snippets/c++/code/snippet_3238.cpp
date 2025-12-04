#include <cstring>
#include <iostream>

void copyString(char* dest, const char* src) {
    std::strcpy(dest, src);
}

int main() {
    char buffer[10];
    const char* str = "This is a very long string that will cause a buffer overflow!";
    copyString(buffer, str);
    std::cout << buffer << std::endl;
    return 0;
}