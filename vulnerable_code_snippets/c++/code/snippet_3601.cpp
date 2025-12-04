#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    int len = strlen(src);
    for (int i = 0; i <= len; i++) {
        dest[i] = src[i];
    }
}

int main() {
    char buffer[10];
    const char* source = "This is a long string";
    copyString(buffer, source);
    std::cout << buffer << std::endl;
    return 0;
}