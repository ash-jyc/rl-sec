#include <cstring>

void copyString(char* src) {
    char dest[10];
    strcpy(dest, src);
}

int main() {
    char largeStr[] = "This is a very large string that will cause a buffer overflow if copied into a small buffer.";
    copyString(largeStr);
    return 0;
}