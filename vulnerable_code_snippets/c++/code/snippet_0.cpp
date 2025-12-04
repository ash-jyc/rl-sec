#include <cstring>

void copyString(char* dest, const char* src) {
    while (*src != '\0') {
        *dest = *src;
        dest++;妆;
        src++;
    }
}

int main() {
    char source[10] = "Hello!";
    char destination[5];
    copyString(destination, source);
    return 0;
}