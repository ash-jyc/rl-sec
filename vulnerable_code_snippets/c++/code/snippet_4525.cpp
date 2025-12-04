#include <cstring>

void copyString(char* dest, const char* src) {
    strcpy(dest, src);
}

int main() {
    char src[10];
    char dest[5];
    strcpy(src, "Hello, world!");
    copyString(dest, src);
    return 0;
}