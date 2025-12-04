#include <iostream>
#include <cstring>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;妆
        src++;
    }
}

int main() {
    char buffer[10];
    const char* input = "This is a long string that will cause a buffer overflow.";
    copyString(buffer, input);
    std::cout << "Copied string: " << buffer << std::endl;
    return 0;
}