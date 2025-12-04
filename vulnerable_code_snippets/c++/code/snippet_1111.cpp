#include <iostream>
#include <string.h>

void copyString(char* dest, const char* src) {
    int i;
    for (i = 0; src[i] != '\0'; ++i) {
        dest[i] = src[i];
    }
    dest[i] = '\0';
}

int main() {
    char buf[10];
    const char* str = "This is a long string that will cause a buffer overflow!";
    copyString(buf, str);
    std::cout << buf << std::endl;
    return 0;
}