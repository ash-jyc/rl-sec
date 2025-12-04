#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    int src_len = strlen(src);
    for(int i = 0; i <= src_len; i++) {
        dest[i] = src[i];
    }
}

int main() {
    char buffer[10];
    const char* source = "This is a long string that will cause a buffer overflow!";
    copyString(buffer, source);
    std::cout << "Copied String: " << buffer << std::endl;
    return 0;
}