#include <cstring>

void copyString(char* source) {
    char dest[10];
    strcpy(dest, source);
}

int main() {
    char largeStr[] = "This is a very large string that will cause a buffer overflow!";
    copyString(largeStr);
    return 0;
}